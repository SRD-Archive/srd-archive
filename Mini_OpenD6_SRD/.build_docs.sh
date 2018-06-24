echo "Mini OpenD6 SRD Document Bilder"
echo "Building html, docx, and odt files from Markdown."

pandoc -s -t odt -f markdown_strict Mini_OpenD6_SRD.MD -o Mini_OpenD6_SRD.odt
pandoc -s -t html -f markdown_strict Mini_OpenD6_SRD.MD -o Mini_OpenD6_SRD.html
pandoc -s -t docx -f markdown_strict Mini_OpenD6_SRD.MD -o Mini_OpenD6_SRD.docx
