texfile = lab1-report-1
bibfile = references.bib

build:
	pdflatex -interaction=nonstopmode $(texfile).tex
	pdflatex $(texfile).tex
	pdflatex $(texfile).tex

open:
	xdg-open $(texfile).pdf 2>/dev/null >/dev/null &

o: open

deps:
	# There might be more dependencies, but these were the ones I did not have installed by default
	sudo apt-get install --no-install-recommends texlive-latex-extra
	sudo apt install pdfgrep

clean:
	rm $(texfile)-blx.bib *.aux *.bcf *.pdf *.log *.bbl *.blg *.out *.run.xml *.synctex.gz || :

edit:
	sensible-editor $(texfile).tex

e: edit

once:
	pdflatex -interaction=nonstopmode $(texfile).tex

buildOnChange:
	while :; do inotifywait $(texfile).tex; make once; done

boc: buildOnChange

check:
	grep -n --color=always -i todo $(texfile).tex || :
	@echo
	pdfgrep -n --color=always \\\?\\\? $(texfile).pdf || :
	@echo
	pdfgrep -n --color=always \!\! $(texfile).pdf || :
	@echo
	pdfgrep -n --color=always \\[[^0-9] $(texfile).pdf || :

