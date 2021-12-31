import pymongo
import recall_pb2
import recall_pb2_grpc
import grpc
import pandas as pd
from concurrent import futures

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["recommendation"]
mycol = mydb["recall"]


class ReCallService(recall_pb2_grpc.ReCallServiceServicer):
    def CallReCall(self, request, context):
        id = request.user_id
        x = mycol.find_one({'_id': id})
        if x is None:
            x = mycol.find_one({'_id': 1})
        # print(x)
        list1 = x["list1"]
        list2 = x["list2"]
        temp = set()
        for i in list1:
            temp.add(i)
        for i in list2:
            temp.add(i)
        return recall_pb2.ReCallResponse(movie_list=list(temp))


def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=5))
    recall_pb2_grpc.add_ReCallServiceServicer_to_server(ReCallService(), server)
    server.add_insecure_port("[::]:9001")
    server.start()
    server.wait_for_termination()


if __name__ == '__main__':
    serve()
    # df = pd.read_csv('ning.csv')
    # mydict = []
    # for i in df.itertuples():
    #     list1 = i[2].split(',')
    #     del list1[0]
    #     list2 = i[3].split(',')
    #     list1 = list(map(int, list1))
    #     list2 = list(map(int, list2))
    #     mydict.append({"_id":i[1],"list1":list1,"list2":list2})
    # mycol.insert_many(mydict)


        # print(i[4].split(','))