import grpc
import client_pb2_grpc
import client_pb2
import pandas as pd


def get_score(user_id):
    channel = grpc.insecure_channel('localhost:9005')
    stub = client_pb2_grpc.MainServiceStub(channel)
    response = stub.Call(client_pb2.MainRequest(user_id=user_id))
    # print(response)
    channel.close()
    return response


if __name__ == '__main__':
    print(get_score(1))
    print(get_score(2))
    # get_score(1)
    # data = []
    # for i in range(1810, 20000):
    #     temp = get_score(i)
    #     print(i)
        # for t in temp.scores:
        #     df = pd.DataFrame({'user_id': [i], 'movie_id': [t.movie_id], 'title': [t.title], 'score': [t.score]})
        #     df.to_csv('result.csv', index=False, mode='a+', header=False)
