set datafile separator ","
set timefmt "%Y-%m-%d,%H:%M:%S"

set xdata time
set xlabel 'time'
set format x "%Y-%m-%d\n%H:%M:%S"
set xtics rotate by 45 right
set ylabel 'voltage (V)'

set autoscale xy

filename = ARG1
plot filename using 1:10 title "voltage" with lines
