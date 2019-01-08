set multiplot layout 1, 2 title "Problème de Stokes" font ",14"
set title "Vitesse"
plot "output/cas_1/stokes_errors_umfpack_P1.txt" using 1:2 title "Erreur Vitesse" w l
set title "Pression"
replot "output/cas_1/stokes_errors_umfpack_P1.txt" using 1:3 title "Erreur Pression" w l
