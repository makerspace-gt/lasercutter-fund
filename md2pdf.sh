#!/bin/sh
# Abfrage in scripten
[ -z $1 ] && echo Aufruf $0 Dateiname.md angeben && exit

pandoc --from=markdown --output="$1".pdf "$1" \
        --variable=geometry:"a4paper, \
        top=20mm, \
        left=25mm, \
        right=20mm, \
        bottom=10mm, \
        headsep=10mm, \
        footskip=0mm"  \
        --highlight-style=espresso \
        --latex-engine=xelatex


# Falls eine andere Schriftgröße erwünscht ist:
# -V fontsize=12pt \
