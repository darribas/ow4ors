html:
	pandoc -s -S --biblio refs.bib --csl apa.csl -B web/head.html -A web/foot.html -c web/styles.css ow4ors.md -o index.html

pdf:
	pandoc -s -S --biblio refs.bib --csl apa.csl -H web/include.tex -B web/head.tex ow4ors.md -o ow4ors.pdf

doc:
	pandoc -s -S --biblio refs.bib --csl apa.csl ow4ors.md -o ow4ors.doc

all:
	pandoc -s -S --biblio refs.bib --csl apa.csl -B web/head.html -A web/foot.html -c web/styles.css ow4ors.md -o index.html
	pandoc -s -S --biblio refs.bib --csl apa.csl -H web/include.tex -B web/head.tex ow4ors.md -o ow4ors.pdf
	pandoc -s -S --biblio refs.bib --csl apa.csl ow4ors.md -o ow4ors.doc

count:
	pandoc -s -S --biblio refs.bib --csl apa.csl ow4ors.md -o ow4ors.tex
	texcount ow4ors.tex
	rm ow4ors.tex

