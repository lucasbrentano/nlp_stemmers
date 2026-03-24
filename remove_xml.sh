#!/bin/bash
INPUT="dataset/CETENFolha-1.0"
OUTPUT="dataset/CETENFolha-100artigos.txt"

awk '{ print } /<\/ext>/ { count++; if (count >= 100) exit }' dataset/CETENFolha-1.0 \
    | iconv -f ISO-8859-1 -t UTF-8 \
    | sed 's/<[^>]*>//g' \
    | sed '/^[[:space:]]*$/d' \
    > dataset/CETENFolha-100artigos.txt

echo "Arquivo $OUTPUT criado com sucesso!"