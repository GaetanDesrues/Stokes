FF = FreeFem++

CT1 :
	$(FF) -v 0 code/stokes_CT1.edp

CT2 :
	$(FF) -v 0 code/stokes_CT2.edp

Usa :
	$(FF) -v 0 code/stokesUsawa.edp

plot :
	gnuplot -p plot_V.gnu
	gnuplot -p plot_P.gnu
