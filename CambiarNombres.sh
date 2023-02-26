#!/bin/bash
aux=1
#Quita espacios en blanco
rename 's/\s/_/g' /app/result/*.txt
#Renombra los txt
for i in $( find /app/result -type f -iname "*.txt" )
do
 mv $i /app/result/PrivacyPolicy$aux.txt
 aux=$((aux=aux+1))
done
