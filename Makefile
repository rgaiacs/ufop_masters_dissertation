.PHONY: clean

masters_dissertation.pdf: masters_dissertation.tex
	make -B -C R all
	latexmk -pdf $<

clean:
	latexmk -c
