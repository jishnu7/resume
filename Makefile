#!/usr/bin/make -f

default: compile

watch:
	while sleep 1 ; do find . -name '*.tex' \
		| entr -d make -f ./Makefile ; done

compile:
	pdflatex resume.tex
