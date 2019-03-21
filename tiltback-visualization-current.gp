set datafile separator ','
set xlabel 'power (W)'
set xrange [-800:800]

set ylabel 'tilt (^o)'
set yrange [-5:5]

filename = ARG1
plot filename using 6:12 with points title 'tiltback progression vs power'
