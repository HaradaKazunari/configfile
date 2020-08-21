FROM ubuntu:latest

RUN echo "now building..."
RUN apt-get update  && apt-get install git -y && apt-get install vim -y && apt-get install tmux -y && apt-get install fish -y
COPY .vimrc /
