FROM python:3.5

RUN mkdir /app

WORKDIR /app

COPY requirements.txt ./

#ENV IN_DOCKER_CONTAINER Yes

#COPY hello.py /app

ADD . /app/

RUN pip3 install --no-cache-dir -r requirements.txt

#CMD ["python3", "./hello.py"]

EXPOSE 9000
