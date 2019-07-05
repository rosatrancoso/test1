FROM jupyter/scipy-notebook
LABEL maintainer="RT <rosatrancoso@gmail.com>"

USER root

ADD requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
