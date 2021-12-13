clean :
	@rm -f assembled.* *.pdf *.epub *.mobi

stylesheet: 
	cd resources/stylesheets && make

assembled.xml : src/*.xml
	xmllint --xinclude src/book.xml > assembled.xml

assembled.markdown : assembled.xml
	pandoc -t latex -f docbook assembled.xml -o book.markdown

assembled.fo : assembled.xml
	xsltproc --output assembled.fo resources/stylesheets/pdf.xsl assembled.xml

validate : assembled.xml
	jing http://docs.oasis-open.org/docbook/docbook/v5.1/os/schemas/rng/docbook.rng assembled.xml

fop : assembled.fo
	fop assembled.fo book.pdf
	open book.pdf
	
pdf : assembled.xml
	pandoc -t latex -o book.pdf assembled.xml -f docbook \
        --toc \
        --toc-depth=1 \
        --top-level-division=chapter \
        -V geometry:a5paper \
        -V geometry:margin=2cm
	
epub : assembled.markdown
	pandoc assembled.markdown -o book.epub

synopsis : synopsis.xml
	pandoc -t latex -o synopsis.pdf src/synopsis.xml -f docbook
