FROM ruby:3.1.2

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers du projet dans le conteneur
COPY . .

# Installez les dépendances et exécutez les migrations de la base de données
RUN gem install bundler:2.2.27 && \
    bundle install && \
    rails db:migrate

# Exposez le port sur lequel votre application Rails écoute
EXPOSE 3000

# Définissez le volume pour persister les données de la base de données
VOLUME /app/db

# Démarrez le serveur Rails
CMD ["rails", "server", "-b", "0.0.0.0"]
