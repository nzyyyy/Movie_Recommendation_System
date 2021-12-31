# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
from turtle import left

import numpy as np
import pandas as pd


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')

# See PyCharm help at https://www.jetbrains.com/help/pycharm/

# 数据量处理
# 排序
# data_shao = pd.read_csv('E:/桌面/非关/0.8/10部分/list.csv')
# data = data_shao.sort_values(by=['total','userId','movieId'], ascending=(False,True,True))
# data.to_csv('E:/桌面/非关/0.8/10部分/paixuhou.csv', index=False, mode='a+', header=True)
# 分割,names=['userId','movieId','ratings','timestamp','title','genres']


# data = pd.read_csv('E:/桌面/非关/0.8/mean.csv',dtype = {'column_name' : str})
# print(data['userId'].dtypes)
#
# data['userId'] = data['userId'].apply(int)
# rating = pd.read_csv('E:/桌面/非关/0.8/niubi3.csv')
# print(rating['userId'].dtypes)
# data.to_csv('E:/桌面/非关/0.8/niubi4.csv', index=False, mode='a+', header=True)
#names=['userId', 'userId', 'movieId', 'ratings', 'timestamp', 'title', 'genres', 'f', 'h', 'high','total', 'mean', 'total_time']
# names=['userId', 'movieId', 'label']
#names=['userId', 'hratings']

# data = pd.read_csv('E:/桌面/非关/总0.8/niubi3.csv',header=20,nrows=100)

# print(data)
# # data=data.sample(n=1000000, frac=None, replace=False, weights=None, random_state=None, axis=None)
# #data2=data.drop(axis=1,columns='timestamp')
# label = pd.read_csv('E:/桌面/非关/0.8/label.csv')
# mean = pd.read_csv('E:/桌面/非关/0.8/mean.csv')
# print("start")
# mean['userId']=mean['userId'].astype('int')
# data_pre = pd.merge(data, label,on=['userId','movieId'])
# data_pre = pd.merge(data_pre, mean, on=['userId'])
#
# data_pre.to_csv('E:/桌面/非关/0.8/adad.csv', index=False, mode='a+', header=True)
# data = pd.read_csv('E:/桌面/非关/非关/.csv')
# data = data.sort_values(by=['userId'], ascending=(True))
# print(data)
#
#
# data = pd.read_csv('E:/桌面/非关/总0.8/0.8_user_quchong.csv')
# mean = pd.read_csv('E:/桌面/非关/0.8/mean.csv')
# mean['userId']=mean['userId'].astype('int')
# data_pre = pd.merge(data, mean)
# data_pre.to_csv('E:/桌面/非关/0.8/movie image.csv', index=False, mode='a+', header=True)
# data_pre = pd.merge(rating,data,df,on='userId')
# df2=data.drop_duplicates(subset=[ 'userId'], keep='first')['userId']

# df.to_csv('E:/桌面/非关/0.8/mean.csv', index=True, mode='a+', header=True)
# data_shao = pd.read_csv('E:/桌面/非关/陈晨/sort_list1.csv')
# print(data)
# data = data.sort_values(by=['movieId','userId'], ascending=(True,True))
# # print(data)
# x=data.shape[0]
# xx=x/10
# i=0
# # print("start")
# # #qiege
# while i<10:
#     data_shao = pd.read_csv('E:/桌面/非关/新航/reco'+str(i+1)+'.csv')
#     front=int(xx*i)
#     end= int(xx*(i+1))
#     data_x = data[front:end]
#     print(data_x)
#     i_str=str(i+1)
#     data_x.to_csv('E:/桌面/非关/新航/mean-list'+i_str+'.csv', index=False, mode='a+', header=True)
#     print("finished"+i_str)
#     i = i + 1

#
# data = pd.read_csv('niubi3.csv')
# data=data.sample(n=1000000, frac=None, replace=False, weights=None, random_state=None, axis=None)
# data = data.reset_index(drop=True)
# df = pd.DataFrame(columns=['label'])
# i=0
# for i in range(0,len(data)):
#     if i%1000==0:
#         print(i)
#     rating = data.loc[i,'ratings']
#     if(rating>=3.5):
#         df.loc[i,'label']=1
#     else:
#         df.loc[i,'label']=0
# print("start")
# data['label']=df['label']
# data.to_csv('E:/桌面/非关/马健/tiansheng_label.csv', index=False, mode='a+', header=False)

# data = pd.read_csv('E:/桌面/非关/新航/list-mean.csv',names=['userId','movieId','rating','timestamp','mean'])
# data = pd.read_csv('E:/桌面/非关/总0.8/hsratings.csv',names=['userId','movieId','rating','timestamp'])
# print(len(data))
# mean = pd.read_csv('E:/桌面/非关/马健/mean.csv',names=['userId','mean'])
# data_pre = pd.merge(data,mean,how='left',on='userId')
# #df = data.groupby('userId')
# # df['userId']=data['userId']
# data_pre.to_csv('E:/桌面/非关/新航/list-mean.csv', index=False, mode='a+', header=False)
# #


#data = pd.read_csv('E:/桌面/非关/总0.8/0.8_user_quchong.csv')
dict={}
for i in range(0, 10):
    data = pd.read_csv('E:/桌面/非关/陈晨/reco' + str(i + 1) + '.csv')
    for a in range(0,len(data)):
        x = data.loc[a,'userId']
        list=str(data.loc[a,'movie1'])
        for z in range(1,19):
            name = 'movie'+str(z+1)
            y=data.loc[a,name]
            y = str(y)
            list=list+','+y
        df = pd.DataFrame({'userId': [x], 'List': [list]})
        df.to_csv('E:/桌面/非关/陈晨/cclist' + str(i + 1) + '.csv', index=False, mode='a+', header=False)
    # if (dict.__contains__(x)):
    #     y=str(y)
    #     dict[x]=dict[x]+','+y
    # else:
    #     y = str(y)
    #     dict[x] =y
for k, v in dict.items():
    #print({'userId': [k], 'times': [v]})
    df = pd.DataFrame({'userId': [k], 'List': [v]})
    print(df)
    df.to_csv('E:/桌面/非关/马健/list' + str(a+1) + '.csv',index=False, mode='a+', header=False)
a = a + 1
#

#
# data = pd.read_csv('E:/桌面/非关/0.8/10部分/list0.csv')
# dict={}
# list=[]
# for i in range(0,len(data)):
#
#     x=data.loc[i, 'userId']
#     y=data.loc[i,'movieId']
#     if (dict.__contains__(x)):
#         dict[x].append(y)
#         print("ing")
#     else:
#         dict[x] = list
