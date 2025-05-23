FROM sagemath/sagemath:9.8

RUN sage -python -m pip install voila

COPY . /app
WORKDIR /app

ENV PORT=7860

CMD ["voila", "coin_game.ipynb", "--port=7860", "--no-browser", "--ip=0.0.0.0"]
