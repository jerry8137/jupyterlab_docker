#! /bin/bash

docker run --rm --gpus all -it -p 8848:8888 -p 2232:22 -v /home/ee904-2080ti/Documents/jupyter_data:/home -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes --user root  --name gpu-jupyter_1 jupyterlab:latest
