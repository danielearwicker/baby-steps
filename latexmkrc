# latexmk configuration for "Physics at Random"
#
#   latexmk            build notes.pdf (default target)
#   latexmk -pvc       rebuild continuously while editing
#   latexmk -c         remove build/ intermediates (keeps notes.pdf)
#
# All intermediate files (.aux, .log, .toc, .bcf, .fls, .fdb_latexmk ...)
# are written into build/ so the project root stays clean. The final PDF
# is emitted at the repo root as notes.pdf, which is committed and linked
# from readme.md.

$pdf_mode = 1;          # build PDF via pdflatex
$aux_dir  = 'build';    # all intermediates go here
$out_dir  = '.';        # final notes.pdf lands at the repo root

# Use biber for biblatex.
$biber = 'biber %O %S';
