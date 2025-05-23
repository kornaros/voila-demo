FROM sagemath/sage:latest

# Εγκαθιστούμε τον SageMath kernel για το Jupyter
RUN sage -n jupyter --generate-config && \
    sage -python -m pip install --upgrade pip && \
    sage -python -m pip install ipywidgets && \
    sage -python -m sage_kernel.install

# Εκθέτουμε την default πόρτα για Binder/Jupyter
EXPOSE 8888

# Καθορίζουμε τον working directory
WORKDIR /home/jovyan

# Εκκίνηση Jupyter κατάλληλο για Binder
CMD ["sage", "-n", "jupyter", "--ip=0.0.0.0", "--no-browser", "--NotebookApp.token=''"]
