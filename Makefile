all:
	make gitbook
	make pdfbook

clean:
	rm -rf wsbim2122_data
	rm -rf rnaseq_data
	rm -rf rnaseq_files
	rm -f rnaseq.log

gitbook:
	R -e 'bookdown::render_book(".")'

pdfbook:
	R -e 'bookdown::render_book(".", "bookdown::pdf_book")'
