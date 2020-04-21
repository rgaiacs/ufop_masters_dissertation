.PHONY: draft clean R

ALL_TEX = $(wildcard *.tex)

masters_dissertation.pdf: masters_dissertation.tex $(ALL_TEX) R
	latexmk -pdf $<

draft: masters_dissertation.tex $(ALL_TEX) R
	latexmk -pdf -bibtex- -f $<

R:
	make -C R all

clean:
	latexmk -c
