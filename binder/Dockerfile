FROM sagemath/sagemath:9.8

RUN sage -python -m pip install voila notebook

COPY . /home/sage/app
WORKDIR /home/sage/app

CMD ["voila", "coin_game.ipynb", "--port=8888", "--no-browser", "--Voila.ip=0.0.0.0", "--Voila.configuration.allow_origin='*'"]
