#!/bin/bash
python3 <<'PY'
from pathlib import Path

LIMIT = 3072

src = Path("index.html").read_text()

# Remove indentation + blank source lines, but KEEP logical line breaks.
lines = []
for line in src.splitlines():
    line = line.strip()
    if line:
        lines.append(line)

html = "\n".join(lines)

# Tiny safe CSS cleanups.
html = html.replace("margin: 0", "margin:0")
html = html.replace(";\"", "\"")

# Escape characters that are problematic in a data: URL.
# % first so we don't escape the % signs we're about to create.
html = html.replace("%", "%25")
html = html.replace("#", "%23")

# Keep JS line boundaries without putting literal newlines in out.txt.
html = html.replace("\n", "%0A")

data = "data:text/html," + html

Path("out.txt").write_text(data)

src_size = len(src.encode())
out_size = len(data.encode())

print(f"index.html: {src_size} bytes")
print(f"out.txt:    {out_size} bytes")
print(f"remaining:  {LIMIT-out_size} bytes")

if out_size > LIMIT:
    print("UH OH: over the 3072 byte limit :(")
else:
    print("SHRINK approved :3")
PY
