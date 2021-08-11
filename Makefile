all: tikztemplate.tex diagram-1.png

tikztemplate.pdf: tikztemplate.tex
	xelatex tikztemplate.tex

diagram-1.png: tikztemplate.pdf
	pdftoppm tikztemplate.pdf diagram -png

view: diagram-1.png
	feh diagram-1.png

