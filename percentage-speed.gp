set datafile separator ","
# set timefmt "%H:%M:%S"
# set xdata time

set xlabel "distance (km)"
set ylabel "battery percentage (%)"
set y2label "speed (km/h)"
set y2range [0:35]
set y2tics

filename = ARG1

plot filename using ($8/1000):7 title "percentage" with lines, \
     filename using ($8/1000):3 title "speed" axes x1y2 with lines
