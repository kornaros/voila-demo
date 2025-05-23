FROM sagemath/sagemath:9.8

RUN sage -python -m pip install voila notebook ipywidgets

COPY . /home/sage/app
WORKDIR /home/sage/app

CMD ["voila", "coin_game.ipynb", "--port=$PORT", "--no-browser", "--ip=0.0.0.0"]

