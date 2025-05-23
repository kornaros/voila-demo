FROM sagemath/sagemath:9.8

RUN sage -python -m pip install voila ipywidgets

# Αντιγράφουμε όλα τα αρχεία στον φάκελο εργασίας
COPY . /home/sage/app
WORKDIR /home/sage/app

# Εκκίνηση με Voilà, μπορείς να τρέξεις όποιο notebook θες με παράμετρο
CMD ["voila", "coin_game.ipynb", "--port=$PORT", "--no-browser", "--Voila.ip=0.0.0.0", "--Voila.configuration.allow_origin='*'"]
