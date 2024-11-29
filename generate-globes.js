const fs = require("fs");

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

fs.writeFileSync(
    "poo.tex",
    picture("Things", "things", ["\\draw[dashed] (1,0) -- (0,1);"])
);
