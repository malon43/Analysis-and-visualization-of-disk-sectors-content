NAME=fi-pdflatex
SHELL=/bin/bash

.PHONY: all clean
all: $(NAME).pdf
clean:
	-latexmk -C
	-rm $(NAME).{bbl,run.xml}

$(NAME).pdf: $(NAME).tex bibliography.bib
	latexmk -pdf ${NAME}.tex
