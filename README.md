# test_jupyter

Set of notebooks for portable testing with https://gke.mybinder.org/


# export UID=`id -u`; export GID=`id -g`; docker-compose up -d

jupyter:
  build: .
  tty: True
  ports:
    - 8888:8888
#   volumes:
#     - ./notebooks:/home/jovyan/work
  environment:
    - JUPYTER_ENABLE_LAB=yes
    - NB_UID=$UID #$(id -u)
    - NB_GID=$GID #(id -g)

