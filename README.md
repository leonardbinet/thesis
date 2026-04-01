# Product Data-Quality Improvement Through Attribute Prediction

Professional thesis — Telecom ParisTech Post-Master's Degree (BGD), 2018.

## Prerequisites

- [TeX Live](https://tug.org/texlive/) (2025 or later)
- Python 3 with [Pygments](https://pygments.org/) (required by the `minted` package for code highlighting)

### Installing TeX Live

**macOS** (via Homebrew):

```sh
brew install --cask mactex
```

Or install the smaller **BasicTeX** and add the required packages manually:

```sh
brew install --cask basictex
```

Then install the required LaTeX packages:

```sh
sudo tlmgr update --self
sudo tlmgr install \
  preprint sistyle wrapfig verbdef doublestroke dirtytalk \
  enumitem footmisc relsize minted fvextra upquote lineno \
  catchfile xstring framed booktabs caption multirow \
  outlines setspace fancyhdr fancyvrb lm xcolor pgf \
  ragged2e tabularx tools babel-english
```

### Installing Pygments

```sh
pip install Pygments
```

## Build

Generate the PDF:

```sh
make
```

This runs `pdflatex` and `bibtex` to produce `report.pdf`.

## Clean

Remove all generated/temporary files:

```sh
make clean
```
