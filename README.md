# test_jupyter

Set of notebooks for portable testing with https://gke.mybinder.org/

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/rosatrancoso/test_jupyter/test1_simple)

# docker-compose.yml


    # export UID=`id -u`; export GID=`id -g`; docker-compose up -d

    jupyter:
      build: .
      tty: True
      ports:
        - 8888:8888
    #   volumes:
    #     - $PWD:/home/jovyan/work
      environment:
        - JUPYTER_ENABLE_LAB=yes
        - NB_UID=$UID #$(id -u)
        - NB_GID=$GID #(id -g)

