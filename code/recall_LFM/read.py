
def get_ave_score(input_file):
    '''得到电影平均分'''
    record_dict, score_dict = {}, {}
    # 打开文件
    with open(input_file) as fp:
        num = 0
        for line in fp:
            if num == 0:
                num += 1
                continue
            item = line.strip().split(',')
            if len(item) < 4:
                continue
            userId, movieId, rating = item[0], item[1], item[2]
            if movieId not in record_dict:
                record_dict[movieId] = [0, 0]
            record_dict[movieId][0] += 1
            record_dict[movieId][1] += float(rating)
        fp.close()
    for movieId in record_dict:
        score_dict[movieId] = round(record_dict[movieId][1]/record_dict[movieId][0],3)
    return score_dict

#抽取训练样本函数
def get_train_data(input_file):
    '''提供训练样本'''
    score_dict = get_ave_score(input_file)
    neg_dict, pos_dict, train_data = {}, {}, []
    with open(input_file) as fp:
        num = 0
        for line in fp:
            if num == 0:
                num += 1
                continue
            item = line.strip().split(',')
            if len(item) < 4:
                continue
            userId, movieId, rating = item[0], item[1], float(item[2])
            #得分大于等于4分，为喜欢，小于4分，就是不喜欢
            if userId not in pos_dict:
                pos_dict[userId] = []
            if userId not in neg_dict:
                neg_dict[userId] = []
            if rating >= 4:
                pos_dict[userId].append((movieId, 1))
            else:
                score = score_dict.get(movieId, 0)
                neg_dict[userId].append((movieId, score))
    fp.close()
    for userId in pos_dict:
        data_num = min(len(pos_dict[userId]), len(neg_dict.get(userId, [])))
        if data_num > 0:
            train_data += [(userId, zuhe[0], zuhe[1]) for zuhe in pos_dict[userId]][:data_num]
        else:
            continue
        sorted_neg_list = sorted(neg_dict[userId], key=lambda element:element[1], reverse=True)[:data_num]
        train_data += [(userId, zuhe[0], 0) for zuhe in sorted_neg_list]
    return train_data