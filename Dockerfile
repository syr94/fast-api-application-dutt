# FROM - указывает, какой образ использовать
FROM ubuntu:20.04

# WORKDIR - Указывает рабочую директрию, в которой мы окажемся,
# зайдем в контейнер.
WORKDIR /usr/app

#RUN add-apt-repository universe
#RUN apt-get update

RUN apt update 
RUN apt install -y python3 python3-pip

#RUN apt update && apt install python3
# CMD и RUN c помощью этих команд, можно выполнять команды внутри контейнера.
RUN pip3 install fastapi

RUN pip3 install uvicorn[standard]

# COPY - копируем директорию из нашей системы в контейнер
COPY ./app /usr/app

RUN uvicorn main:app --host 0.0.0.0 --port 80
