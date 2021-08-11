all: tikztest.tex diagram-1.png

tikztest.pdf: tikztest.tex
	xelatex tikztest.tex

diagram-1.png: tikztest.pdf
	pdftoppm tikztest.pdf diagram -png

view: diagram-1.png
	feh diagram-1.png

