# CEI LaTeX Template - Template Guide

## Available Templates

This template is based on NASA LaTeX Docs and customized for CEI. Change the template by modifying the `\documentclass` line in your main `.tex` file:

### Technical Documents

```latex
% Technical Memo (shorter documents, minimal front matter)
\documentclass[template=tech-memo]{nasa-latex-docs}

% Technical Report (longer documents, full front matter)
\documentclass[template=tech-report]{nasa-latex-docs}
```

**Differences:**
- **tech-memo**: Simpler, no TOC/LOF/LOT by default, single author/approver on title page
- **tech-report**: Full featured, TOC/LOF/LOT enabled, multiple authors/approvers pages

### AIAA Publications

```latex
% AIAA Conference Paper
\documentclass[template=aiaa-conference]{nasa-latex-docs}

% AIAA Journal Article
\documentclass[template=aiaa-journal]{nasa-latex-docs}
```

**Note:** AIAA templates have different formatting requirements and document parameters.

---

## Keeping Root Directory Clean

### On Overleaf
**Unfortunately, Overleaf does NOT support moving auxiliary files to subdirectories.**

All `.aux`, `.log`, `.out`, `.bbl`, etc. files will be in the root directory. This is a limitation of Overleaf's compilation system.

**Workaround:** Just ignore the auxiliary files - they're hidden in the file tree by default.

### For Local Compilation

If you're compiling locally (not on Overleaf), you can keep auxiliary files in a `build/` directory:

**Option 1: Use latexmkrc-local**
```bash
# Copy the local configuration
cp latexmkrc-local latexmkrc

# Compile (aux files go to build/)
latexmk -pdf tech-memo-overleaf.tex

# Clean up
latexmk -c
```

**Option 2: Manual pdflatex with output directory**
```bash
# Create build directory
mkdir -p build

# Compile with output directory
pdflatex -output-directory=build tech-memo-overleaf.tex
bibtex8 build/tech-memo-overleaf
pdflatex -output-directory=build tech-memo-overleaf.tex
pdflatex -output-directory=build tech-memo-overleaf.tex

# Move PDF to root
mv build/tech-memo-overleaf.pdf .
```

**Option 3: Use a Makefile**
Create a `Makefile` with build directory support (not included in this package).

---

## File Structure Explanation

```
root/
├── main.tex                   # Main document (edit this)
├── nasa-latex-docs.cls        # Document class (based on NASA template)
├── aiaa.bbx, aiaa.cbx        # Citation styles (must be in root)
├── mcode.sty                  # MATLAB code package (must be in root)
├── latexmkrc                  # Overleaf compilation config
├── latexmkrc-local           # Local compilation config (with build dir)
│
├── packages/                  # LaTeX package configurations
│   └── packages.tex           # Package loading
│
├── templates/                 # Template definitions
│   ├── tech/                  # Technical document templates
│   ├── aiaa/                  # AIAA templates
│   └── doc-params.tex         # Document parameter definitions
│
├── bib/                       # Bibliography files
│   └── main.bib              # Your references
│
├── fig/                       # Your figures
├── images/                    # Logos (CEI, ITA, legacy NASA)
│   ├── CEI_logo.png          # CEI logo (default)
│   ├── ITA_logo.png          # ITA logo (default)
│   └── [NASA logos]          # Legacy logos kept for reference
└── export/                    # Export control templates
```

**Why some files must be in root:**
- LaTeX searches for `.sty`, `.bbx`, `.cbx` files in the root directory first
- Overleaf doesn't allow custom search paths
- Moving them to subdirectories would break compilation

---

## Quick Start Examples

### Switch to Technical Report
```latex
\documentclass[template=tech-report]{nasa-latex-docs}

% Enable all front matter sections
\docTOC[true]
\docLOF[true]
\docLOT[true]
\docLOA[true]

% Add multiple authors
\docAuthor[1]{First Author}{Position}{Division}{Centro Espacial ITA, São José dos Campos}
\docAuthor[2]{Second Author}{Position}{Division}{Centro Espacial ITA, São José dos Campos}
```

### Switch to AIAA Conference Paper
```latex
\documentclass[template=aiaa-conference]{nasa-latex-docs}

% AIAA-specific parameters
\docConference[AIAA SciTech Forum]
\docConferenceDate[January 2025]
\docConferenceLocation[Orlando, FL]
```

---

## Tips

1. **Overleaf users:** Accept that aux files will be in root - it's normal
2. **Local users:** Use `latexmkrc-local` for clean builds
3. **Template switching:** Just change the `\documentclass` line
4. **Multiple documents:** Create separate `.tex` files for each template
