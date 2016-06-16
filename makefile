# Makefile for NJUBachelor

THESIS = test
THESISCONTENTS = $(wildcard test.tex ./chapters/*.tex ./refs/*.bib)

PACKAGE = njubachelor
SOURCES = $(PACKAGE).ins $(PACKAGE).dtx
CLSFILES = $(PACKAGE).cls $(PACKAGE).cfg
AUXFILES = $(wildcard *.bbl *.hd *.gls *.glo *.synctex *~ *.aux ./chapters/*.aux)
LATEX = xelatex -interaction=batchmode -synctex=-1

ifdef SystemRoot
	RM = del /Q
	OPEN = start
else
	RM = rm -f
	OPEN = open
endif

.PHONY : all doc thesis install clean cleanall distclean

all : doc thesis

install : $(CLSFILES)

$(CLSFILES) : $(SOURCES)
	latex $(PACKAGE).ins

doc : $(PACKAGE).pdf

thesis : $(THESIS).pdf

$(PACKAGE).pdf : $(SOURCES)
	$(LATEX) $(PACKAGE).dtx
	makeindex -s gind.ist -o $(PACKAGE).ind $(PACKAGE).idx
	makeindex -s gglo.ist -o $(PACKAGE).gls $(PACKAGE).glo
	$(LATEX) $(PACKAGE).dtx
	$(LATEX) $(PACKAGE).dtx

$(THESIS).pdf : $(THESISCONTENTS) $(THESIS).bbl
	$(LATEX) $(THESIS)
	$(LATEX) $(THESIS)

$(THESIS).bbl : $(CLSFILES) $(THESISCONTENTS)
	$(LATEX) $(THESIS)
	-bibtex $(THESIS)
	$(RM) $(THESIS).pdf

clean : 
	latexmk -c $(PACKAGE).dtx $(THESIS)
	-@$(RM) $(AUXFILES)

cleanall : clean
	-@$(RM) $(PACKAGE).pdf $(THESIS).pdf

distclean : cleanall
	-@$(RM) $(CLSFILES)
