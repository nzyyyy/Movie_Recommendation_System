import numpy as np
import operator
import read
import csv
import pandas as pd
f = open("reco10.csv", 'w', encoding='utf-8', newline="")
csv_writer = csv.writer(f)

def init_model(vec_len):

    return np.random.randn(vec_len)


def moodel_predict(user_vec,movie_vec):

    res = np.dot(user_vec, movie_vec)/(np.linalg.norm(user_vec)*np.linalg.norm(movie_vec))
    return res

def lfm_train(train_data,F,alpha,beta,step):

    user_vec = {}
    movie_vec = {}
    for step_index in range(step):
        for data_instance in train_data:
            userid,movieid,label = data_instance
            if userid not in user_vec:
                user_vec[userid] = init_model(F)
            if movieid not in movie_vec:
                movie_vec[movieid] = init_model(F)
        delta = label - moodel_predict(user_vec[userid], movie_vec[movieid])
        for index in range(F):
            user_vec[userid][index] += beta*(delta*movie_vec[movieid][index]-alpha*user_vec[userid][index])
            movie_vec[movieid][index] += beta*(delta*user_vec[userid][index]-alpha*movie_vec[movieid][index])
        beta = beta*0.9
    return user_vec, movie_vec


def give_recom_result(user_vec,movie_vec,userid):

    fix_num = 10
    if userid not in user_vec:
        return []
    record = {}
    recom_list = []
    user_vector = user_vec[userid]
    for movieid in movie_vec:
        movie_vecor = movie_vec[movieid]
        res = np.dot(user_vector, movie_vecor)/(np.linalg.norm(user_vector)*np.linalg.norm(movie_vecor))
        record[movieid] = res
    for zuhe in sorted(record.items(),key=operator.itemgetter(1), reverse=True)[:fix_num]:
        movieid = zuhe[0]
        score = round(zuhe[1], 3)
        recom_list.append((movieid,score))
    return recom_list

def train_model_process():
    train_data = read.get_train_data('sort_list10.csv')
    user_vec, movie_vec = lfm_train(train_data, 10, 0.01, 0.04, 50)
    for userid in user_vec:
        res = give_recom_result(user_vec, movie_vec, userid)
        csv_writer.writerow([userid,res[0][0],res[1][0],res[2][0],res[3][0],res[4][0],res[5][0],res[6][0],res[7][0],res[8][0],res[9][0],res[10][0]])


# def Recall(df_test, p, q):  # 召回率
#     hit = 0
#     all = 0
#     df_userid = df_test['userid']
#     df_userid = df_userid.drop_duplicates()
#     for userid in df_userid:
#         pre_item = give_recom_result(df_test, p, q)
#         df_user_item = df_test.loc[df_test['userid'] == userid]
#         true_item = df_user_item['itemid']
#         for itemid, prob in pre_item.items():
#             if itemid in true_item:
#                 hit += 1
#         all += len(true_item)
#     return hit / (all * 1.0)
#
#
# def Precision(df_test, p, q):
#     hit = 0
#     all = 0
#     df_userid = df_test['userid']
#     df_userid = df_userid.drop_duplicates()
#     for userid in df_userid:
#         pre_item = give_recom_result(df_test, p, q)
#         df_user_item = df_test.loc[df_test['userid'] == userid]
#         true_item = df_user_item['itemid']
#         for itemid, prob in pre_item.items():
#             if itemid in true_item:
#                 hit += 1
#         all += len(pre_item)
#     return hit / (all * 1.0)
#
#
# def test_model_process():
#     df_sample = pd.read_csv("ratings.csv", names=['userid', 'itemid', 'ratings', 'time'], header=0)
#     p, q = lfm_train(df_sample, 10, 0.01, 0.04, 50)
#     # 模型评估
#     df_test = df_sample.sample(frac=0.2)  # 抽20%来测试
#     print(Recall(df_test, p, q))  # 召回率
#     print(Precision(df_test, p, q))  # 准确率

if __name__ == '__main__':
    train_model_process()
    # test_model_process()

