.PHONY: clean

masters_dissertation.pdf: masters_dissertation.tex
	latexmk -pdf $<

clean:
	latexmk -c
