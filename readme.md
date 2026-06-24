# Physics at Random

Notes as I (re)learn various topics in physics.

[Available as a PDF](./notes.pdf)

## Building

Requires a TeX distribution (TeX Live) with `latexmk`. Optional HTML edition
needs [LaTeXML](https://math.nist.gov/~BMiller/LaTeXML/).

```sh
make          # build notes.pdf
make watch    # continuous rebuild while editing
make html     # build the HTML edition into build/html/
make clean    # remove build/ intermediates (keeps notes.pdf)
```

All intermediate files are written to `build/` (git-ignored); the final
`notes.pdf` is emitted at the repo root.

## Layout

| Path         | Contents                                             |
| ------------ | ---------------------------------------------------- |
| `notes.tex`  | Main document; `\include`s the chapters              |
| `content/`   | Chapter sources                                      |
| `drafts/`    | Work-in-progress not yet wired into the book         |
| `tools/`     | Node scripts that generate TikZ figures              |
| `build/`     | Generated output (git-ignored)                       |
