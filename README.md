# dhd-chronicles
DHd Chronicles


## Generation of plain text files

### 2015: Extracted from PDF


[Poppler](https://poppler.freedesktop.org)

```sh
for i in $( ls PDF-files/*.pdf ); do pdftotext -nopgbrk "$i"; done
```

### 2016-2023, except 2021: Extracted from TEI/XML

```sh
for i in $(ls DHd-Abstracts-20??/XML-Files/*.xml); do xpath -e '/TEI/text//text()' "$i" > "$i".txt; done
```