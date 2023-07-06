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

## enriched metadata flat file values
[enriched metadata flat file](/data/metadata_dhd_all_enr.csv)
| uid                              | unique ID                                                                                    |
|----------------------------------|----------------------------------------------------------------------------------------------|
| abstract_id                      | abstract id at conference                                                                    |
| conference_acronym               | conference acronym (DHd YYYY)                                                                |
| conference_place                 | conference place                                                                             |
| creators_json                    | json object with authors and their affiliations                                              |
| creator_names                    | author names, separated                                                                      |
| creators_amount                  | amount of authors                                                                            |
| creators_group_type              | type of author group (single, duo, small group, big group)                                   |
| creators_group_publication       | combined value of author group and format_type                                               |
| groups_with_female               | author group type with predicted authors                                                     |
| creators_with_female_YN          | boolean value for female predicted authors                                                   |
| creators_with_female_amount      | amount of female predicted authors                                                           |
| creators_with_male_amount        | amount of male predicted authors                                                             |
| creators_group_interdisciplinary | author group type with different affiliations (INTER) or within the same affiliation (NICHT) |
| title                            | title of the abstract                                                                        |
| format_type                      | format of the abstract (Vortrag, Poster, Workshop, Panel, 'empty')                           |