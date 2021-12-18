.DEFAULT_GOAL := readme

readme:
	@echo "make                 - generate this help message"
	@echo "make synopsis.pdf    - render ./src/synopsis.xml as PDF"
	@echo "make book.pdf        - render ./src/book.xml as PDF"

clean :
	@rm -f book.* synopsis.*

stylesheet: 
	cd resources/stylesheets && make

book.xml : src/*.xml
	xmllint --xinclude src/book.xml > book.xml

book.fo : book.xml stylesheet
	xsltproc --output book.fo resources/stylesheets/book.pdf.xsl book.xml

synopsis.fo : src/synopsis.xml stylesheet
	xsltproc --output synopsis.fo resources/stylesheets/synopsis.pdf.xsl src/synopsis.xml 

validate : book.xml
	jing http://docs.oasis-open.org/docbook/docbook/v5.1/os/schemas/rng/docbook.rng book.xml

book.pdf : book.fo
	fop -c cfg.xml book.fo book.pdf
	open book.pdf

book.epub : book.xml
	pandoc -f docbook -o book.epub book.xml

synopsis.pdf : synopsis.fo
	fop -c cfg.xml synopsis.fo synopsis.pdf
	open synopsis.pdf

synopsis.epub : src/synopsis.xml
	pandoc -f docbook -o synopsis.epub src/synopsis.xml
