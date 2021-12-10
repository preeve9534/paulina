clean :
	@rm -f *.pdf *.epub *.mobi

assembled.xml : src/book.xml
	xmllint --xinclude src/book.xml > assembled.xml

pdf : assembled.xml
	pandoc -t latex -o book.pdf assembled.xml -f docbook \
        --toc \
        --toc-depth=1 \
        --top-level-division=chapter \
        -V geometry:a5paper \
        -V geometry:margin=2cm
	
mobi : assembled.xml
	@xslutil db5ToPDF_Book book.xml book.pdf	
	@dbtoepub --stylesheet resources/stylesheets/epub.xsl book.xml
	@ebook-convert book.epub book.mobi --cover "resources/images/Johan_Jacob_le_Fèvre_de_Montigny_(1840-1881).jpg"
	
synopsis : synopsis.xml
	pandoc -t latex -o synopsis.pdf src/synopsis.xml -f docbook
