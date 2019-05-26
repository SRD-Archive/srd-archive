echo "Mini OpenD6 SRD Document Bilder"
echo "Building html, docx, and odt files from Markdown."

pandoc -s -t odt -f markdown_strict "OpenD6 Space SRD.MD" -o "OpenD6 Space SRD.odt"
pandoc -s -t html -f markdown_strict "OpenD6 Space SRD.MD" -o "OpenD6 Space SRD.html"
pandoc -s -t docx -f markdown_strict "OpenD6 Space SRD.MD" -o "OpenD6 Space SRD.docx"
