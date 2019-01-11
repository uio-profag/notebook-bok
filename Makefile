build:
	git clone https://github.com/jupyter/jupyter-book .jupyter-book
	rm -rf .jupyter-book/content
	cp -r content .jupyter-book/
	cp toc.yml .jupyter-book/_data/
	cp .jupyter-book/_config.yml .
	cd .jupyter-book && make install && make book

clean: 
	rm -rf .jupyter-book

serve:
	cd .jupyter-book && make serve