clean :
	@rm -f assembled.xml *.pdf *.epub *.mobi

assembled.xml : src/book.xml
	xmllint --xinclude src/book.xml > assembled.xml

pdf : assembled.xml
	pandoc -t latex -o book.pdf assembled.xml -f docbook \
        --toc \
        --toc-depth=1 \
        --top-level-division=chapter \
        -V geometry:a5paper \
        -V geometry:margin=2cm
	
epub : assembled.xml
	pandoc -t latex -o book.epub assembled.xml -f docbook \
	--toc \
        --toc-depth=1 \
        --top-level-division=chapter \
	--epub-cover-image=resources/images/Johan_Jacob_le_Fèvre_de_Montigny_\(1840-1881\).jpg

synopsis : synopsis.xml
	pandoc -t latex -o synopsis.pdf src/synopsis.xml -f docbook
