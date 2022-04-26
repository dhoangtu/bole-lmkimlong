
@ECHO ON

set GEN=".\pdf-generated"

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages D:\01.lilypond\01.github\bole-lmkimlong\an-tang-cau-hon\nhac\*.pdf -- nhac.pdf
pdflatex so-trang-chan-le.tex

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages bia-truoc-a5.pdf bia-trong-a5.pdf so-trang-chan-le.pdf bia-sau-trong-a5.pdf bia-sau-a5.pdf -- bole-lmkimlong.pdf

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages bia-trong-a5.pdf so-trang-chan-le.pdf bia-sau-trong-a5.pdf -- in-sach.pdf

del /s /f /q %GEN% nhac.pdf *.aux *.log so-trang-chan-le.pdf
