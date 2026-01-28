#!/usr/bin/bash
#

python3 -m venv env
source ./env/bin/activate
pip install markdown weasyprint
mv ./md2pdf.py md2pdf
chmod +x md2pdf
echo "\n \n \n"
echo "Usage :"
echo "First do a  'source ./env/bin/activate', then run from terminal :"
echo "$ md2pdf input.md output.pdf"
