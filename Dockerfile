FROM jupyter/scipy-notebook
LABEL maintainer="RT <rosatrancoso@gmail.com>"

USER root

ADD requirements.txt /tmp
RUN conda install --file /tmp/requirements.txt &&\
    conda install vim 
