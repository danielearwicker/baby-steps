function picture(title, ref, content) {
    return `
\\begin{figure}[h]
    \\caption{${title}}
    \\centering
    \\begin{tikzpicture}
${content.map((l) => `        ${l}`).join("\n")}
    \\end{tikzpicture}
    \\label{fig:${ref}}
\\end{figure}
`;
}

// Emit the generated figure on stdout; redirect into a .tex file as needed.
process.stdout.write(
    picture("Things", "things", ["\\draw[dashed] (1,0) -- (0,1);"])
);
