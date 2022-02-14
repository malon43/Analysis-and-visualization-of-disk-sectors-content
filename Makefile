NAME=fi-pdflatex
SHELL=/bin/bash

.PHONY: all clean clear
all: $(NAME).pdf
clear:
	-latexmk -c 
	-rm $(NAME).{bbl,run.xml}

clean: clear
	-rm $(NAME).pdf

$(NAME).pdf: $(NAME).tex bibliography.bib
	latexmk -pdf $(NAME).tex
