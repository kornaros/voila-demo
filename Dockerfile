FROM sagemath/sagemath:9.8

RUN sage -python -m pip install voila notebook ipywidgets

# Αντιγράφουμε όλα τα αρχεία στον φάκελο εργασίας
COPY . /home/sage/app
WORKDIR /home/sage/app

# Εκκίνηση με Voilà, μπορείς να τρέξεις όποιο notebook θες με παράμετρο
# Αυτή η μορφή είναι πλήρως συμβατή με το Render και δουλεύει σωστά με το binding της πόρτας $PORT.
# CMD ["sh", "-c", "voila coin_game.ipynb --port=$PORT --no-browser --ip=0.0.0.0"]
#CMD ["voila", "coin_game.ipynb", "--port", "${PORT}", "--no-browser", "--ip=0.0.0.0", "--Voila.configuration.allow_origin='*'"]
# Καθαρό CMD χωρίς το πρόβλημα με allow_origin
#CMD ["voila", "coin_game.ipynb", "--port", "8866", "--no-browser", "--ip=0.0.0.0"]
# Ορίζουμε default PORT αν δεν το δώσει το Render
#ENV PORT=8866

#CMD ["voila", "coin_game.ipynb", "--port", "8866", "--no-browser", "--ip=0.0.0.0", "--Voila.configuration.enable_nbextensions=True"]
#CMD ["voila", "coin_game.ipynb", "--port=8866", "--no-browser", "--ip=0.0.0.0"]
CMD voila coin_game.ipynb --port=$PORT --no-browser --ip=0.0.0.0

