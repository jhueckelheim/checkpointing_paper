TARGET   = RevolveAPI
PDFLATEX = pdflatex
DOCS     = RevolveAPI.tex
BIBINPUTS = bib_checkpointing.bib

paper1.pdf: ${DOCS} ${BIBINPUTS}
	${PDFLATEX} $<
	bibtex ${TARGET}
	${PDFLATEX} $<
	${PDFLATEX} $<
	rm -f ${TARGET}.out ${TARGET}.aux ${TARGET}.bbl ${TARGET}.blg ${TARGET}.log ${TARGET}.lof ${TARGET}.fff ${TARGET}.ttt *.aux

clean:
	rm -f ${TARGET}.out ${TARGET}.aux ${TARGET}.bbl ${TARGET}.blg ${TARGET}.log
	rm -f ${TARGET}.lof ${TARGET}.fff ${TARGET}.pdf ${TARGET}.ttt *.aux

default: RevolveAPI.pdf

.PHONY: simple
