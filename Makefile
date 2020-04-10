PROJECT = diplomski
INCLUDE = $(wildcard chapters/*.tex)
IMAGES = $(wildcard images/*.pdf)
CITATIONS = literatura.bib

all: $(PROJECT).pdf prezentacija.pdf

$(PROJECT).pdf: $(PROJECT).tex $(INCLUDE) $(IMAGES) $(CITATIONS)
	latexmk -pdf -pdflatex="pdflatex -halt-on-error"  $(PROJECT)

# prezentacija.pdf: $(IMAGES) $(CITATIONS) prezentacija.tex
# 	make -C mtheme/ sty
# 	cp mtheme/*.sty .
# 	latexmk -pdf -pdflatex="pdflatex -halt-on-error" prezentacija

# cleanall: remove_sty
# 	latexmk -C

# clean: remove_sty
# 	latexmk -c

# remove_sty:
# 	make -C mtheme/ clean
# 	rm -f *.sty