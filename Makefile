TEX=pdflatex
BIB=bibtex
MAIN=thesis_ntentas

.PHONY: all clean cleanall watch

all:
	@latexmk -xelatex -bibtex -interaction=nonstopmode -file-line-error -f $(MAIN).tex

clean:
	@latexmk -c

cleanall:
	@latexmk -C

watch:
	@latexmk -xelatex -bibtex -pvc -interaction=nonstopmode -file-line-error -f $(MAIN).tex
