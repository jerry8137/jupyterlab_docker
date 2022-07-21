#! /bin/bash

nvidia-docker run -it --rm -p 9999:8888 --volume /:/host --workdir /host$PWD ufoym/deepo:pytorch-cu102 bash


