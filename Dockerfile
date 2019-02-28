# Source layer
FROM brendanrius/jupyter-c-kernel

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook && \
    pip install --no-cache jupyterlab

# Configure HOME
RUN rm -r ${HOME}/work

# Configure user 
ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}