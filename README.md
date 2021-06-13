### Machine Learning

Om eenvoudig en snel de ontwikkelomgeving op te zetten is gebruik gemaakt van Docker.
In de container wordt de git [repository](https://github.com/Dataweekends/zero_to_deep_learning_video) die voor dit vak gebruikt wordt gecloned en toegevoegd.
Verder maakt de container gebruik van Anaconda en Jupyter Notebooks.

Na het uitvoeren van onderstaande stappen moet de ontwikkelomgeving werken.

- Installeer docker en docker-compose
- Clone deze repository en navigeer naar de `machine-learning` folder.
- Draai `docker-compose up`, eventueel met de `-d` optie.
- De image wordt nu gebouwd waarna de container wordt gestart.
- Navigeer naar `http://localhost:8888` wanneer de container is gestart.
