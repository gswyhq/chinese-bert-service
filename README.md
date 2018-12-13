
chinese-bert-service

docker build -t gswyhq/chinese-bert-service --no-cache -f Dockerfile .

docker run --rm -it gswyhq/chinese-bert-service bert-serving-start -num_worker=1 -model_dir /tmp/chinese_L-12_H-768_A-12

[reference](https://github.com/hanxiao/bert-as-service.git)

