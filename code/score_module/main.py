import test
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
import score_pb2
import score_pb2_grpc
import grpc
from concurrent import futures

model = tf.keras.models.load_model("model")


# test.result(model)

class ScoreService(score_pb2_grpc.ScoreServiceServicer):
    def CallScore(self, request, context):
        movieid_list = request.movie_id_list
        user = request.user_profile
        movie_list = request.movie_profiles
        data = []
        for i in range(0, len(movieid_list)):
            data.append([movie_list[i].genres, user.f, user.h, user.high, user.total, movie_list[i].mean,
                         movie_list[i].total_time, user.hratings, movieid_list[i], movie_list[i].title])
        df = pd.DataFrame(data,
                          columns=['genres', 'f', 'h', 'high', 'total', 'mean', 'total_time', 'hratings', 'movieId',
                                   'title'])
        result = test.result(model, df)
        temp = []
        for i in result:
            score = score_pb2.Score(movie_id=i["movieId"], title=i["title"], score=i["score"])
            temp.append(score)
        return score_pb2.ScoreResponse(scores=temp)


def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=5))
    score_pb2_grpc.add_ScoreServiceServicer_to_server(ScoreService(), server)
    server.add_insecure_port("[::]:9002")
    server.start()
    server.wait_for_termination()


if __name__ == '__main__':
    serve()
