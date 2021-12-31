import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from scipy.sparse import csr_matrix
import helper
from sklearn.cluster import KMeans

ratings = pd.read_csv('list0.csv')
n_movie = ratings.movieId.unique().shape[0]
ratings = ratings.astype({'movieId': 'str'})
user_movie_ratings = pd.pivot_table(ratings, index='userId', columns='movieId', values='ratings')
most_rated_movies_1k = helper.get_most_rated_movies(user_movie_ratings, n_movie)
most_rated_movies_1k = most_rated_movies_1k.fillna(6)
sparse_ratings = csr_matrix(np.array(most_rated_movies_1k))

# X = pd.DataFrame(most_rated_movies_1k).values
# SSE = []
# for i in range(1, 11):
#     km = KMeans(n_clusters=i, random_state=100)
#     km.fit(X)
#     # 获取K-means算法的SSE
#     SSE.append(km.inertia_)
#
#     # 绘制曲线
# plt.plot(range(1, 11), SSE, marker="o")
# plt.xlabel("K值——簇数量", size=20)
# plt.ylabel("簇内误方差SSE", size=20)
# plt.show()

predictions = KMeans(n_clusters=5, algorithm='full').fit_predict(most_rated_movies_1k)
clustered = pd.concat([most_rated_movies_1k.reset_index(), pd.DataFrame({'group': predictions})], axis=1)
helper.draw_movie_clusters(clustered, 1507, 100)

for i in range(5):
    cluster_number = i
    cluster = clustered[clustered.group == cluster_number].drop(['index', 'group'], axis=1)

    for index, col in cluster.iteritems():
        c = cluster[index]
        c = c[c != 6].mean()
        cluster[index] = c

movieId = "480"
print(cluster[movieId].mean())
