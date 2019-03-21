set datafile separator ","
# set timefmt "%H:%M:%S"
# set xdata time

set xlabel "distance (km)"

set ylabel "battery percentage (%)"
set yrange [0:100]

set y2label "voltage (V)"
set y2range [70:84]
set y2tics

set autoscale x

filename = ARG1
plot filename using ($8/1000):7 title "percentage" with lines, \
     filename using ($8/1000):4 title "voltage" axes x1y2 with lines
