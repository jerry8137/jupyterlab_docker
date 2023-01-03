FROM ufoym/deepo:pytorch-cu113
RUN apt-get update && curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs
RUN apt-get update && apt-get install -y openssh-server curl
RUN mkdir -p /root/.ssh
RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^#PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo "root:root" | chpasswd
RUN python -m pip install jupyterlab ipympl pytorch_lightning opencv-python-headless ipdb wandb av2 pytorch_gan_metrics pyyaml

# # git extension
# RUN jupyter labextension install  @jupyterlab/git @jupyterlab/debugger && pip install jupyterlab-git && jupyter serverextension enable --py jupyterlab_git
# # debuger
# RUN jupyter labextension install @jupyterlab/debugger && python -m pip install xeus-python ptvsd

ENV NOTEBOOK_APP_TOKEN=passwd NOTEBOOK_DIR=/home
EXPOSE 8888 22 6006
ADD run.sh /run.sh
RUN chmod 755 run.sh
#CMD jupyter lab --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.token=${NOTEBOOK_APP_TOKEN} --notebook-dir=${NOTEBOOK_DIR}
CMD ["/run.sh"]
#RUN echo 'export CUDA_VISIBLE_DEVICES="1"' >> ~/.bashrc
