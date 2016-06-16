@echo off
set pkg=njubachelor
set ltxpar=-interaction=batchmode -synctex=-1
latex %pkg%.ins
xelatex %ltxpar% %pkg%.dtx
makeindex -s gind.ist %pkg%.idx
makeindex -s gglo.ist -o %pkg%.gls %pkg%.glo
xelatex %ltxpar% %pkg%.dtx
xelatex %ltxpar% %pkg%.dtx