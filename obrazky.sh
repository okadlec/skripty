#!/bin/bash

function basic {
echo "Zadejte vstupni adresar"
read zdroj
return "$zdroj"
echo "Zadejte vystupni adresar"
read cil
return "$cil"
}

echo "**********Zadej volbu:**********"
echo "1)Konverze"
echo "2)Zmena kvality"
echo "3)Zmena rozmeru"
echo "4)Otoceni obrazku"
echo "5)Efekt charcoal"
echo "6)Efekt implode"
echo "********************************"
read volba

if(volba = 4); then
MIN=0
MAX=360
echo "Zadej pocet stupnu"
read stupne
if (stupne > MIN && stupne < MAX) ; then
convert $zdroj/*.jpg - rotate $stupne $cil/*.jpg

