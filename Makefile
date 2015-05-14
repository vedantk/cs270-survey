all: $(patsubst %.tex, %.pdf, $(wildcard *.tex))

%.pdf: %.tex ref.bib
	pdflatex $<
	bibtex $(basename $< .tex)
	pdflatex $<
	pdflatex $<

clean:
	rm -f survey.pdf *.aux *.log *.blg *.bbl
