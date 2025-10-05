# CEI LaTeX Template - Overleaf Setup Guide

## ✅ Template Status
This template is **ready to upload to Overleaf** and should compile successfully with CEI/ITA branding.

## 📦 What's Included
- ✅ `nasa-latex-docs.cls` - Document class (based on NASA template)
- ✅ `main.tex` - Main document (configured with CEI defaults)
- ✅ `bib/main.bib` - Bibliography file
- ✅ `fig/sample_graph.png` - Sample figure
- ✅ `images/CEI_logo.png` - CEI logo (default)
- ✅ `images/ITA_logo.png` - ITA logo (default)
- ✅ Legacy NASA logos (Artemis, NASA, Orion) for reference
- ✅ All required templates and packages
- ✅ `latexmkrc` - Compilation configuration

## 🚀 Upload to Overleaf

### Method 1: Direct Upload (Recommended)
1. **Zip this folder**:
   ```bash
   # Use the provided script
   ./create-zip.sh
   
   # Or manually:
   zip -r cei-template.zip . -x "*.git*" -x "*.DS_Store" -x "*.log"
   ```

2. **Upload to Overleaf**:
   - Go to https://www.overleaf.com
   - Click "New Project" → "Upload Project"
   - Select `cei-template.zip`
   - Wait for upload to complete

3. **Compile**:
   - Main file should be set to `main.tex`
   - Compiler: **pdfLaTeX** (recommended) or XeLaTeX
   - Click "Recompile"
   - PDF should generate successfully!

### Method 2: GitHub Integration
1. Create a new repository on GitHub
2. Push this folder to the repository
3. In Overleaf: "New Project" → "Import from GitHub"
4. Select your repository

## 🔧 Overleaf Settings

### Compiler Settings
- **Compiler**: pdfLaTeX (default) or XeLaTeX
- **Main document**: `main.tex`
- **TeX Live version**: 2020 or later (Overleaf default is fine)

### Expected Compilation
The template uses:
- **Template type**: Technical Memorandum (`template=tech-memo`)
- **Bibliography**: BibLaTeX with Biber backend
- **Figures**: Sample graph included

## 📝 Customization

### Change Document Type
Edit line 12 of `main.tex`:
```latex
\documentclass[template=tech-memo]{nasa-latex-docs}
```

Available templates:
- `template=tech-memo` - Technical Memorandum
- `template=tech-report` - Technical Report
- `template=aiaa-journal` - AIAA Journal
- `template=aiaa-conference` - AIAA Conference

### Customize Document Metadata
Edit the parameters in `main.tex` (already configured with CEI defaults):
```latex
\docTitle[Your Document Title]
\docNumber[TM-2025-001]
\docDate[\today]
\docTypeTitle[CEI]
\docAuthor[1]{Your Name}{Position}{Division}{Centro Espacial ITA, São José dos Campos}
\docAbstract[Brief abstract of your document...]

% Logos (CEI and ITA by default)
\docLogo[images/CEI_logo]
\docOrgLogo[images/ITA_logo]
```

### Edit Content
- **Main content**: Edit directly in `main.tex` or create separate files in `tex/`
- **Add figures**: Place in `fig/` folder
- **Bibliography**: Edit `bib/main.bib`
- **Change logos**: Modify `\docLogo` and `\docOrgLogo` parameters

## 🐛 Troubleshooting

### If compilation fails on Overleaf:

1. **Check compiler**: Ensure pdfLaTeX is selected
2. **Clear cache**: Click "Logs and output files" → "Clear cached files"
3. **Recompile**: Try compiling 2-3 times (for bibliography)
4. **Check logs**: Look for specific error messages

### Common Issues:

**Bibliography not showing?**
- Compile 2-3 times (first run processes citations, second run generates bibliography)
- Ensure you have `\cite{nasa-latex-docs}` in your content

**Figure not appearing?**
- Check file path: `\includegraphics{fig/sample_graph.png}`
- Ensure image file exists in `fig/` folder

**Missing packages?**
- Overleaf has all required packages pre-installed
- If error persists, check TeX Live version in Overleaf settings

## 📚 Resources

- **Original NASA Template**: https://github.com/nasa/nasa-latex-docs
- **NASA LaTeX Docs**: https://nasa.github.io/nasa-latex-docs/html
- **Overleaf Help**: https://www.overleaf.com/learn
- **CEI Template**: Customized for Centro Espacial ITA

## ✨ Next Steps

1. Upload to Overleaf using Method 1 above
2. Verify compilation succeeds with CEI/ITA logos
3. Customize document parameters for your specific needs
4. Share with your CEI team!

---

**Note**: Local compilation may fail due to missing LaTeX packages. This is normal. The template is optimized for Overleaf, which has all required packages pre-installed.
