# Troubleshooting Guide - Overleaf Compilation

## Citation Not Found Error

If you see: `Citation 'nasa-latex-docs' undefined`

### Solution 1: Check Overleaf Logs
1. Click on **Logs and output files** (icon next to Recompile button)
2. Look for lines containing `biber` or `bibliography`
3. Check if you see: `INFO - Found 1 cites` or similar

### Solution 2: Force Clean Compile
1. In Overleaf, click the **Logs** button
2. Click **Clear cached files** at the bottom
3. Click **Recompile** 
4. Wait for it to finish
5. Click **Recompile** again (2-3 times total)

### Solution 3: Verify Files Are Uploaded
Check that these files exist in your Overleaf project:
- `bib/main.bib` - Your bibliography file
- `aiaa.bbx` - AIAA bibliography style (in root)
- `aiaa.cbx` - AIAA citation style (in root)
- `tech-memo-overleaf.tex` - Main document

### Solution 4: Check Biber is Running
In the Overleaf logs, you should see:
```
This is Biber 2.xx
INFO - This is Biber
INFO - Reading 'output.bcf'
INFO - Found 1 cites
INFO - Processing section 0
INFO - Looking for bibtex format file 'bib/main.bib' for section 0
INFO - Found BibTeX data source 'bib/main.bib'
```

If you DON'T see this, Biber isn't running!

### Solution 5: Manual Biber Check
If Biber still isn't working:
1. Change the backend back to bibtex in `templates/tech/template-tech-format.tex`:
   ```latex
   backend = bibtex,  % Change from biber to bibtex
   ```
2. Recompile 3 times

## AIAA Style Not Found

If you see: `Style 'aiaa' not found`

### Solution:
Make sure `aiaa.bbx` and `aiaa.cbx` are in the **root directory** of your Overleaf project (same level as `tech-memo-overleaf.tex`).

## Undefined References

This is NORMAL on first compile. Just click **Recompile** 2-3 times.

## Images Not Found

Make sure your images are in the correct directories:
- Logos: `images/` folder
- Figures: `fig/` folder

## Still Having Issues?

1. **Delete the Overleaf project completely**
2. **Upload the NEW `tech-memo-overleaf.zip`** (don't reuse old project)
3. **Set `tech-memo-overleaf.tex` as main document**
4. **Compile 3 times**
5. **Check the logs** for specific errors
