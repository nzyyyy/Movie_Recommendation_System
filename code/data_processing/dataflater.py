# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
from pandas import concat


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    import csv
    import pandas as pd
    from sklearn.utils import shuffle
    import numpy as ny
    #
    # data = pd.read_csv('C:/Users/86185/Desktop/ml-25m/tags.csv')
    # data = data.sort_values(by=['userId', 'timestamp'], ascending=True)
    #1.timestamp 筛选
    # data = pd.DataFrame(columns=['movieId','userId','tag','timestamp'])
    # for i in range(1,len(data)):
    #        if( data.loc[i, 'userId']==data.loc[i-1,'userId']):
    #            if((data.loc[i,'timestamp']-data.loc[i-1,'timestamp'])>1800):
    #                Data= {'userId':data.loc[i,'userId'],'movieId':data.loc[i,'movieId'],'rating':data.loc[i,'tag'],'timestamp':data.loc[i,'timestamp']}
    #                df=pd.DataFrame({'idx': [i], 'userId':data.loc[i,'userId'],'movieId':data.loc[i,'movieId'],'tag':data.loc[i,'tag'],'timestamp':data.loc[i,'timestamp']})
    #                df.to_csv('C:/Users/86185/Desktop/ml-25m/tags_after_filter.csv',index=False,mode='a',header=None)
    #
    # # #特征挖掘
    # #
    # #
    # #
    # #
    # # 1.1电影平均分（用户平均分同）
    #
    # data = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_merged.csv')
    # datax = data.groupby(['movieId'])["ratings"].mean().to_dict()
    # for x in datax:
    #     df = pd.DataFrame({'userId': [x], 'mean': [datax[x]]})
    #     df.to_csv('C:/Users/86185/Desktop/0.8/0.8_mean_1.csv', index=False, mode='a+', header=None)
    # for k, v in datax.items():
    #     df = pd.DataFrame({'userId': [k], 'times': [v]})
    #     df.to_csv('C:/Users/86185/Desktop/0.8/mean.csv', index=False, mode='a+', header=None)
    #
    #
    # #1.2 用户最喜欢，最不喜欢电影统计
    # #字典套字典userId-type-times
    #
    # dict={}
    # dict_dict={}
    # data_pre = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_merged.csv')
    # for i in range(0,len(data_pre)):
    #     if(data_pre.loc[i,'ratings']>-1):
    #         keys = data_pre.loc[i, 'genres'].split('|')
    #         if(dict_dict.__contains__(data_pre.loc[i,'userId'])):
    #             for key in keys:
    #                 if (dict_dict[data_pre.loc[i, 'userId']].__contains__(key)):
    #                     dict_dict[data_pre.loc[i, 'userId']][key] = dict_dict[data_pre.loc[i, 'userId']][key] + 1
    #                     print("ing")
    #                 else:
    #                     dict_dict[data_pre.loc[i, 'userId']][key] = 1
    #         else:
    #             dic = dict()  # 类型 数字
    #             for key in keys:
    #                 if key in dic.keys():
    #                     dic[key] = dic[key] + 1
    #                 else:
    #                     dic[key] = 1
    #             dict_dict[data_pre.loc[i, 'userId']] = dic
    #
    # print("start")
    # #写入
    # #for i in range(0,len(dict_dict)):
    # for a in dict_dict.keys():
    #                         data = dict_dict[a]
    #                         for x in data.keys():
    #                                             data2 = data[x]
    #                                             df = pd.DataFrame({'userId': [a], 'type':[x],'times':[data2]})
    #                                             df.to_csv('C:/Users/86185/Desktop/0.8/0.8_type_times.csv',index=False, mode='a+', header=None)
    # #1.3用户高分概率统计
    #
    # dict={}
    # data = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_sort.csv')
    # data = data.sort_values(by=['userId', 'ratings'], ascending=True)
    # data.to_csv('C:/Users/86185/Desktop/0.8/0.8_sort.csv',index=False)
    # for i in range(0,len(data)):
    #     x=data.loc[i, 'userId']
    #     if(data.loc[i,'ratings']>=4):
    #         if (dict.__contains__(data.loc[i, 'userId'])):
    #             dict[x] = dict[x] + 1
    #         else:
    #             dict[x] = 1
    # index = 0
    # for a in dict:
    #     index=index+1
    #     xx=dict[a]
    #     df = pd.DataFrame({'Index': [index-1],'userId':[xx], 'highrate': [a]})
    #     df.to_csv('C:/Users/86185/Desktop/0.8/0.8_high.csv', index=False, mode='a+', header=None)
    #
    # #1.4求用户观影总数，电影被观看次数
    # data = pd.read_csv('C:/Users/86185/Desktop/0.2/0.2_merged.csv')
    # # data = data.sort_values(by=['userId', 'times'], ascending=True)
    # # data.to_csv('C:/Users/86185/Desktop/0.8/0.2_type_times_1.csv',index=False,mode='a+',header=None)
    # datax = pd.DataFrame()
    # datax = data.groupby(['movieId'])['ratings'].count().to_dict()
    # for k, v in datax.items():
    #     df = pd.DataFrame({'userId': [k], 'times': [v]})
    #     df.to_csv('C:/Users/86185/Desktop/0.2/0.2_movie_times.csv',index=False, mode='a+', header=None)
    #
    #
    #
    # data = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_merged.csv')
    # for i in range(0,len(data)):
    #     if(data.loc[i,'ratings']>=4):
    #         data.loc[i,'label'] = 1
    #     else:
    #         data.loc[i, 'label'] = 0
    # print(data)
    # #data.to_csv('C:/Users/86185/Desktop/0.8/label.csv',index=False,mode='a+',header=None)
    # movie = pd.read_csv('C:/Users/86185/Desktop/0.8/movie.csv')
    #
    #
    #
    # #数据整合
    #
    # ma = pd.read_csv('E:/桌面/非关/总0.8/majiandelist.csv')
    # cc = pd.read_csv('E:/桌面/非关/总0.8/ccdelist.csv')
    # hang = pd.read_csv('E:/桌面/非关/总0.8/hangdelist.csv')
    # ma = ma.sort_values(by=['userId'], ascending=True)
    # cc = cc.sort_values(by=['userId'], ascending=True)
    # hang = hang.sort_values(by=['userId'], ascending=True)
    # data_pre = pd.merge(cc,hang,how='left',on='userId')
    # data_pre = pd.merge(data_pre,ma,how='left',on='userId')
    # mean = pd.read_csv('E:/桌面/非关/总0.8/majiandelist.csv')
    # for i in range(2,11):
    #     print(i)
    #     mean = pd.read_csv('E:/桌面/非关/陈晨/cclist'+str(i)+'.csv')
    #     mean_total=concat([mean_total, mean])
    # mean_total.to_csv('E:/桌面/非关/陈晨/ccdelist.csv',index=False, mode='a+', header=True)
    # print(mean_total)
    #
    #
    # data = pd.read_csv('C:/Users/86185/Desktop/small/hsratings.csv')
    # data = data.sort_values(by=['userId','rating'], ascending=True)
    #
    # dict = {}
    # for i in range(0, 10):
    #     data = pd.read_csv('E:/桌面/非关/陈晨/reco' + str(i + 1) + '.csv')
    #     for a in range(0, len(data)):
    #         x = data.loc[a, 'userId']
    #         list = str(data.loc[a, 'movie1'])
    #         for z in range(1, 19):
    #             name = 'movie' + str(z + 1)
    #             y = data.loc[a, name]
    #             y = str(y)
    #             list = list + ',' + y
    #         df = pd.DataFrame({'userId': [x], 'List': [list]})
    #         df.to_csv('E:/桌面/非关/陈晨/cclist' + str(i + 1) + '.csv', index=False, mode='a+', header=False)
    #     # if (dict.__contains__(x)):
    #     #     y=str(y)
    #     #     dict[x]=dict[x]+','+y
    #     # else:
    #     #     y = str(y)
    #     #     dict[x] =y
    # for k, v in dict.items():
    #     # print({'userId': [k], 'times': [v]})
    #     df = pd.DataFrame({'userId': [k], 'List': [v]})
    #     print(df)
    #     df.to_csv('E:/桌面/非关/马健/list' + str(a + 1) + '.csv', index=False, mode='a+', header=False)
    # a = a + 1
    #




    # data.to_csv('C:/Users/86185/Desktop/small/hsratings.csv', index=False)
# data = pd.read_csv('C:/Users/86185/Desktop/ml-25m/123.csv')
# # # datax = data.sort_values(by=['movieId', 'rating'], ascending=True)
# # # datax.to_csv('C:/Users/86185/Desktop/ml-25m/ratings_avg.csv',index=False)
# datax = data.groupby('movieId')['rating'].mean()
# print(datax)
# datax.to_csv('C:/Users/86185/Desktop/ml-25m/movie_avg.csv',index=True)
# # # See PyCharm help at https://www.jetbrains.com/help/pycharm/
# #

#3.同一用户最喜欢三个电影，最不喜欢三个电影


# data_rating = pd.read_csv('C:/Users/86185/Desktop/data/123.csv')
# data_movies = pd.read_csv('C:/Users/86185/Desktop/ml-25m/movies.csv')
# data_pre = pd.merge(data_rating,data_movies,on='movieId')
# data_pre.to_csv('C:/Users/86185/Desktop/data/fliter_merge.csv',index=False)
# #两表连接成一表
# data_pre = pd.read_csv('C:/Users/86185/Desktop/small/rating_ranked.csv')
# data_movies = pd.read_csv('C:/Users/86185/Desktop/small/movies.csv')
# data_pre = pd.merge(data_pre,data_movies,on='movieId')
# #data_pre = data_pre.sort_values(by=['userId', 'rating'], ascending=True)
# data_pre.to_csv('C:/Users/86185/Desktop/small/merged.csv',index=False)
#排序，按userId，rating （包含电影类型）
# data_back = pd.DataFrame(None,columns=['userId','type1','type2'])
# data_pre = pd.read_csv('C:/Users/86185/Desktop/ml-25m/ratings_pre_sort.csv',nrows=1000)
#
# data_pre = data_pre.groupby(['userId']).head(1000);
# data_pre =data_pre.reset_index(drop=True)
#重新定义索引
data=pd.read_csv('E:/桌面/非关/u_m_image_sort.csv',nrows=500)
for i in range(0,500):
    rating = data.loc[i,'rating']
    if (rating>=4):
        data.loc[i,'label']=1
    else:
        data.loc[i, 'label']=0
data.to_csv('E:/桌面/非关/666.csv',index=False)


#
#
# data_pre = pd.read_csv('C:/Users/86185/Desktop/small/questionnaire.csv')
# datax = data_pre.sort_values(by=['userId', 'times'], ascending=True)
# datax.to_csv('C:/Users/86185/Desktop/small/q_merged.csv',index=False)
#

# data_pre= pd.read_csv('C:/Users/86185/Desktop/0.8/0.2_merged_sort.csv')
#data = data_pre.sort_values(by=['userId', 'ratings'], ascending=True)
# data_movies = pd.read_csv('C:/Users/86185/Desktop/0.8/movies.csv')
# data = pd.merge(data_pre,data_movies,on='movieId')
# data_pre = data_pre.groupby(['userId'])["times"].sum()
# data = data.sort_values(by=['userId', 'ratings'], ascending=True)
# data.to_csv('C:/Users/86185/Desktop/0.8/0.2_merged_sort.csv',index=False)

# data = pd.read_csv('C:/Users/86185/Desktop/0.8/movies.csv')
# data_link = pd.merge(data_pre,data,on='movieId')
# data = data_link.sort_values(by=['userId', 'movieId'], ascending=True)
# data.to_csv('C:/Users/86185/Desktop/0.8/0.8_type.csv',index=False)
# data.to_csv('C:/Users/86185/Desktop/small/ma.csv',index=False)
# dict={}
# data = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_sort.csv')
# data = data.sort_values(by=['userId', 'ratings'], ascending=True)
# data.to_csv('C:/Users/86185/Desktop/0.8/0.8_sort.csv',index=False)
# for i in range(0,len(data)):
#     x=data.loc[i, 'userId']
#     if(data.loc[i,'ratings']>=4):
#         if (dict.__contains__(data.loc[i, 'userId'])):
#             dict[x] = dict[x] + 1
#         else:
#             dict[x] = 1
# index = 0
# for a in dict:
#     index=index+1
#     xx=dict[a]
#     df = pd.DataFrame({'Index': [index-1],'userId':[xx], 'highrate': [a]})
#     df.to_csv('C:/Users/86185/Desktop/0.8/0.8_high.csv', index=False, mode='a+', header=None)

# df_data = pd.DataFrame(columns=['userId','type','times','total'])
# df_data[['userId','type','times','total']]=data_total
# df_data['times']=df_data['times']/df_data['total']
# df_data.to_csv('C:/Users/86185/Desktop/small/xxx.csv',index=False)
# data_link = pd.merge(data,data_total,on='userId')

# print(data_link)

# for i in range(0,len(datax)):
#                         df = pd.DataFrame({'userId':datax[userId],'total':})
#data_pre = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_merged.csv')
# data_movie = pd.read_csv('C:/Users/86185/Desktop/0.8/movies.csv')
# data_link = pd.merge(data,data_movie,on='movieId')
# data_link.to_csv('C:/Users/86185/Desktop/0.8/0.8_merged.csv',index=False)
# dict_dict={}#useId dict
# data_pre = data_pre.sort_values(by=['userId', 'ratings'], ascending=True)
# for i in range(0,len(data_pre)):
#     if(data_pre.loc[i,'ratings']>-1):
#         keys = data_pre.loc[i, 'genres'].split('|')
#         if(dict_dict.__contains__(data_pre.loc[i,'userId'])):
#             for key in keys:
#                 if (dict_dict[data_pre.loc[i, 'userId']].__contains__(key)):
#                     dict_dict[data_pre.loc[i, 'userId']][key] = dict_dict[data_pre.loc[i, 'userId']][key] + 1
#                     print("ing")
#                 else:
#                     dict_dict[data_pre.loc[i, 'userId']][key] = 1
#         else:
#             dic = dict()  # 类型 数字
#             for key in keys:
#                 if key in dic.keys():
#                     dic[key] = dic[key] + 1
#                 else:
#                     dic[key] = 1
#             dict_dict[data_pre.loc[i, 'userId']] = dic
#
# print("start")
#
# #for i in range(0,len(dict_dict)):
# for a in dict_dict.keys():
#                         data = dict_dict[a]
#                         for x in data.keys():
#                                             data2 = data[x]
#                                             df = pd.DataFrame({'userId': [a], 'type':[x],'times':[data2]})
#                                             df.to_csv('C:/Users/86185/Desktop/0.8/0.8_type_times.csv',index=False, mode='a+', header=None)
#
# #
#



    # data = sorted(data.items(), key=lambda x: x[1], reverse=True)
    # df.to_csv('C:/Users/86185/Desktop/data/like.csv',index=False,mode='a+',header=None)
    #

# #求总数
# data = pd.read_csv('C:/Users/86185/Desktop/0.2/0.2_merged.csv')
# # data = data.sort_values(by=['userId', 'times'], ascending=True)
# # data.to_csv('C:/Users/86185/Desktop/0.8/0.2_type_times_1.csv',index=False,mode='a+',header=None)
# datax = pd.DataFrame()
# datax = data.groupby(['movieId'])['ratings'].count().to_dict()
# for k, v in datax.items():
#     df = pd.DataFrame({'userId': [k], 'times': [v]})
#     df.to_csv('C:/Users/86185/Desktop/0.2/0.2_movie_times.csv',index=False, mode='a+', header=None)
#

#
# data = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_merged.csv')
# for i in range(0,len(data)):
#     if(data.loc[i,'ratings']>=4):
#         data.loc[i,'label'] = 1
#     else:
#         data.loc[i, 'label'] = 0
# print(data)
# #data.to_csv('C:/Users/86185/Desktop/0.8/label.csv',index=False,mode='a+',header=None)
#movie = pd.read_csv('C:/Users/86185/Desktop/0.8/movie.csv')




# user = pd.read_csv('C:/Users/86185/Desktop/0.8/user.csv')
# merged = pd.read_csv('C:/Users/86185/Desktop/0.8/0.8.csv')
# print("start")
# datal = pd.merge(merged,user,how='left',on='userId')
# #dataxxx = pd.merge(datal,movie,on='movieId')
# datal.to_csv('C:/Users/86185/Desktop/0.8/niubi2.csv',index=False,mode='a+',header=True)



#
#
# mean = pd.read_csv('E:/桌面/非关/总0.8/mean.csv')
# times = pd.read_csv('E:/桌面/非关/总0.8/movie_time.csv')
# movies = pd.read_csv('E:/桌面/非关/总0.8/movies.csv')
# data_pre = pd.merge(mean,times,how='left',on='movieId')
# data_pre = pd.merge(data_pre,movies,how='left',on='movieId')
# data_pre.to_csv('E:/桌面/非关/总0.8/movie_image.csv',index=False, mode='a+', header=False)

# ma = pd.read_csv('E:/桌面/非关/总0.8/majiandelist.csv')
# cc = pd.read_csv('E:/桌面/非关/总0.8/ccdelist.csv')
# hang = pd.read_csv('E:/桌面/非关/总0.8/hangdelist.csv')
# ma = ma.sort_values(by=['userId'], ascending=True)
# cc = cc.sort_values(by=['userId'], ascending=True)
# hang = hang.sort_values(by=['userId'], ascending=True)
# data_pre = pd.merge(cc,hang,how='left',on='userId')
# data_pre = pd.merge(data_pre,ma,how='left',on='userId')
# mean = pd.read_csv('E:/桌面/非关/总0.8/majiandelist.csv')
# for i in range(2,11):
#     print(i)
#     mean = pd.read_csv('E:/桌面/非关/陈晨/cclist'+str(i)+'.csv')
#     mean_total=concat([mean_total, mean])
# mean_total.to_csv('E:/桌面/非关/陈晨/ccdelist.csv',index=False, mode='a+', header=True)
# print(mean_total)

#movie=pd.read_csv('E:/桌面/非关/movielist.csv')
#movie = movie.drop_duplicates(subset=['movieId'], keep='first')['movieId']
#movie= movie.sort_values(by=['movieId'], ascending=True)
#movie.to_csv('E:/桌面/非关/movielist2.csv',index=False, mode='a+', header=True)
# u = pd.read_csv('E:/桌面/非关/tsratings.csv')
# ui = pd.read_csv('E:/桌面/非关/0.2_u.csv')
# #m = pd.read_csv('E:/桌面/非关/movielist2.csv')
# mi= pd.read_csv('E:/桌面/非关/0.2_m.csv')
#
#
# image_u = pd.merge(u,ui,how='left',on='userId')
# image_m = pd.merge(image_u,mi,how='left',on='movieId')
#
#
# #image_u.to_csv('E:/桌面/非关/0.2_u.csv',index=False, mode='a+', header=True)
# image_m.to_csv('E:/桌面/非关/u_m_image',index=False, mode='a+', header=True)

mi= pd.read_csv('E:/桌面/非关/hang3.csv')
mi=mi.drop_duplicates(subset=['userId'],keep='first')
mi.to_csv('E:/桌面/非关/hang3_drop.csv',index=False, mode='a+', header=True)

#
# #mi2= pd.read_csv('E:/桌面/非关/zuihouchu.csv')
# m1=shuffle(mi)
# #m2=shuffle(mi2)
# #df = pd.DataFrame()
# #mi2['hang3']=m1['hang']
# mi2['hang3']=m1['hang']
# print()
# mi2=mi2.sort_values(by=['userId'], ascending=True)
# mi2.to_csv('E:/桌面/非关/zuihou.csv',index=False, mode='a+', header=True)
#
# mi= pd.read_csv('E:/桌面/非关/hangdelist3.csv')
# mi=mi.sort_values(by=['userId'], ascending=True)
# mi=mi.drop_duplicates(subset=['userId'],keep='first')
# mi.to_csv('E:/桌面/非关/hang2.csv',index=False, mode='a+', header=True)

# mi= mi.sort_values(by=['userId','movieId'], ascending=True)
# mi.to_csv('E:/桌面/非关/u_m_image_sort.csv',index=False, mode='a+', header=True)





# dict={}
# data = pd.read_csv('E:/桌面/非关/总0.8/hsratings.csv')
# for i in range(0,len(data)):
#     x=data.loc[i, 'movieId']
#     if (dict.__contains__(x)):
#         dict[x] = dict[x] + 1
#     else:
#         dict[x] = 1
# index = 0
# for k, v in dict.items():
#     #print({'userId': [k], 'times': [v]})
#     df = pd.DataFrame({'movieId': [k], 'times': [v]})
#     df.to_csv('E:/桌面/非关/总0.8/movie_time.csv',index=False, mode='a+', header=False)
#











#
# movie = pd.read_csv('C:/Users/86185/Desktop/0.8/movie.csv')
# datax = pd.read_csv('C:/Users/86185/Desktop/0.8/niubi2.csv')
# #datadl= pd.read_csv('C:/Users/86185/Desktop/0.8/0.8_user.csv')
#
# datax = pd.merge(datax,movie,on='movieId')
# datax.to_csv('C:/Users/86185/Desktop/0.8/niubi3.csv',index=False,mode='a+',header=True)
# # df = pd.read_csv('C:/Users/86185/Desktop/0.8/0,8_merged_user_1.csv',header=None,names=['userId','f','h','highrate','total','movieId','rating','timestamp','title'])
# # df.to_csv('C:/Users/86185/Desktop/0.8/user.csv',index=False,mode='a+',header=None)
# #
# #
#
#最新

# #去除重复项

data_pre = pd.read_csv('E:/桌面/非关/u_m_image_sort.csv',nrows=1000)
data_pre.to_csv('E:/桌面/非关/0.8/tian.csv',index=False,mode='a+',header=True)



# data = data_pre.sort_values(by=['userId', 'movieId','total'], ascending=True,)
# data_pre.to_csv('E:/桌面/非关/0.8/10部分/稠密.csv',index=False,mode='a+',header=True)
# #data = data.drop_duplicates(['userId'])
# # data = data.sort_values(by=['userId', 'movieId'], ascending=True)
# # data.to_csv('E:/桌面/非关/0.8/100.csv',index=False,mode='a+',header=True)
# dict_dict={}#useId dict
# for i in range(0,len(data_pre)):
#         keys = data_pre.loc[i, 'genres'].split('|')
#         for key in keys:
#                 if (dict_dict.__contains__(key)):
#                     dict_dict[key] = dict_dict[key] + 1
#                     print("ing")
#                 else:
#                     dict_dict[key] = 1
# print("start")
# i=0;
# for a in dict_dict.keys():
#                         i=i+1
#                         df = pd.DataFrame({'index':[i],'type': [a]})
#                         df.to_csv('E:/桌面/非关/0.8/typename.csv',index=False, mode='a+', header=None)
#
#



# # for i in range(0,10):
# #     keys = data_pre.loc[i,'genres'].split('|')
# #     for key in keys:
# #         if key in dict.keys():
# #             dict[key] = dict[key] + 1
# #         else:
# #             dict[key]=1
# # #print(dict)
# # dict = sorted( dict.items(),key = lambda x:x[1],reverse = True)
# # data_back.loc[0] = [data_pre.loc[1,'userId'],dict[0],dict[1]]
# # print(data_back.loc[0])
# # # for i in range(1,len(data_pre)):
# # #     if( data_pre.loc[i, 'userId']==data_pre.loc[i-1,'userId']):
# # #                 print(data_pre.loc[i,'genres'].split('|'))

