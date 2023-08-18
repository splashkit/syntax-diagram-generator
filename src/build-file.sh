#!/bin/sh

cd $1
pdflatex -shell-escape -interaction=batchmode $2

rm -f *.aux
rm -f *.log
rm -f *.pdf
# rm -f $2
