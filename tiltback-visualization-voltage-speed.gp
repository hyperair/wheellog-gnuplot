set datafile separator ','

set xlabel 'speed (km/h)'
set xrange [0:35]
unset xdata

set ylabel 'tilt (^o)'
set yrange [-5:5]
unset ydata

set zlabel 'voltage (V)'
set zrange [69:84]
unset zdata

filename = ARG1
splot filename using 3:12:4 title 'tilt' with dots
