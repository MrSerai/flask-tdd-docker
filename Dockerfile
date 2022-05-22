# pull official base image]
FROM python:3.10.3-slim-buster

RUN mkdir -p /usr/src/app

# set working directory
WORKDIR /usr/src/app

#set environment variables
ENV PYTHDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#add and install requirments
COPY ./requirements.txt .
RUN pip install -r requirements.txt

#add app
COPY . .

#RUN SERVER
CMD python mannage.py run -h 0.0.0.0



