#!/bin/bash

echo Digite os valores das medidas do paralelepipedo, hondinha. 
read x y z
 p=$x*$x+$y*$y+$z*$z
 p=$(echo "sqrt($p)" | bc -l)
echo Valor diagonal eh igual a $p 
