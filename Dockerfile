# Βασιζόμαστε στην επίσημη εικόνα SageMath
FROM sagemath/sagemath:latest

# Εγκαθιστούμε jupyterlab, voila, ipywidgets
RUN sage -python -m pip install --upgrade pip && \
    sage -python -m pip install jupyterlab voila ipywidgets

# Εγκαθιστούμε τον Sage kernel για το Jupyter
RUN sage -python -m sage_kernel.install

# Εκθέτουμε την πόρτα για Binder / Jupyter
EXPOSE 8888

# Εκκίνηση JupyterLab (το Binder συνήθως τρέχει αυτόματα)
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
