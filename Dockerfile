FROM debian:10.3-slim

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN aws --version
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install aws-sam-cli
RUN sam --version