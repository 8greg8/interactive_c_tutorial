# Source layer
FROM brendanrius/jupyter-c-kernel

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook
