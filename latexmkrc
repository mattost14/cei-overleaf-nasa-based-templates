# Latexmk configuration for NASA LaTeX Docs
# This ensures proper compilation on Overleaf

$pdf_mode = 1;        # Use pdflatex
$bibtex_use = 2;      # Use biber for bibliography
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# Move auxiliary files to build/ subdirectory (keeps root clean)
# NOTE: Overleaf doesn't support this feature - aux files will stay in root
# For local compilation, uncomment the lines below:
# $aux_dir = 'build';
# $out_dir = 'build';

# Clean up auxiliary files
$clean_ext = 'bbl nav out snm synctex.gz';
