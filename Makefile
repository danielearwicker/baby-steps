# "Physics at Random" — build targets
#
#   make            build notes.pdf (default)
#   make pdf        same as above
#   make html       build the LaTeXML HTML edition into build/html/
#   make watch      continuous PDF rebuild while editing (latexmk -pvc)
#   make clean      remove build/ intermediates (keeps committed notes.pdf)
#   make distclean  also remove the generated notes.pdf

MAIN     := notes
HTML_DIR := build/html

.PHONY: pdf html watch clean distclean

pdf:
	latexmk $(MAIN).tex

watch:
	latexmk -pvc $(MAIN).tex

# HTML edition via LaTeXML, split one page per chapter, into build/html/.
# Note: TikZ / pgfplots / tikz-3dplot figures have limited LaTeXML support and
# are slow to process — expect warnings on figures and a multi-minute run; the
# prose and maths convert cleanly. --timeout=0 disables LaTeXML's default
# 10-minute cap, which the 3D plots otherwise exceed.
html:
	mkdir -p $(HTML_DIR)
	latexmlc --dest=$(HTML_DIR)/$(MAIN).html \
	         --splitat=chapter \
	         --navigationtoc=context \
	         --timeout=0 \
	         --log=build/$(MAIN).latexml.log \
	         $(MAIN).tex

clean:
	latexmk -c $(MAIN).tex
	rm -rf $(HTML_DIR)

distclean: clean
	rm -f $(MAIN).pdf
