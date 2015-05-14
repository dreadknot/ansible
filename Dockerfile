FROM ubuntu:14.04
MAINTAINER mike regan <dreadknot@gmail.com>
RUN apt-get update && apt-get install -y python python-dev python-pip git openssh-server
RUN pip install pyyaml jinja2 awscli boto httplib2 paramiko ansible pygitflow-avh passlib requests
RUN /etc/init.d/ssh start
RUN ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
RUN cat /root/.ssh/id_rsa.pub > authorized_keys