FROM nginx:latest

MAINTAINER Charlie Siu "charlieskc@gmail.com"

RUN apt-get update -y && apt-get -y upgrade && \
    apt-get install -y python3-pip python3-dev

COPY app/requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install -r requirements.txt

COPY app /

ENTRYPOINT [ "python3" ]

#CMD [ "app/app.py" ]