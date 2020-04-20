ALL_RMD = $(wildcard *.Rmd)
ALL_TEX = $(subst .Rmd,.tex,$(ALL_RMD))

%.md: %.Rmd
	Rscript -e "library(rmarkdown); rmarkdown::render('$<', rmarkdown::md_document(variant = 'markdown', ext = '.md'))"

%.tex: %.md
	pandoc --from markdown-auto_identifiers --to latex+tex_math_dollars+implicit_figures-auto_identifiers --output $@ $<

all: $(ALL_TEX)
