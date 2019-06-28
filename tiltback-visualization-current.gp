set datafile separator ','
set xlabel 'power (W)'
set xrange [-2000:2000]

set ylabel 'tilt (^o)'
set yrange [-5:5]

filename = ARG1
set grid
plot filename using 6:12 with points title 'tiltback progression vs power'
