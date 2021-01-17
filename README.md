# README
<!--ju 8-Okt-20 -->
Erstellt Websiten & Latex-Files mit Markdown und Pandoc.
Projekt wurde getestet unter "Ubuntu 18.04.3 LTS" und "Win10" 
(erfordert **Git Bash**)  

# Mitschrift - Kurzbefehle

**Linux-Terminal** oder unter Win10 **Git Bash-Terminal** öffnen

```
# Github-Repository klonen
git clone https://github.com/ju1-eu/Notizen-TeX-Web.git notiz

# Schreiben in Markdown o. Illustrator o. Excel
./projekt.sh  # Schritt 2, 3)
##########################################################
	0) Projekt aufräumen
	1) Projekt erstellen
	2) Markdown in (tex, html5) + sed (Suchen/Ersetzen)
	3) Kapitel erstellen + Scripte ausführen
	4) Fotos optimieren (Web, Latex)
	5) www + index.html
	6) git init
	7) git status + git log
	8) Git-Version erstellen
	9) Backup + Archiv erstellen
##########################################################

# PDF erstellen
# Anpassen: content/inhalt.tex
# Kopie:    tex-pandoc/*.tex -> tex/
make distclean
make
make clean

# Git Version
./projekt.sh  # Schritt 8) oder
git add .
git commit -a
git push      # Github-Repository

# Backup
./projekt.sh  # Schritt 9)
```  
    
# Software

- Git Bash[^1]
- Github-Repository klonen[^2]
- Texlive (Latex)[^3]
- Pandoc (Dokumentenconverter)[^4]
- Imagemagick (Bildbearbeitung)[^5]
- Editor Visual Studio Code[^6]
- Editor Atom[^7]
- Editor Notepad++[^8]
- TeXstudio (Latexeditor)[^9]
- Tablesgenerator (Latex / Markdown)[^10] 
- hpi-dokumentvorlagen-latex (Hasso-Plattner-Institut (HPI) Potsdam)[^11] 
- Zotero (Literaturverwaltung)[^12]
- Wordpress[^13]
- XAMPP Apache + MariaDB + PHP[^14]
- Filezilla[^15]
- VM VirtualBox[^16]
- Ubuntu (Desktop / Server)[^17]
- Wordpress-themes[^18]
- themecheck (Wordpress-themes)[^19]
- ghostscript Z.B eps in pdf[^20]

[^1]: <https://git-scm.com/downloads>
[^2]: <https://github.com/ju1-eu/Notizen-TeX-Web.git>
[^3]: <https://www.tug.org/texlive/>
[^4]: <https://pandoc.org/installing.html>
[^5]: <https://imagemagick.org/script/download.php>
[^6]: <https://code.visualstudio.com/>
[^7]: <https://atom.io/>
[^8]: <https://notepad-plus-plus.org/downloads/>
[^9]: <https://www.texstudio.org/>
[^10]: <https://www.tablesgenerator.com/latex_tables>
[^11]: <https://osm.hpi.de/theses/tipps#dokumentvorlagen-latex>
[^12]: <http://www.zotero.org/>
[^13]: <https://de.wordpress.org/download/>
[^14]: <https://www.apachefriends.org/de/index.html>
[^15]: <https://filezilla-project.org/>
[^16]: <https://www.virtualbox.org/>
[^17]: <https://ubuntu.com/download>
[^18]: <https://de.wordpress.org/themes/>
[^19]: <https://themecheck.info/>
[^20]: <https://www.ghostscript.com/>

# Erste Schritte

**Files anpassen:**

1. `scripteBash/sed.sh`
	- codelanguage: `HTML5, Python, Bash, C, C++, TeX`
	- CMS Server Pfad: `https://bw-ju.de/#`
	- Bildformat: svg, png, jpg, webp
2. `scripteBash/gitversionieren.sh`
	- "/media/jan/usb/repos/notizenUbuntu"
	- "/media/jan/virtuell/repos/notizenUbuntu"
3. `projekt.sh`
	- THEMA="Notizen-TeX-Web"
	- "/media/jan/usb/backup/notizenUbuntu"
	- "/media/jan/virtuell/backup/notizenUbuntu"
	- "/media/jan/usb/archiv/notizenUbuntu"
	- "/media/jan/virtuell/archiv/notizenUbuntu"
4. `content/metadata.tex`
	- Datum, Titel, Autor
5. `content/titelpage.tex`
	- "Grafiken/logo.eps"

**Markdown-Files erstellen**
	
1. Erstelle eine Datei "neu.md" im Ordner "md/"
	- Bilder nach `images/` kopieren
	- Vektorgrafiken  nach `Grafiken/` kopieren
	
2. Script ausführen: `projekt.sh`

**Linux-Terminal** oder unter Win10 **Git Bash-Terminal** öffnen

```
$ ./projekt.sh

  0) Projekt aufräumen
  1) Projekt erstellen
  2) Markdown in (tex, html5) + sed (Suchen/Ersetzen)
  3) Kapitel erstellen + Scripte ausführen
  4) Fotos optimieren (Web, Latex)
  5) www + index.html
  6) git init
  7) git status + git log
  8) Git-Version erstellen
  9) Backup + Archiv erstellen
 10) Beenden?

 Eingabe Zahl >_
```

3. Latex-PDFs erstellen: `make`

``` 
$ make
$ make clean
$ make distclean
```

4. Repository auf Github erstellen

# Github-Repository erstellen -- klonen

GitHub's maximum file size of **50 MB**

**Repository auf Github erstellen**

```
# HTTPS oder SSH
HTTPS: https://github.com/ju1-eu/Notizen-TeX-Web.git
SSH: git@github.com:ju1-eu/Notizen-TeX-Web.git

# create a new repository 
echo "# README" >> README.md
git init
git add .
git commit -m "git init"
                
# or push an existing repository 
git remote add origin https://github.com/ju1-eu/Notizen-TeX-Web.git
git push -u origin master
```

**Github-Repository klonen**

```
git clone https://github.com/ju1-eu/Notizen-TeX-Web.git
```

# Script Beschreibung

`$ ./projekt.sh`

1. Projekt erstellen
	- Verz. erstellen, wenn nicht vorhanden
2. Markdown in `*.tex und *.html`
	- Markdown in Latex + HTML5 + Wordpress
	- sed > Wordpress
	- sed > Latex
3. Kapitel erstellen + Scripte ausführen
	- Alle Abbildungen "images/" in Markdown speichern.
		- "archiv/input-img.txt"
	- Latex Kapitel erstellen.
		- Kopiere "tex-pandoc/.tex" nach "tex/"
		- "tex/" **Handarbeit...** für opt. Ergebnisse!
		- Kopiere "archiv/inhalt.tex" nach "content/"
		- make -- Latex-PDF erstellen
	- Tabellen als PDFs in Latex einfügen. "Tabellen/ ?"
	- Inhalt vom Projektverzeichnis.
	    - "archiv/Projekt-Inhalt.txt"
	- Quellcode "code/" in Latex speichern.
		- "archiv/Quellcode-files.tex"
	  HTML, Python, Bash, C, C++, TeX
	- Artikel aus den Ordnern erstellen
		- "tex/"
		- "archiv/"
		- "Tabellen/"
		- "content/beispiele/tex/"
		-  wird gespeichert in "Artikel/"
	- Alle Abbildungen "images/" in Latex speichern
		- "archiv/Pics-files.tex"
		- Bildgröße: `width=.80\textwidth`
4) Fotos optimieren (Web, Latex)
5) www + index.html
	- "html/alle-pics.html" erstellen
	- "index.html" erstellen
6) `git init`
7) `git status` + `git log`
8) Git-Version erstellen
	- **Pfade** anpassen in `gitversionieren.sh`
	- lokales Repository: master
	- Github Repository: origin/master
	- Backup Repository: backupUSB/master
		- "/media/jan/usb/repos/notizenUbuntu"
	- Backup Repository: backupHD/master
		- "/media/jan/virtuell/repos/notizenUbuntu"
9) Backup + Archiv erstellen
	- **Pfade** anpassen in `projekt.sh`
	- THEMA="Notizen-TeX-Web"
	- "/media/jan/usb/backup/notizenUbuntu"
	- "/media/jan/virtuell/backup/notizenUbuntu"
	- "/media/jan/usb/archiv/notizenUbuntu"
	- "/media/jan/virtuell/archiv/notizenUbuntu"