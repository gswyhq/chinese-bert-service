FROM tensorflow/tensorflow:1.12.0-py3

#FROM tensorflow/tensorflow:1.12.0-gpu-py3

RUN pip install bert-serving-server==1.5.4
RUN pip install bert-serving-client==1.5.4

RUN apt-get update && apt-get install -y git wget
RUN echo "source /usr/share/bash-completion/completions/git" >> ~/.bashrc

RUN git clone https://github.com/hanxiao/bert-as-service.git /app

RUN wget -c -t 0 https://storage.googleapis.com/bert_models/2018_11_03/chinese_L-12_H-768_A-12.zip -O /tmp/chinese_L-12_H-768_A-12.zip
RUN cd /tmp && unzip chinese_L-12_H-768_A-12.zip

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

WORKDIR /app

EXPOSE 5555
EXPOSE 5556

#ENTRYPOINT []
CMD ["/app/docker/entrypoint.sh"]

# docker build -t bert_server:20181210 --no-cache -f Dockerfile .
# bert-serving-start -num_worker=1 -model_dir /tmp/chinese_L-12_H-768_A-12


