FILE=CV
LATEX=${FILE}.tex
DVI=${FILE}.dvi
PS=${FILE}.ps
PDF=Mars_Tonnelier.pdf

forsure: all

all: pdf
	rni ${FILE}.pdf ${PDF} 
	[ -d logs ] || mkdir logs
	mv *.aux *.log *.out logs/ -Force

pdf: 
	pdflatex ${FILE}


clean:
	rm -Force *.blg, *.bbl, *.aux, *.dvi, *.log, *.ps, *.lof