#!/bin/bash

# Ce script recherche une chaîne de caractères dans un fichier

# Demande à l'utilisateur de saisir le nom du fichier
read -p "Nom du fichier : " filename

# Vérifie si le fichier existe
if [ ! -f "$filename" ]; then
  echo "Erreur : Le fichier '$filename' n'existe pas."
  exit 1
fi

# Demande à l'utilisateur de saisir la chaîne à rechercher
read -p "Chaîne à rechercher : " chaine

# Recherche de la chaîne dans le fichier avec grep -q
if grep -q "$chaine" "$filename"; then
  echo "La chaîne '$chaine' a été trouvée dans $filename."
else
  echo "La chaîne '$chaine' n'a pas été trouvée dans $filename."
fi
