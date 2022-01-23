asciidoctor -a toc -b docbook -a leveloffset=+1 -o - "README_.adoc" > README_.xml

cat README_.xml | pandoc --standalone --toc --markdown-headings=atx --wrap=preserve -t markdown_strict -f docbook - > README_.md
