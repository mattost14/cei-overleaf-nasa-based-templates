# CEI LaTeX Template for Overleaf

This is a ready-to-use LaTeX template for **Centro Espacial ITA (CEI)** documents, optimized for Overleaf. Based on the NASA LaTeX Docs template, it has been customized with CEI and ITA branding.

## Quick Start

### Option 1: Use on Overleaf (Recommended)

1. **Upload to Overleaf**:
   - Zip this entire folder (or use `create-zip.sh`)
   - In Overleaf: New Project → Upload Project → Select the zip file

2. **Compile**:
   - Main document: `main.tex`
   - Compiler: pdfLaTeX or XeLaTeX
   - Click "Recompile"

### Option 2: Local Compilation

See `SETUP_LOCAL_COMPILATION.md` for detailed instructions on setting up your local LaTeX environment.

## File Structure

```
cei-overleaf-template/
├── main.tex                    ← Your main document (COMPILE THIS)
├── nasa-latex-docs.cls         ← Document class (based on NASA template)
├── tex/                        ← Your content files
├── bib/                        ← Bibliography files (.bib)
├── fig/                        ← Your figures/images
├── images/                     ← Logos (CEI, ITA, and legacy NASA logos)
│   ├── CEI_logo.png           ← CEI logo (default)
│   ├── ITA_logo.png           ← ITA logo (default)
│   ├── NASA_Logo.pdf          ← Legacy NASA logo (kept for reference)
│   ├── Artemis_Logo.png       ← Legacy Artemis logo (kept for reference)
│   └── Orion_Logo.png         ← Legacy Orion logo (kept for reference)
├── packages/                   ← LaTeX packages (don't modify)
├── templates/                  ← Document templates (don't modify)
├── citations/                  ← Bibliography styles (don't modify)
└── export/                     ← Export control templates (don't modify)
```

## How to Use

### Edit `main.tex`

The main document is pre-configured with CEI defaults:

```latex
\documentclass[template=tech-memo]{nasa-latex-docs}

% Document identification
\docTitle[Your Document Title]
\docNumber[TM-2024-001]
\docDate[\today]
\docTypeTitle[CEI]

% Author information
\docAuthor[1]{Your Name}{Position}{Division}{Centro Espacial ITA, São José dos Campos}

% Logos (CEI and ITA by default)
\docLogo[images/CEI_logo]
\docOrgLogo[images/ITA_logo]

\begin{document}
% Your content here
\end{document}
```

### Available Templates

Change the `template=` option in `\documentclass`:

- **`template=tech-memo`** - Technical Memorandum (shorter documents)
- **`template=tech-report`** - Technical Report (longer documents with more sections)
- **`template=aiaa-conference`** - AIAA Conference Paper format
- **`template=aiaa-journal`** - AIAA Journal Article format

### Document Parameters

Key parameters you can customize in `main.tex`:

```latex
% Document identification
\docTitle[Your Title]
\docNumber[Document Number]
\docDate[\today]
\docTypeTitle[CEI]

% Author information
\docAuthor[1]{Name}{Position}{Division}{Location}

% Approver (optional)
\docApprover[1]{Name}{Position}{Division}{Location}

% Logos
\docLogo[images/CEI_logo]        % Right logo
\docOrgLogo[images/ITA_logo]     % Left logo

% Enable/disable sections
\docTOC[true]    % Table of Contents
\docLOF[true]    % List of Figures
\docLOT[true]    % List of Tables
\docLOL[false]   % List of Code Listings
\docLOA[false]   % List of Acronyms

% Executive Summary
\docAbstract[Your executive summary text...]
```

See `templates/doc-params.tex` for all available parameters.

### Add Your Content

1. **Text content**: Edit `main.tex` directly or create separate `.tex` files in `tex/` and include them with `\input{tex/yourfile.tex}`
2. **Figures**: Place images in `fig/` folder
3. **Bibliography**: Add references to `bib/main.bib`

### Using Legacy NASA Logos

If you need to use the original NASA logos for reference or comparison:

```latex
% Use NASA logos instead of CEI/ITA
\docLogo[images/Artemis_Logo]
\docOrgLogo[images/NASA_Logo]
```

Available legacy logos:
- `images/NASA_Logo.pdf`
- `images/Artemis_Logo.png`
- `images/Orion_Logo.png`

## Documentation

- **`QUICK_START.md`** - Quick reference guide
- **`TEMPLATE_GUIDE.md`** - Comprehensive template usage guide
- **`SETUP_LOCAL_COMPILATION.md`** - Local LaTeX setup instructions
- **`OVERLEAF_SETUP.md`** - Overleaf-specific setup guide
- **`TROUBLESHOOTING.md`** - Common issues and solutions

## Troubleshooting

### "File not found" errors
- Ensure all files from this folder are uploaded to Overleaf
- Check that file paths use forward slashes: `tex/file.tex`
- Verify image files exist in the correct folders

### Bibliography not showing
- Add `\addbibresource{bib/main.bib}` before `\begin{document}`
- Use `\cite{key}` in your text to reference entries
- Compile twice for references to update properly

### Figures not appearing
- Place images in `fig/` folder
- Reference as: `\includegraphics[width=3in]{fig/yourimage.png}`
- Supported formats: `.pdf`, `.png`, `.jpg`, `.eps`

### Logo issues
- CEI and ITA logos are PNG files, ensure they're uploaded
- If logos don't appear, check the file paths in `\docLogo` and `\docOrgLogo`
- Logo files must be in the `images/` folder

## Credits and License

This template is based on the [NASA LaTeX Docs](https://github.com/nasa/nasa-latex-docs) project and has been customized for Centro Espacial ITA (CEI).

- **Original NASA Template**: https://github.com/nasa/nasa-latex-docs
- **NASA LaTeX Docs**: https://nasa.github.io/nasa-latex-docs/html
- **Customized for**: Centro Espacial ITA (CEI)

## Contributing

If you find issues or have improvements for this template, please contribute back to the repository.

---

**Ready to compile!** Upload this folder to Overleaf and click Recompile, or compile locally using the instructions in `SETUP_LOCAL_COMPILATION.md`.
