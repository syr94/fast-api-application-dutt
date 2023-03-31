# FROM - указывает, какой образ использовать
FROM python:3.10.10

# WORKDIR - Указывает рабочую директрию, в которой мы окажемся,
# зайдем в контейнер.
WORKDIR /usr/app

#RUN apt update && apt install python3
# CMD и RUN c помощью этих команд, можно выполнять команды внутри контейнера.
RUN python3 -m pip install fastapi

RUN python3 -m pip install uvicorn[standard]

# COPY - копируем директорию из нашей системы в контейнер
COPY ./app /usr/app

#RUN uvicorn main:app
