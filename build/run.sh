#! /bin/bash
service ssh start
jupyter lab --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.token=${NOTEBOOK_APP_TOKEN} --notebook-dir=${NOTEBOOK_DIR}