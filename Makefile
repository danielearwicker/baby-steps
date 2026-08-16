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
# Figures (incl. pgfplots/3D) render to inline SVG, but TikZ is slow to
# process, so expect a multi-minute run; --timeout=0 disables LaTeXML's
# default 10-minute cap, which the 3D plots otherwise exceed. The build
# completes with no errors; remaining warnings are "not_parsed" notices
# about deep math semantics (e.g. staggered tensor indices) and do not
# affect how the maths displays.
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
