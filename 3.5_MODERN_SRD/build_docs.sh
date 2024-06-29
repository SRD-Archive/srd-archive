echo "3.5_MODERN_SRD Document Bilder"
echo "Building html. docx, and pdf from odt."

find * -maxdepth 1 -iname '*.odt' -exec libreoffice --headless --invisible --norestore --convert-to pdf {} \;
find * -maxdepth 1 -iname '*.odt' -exec libreoffice --headless --invisible --norestore --convert-to html {} \;
find * -maxdepth 1 -iname '*.odt' -exec libreoffice --headless --invisible --norestore --convert-to docx {} \;
find * -maxdepth 1 -iname '*.pdf' -exec pdftotext -layout "{}" "{}.txt" \;
find * -maxdepth 1 -iname '*.txt' -exec unix2dos "{}" \;

#find * -maxdepth 1 -iname '*.html' -exec pandoc -s -t commonmark -f html {} -o {}.md \;

zip 3.5_MODERN_SRD_ODT.zip *.odt
zip 3.5_MODERN_SRD_HTML.zip *.html
zip 3.5_MODERN_SRD_PDF.zip *.pdf
zip 3.5_MODERN_SRD_DOCX.zip *.docx
zip 3.5_MODERN_SRD_TXT.zip *.txt

read -p "Delete PDFs, DOCX, TXT, and HTML? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm ./*.html
    rm ./*.pdf
    rm ./*.docx
    rn ./*.txt
fi
