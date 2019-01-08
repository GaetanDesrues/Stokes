# set multiplot layout 1, 2 title "Problème de Stokes" font ",14"

set title "Erreur Pression"
plot "output/cas_1/stokes_errors_CG_P1_P0.txt" using 1:3 title "(P1,P0)" w l
replot "output/cas_1/stokes_errors_CG_P1_P1.txt" using 1:3 title "(P1,P1)" w l
replot "output/cas_1/stokes_errors_CG_P1b_P1.txt" using 1:3 title "(P1b,P1)" w l
replot "output/cas_1/stokes_errors_CG_P2_P1.txt" using 1:3 title "(P2,P1)" w l
