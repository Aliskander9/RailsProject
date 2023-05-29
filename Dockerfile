FROM ruby:3.1.2

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers du projet dans le conteneur
COPY . .

# Installez les dépendances
RUN gem install bundler
RUN bundle install

# Exposez le port sur lequel votre application Rails s'exécute
EXPOSE 3000

# Définissez le volume pour persister les données de la base de données
VOLUME /app/db

# Exécutez les migrations de la base de données
RUN rails db:migrate

# Démarrez le serveur Rails
CMD ["rails", "server", "-b", "0.0.0.0"]