TEX = pdflatex -shell-escape
BIB = bibtex
SRC = rapport
OUT = report.pdf

.PHONY: all clean

all: $(OUT)

$(OUT): $(SRC).tex biblio.bib $(wildcard *.tex) $(wildcard images/*)
	$(TEX) $(SRC).tex
	$(BIB) $(SRC) || true
	$(TEX) $(SRC).tex
	$(TEX) $(SRC).tex
	mv $(SRC).pdf $(OUT)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.pygtex *.pygstyle
	rm -rf _minted*
