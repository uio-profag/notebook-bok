build:
	git clone https://github.com/jupyter/jupyter-book .jupyter-book
	rm -rf .jupyter-book/content
	rm -rf .jupyter-book/_build/*
	cp -r content .jupyter-book/
	cp toc.yml .jupyter-book/_data/
	cp _config.yml .jupyter-book/_config.yml
	cd .jupyter-book && make install && make book

clean: 
	rm -rf .jupyter-book

serve:
	cd .jupyter-book && make serve