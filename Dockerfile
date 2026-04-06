# Utiliser l'image officielle Node.js Alpine légère
FROM node:18-alpine

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier uniquement package.json et package-lock.json pour installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port (Azure injecte automatiquement le PORT mais on met 3000 par défaut)
EXPOSE 3000

# Commande pour lancer l'application
CMD ["npm", "start"]