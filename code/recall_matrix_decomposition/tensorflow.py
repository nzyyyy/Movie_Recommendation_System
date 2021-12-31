import numpy
import pandas
from pandas import *
from numpy import *

# df = pandas.read_csv('rrr.csv')
#
# n_users = 610
# n_movie = 20
#
# ratings = numpy.zeros((n_users, n_movie))
#
# for i in range(610):
#     df = df.sort_values(by=[str(i)], ascending=False)
#     a = df['id']
#     a = a.iloc[:20]
#     ratings[i] = a
listNum = 'list9.csv'

user = pandas.read_csv(listNum)
user = user['userId'].unique()
data = DataFrame(None, columns=['userId'])
data['userId'] = user
data.to_csv('user.csv', index=True, index_label='user')

df1 = pandas.read_csv(listNum)
df2 = pandas.read_csv('movie.csv')
df3 = pandas.read_csv('user.csv')
data = pandas.merge(df1, df3, on="userId")
data = pandas.merge(data, df2, on="movieId")
data = data.sort_values(by=["user", "movie"])
data = data[['user', 'movie', 'ratings']]

user = df3.user.unique().shape[0]
ratings = numpy.zeros((user, 9742))

for row in data.itertuples():
    ratings[row[1] - 1, row[2]] = row[3]
ratings


def gradAscent(d, K):
    dataMat = mat(d)
    m, n = shape(dataMat)
    p = mat(random.random((m, K)))
    q = mat(random.random((K, n)))

    alpha = 0.0002
    beta = 0.02
    maxCycles = 2

    for step in range(maxCycles):
        for i in range(m):
            for j in range(n):
                if dataMat[i, j] > 0:
                    error = dataMat[i, j]
                    for k in range(K):
                        error = error - p[i, k] * q[k, j]
                    for k in range(K):
                        p[i, k] = p[i, k] + alpha * (2 * error * q[k, j] - beta * p[i, k])
                        q[k, j] = q[k, j] + alpha * (2 * error * p[i, k] - beta * q[k, j])

        loss = 0.0
        for i in range(m):
            for j in range(n):
                if dataMat[i, j] > 0:
                    error = 0.0
                    for k in range(K):
                        error = error + p[i, k] * q[k, j]
                    loss = (dataMat[i, j] - error) * (dataMat[i, j] - error)
                    for k in range(K):
                        loss = loss + beta * (p[i, k] * p[i, k] + q[k, j] * q[k, j]) / 2

        if loss < 0.001:
            break
        # print step
        if step % 1000 == 0:
            print(loss)

        print(loss)

    return p, q


p, q = gradAscent(ratings, 10)
result = p * q
result = result.A

df = pandas.DataFrame(result)
df.to_csv('result9.csv')

