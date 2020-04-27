ALL_RMD = $(wildcard *.Rmd)
ALL_TEX = $(subst .Rmd,.tex,$(ALL_RMD))

.SECONDARY: $(subst .Rmd,.md,$(ALL_RMD))
.PHONY: all

%.md: %.Rmd
	Rscript -e "library(rmarkdown); rmarkdown::render('$<', rmarkdown::md_document(variant = 'markdown', ext = '.md'))"

%.tex: %.md
	pandoc --no-highlight --from markdown+citations-auto_identifiers --biblatex --bibliography=../masters_dissertation.bib --to latex+tex_math_dollars+implicit_figures+citations-auto_identifiers --output $@ $<

all: $(ALL_TEX)
