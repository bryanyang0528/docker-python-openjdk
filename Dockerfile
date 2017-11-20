FROM python:2.7.13-jessie 

RUN echo "deb http://http.debian.net/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list &&\
    apt-get update -y && apt-get install -y -t jessie-backports openjdk-8-jre-headless &&\
    echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' > /root/.bashrc


