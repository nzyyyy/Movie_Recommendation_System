import heapq
import pandas as pd
import numpy as np
import tensorflow as tf
from tensorflow.keras.layers import *
from sklearn.preprocessing import LabelEncoder
import tensorflow.keras.backend as K
from tensorflow.keras.models import Model
from keras import backend as K
from sklearn import preprocessing



# 定义特征组
# 连续型特征组dense_feats
dense_feats = ["high", "total", "mean", "total_time", "hratings"]

# 离散型特征组sparse_feats
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

test = pd.read_csv("666.csv")
model = tf.keras.models.load_model("model")
# 对数据处理
test_data_dense = process_dense_feats(test, dense_feats)
test_data_spares = process_spares_feats(test, sparse_feats)
test_data = pd.concat([test_data_dense, test_data_spares], axis=1)

test_dense_x = [test_data[f].values for f in dense_feats]
test_sparse_x = [test_data[f].values for f in sparse_feats]
test_label = [test['label'].values]


test_loss, test_accuracy, test_auc = model.evaluate(test_dense_x + test_sparse_x, test_label)
print('\n\nTest Loss {}, Test Accuracy {}, Test AUC {}'.format(test_loss, test_accuracy, test_auc))

predictions = model.predict(test_dense_x + test_sparse_x)

# 归一化
# min_max_scaler = preprocessing.MinMaxScaler()
