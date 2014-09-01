
%.pdf : %.fig
	fig2dev -L pdf $< > $@

DOCNAME = calculus
TEXNAME = $(DOCNAME).tex
PDFNAME = $(DOCNAME).pdf

.PHONY : all clean

all : $(PDFNAME)

$(PDFNAME) : *.tex logo.pdf
	pdflatex $(TEXNAME)
	pdflatex $(TEXNAME)

clean :
	@rm -fv *.aux
	@rm -fv *.log
	@rm -fv logo.pdf
	@rm -fv *.out
	@rm -fv $(PDFNAME)
	@rm -fv sol.tex
	@rm -fv *.toc

