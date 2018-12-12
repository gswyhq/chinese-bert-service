#!/usr/bin/python3
# coding=utf-8

from sklearn.metrics.pairwise import cosine_similarity
from bert_serving.client import BertClient

bc = BertClient(ip='172.17.0.2', port=5555)

def main():
    sentences = ['能否保障恶性肿瘤', '恶性肿瘤的定义', '恶性肿瘤是是啥', '恶性肿瘤是什么意思', '恶性肿瘤能否赔偿', '恶性肿瘤怎么赔偿', '恶性肿瘤怎么理解']

    s_vec = bc.encode(sentences)  # 获取句子的向量
    cos_v = cosine_similarity(s_vec)  # 计算向量间的余弦距离； 传入一个变量a时，返回数组的第i行第j列表示a[i]与a[j]的余弦相似度
    ret = list(cos_v[0,:])  # 第一个句子与所有句子的余弦值
    print(ret)
    return ret


if __name__ == '__main__':
    main()