install:
	cd .jupyter-book && make install

clone: 
	git clone https://github.com/jupyter/jupyter-book .jupyter-book

build: clone build_noclone

build_noclone:
	rm -rf .jupyter-book/content
	rm -rf .jupyter-book/_build/*
	cp -r content .jupyter-book/
	cp -r assets .jupyter-book/
	cp toc.yml .jupyter-book/_data/
	cp _config.yml .jupyter-book/_config.yml
	ls .jupyter-book/content/part_1
	cd .jupyter-book && make book

clean: 
	rm -rf .jupyter-book

serve: install 
	cd .jupyter-book && make serve