# CEI LaTeX Template - Quick Start

## 🎯 For Centro Espacial ITA

This template is based on NASA's official LaTeX documentation system and has been customized for CEI (Centro Espacial ITA) with ITA branding.

## ⚡ 3-Step Setup

### 1. Create ZIP File
```bash
# Use the provided script
./create-zip.sh

# Or manually:
zip -r cei-template.zip . -x "*.git*" -x "*.DS_Store"
```

### 2. Upload to Overleaf
- Go to https://www.overleaf.com
- New Project → Upload Project
- Select `cei-template.zip`

### 3. Compile
- Click "Recompile"
- ✅ Done!

## 📋 What You Get

- **Professional formatting** - NASA-standard technical documents with CEI branding
- **Multiple templates** - Tech memos, reports, AIAA formats
- **CEI/ITA logos** - Pre-configured with Centro Espacial ITA branding
- **Bibliography support** - BibLaTeX with proper citations
- **Figure management** - Organized structure for images
- **Ready to use** - No configuration needed

## 🎨 Document Types

Change in `main.tex` line 12:

| Template | Use Case |
|----------|----------|
| `template=tech-memo` | Technical Memorandums |
| `template=tech-report` | Technical Reports |
| `template=aiaa-journal` | AIAA Journal Papers |
| `template=aiaa-conference` | AIAA Conference Papers |

## 📁 File Structure

```
cei-overleaf-template/
├── main.tex              ← Compile this file
├── tex/                  ← Your content here
├── fig/                  ← Your figures here
├── bib/                  ← Your references here
│   └── main.bib
├── images/               ← Logos (CEI, ITA, legacy NASA)
│   ├── CEI_logo.png     ← Default right logo
│   └── ITA_logo.png     ← Default left logo
└── [support files]       ← Don't modify
```

## ✏️ Basic Editing

### 1. Edit Content
Open `tex/sample_content.tex` and replace with your content:
```latex
\section{Introduction}
Your introduction text here...

\section{Methods}
Your methods here...
```

### 2. Add Figures
Place images in `fig/` folder, then:
```latex
\begin{figure}[H]
   \centering
   \includegraphics[width=3in]{fig/your_image.png}
   \caption{Your caption}
   \label{fig:your_label}
\end{figure}
```

### 3. Add Citations
Edit `bib/main.bib`:
```bibtex
@article{your_reference,
   author = "Author Name",
   title = "Paper Title",
   journal = "Journal Name",
   year = "2025"
}
```

Use in text: `\cite{your_reference}`

## 🔍 Need More Help?

See `OVERLEAF_SETUP.md` for detailed instructions and troubleshooting.

---

**Ready to go!** Just zip, upload, and compile. 🚀
