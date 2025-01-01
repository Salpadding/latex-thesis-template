%.pdf: %.tex
	xelatex $<

main.pdf: main.tex fonts.tex sample.tex abstract.tex abstractenv.tex toc.tex
	xelatex $<

default: main.pdf

clean: FORCE
	$(if $(wildcard *.aux *.log),rm $(wildcard *.aux *.log),:)
	touch main.tex


.PHONY: FORCE