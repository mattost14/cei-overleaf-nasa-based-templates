# GitHub Repository Setup Guide

This document provides instructions for setting up this CEI LaTeX template as a GitHub repository.

## Repository Information

**Repository Name Suggestion**: `cei-overleaf-latex-template`

**Description**: LaTeX template for Centro Espacial ITA (CEI) documents, based on NASA LaTeX Docs. Optimized for Overleaf with CEI and ITA branding.

**Topics/Tags**: 
- `latex`
- `overleaf`
- `template`
- `cei`
- `ita`
- `technical-writing`
- `documentation`
- `aerospace`

## Quick Setup

### 1. Create GitHub Repository

```bash
# Navigate to the template directory
cd "/Users/BrunoMattos/Documents/FAB/CEI/Latex templates/cei-overleaf-nasa-based-templates"

# Initialize git (already done)
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: CEI LaTeX template based on NASA LaTeX Docs

- Added CEI and ITA logos as defaults
- Updated all documentation for CEI context
- Maintained backward compatibility with NASA logos
- Added comprehensive README and documentation
- Added .gitignore for LaTeX projects
- Added LICENSE (Apache 2.0)
"

# Add remote (replace with your GitHub repository URL)
git remote add origin https://github.com/YOUR_USERNAME/cei-overleaf-latex-template.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### 2. Repository Settings

After creating the repository on GitHub:

1. **Add Description**: 
   > LaTeX template for Centro Espacial ITA (CEI) documents, based on NASA LaTeX Docs. Optimized for Overleaf with CEI and ITA branding.

2. **Add Topics**: `latex`, `overleaf`, `template`, `cei`, `ita`, `technical-writing`, `documentation`, `aerospace`

3. **Enable Issues**: For bug reports and feature requests

4. **Add README Badges** (optional):
   ```markdown
   ![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)
   ![LaTeX](https://img.shields.io/badge/LaTeX-Template-green.svg)
   ![Overleaf](https://img.shields.io/badge/Overleaf-Ready-brightgreen.svg)
   ```

## Repository Structure

```
cei-overleaf-latex-template/
├── README.md                    # Main documentation
├── LICENSE                      # Apache 2.0 license
├── CHANGELOG.md                 # Version history
├── .gitignore                   # Git ignore rules
├── GITHUB_SETUP.md             # This file
│
├── QUICK_START.md              # Quick start guide
├── OVERLEAF_SETUP.md           # Overleaf setup instructions
├── TEMPLATE_GUIDE.md           # Template usage guide
├── SETUP_LOCAL_COMPILATION.md  # Local compilation setup
├── TROUBLESHOOTING.md          # Common issues and solutions
├── OVERLEAF_README.txt         # Text version for Overleaf
│
├── main.tex                    # Main document (CEI configured)
├── nasa-latex-docs.cls         # Document class
├── create-zip.sh               # Script to create Overleaf zip
│
├── images/                     # Logos
│   ├── CEI_logo.png           # CEI logo (default)
│   ├── ITA_logo.png           # ITA logo (default)
│   └── [NASA logos]           # Legacy logos
│
├── templates/                  # Template definitions
├── packages/                   # LaTeX packages
├── bib/                        # Bibliography
├── fig/                        # Figures
├── tex/                        # Content files
├── export/                     # Export control
└── citations/                  # Citation styles
```

## Suggested README Sections

Your `README.md` already includes:
- ✅ Quick Start
- ✅ File Structure
- ✅ How to Use
- ✅ Available Templates
- ✅ Document Parameters
- ✅ Troubleshooting
- ✅ Credits and License

## Release Strategy

### Version 1.0.0 (Initial Release)
Create a GitHub release with:
- **Tag**: `v1.0.0`
- **Title**: "CEI LaTeX Template v1.0.0 - Initial Release"
- **Description**: See `CHANGELOG.md`
- **Assets**: Include `cei-overleaf-template.zip` (create with `./create-zip.sh`)

### Future Releases
- Use semantic versioning (MAJOR.MINOR.PATCH)
- Update `CHANGELOG.md` for each release
- Create GitHub releases with zip files

## Collaboration

### Contributing Guidelines
Consider adding a `CONTRIBUTING.md` file with:
- How to report bugs
- How to suggest features
- Code style guidelines
- Pull request process

### Issue Templates
Create issue templates for:
- Bug reports
- Feature requests
- Documentation improvements

## Maintenance

### Regular Updates
- Keep synchronized with NASA LaTeX Docs updates
- Update logos as needed
- Improve documentation based on user feedback
- Add new templates as required by CEI

### Community
- Encourage CEI team members to contribute
- Share with other ITA departments
- Consider making it public for the broader aerospace community

## Next Steps

1. ✅ Repository is ready for GitHub
2. Create GitHub repository
3. Push code using commands above
4. Add description and topics
5. Create first release (v1.0.0)
6. Share with CEI team
7. Consider adding CI/CD for automated testing

---

**Note**: This template maintains full compatibility with the original NASA LaTeX Docs while providing CEI-specific defaults and branding.
