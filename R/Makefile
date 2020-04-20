all:
	for filename in *.Rmd; do Rscript -e "library(rmarkdown); rmarkdown::render('$${filename}', rmarkdown::md_document(variant = 'markdown_strict', ext = '.md'))"; pandoc --from markdown-auto_identifiers --to latex+implicit_figures-auto_identifiers --output $${filename/.Rmd/.tex} $${filename/.Rmd/.md}; done
