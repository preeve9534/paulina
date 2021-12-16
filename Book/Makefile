clean :
	@rm -f book.* synopsis.*

stylesheet: 
	cd resources/stylesheets && make

book.xml : src/*.xml
	xmllint --xinclude src/book.xml > book.xml

book.fo : book.xml
	xsltproc --output book.fo resources/stylesheets/book.pdf.xsl book.xml

synopsis.fo : src/synopsis.xml
	xsltproc --output synopsis.fo resources/stylesheets/synopsis.xsl src/synopsis.xml 

validate : book.xml
	jing http://docs.oasis-open.org/docbook/docbook/v5.1/os/schemas/rng/docbook.rng book.xml

book.pdf : book.fo
	fop -c cfg.xml book.fo book.pdf
	open book.pdf

book.txt : book.fo
	fop book.fo -txt book.txt

synopsis.pdf : synopsis.fo
	fop -c cfg.xml synopsis.fo synopsis.pdf
