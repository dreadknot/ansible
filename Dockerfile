FROM ubuntu:14.04
MAINTAINER mike regan <dreadknot@gmail.com>
RUN apt-get update && apt-get install -y python python-dev python-pip git
RUN pip install pyyaml jinja2 awscli boto httplib2 paramiko ansible pygitflow-avh passlib requests