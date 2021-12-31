import csv
import operator
import pandas as pd


def pearson(user1,
            user2):  # 数据格式为：{电影:评分}
    n = 0
    for movie1, score1 in user1.items():
        if movie1 in user2.keys():  # 计算公共的电影的评分
            n = n + 1
    num1 = len(user1)
    num2 = len(user2)
    mu = num1 * num2
    num_sqrt = mu ** 0.5
    return n / num_sqrt


# 通过用户名获得电影列表，仅调试使用
def getItems(self, username1, username2):
    return self.data[username1], self.data[username2]


# 计算与当前用户的距离，获得最临近的用户
def nearstUser(data, username, n=1):
    distances = {};  # 用户，相似度
    for otherUser, items in data.items():  # 遍历整个数据集
        if otherUser != username:  # 非当前的用户
            distance = pearson(data[username], data[otherUser])  # 计算两个用户的相似度
            distances[otherUser] = distance
    sortedDistance = sorted(distances.items(), key=operator.itemgetter(1), reverse=True);  # 最相似的N个用户
    # print("排序后的用户为：",sortedDistance)
    return sortedDistance[:n]


# 给用户推荐电影
def recomand(data, username, n=1):
    recommand = {};  # 待推荐的电影
    nearstUsers = nearstUser(data, username, n)
    for i in range(0, len(nearstUsers)):
        print("推荐的用户：", (nearstUsers[i][0], nearstUsers[i][1]))
        for movies, scores in data[nearstUsers[i][0]].items():  # 推荐的用户的电影列表
            if movies not in data[username].keys():  # 当前username没有看过
                if movies not in recommand.keys():  # 添加到推荐列表中
                    recommand[movies] = scores * nearstUsers[i][1]

    return sorted(recommand.items(), key=operator.itemgetter(1), reverse=True);  # 对推荐的结果按照电影评分排序


if __name__ == '__main__':
    data = pd.read_csv("F:/数据集/归档/sort_list1.csv")
    dictdata = {}
    for i in range(0, len(data)):
        x = data.loc[i, 'userId']
        y = data.loc[i, 'movieId']
        z = data.loc[i, 'rating']
        if x in dictdata.keys():
            dictdata[x][y] = z
        else:
            # dict[x] = [{y:z}]
            dictdata[x] = {y: z}

    f = open("F:/数据集/归档/sort_list1recommend.csv", 'w', encoding='utf-8', newline="")
    csv_writer = csv.writer(f)
    csv_writer.writerow(["userId", "movieId", "rating"])
    hascommend = []
    for k1, v1 in dictdata.items():
        if k1 not in hascommend:
            hascommend.append(k1)
            recommendList = recomand(dictdata, k1, 5)
            if len(recommendList) >= 10:
                for i in range(0, 10):
                    # print("最终推荐：" + str(recommendList[i]))
                    csv_writer.writerow([k1, recommendList[i][0], recommendList[i][1]])
            else:
                for i in range(0, len(recommendList)):
                    # print("最终推荐：" + str(recommendList[i]))
                    csv_writer.writerow([k1, recommendList[i][0], recommendList[i][1]])

    f.close()
