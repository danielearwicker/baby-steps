const count = 16;

for (var n = 0; n < count; n++) {
    const theta = (n * (Math.PI * 2)) / count;

    const x = Math.cos(theta),
        y = Math.sin(theta);

    console.log(`\\draw[->] (0,0) -- (${x.toFixed(3)},${y.toFixed(3)});`);
}
