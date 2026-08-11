FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

# Minimal TeX Live set for XeLaTeX + the packages main.tex actually uses:
# babel, fontspec, geometry, hyperref, parskip, titlesec, array, enumitem, ragged2e
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-xetex \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-lang-english \
    fontconfig \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
CMD ["bash"]