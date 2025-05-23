FROM sagemath/sagemath:latest

RUN sage -pip install voila ipywidgets

COPY . /home/sage/app
WORKDIR /home/sage/app

CMD voila coin_game.ipynb --port=$PORT --no-browser --Voila.configuration.allow_origin="*"
