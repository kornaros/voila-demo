# Βασική εικόνα με SageMath 9.8 (μπορείς να αλλάξεις έκδοση αν θες)
FROM sagemath/sagemath:9.8

# Εγκαθιστούμε voila και ipywidgets μέσα στο περιβάλλον SageMath
RUN sage -python -m pip install voila ipywidgets

# Αντιγράφουμε όλα τα αρχεία του repo μέσα στο container
COPY . /home/sage/app
WORKDIR /home/sage/app

# Εκκίνηση του voila στο αρχείο notebook (προσαρμόζεις το όνομα αν θες)

CMD ["voila", "coin_game.ipynb", "--port=$PORT", "--no-browser", "--ip=0.0.0.0"]
