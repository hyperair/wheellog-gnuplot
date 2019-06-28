set datafile separator ','
set xlabel 'speed (km/h)'
set xrange [0:30]

set ylabel 'tilt (^o)'
set yrange [-8:8]

filename = ARG1
plot filename using 3:($5 < 3 ? $12 : 1/0) with points title 'tiltback progression at speed (current < 3A)' lc rgbcolor '#00009900' , \
     filename using 3:((3 < $5 && $5 < 5) ? $12 : 1/0) with points title 'tiltback progression at speed (3A < current < 5A)' lc rgbcolor '#00555500', \
     filename using 3:((5 < $5) ? $12 : 1/0) with points title 'tiltback progression at speed (current > 5A)' lc rgbcolor '#00990000'
