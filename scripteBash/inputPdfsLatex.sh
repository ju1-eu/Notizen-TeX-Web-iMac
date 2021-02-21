#!/bin/bash -e
# ju 10-Aug-20

# Tabellen als PDFs in Latex einfügen

# \usepackage{pdfpages}
# alle PDF Seiten im Querformat
#   \includepdf[landscape=true,pages=-]{tabelle.pdf}
# eine Seite pro Seite
#   \includepdf[landscape=true,pages={1}]{tabelle.pdf}
# zwei Seiten pro Seite: nup=<Anzahl der Spalten>x<Anzahl der Zeilen>
#   \includepdf[pages=-,nup= 1x2]{tabelle.pdf}

# Variablen
tex="tex"
tabelle="Tabellen"
QUELLE_1="Ubungsblaetter"
QUELLE_2="Altklausuren"
file_1="Ubungsblaetter-PDFs.tex"
file_2="Altklausuren-PDFs.tex"
file="input-PDFs.txt"
archiv="archiv"  # > $archiv/$file
info="Tabellen als PDFs in Latex einfügen. 'Tabellen/*.pdf ?'"
timestamp=$(date +"%d-%h-%Y")
copyright="ju $timestamp"

echo "+ $info"

# File neu anlegen
printf "%% $copyright $file \n\n" > $archiv/$file
printf "%% $copyright $file_1 \n\n" > $tabelle/$file_1
printf "%% $copyright $file_2 \n\n" > $tabelle/$file_2

cd $tabelle
EXTENSION="pdf" 
# FEHLER unter mac!!!!
#exist=$(find -iname "*.$EXTENSION" | wc -l)
exist=1
if [ $exist -ge 1 ]; then
    # vorhanden
	for i in *.pdf; do
		# Dateiname ohne Endung
		pdfname=`basename "$i" .pdf`
		printf "%% -------\n"  >> ../$archiv/$file		
		printf "\section{$pdfname}\n"  >> ../$archiv/$file
		# \includepdf[scale=0.95, landscape=false,pages={1-1},nup=1x1,frame=false]
		# \includepdf[pages=-]
		printf "\includepdf[pages=-]{$tabelle/$i}\n\n"   >> ../$archiv/$file
	done
fi

cd $QUELLE_1
EXTENSION="pdf" 
# FEHLER unter mac!!!!
#exist=$(find -iname "*.$EXTENSION" | wc -l)
exist=1
if [ $exist -ge 1 ]; then
    # vorhanden
	printf "\chapter{$QUELLE_1}%% book, print anpassen\n\n" >> ../$file_1
	for i in *.pdf; do
		# Dateiname ohne Endung
		pdfname=`basename "$i" .pdf`
		# PDF Dokumente einbinden
		#\section{Tabelle}\label{sec:Tabelle}\index{Tabelle}
		#\includepdf[pages=-]{Tabellen/tabelle.pdf}
		printf "%% -------\n" >> ../$file_1		
		printf "\section{$pdfname}\label{sec:$pdfname}\index{$pdfname}\n" >> ../$file_1
		printf "\includepdf[pages=-]{$tabelle/$QUELLE_1/$i}\n\n"          >> ../$file_1
	done
fi
cd ..

cd $QUELLE_2
EXTENSION="pdf" 
# FEHLER unter mac!!!!
#exist=$(find -iname "*.$EXTENSION" | wc -l)
exist=1
if [ $exist -ge 1 ]; then
    # vorhanden
	printf "\chapter{$QUELLE_2}%% book, print anpassen\n\n" >> ../$file_2
	for i in *.pdf; do
		# Dateiname ohne Endung
		pdfname=`basename "$i" .pdf`
		# PDF Dokumente einbinden
		#\section{Tabelle}\label{sec:Tabelle}\index{Tabelle}
		#\includepdf[pages=-]{Tabellen/tabelle.pdf}
		printf "%% -------\n" >> ../$file_2	
		printf "\section{$pdfname}\label{sec:$pdfname}\index{$pdfname}\n" >> ../$file_2
		printf "\includepdf[pages=-]{$tabelle/$QUELLE_2/$i}\n\n"          >> ../$file_2
	done
fi
cd ../..


#echo "fertig"
