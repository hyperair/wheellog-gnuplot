set datafile separator ','
set xlabel 'speed (km/h)'
set xrange [0:30]

set ylabel 'tilt (^o)'
set yrange [-5:5]

filename = ARG1
plot filename using 3:12 with points title 'tiltback progression at speed'
