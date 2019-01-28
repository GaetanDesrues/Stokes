# set multiplot layout 1, 2 title "Problème de Stokes" font ",14"

set terminal pdf
hehe = "CG_eps=10e-6"
# hehe = "GMRES_eps=10-3"
# hehe = "LU"

set title "Erreur Vitesse ".hehe
set logscale x
set xlabel "Pas d'espace"
set ylabel "Erreur relative"
plot "output/cas_1/stokes_errors_".hehe."_P1_P0.txt" using 1:2 title "(P1,P0)" w l
replot "output/cas_1/stokes_errors_".hehe."_P1_P1.txt" using 1:2 title "(P1,P1)" w l
replot "output/cas_1/stokes_errors_".hehe."_P1b_P1.txt" using 1:2 title "(P1b,P1)" w l

set output "output/Courbes/vitesse/".hehe."_Vitesse.pdf"
replot "output/cas_1/stokes_errors_".hehe."_P2_P1.txt" using 1:2 title "(P2,P1)" w l
