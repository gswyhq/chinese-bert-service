
chinese-bert-service

docker build -t bert_server:20181210 --no-cache -f Dockerfile .

docker run --rm -it bert_server:20181210 bert-serving-start -num_worker=1 -model_dir /tmp/chinese_L-12_H-768_A-12

[致谢](https://github.com/hanxiao/bert-as-service.git)

