xelatex NJUbachelor.ins
xelatex NJUbachelor.dtx
makeindex -s gind.ist NJUbachelor.idx
makeindex -s gglo.ist -o NJUbachelor.gls NJUbachelor.glo
xelatex NJUbachelor.dtx
xelatex NJUbachelor.dtx