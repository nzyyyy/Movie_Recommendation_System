import random

import grpc
import pandas as pd
import redis
import profile_pb2
import profile_pb2_grpc
from concurrent import futures

r = redis.Redis(host='60.205.124.6', port=6379, db=0)


class ProfileService(profile_pb2_grpc.ProfileServiceServicer):
    def CallUserProfile(self, request, context):
        t = r.get('user' + str(request.user_id))
        if t is None:
            x = random.randint(1,1600)
            t = r.get('user' + str(x))
        s = profile_pb2.UserProfileResponse()
        s.ParseFromString(t)
        # print(s)
        return s

    def CallMovieProfile(self, request, context):
        t = r.get('movie' + str(request.movie_id))
        if t is None:
            x = random.randint(1,90)
            t = r.get('movie' + str(x))
        s = profile_pb2.MovieProfileResponse()
        s.ParseFromString(t)
        # print(s)
        return s


def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=5))
    profile_pb2_grpc.add_ProfileServiceServicer_to_server(ProfileService(), server)
    server.add_insecure_port("[::]:9000")
    server.start()
    server.wait_for_termination()


if __name__ == '__main__':
    serve()
    # s = r.get('abc')
    # if s is None:
    #     print('empty')
    # p = r.pipeline()
    # df = pd.read_csv('movie_image.csv')
    # for i in df.itertuples():
    #     res = profile_pb2.MovieProfileResponse(mean=i[2], total_time=i[3], title=i[4], genres=i[5]) \
    #         .SerializeToString()
    #     p.set('movie' + str(i[1]), res)
    # p.execute()
