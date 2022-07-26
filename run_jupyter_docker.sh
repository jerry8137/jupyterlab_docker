#! /bin/bash

docker run --rm --gpus all -it -p 8848:8888 -p 2232:22 -v ~/jupyter_data:/home -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes --user root  --name gpu-jupyter_1 --shm-size 60G softmac/jupyterlab:latest
