#!/bin/bash
busca="*.pdf"
caracterBuscado=":"
substituirPor="-"
pathAtual=$(pwd)
pathTarget="/mnt/c/Users/Saulogf/Documents/"
arquivoleitura="arquivosModificar.txt"
arquivoModificado="arquivoNomesAlterados.txt"
destino="$pathAtual/$arquivoModificado"


while IFS= read -r linha; do
    echo $linha
    novaLinha=$(echo "$linha" | tr ":" "_" )
    #echo $novaLinha >> $destino
    mv $linha $novaLinha >&1>&2
done < $arquivoleitura

