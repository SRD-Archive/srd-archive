echo "3.5_MODERN_SRD Document Bilder"

find * -maxdepth 1 -iname '*.odt' -exec libreoffice --headless --invisible --norestore --convert-to pdf {} \;
find * -maxdepth 1 -iname '*.odt' -exec libreoffice --headless --invisible --norestore --convert-to html {} \;

zip 3.5_MODERN_SRD_HTML.zip *.html
zip 3.5_MODERN_SRD_PDF.zip *.pdf

read -p "Delete PDFs and HTML? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm *.html
    rm *.pdf
fi
