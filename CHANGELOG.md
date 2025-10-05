# Changelog - CEI LaTeX Template

## Version 1.0.0 (2024-10-05)

### Initial CEI Customization

This release represents the initial customization of the NASA LaTeX Docs template for Centro Espacial ITA (CEI).

#### Added
- **CEI and ITA Logos**: Added `CEI_logo.png` and `ITA_logo.png` as default logos
- **Comprehensive Documentation**: 
  - Updated `README.md` with CEI-specific instructions
  - Updated `QUICK_START.md` for CEI branding
  - Updated `OVERLEAF_SETUP.md` with CEI defaults
  - Updated `TEMPLATE_GUIDE.md` with CEI examples
  - Updated `OVERLEAF_README.txt` for CEI context
- **Git Support**:
  - Added `.gitignore` for LaTeX projects
  - Added `LICENSE` file (Apache 2.0)
  - Added this `CHANGELOG.md`

#### Changed
- **Default Logos**: Changed from NASA/Artemis to CEI/ITA logos
  - Updated `templates/doc-params.tex`: Default logos now CEI and ITA
  - Updated `main.tex`: Pre-configured with CEI/ITA logos
- **Document Defaults**:
  - Changed `\docTypeTitle` default from "NASA" to "CEI"
  - Updated author location examples to "Centro Espacial ITA, São José dos Campos"
- **Branding**:
  - Updated all documentation headers to reference CEI
  - Updated `create-zip.sh` to create `cei-overleaf-template.zip`
  - Maintained attribution to original NASA template

#### Kept for Reference
- **Legacy NASA Logos**: All original NASA logos preserved in `images/` folder
  - `NASA_Logo.pdf`
  - `Artemis_Logo.png`
  - `Orion_Logo.png`
- **Original NASA Template Structure**: Maintained full compatibility with NASA LaTeX Docs

#### Removed
- Temporary files: `main.log`, `nasa-overleaf-template.zip`

---

## Based On

This template is based on [NASA LaTeX Docs](https://github.com/nasa/nasa-latex-docs) and maintains full compatibility with the original template system.

### Original NASA LaTeX Docs Features
- Multiple document templates (tech-memo, tech-report, AIAA formats)
- Professional formatting for technical documents
- Bibliography management with BibLaTeX
- Export control templates
- Comprehensive package support

### CEI Customizations
- CEI and ITA branding by default
- Updated documentation for CEI context
- Brazilian Portuguese location references
- Maintained backward compatibility with NASA logos
