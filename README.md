# Projet Ruby On Rails

Ce dépôt contient les workflows CI/CD pour le projet.

## Workflow Master CI/CD

Ce workflow est déclenché lors d'un push sur la branche master ou selon une planification quotidienne.

### Étapes du workflow

1. **Checkout repository**: Récupère le dépôt.
2. **Install and execution hadolint**: Installe Hadolint pour effectuer des vérifications de conformité sur le fichier Dockerfile.
3. **Build Docker image**: Construit l'image Docker pour le projet.
4. **Run simple test**: Exécute des tests sur le conteneur Docker créé.
5. **Log in to Docker registry**: Connecte au registre Docker en utilisant les informations d'identification.
6. **Use Github Slug Action**: Utilise l'action Github Slug pour obtenir le nom de la branche.
7. **Get branch name**: Récupère le nom de la branche actuelle.
8. **Tag Docker image with branch name**: Ajoute un tag à l'image Docker en utilisant le nom de la branche.
9. **Push Docker image to registry**: Pousse l'image Docker vers le registre en utilisant le tag de la branche.

## Workflow Pull Request CI

Ce workflow est déclenché lorsqu'une Pull Request est ouverte ou mise à jour.

### Étapes du workflow

1. **Checkout repository**: Récupère le dépôt.
2. **Install hadolint**: Installe Hadolint pour effectuer des vérifications de conformité sur le fichier Dockerfile.
3. **Build Docker image**: Construit l'image Docker pour le projet.
4. **Run simple test**: Exécute des tests sur le conteneur Docker créé.

---

## Comment construire le conteneur Docker

Pour construire le conteneur Docker, suivez les étapes ci-dessous :

1. Clonez ce dépôt sur votre machine Ubuntu 22.
2. Assurez-vous que Docker est installé et en cours d'exécution.
3. Ouvrez un terminal et accédez au répertoire racine du projet.
4. Exécutez la commande suivante pour construire le conteneur :

   ```bash
   docker build -t nom-du-conteneur .
5. Exécutez le conteneur :
   docker run -p 3000:3000 nom-du-conteneur
6. Accéder à l'adresse http://localhost:3000/
7. créer ,modifier et supprimer les todos sur l'adresse http://localhost:3000/todos  