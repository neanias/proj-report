all: pdf

pdf:
	pdflatex report.tex > /dev/null 2>&1 && biber report > /dev/null 2>&1 && pdflatex report.tex > /dev/null 2>&1

index:
	pdflatex report.tex && texindy --language english report.idx && pdflatex report.tex && pdflatex report.tex && pdflatex report.tex
