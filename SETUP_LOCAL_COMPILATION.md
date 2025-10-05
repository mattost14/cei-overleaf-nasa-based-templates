# Setting Up Local LaTeX Compilation

## Current Issue
Your MacPorts installation has a platform mismatch (darwin 21 vs darwin 24), which prevents installing LaTeX packages.

## Solutions (Choose One)

### Option 1: Fix MacPorts (Recommended if you use MacPorts)
```bash
# Update MacPorts itself
sudo port selfupdate

# Reinstall or upgrade MacPorts for your current OS
# Follow: https://trac.macports.org/wiki/Migration

# Then install required LaTeX packages
sudo port install texlive-latex-extra texlive-bibtex-extra
```

### Option 2: Install MacTeX (Easiest - Full TeX Distribution)
```bash
# Download and install MacTeX from:
# https://www.tug.org/mactex/mactex-download.html
# Size: ~4GB (includes all packages)

# After installation, verify:
which pdflatex
pdflatex --version
```

### Option 3: Install BasicTeX + Required Packages (Lightweight)
```bash
# Install BasicTeX (smaller, ~100MB)
brew install --cask basictex

# Update PATH (add to ~/.zshrc or ~/.bash_profile)
export PATH="/Library/TeX/texbin:$PATH"

# Reload shell
source ~/.zshrc  # or source ~/.bash_profile

# Update TeX Live Manager
sudo tlmgr update --self

# Install required packages
sudo tlmgr install etoolbox kvoptions xkeyval geometry fancyhdr \
    titlesec tocloft caption float graphicx xcolor hyperref \
    biblatex biber logreq amsmath amsfonts amssymb lipsum \
    enumitem booktabs multirow longtable array tabularx \
    listings algorithm2e pgf tikz standalone preview \
    pdftexcmds infwarerr kvsetkeys kvdefinekeys \
    ltxcmds pdfescape letltxmacro bitset bigintcalc \
    uniquecounter intcalc etexcmds gettitlestring \
    hycolor auxhook nameref refcount rerunfilecheck \
    stringenc atbegshi atveryend
```

### Option 4: Use Docker (Isolated Environment)
```bash
# Pull TeX Live Docker image
docker pull texlive/texlive:latest

# Compile using Docker
docker run --rm -v "$(pwd):/work" -w /work texlive/texlive:latest \
    pdflatex -interaction=nonstopmode main.tex
```

## Quick Test After Installation

Once you've completed one of the options above, test compilation:

```bash
cd "/Users/BrunoMattos/Documents/FAB/CEI/Latex templates/nasa-overleaf-template"

# Test 1: Check if packages are available
kpsewhich etoolbox.sty

# Test 2: Compile the document
pdflatex -interaction=nonstopmode main.tex
biber main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

## Why Multiple Compilations?

LaTeX documents with bibliographies need multiple passes:
1. **First pdflatex**: Generates auxiliary files and identifies citations
2. **biber**: Processes bibliography and creates .bbl file
3. **Second pdflatex**: Incorporates bibliography
4. **Third pdflatex**: Resolves all cross-references

## Alternative: Just Use Overleaf

If local compilation is too complex, you can skip it entirely:
- Overleaf has all packages pre-installed
- No local setup required
- Just upload and compile

Run: `./create-zip.sh` and upload to Overleaf!

## Recommended Approach

**For immediate use**: Use Overleaf (no local setup needed)

**For long-term**: Install MacTeX (Option 2) - it's the most complete and hassle-free solution for macOS.
