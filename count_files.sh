#!/bin/bash
# Compter le nombre de fichiers dans un dossier (sans vérifications)

count=$(find "$1" -type f | wc -l)
echo "Le dossier $1 contient $count fichier(s)."
