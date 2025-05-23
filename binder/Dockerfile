FROM ghcr.io/akontog/sagemath:10.6

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV NB_USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root

RUN adduser --disabled-password --gecos "Default user" --uid ${NB_UID} ${NB_USER}

# Install voila and ipywidgets
RUN sage -python -m pip install voila ipywidgets

# Αντιγραφή όλων των αρχείων του repo στον home φάκελο του χρήστη
COPY . ${HOME}/
RUN chown -R ${NB_USER}:${NB_USER} ${HOME}

USER ${NB_USER}

# Δημιουργία συνδέσμου για το Sage kernel στο Jupyter
RUN mkdir -p $(jupyter --data-dir)/kernels
RUN ln -s /sage/venv/share/jupyter/kernels/sagemath $(jupyter --data-dir)/kernels

WORKDIR ${HOME}

CMD ["voila", "coin_game.ipynb", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
