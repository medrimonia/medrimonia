%.pdf: %.tex
	pdflatex $< && pdflatex $< && pdflatex $<

TEX_SOURCES=$(wildcard *.tex)

all: book.pdf

book.pdf: ${TEX_SOURCES}

clean:
	rm -f *.aux *.snm *.toc *.log *~