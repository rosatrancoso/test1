FROM jupyter/scipy-notebook
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER root

RUN conda install --yes \
        vim \
        xarray \
        s3fs \
        smart_open \
        cartopy &&\
    conda clean --all -f -y

