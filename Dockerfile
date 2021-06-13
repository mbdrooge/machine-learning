FROM continuumio/miniconda3:4.9.2

# expose port used by jupyter notebook
EXPOSE 8888

# install jupyter and create non root user to launch it
RUN conda install jupyter -y -q && useradd -m nonroot

# select non root user
USER nonroot
RUN conda init bash

# git clone environment and create it
RUN mkdir -p /home/nonroot/notebooks/course/ && cd /home/nonroot/notebooks/course/ && git clone https://github.com/Dataweekends/zero_to_deep_learning_video.git \
    && mv -v ./zero_to_deep_learning_video/* . && rm -rf zero_to_deep_learning_video \
    && conda env create bash

# start jupyter notebooks without token or password in the ztdl environment
CMD ["/bin/bash", "-ic", "conda activate ztdl && jupyter notebook --notebook-dir=/home/nonroot/notebooks --ip='*' --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''"]
