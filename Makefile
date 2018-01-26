all:
	pdflatex report.tex && biber report && pdflatex report.tex

index:
	pdflatex report.tex && texindy --language english report.idx && pdflatex report.tex && pdflatex report.tex && pdflatex report.tex
