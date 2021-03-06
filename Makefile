# Use the https://github.com/Wandmalfarbe/pandoc-latex-template/releases/tag/v1.4.0 template

# gfm+raw_attribute is not supported, use markdown_github instead
build:
	pandoc README.md postgres.md mysql.md oracle.md sqlserver.md foundationdb.md --metadata-file=metadata.yaml --from=markdown_github+raw_attribute --to=pdf --output=hermitage.pdf --pdf-engine=xelatex --table-of-contents --variable=urlcolor:blue --template=eisvogel --variable=geometry:margin=0.5in --variable=titlepage
