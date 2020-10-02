#!/bin/bash
shopt -s extglob
echo "Enter a word"
read word
if [[ $word =~ codinclub ]];
then
echo "yes"
else
echo "no"
fi

