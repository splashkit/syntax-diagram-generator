#!/bin/sh

cd $1
pdflatex -shell-escape -interaction=batchmode $2

pdftoppm -png "${2%.*}.pdf" > "${2%.*}.png"

rm -f *.aux
rm -f *.log
rm -f *.pdf
rm -f $2
