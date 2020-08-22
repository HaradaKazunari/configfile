FROM ubuntu:latest

RUN apt-get update  && apt-get install git -y && apt-get install vim -y && apt-get install tmux -y && apt-get install fish -y
RUN apt-get install fonts-powerline &&  apt-get install python3



