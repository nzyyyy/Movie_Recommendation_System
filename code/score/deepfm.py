import pandas as pd
import numpy as np
import tensorflow as tf
from tensorflow.keras.layers import *
from sklearn.preprocessing import LabelEncoder
import tensorflow.keras.backend as K
from tensorflow.keras.models import Model
from keras import backend as K
from sklearn import preprocessing

train = pd.read_csv('./niubi11115.csv')
test = pd.read_csv('./test.csv')
train.head()
test.head()
len(train)

cols = train.columns.values

# 定义特征组
# 连续型特征组dense_feats
# dense_feats = [f for f in cols if f[0] == 'I']
dense_feats = ["high", "total", "mean", "total_time", "hratings"]

# 离散型特征组sparse_feats
# sparse_feats = [f for f in cols if f[0] == 'C']
sparse_feats = ["genres", "h", "f"]


# 获取连续特征的矩阵，如果特征值大于-1，填充为自然对数log(x+1)
# 特征值小于等于-1，填充为-1
def process_dense_feats(data, feats):
    d = data.copy()
    # 使用 fillna() 方法填充空值 (参数：填充的值)
    d = d[feats].fillna(0.0)
    # log()方法计算自然对数
    for f in feats:
        # apply(func,*args,**kwargs) apply方法遍历所有
        # if 为真时，返回np.log(x+1) 否则返回 -1
        d[f] = d[f].apply(lambda x: np.log(x + 1) if x > -1 else -1)
    return d


# 获取训练数据集的连续特征
data_dense = process_dense_feats(train, dense_feats)


# 获取离散数据特征
def process_spares_feats(data, feats):
    d = data.copy()
    # 填充空值数据为 '-1'
    d = d[feats].fillna('-1')
    for f in feats:
        # LabelEncoder().fit_transform() 方法作用:
        # 标准化数据，保证每个维度的特征数据方差为1，均值为0，
        # 使得预测结果不会被某些维度过大的特征值而主导
        # fit_transform()先拟合数据，再标准化
        d[f] = LabelEncoder().fit_transform(d[f])
    return d


# 获取训练数据集的离散特征
data_sparse = process_spares_feats(train, sparse_feats)

# test_data_dense = process_dense_feats(test, dense_feats)
# test_data_spares = process_spares_feats(test, sparse_feats)

# 将离散特征、连续特征的值合并成完整的训练数据集
total_data = pd.concat([data_dense, data_sparse], axis=1)
# test_data = pd.concat([test_data_dense, test_data_spares], axis=1)

# total_data_1 = total_data[0:50]
# total_data_1.to_csv('D:/19301044 潘天胜 python/2021C1/total_csv.csv', index=False, mode='a+', header=False)

# 合并处理后的特征，加入label
total_data['label'] = train['label']
total_data.head()
print(total_data.shape)

# 构造每个 dense 特征的输入
dense_inputs = []
for f in dense_feats:
    _input = Input([1], name=f)
    dense_inputs.append(_input)
# 将输入拼接到一起，方便连接 Dense 层
concat_dense_inputs = Concatenate(axis=1)(dense_inputs)  # (?,13)
# 然后连上输出为1个单元的全连接层，表示对 dense 变量的加权求和
fst_order_dense_layer = Dense(1)(concat_dense_inputs)  # (?,1)

# 单独对每一个 sparse 特征构造输入
sparse_inputs = []
for f in sparse_feats:
    _input = Input([1], name=f)
    sparse_inputs.append(_input)
sparse_ld_embed = []
for i, _input in enumerate(sparse_inputs):
    f = sparse_feats[i]
    voc_size = train[f].nunique()
    # 使用 l2 正则化防止过拟合
    reg = tf.keras.regularizers.l2(0.5)
    _embed = Embedding(voc_size + 1, 1, embeddings_regularizer=reg)(_input)
    # 由于 Embedding 的结果是二维的
    # 因此如果需要在 Embedding 之后加入 Dense 层，则需要先连接上 Flatten 层 （将矩阵降为一维）
    _embed = Flatten()(_embed)
    sparse_ld_embed.append(_embed)
# 一阶离散特征
fst_order_sparse_layer = Add()(sparse_ld_embed)
# 对Dense特征和Sparse特征的加权求和的结果在求和
linear_part = Add()([fst_order_dense_layer, fst_order_sparse_layer])

# embedding层: 将一个特征转换为一个向量
# 例如对于一个itemId（离散变量）one-hot之后，会导致维度很大
# 使用embedding层将所有的特征转换为固定维度的向量
k = 8  # embedding size

# 只考虑sparse的二阶交叉
sparse_kd_embed = []
for i, _input in enumerate(sparse_inputs):
    f = sparse_feats[i]
    # 注意，nan 不会被 nunique() 所统计
    voc_size = train[f].nunique()
    _embed = Embedding(voc_size + 1, k, embeddings_regularizer=tf.keras.regularizers.l2(0.7))(_input)
    sparse_kd_embed.append(_embed)

# 1.将所有sparse的embedding拼接起来，得到 (n, k)的矩阵，其中n为特征数，k为embedding大小
concat_sparse_kd_embed = Concatenate(axis=1)(sparse_kd_embed)  # ?, n, k（None,26,8）

# 2.先求和再平方
sum_kd_embed = Lambda(lambda x: K.sum(x, axis=1))(concat_sparse_kd_embed)
square_sum_kd_embed = Multiply()([sum_kd_embed, sum_kd_embed])

#  3.先平方再求和
square_kd_embed = Multiply()([concat_sparse_kd_embed, concat_sparse_kd_embed])
sum_square_kd_embed = Lambda(lambda x: K.sum(x, axis=1))(square_kd_embed)
# 4.相减除以2
sub = Subtract()([square_sum_kd_embed, sum_square_kd_embed])
sub = Lambda(lambda x: x * 0.5)(sub)
# 二阶的最终结果
snd_order_sparse_layer = Lambda(lambda x: K.sum(x, axis=1, keepdims=True))(sub)

flatten_sparse_embed = Flatten()(concat_sparse_kd_embed)  # (None,n*k)
# dropout是指在深度学习网络的训练过程中，对于神经网络单元，按照一定的概率将其暂时从网络中丢弃
# 注意是暂时，对于随机梯度下降来说，由于是随机丢弃，故而每一个mini-batch都在训练不同的网络
fc_layer = Dropout(0.5)(Dense(256, activation='relu')(flatten_sparse_embed))  # (?,256)
fc_layer = Dropout(0.3)(Dense(256, activation='relu')(fc_layer))
fc_layer = Dropout(0.1)(Dense(256, activation='relu')(fc_layer))
fc_layer_output = Dense(1)(fc_layer)

output_layer = Add()([linear_part, snd_order_sparse_layer, fc_layer_output])
output_layer = Activation('sigmoid')(output_layer)

model = Model(dense_inputs + sparse_inputs, output_layer)
model.summary()

# model.compile(optimizer='adam',
#               loss='binary_crossentropy',
#               metrics=['accuracy', 'AUC'])
model.compile(optimizer="adam",
              loss="binary_crossentropy",
              metrics=["accuracy", "AUC"])
# metrics=["binary_crossentropy","accuracy", "AUC"]

train_data = total_data.loc[:15000000]
valid_data = total_data.loc[1000000-1:1100000]

train_dense_x = [train_data[f].values for f in dense_feats]
train_sparse_x = [train_data[f].values for f in sparse_feats]
train_label = np.array([train_data['label'].values]).transpose()

val_dense_x = [valid_data[f].values for f in dense_feats]
val_sparse_x = [valid_data[f].values for f in sparse_feats]
val_label = [valid_data['label'].values]

# test_dense_x = [test_data[f].values for f in dense_feats]
# test_sparse_x = [test_data[f].values for f in sparse_feats]
# test_label = [test['label'].values]

model.fit(train_dense_x + train_sparse_x,
          train_label, epochs=50, batch_size=256,
          # validation_data=(val_dense_x + val_sparse_x, val_label),
          )
model.save("D:/19301044 潘天胜 python/2021C1/model", save_format='tf')

# validation_data = (val_dense_x + val_sparse_x, val_label),


# test_loss, test_accuracy, test_auc = model.evaluate(test_dense_x + test_sparse_x, test_label)

# print('\n\nTest Loss {}, Test Accuracy {}, Test AUC {}'.format(test_loss, test_accuracy, test_auc))

# test_data_t = K.cast_variables_to_tensor(test_data)
# predictions = model.predict(test_dense_x + test_sparse_x)
# print(predictions)

# min_max_scaler = preprocessing.MinMaxScaler()
# x_minmax = min_max_scaler.fit_transform(predictions)
# print(x_minmax)
# print(x_minmax * 5)
# print(np.log(predictions+1)*5)
# b = [float('{:.4f}'.format(i)) for i in predictions]
