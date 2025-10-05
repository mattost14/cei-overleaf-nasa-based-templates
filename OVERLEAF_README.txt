CEI LaTeX Template for Overleaf
================================
Based on NASA LaTeX Docs - Customized for Centro Espacial ITA

QUICK START
-----------
1. Upload cei-overleaf-template.zip to Overleaf (New Project > Upload Project)
2. Ensure main.tex is set as the main document
3. Compile with pdfLaTeX (default compiler)
4. Customize the document parameters at the top of main.tex


PACKAGE FIXES
-------------
The following packages have been moved to the root directory for Overleaf compatibility:

1. mcode.sty (MATLAB code highlighting)
   - Commented out in packages/packages.tex (not loaded by default)
   - To enable: Uncomment line 103 in packages/packages.tex

2. aiaa.bbx and aiaa.cbx (AIAA citation style)
   - Required for bibliography formatting
   - Already enabled and working


CUSTOMIZATION
-------------
Edit the document parameters in main.tex:
- \docTitle[Your Title Here]
- \docNumber[Your Document Number]
- \docDate[\today]
- \docTypeTitle[CEI]
- \docAuthor[1]{Name}{Position}{Division}{Centro Espacial ITA, São José dos Campos}
- \docAbstract[Your executive summary here]
- \docLogo[images/CEI_logo]      % Right logo (CEI by default)
- \docOrgLogo[images/ITA_logo]   % Left logo (ITA by default)

Enable/disable sections:
- \docTOC[true/false]    % Table of Contents
- \docLOF[true/false]    % List of Figures
- \docLOT[true/false]    % List of Tables
- \docLOL[true/false]    % List of Code Listings
- \docLOA[true/false]    % List of Acronyms


TROUBLESHOOTING
---------------
If you encounter compilation errors:
1. Check that all image files exist in the images/ and fig/ directories
2. Verify bibliography file (bib/main.bib) is present
3. Make sure you're using pdfLaTeX compiler
4. Check the Overleaf logs for specific error messages


STRUCTURE
---------
main.tex                  - Main document file (edit this)
nasa-latex-docs.cls       - Document class file (based on NASA template)
packages/packages.tex     - Package definitions
templates/                - Template files
  tech/                   - Technical document templates
    template-tech-memo.tex - Tech memo template
    template-tech-format.tex - Tech memo formatting
  doc-params.tex         - Document parameter definitions
bib/main.bib             - Bibliography file
fig/                     - Your figures directory
images/                  - Logos (CEI, ITA, and legacy NASA logos)
  CEI_logo.png          - CEI logo (default right logo)
  ITA_logo.png          - ITA logo (default left logo)
  NASA_Logo.pdf         - Legacy NASA logo (kept for reference)
  Artemis_Logo.png      - Legacy Artemis logo (kept for reference)
  Orion_Logo.png        - Legacy Orion logo (kept for reference)
export/                  - Export control templates
citations/aiaa/          - AIAA citation style


SUPPORT
-------
Original NASA Template: https://github.com/nasa/nasa-latex-docs
Customized for: Centro Espacial ITA (CEI)
