# set multiplot layout 1, 2 title "Problème de Stokes" font ",14"

set terminal pdf
hehe = "LU"

set title "Erreur Pression ".hehe
set logscale x
set xlabel "Itérations"
set ylabel "Erreur relative"
plot "output/cas_1/stokes_errors_".hehe."_P1_P0.txt" using 1:3 title "(P1,P0)" w l
replot "output/cas_1/stokes_errors_".hehe."_P1_P1.txt" using 1:3 title "(P1,P1)" w l
replot "output/cas_1/stokes_errors_".hehe."_P1b_P1.txt" using 1:3 title "(P1b,P1)" w l

set output "output/Courbes/pression/".hehe."_Pression.pdf"
replot "output/cas_1/stokes_errors_".hehe."_P2_P1.txt" using 1:3 title "(P2,P1)" w l
