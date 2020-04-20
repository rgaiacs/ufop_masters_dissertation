.PHONY: clean R

ALL_TEX = $(wildcard *.tex)

masters_dissertation.pdf: masters_dissertation.tex $(ALL_TEX) R
	latexmk -pdf $<

R:
	make -C R all

clean:
	latexmk -c
