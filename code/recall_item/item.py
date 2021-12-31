import math
from math import sqrt, pow
import csv
import operator
import pandas as pd
import numpy as np


def cosine(movie1,
            movie2):  # 数据格式为：{用户:评分}
    n = 0
    for user1, score1 in movie1.items():
        if user1 in movie2.keys():  # 计算公共的电影的评分
            n = n + 1

    num1 = len(movie1)
    num2 = len(movie2)
    mu = num1 * num2
    num_sqrt = mu ** 0.5
    return n / num_sqrt


# 计算与当前用户喜爱电影的距离，获得最临近的电影
def nearstMovie(data, movieid):
    distances = {}  # 相似度
    for otherMovie, items in data.items():  # 遍历整个数据集
        if otherMovie != movieid:  # 非当前
            distance = cosine(data[movieid], data[otherMovie])  # 计算两个电影的相似度
            distances[otherMovie] = distance
    sortedDistance = sorted(distances.items(), key=operator.itemgetter(1), reverse=True)

    return sortedDistance


# 给用户推荐电影
def recomand(data, movieid):

    nearstMovies = nearstMovie(data, movieid)

    return nearstMovies


if __name__ == '__main__':

    data = pd.read_csv("F:/数据集/item/test.csv")
    dictdata = {}
    dictuser = {}
    for i in range(0, len(data)):
        x = data.loc[i, 'userId']
        y = data.loc[i, 'movieId']
        z = data.loc[i, 'rating']
        mean = data.loc[i, 'mean']
        likemovie = data.loc[i, 'likemovie']
        if z >= mean:
            if y in dictdata.keys():
                dictdata[y][x] = z
            else:
                dictdata[y] = {x: z}
        dictuser[x] = likemovie
    print("电影数据和用户喜爱电影构建完毕")

    f = open("F:/数据集/item/test_recommend.csv", 'w', encoding='utf-8', newline="")
    csv_writer = csv.writer(f)
    csv_writer.writerow(["userId", "movieId", "rating"])

    for k1, v1 in dictuser.items():
        score = dictdata[v1][k1]
        recommendList = recomand(dictdata, v1)
        if len(recommendList) >= 10:
            for i in range(0, 10):
                if k1 not in dictdata[recommendList[i][0]].keys():
                    csv_writer.writerow([k1, recommendList[i][0], recommendList[i][1]*score])
        else:
            for i in range(0, len(recommendList)):
                if k1 not in dictdata[recommendList[i][0]].keys():
                    csv_writer.writerow([k1, recommendList[i][0], recommendList[i][1]*score])

    f.close()
