#!/bin/bash
# Script to create a clean zip file for Overleaf upload

echo "🚀 Creating CEI LaTeX Template ZIP for Overleaf..."
echo ""

# Get the parent directory
PARENT_DIR="$(dirname "$(pwd)")"
TEMPLATE_NAME="$(basename "$(pwd)")"
ZIP_NAME="cei-overleaf-template.zip"

# Change to parent directory
cd "$PARENT_DIR"

# Remove old zip if exists
if [ -f "$ZIP_NAME" ]; then
    echo "📦 Removing old zip file..."
    rm "$ZIP_NAME"
fi

# Create zip excluding unnecessary files
echo "📦 Creating zip file..."
zip -r "$ZIP_NAME" "$TEMPLATE_NAME" \
    -x "*.DS_Store" \
    -x "*/.git/*" \
    -x "*.log" \
    -x "*.aux" \
    -x "*.out" \
    -x "*.synctex.gz" \
    -x "*.fdb_latexmk" \
    -x "*.fls"

echo ""
echo "✅ ZIP file created successfully!"
echo "📍 Location: $PARENT_DIR/$ZIP_NAME"
echo ""
echo "📤 Next steps:"
echo "   1. Go to https://www.overleaf.com"
echo "   2. Click 'New Project' → 'Upload Project'"
echo "   3. Select: $ZIP_NAME"
echo "   4. Click 'Recompile' in Overleaf"
echo ""
echo "🎉 Done!"
