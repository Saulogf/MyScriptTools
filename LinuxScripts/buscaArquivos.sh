#!/bin/bash

busca="*.pdf"
pathAtual=$(pwd)
pathTarget="/mnt/c/Users/Saulogf/Documents/"
arquivoDestino="arquivosModificar.txt"
destino="$pathAtual/$arquivoDestino"
echo $destino
#cd $pathTarget
#echo $pathTarget
find $pathTarget -name  $busca >> $destino

