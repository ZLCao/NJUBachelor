xelatex njubachelor.ins
xelatex njubachelor.dtx
makeindex -s gind.ist njubachelor.idx
makeindex -s gglo.ist -o njubachelor.gls njubachelor.glo
xelatex njubachelor.dtx
xelatex njubachelor.dtx