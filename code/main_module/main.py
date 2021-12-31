import grpc
import serve_pb2_grpc
import serve_pb2
from concurrent import futures


class MainService(serve_pb2_grpc.MainServiceServicer):
    def Call(self, request, context):
        uid = request.user_id
        # print(uid)
        user_profile = get_user_profile(uid)
        # print(user_profile)
        recall_list = get_recall(uid)
        # print(recall_list.movie_list)
        movie_profile_list = []
        for item in recall_list.movie_list:
            movie_profile_list.append(get_movie_profile(item))
        # print(movie_profile_list)
        return get_score(recall_list.movie_list, user_profile, movie_profile_list)


def get_user_profile(userid):
    channel = grpc.insecure_channel('localhost:9000')
    stub = serve_pb2_grpc.ProfileServiceStub(channel)
    response = stub.CallUserProfile(serve_pb2.UserProfileRequest(user_id=userid))

    channel.close()
    return response


def get_movie_profile(movieid):
    channel = grpc.insecure_channel('localhost:9000')
    stub = serve_pb2_grpc.ProfileServiceStub(channel)
    response = stub.CallMovieProfile(serve_pb2.MovieProfileRequest(movie_id=movieid))

    channel.close()
    return response


def get_score(id_list, user, list):
    channel = grpc.insecure_channel('localhost:9002')
    stub = serve_pb2_grpc.ScoreServiceStub(channel)
    response = stub.CallScore(serve_pb2.ScoreRequest(movie_id_list=id_list, user_profile=user, movie_profiles=list))

    channel.close()
    return response


def get_recall(id):
    channel = grpc.insecure_channel('localhost:9001')
    stub = serve_pb2_grpc.ReCallServiceStub(channel)
    response = stub.CallReCall(serve_pb2.ReCallRequest(user_id=id))
    channel.close()
    return response

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=5))
    serve_pb2_grpc.add_MainServiceServicer_to_server(MainService(), server)
    server.add_insecure_port("[::]:9005")
    server.start()
    server.wait_for_termination()

if __name__ == '__main__':
    serve()