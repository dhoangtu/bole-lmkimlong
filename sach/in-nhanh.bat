
@ECHO ON

set BO_LE="D:\01.lilypond\01.github\bole-lmkimlong\bo-le\sach\nhac-sach.pdf"
set TUAN_THANH="D:\01.lilypond\01.github\bole-lmkimlong\tuan-thanh\sach\nhac-sach.pdf"
set HON_PHOI="D:\01.lilypond\01.github\bole-lmkimlong\hon-phoi\sach\nhac-sach.pdf"
set AN_TANG="D:\01.lilypond\01.github\bole-lmkimlong\an-tang-cau-hon\sach\nhac-sach.pdf"

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages %BO_LE% %TUAN_THANH% %HON_PHOI% %AN_TANG% -- nhac.pdf
pdflatex so-trang-chan-le.tex

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages bia-truoc-a5.pdf so-trang-chan-le.pdf muc-luc.pdf bia-sau-trong-a5.pdf bia-sau-a5.pdf -- bole-lmkimlong.pdf

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages so-trang-chan-le.pdf muc-luc.pdf bia-sau-trong-a5.pdf -- in-sach.pdf

del /s /f /q %GEN% nhac.pdf *.aux *.log so-trang-chan-le.pdf
