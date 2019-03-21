set datafile separator ","
# set timefmt "%H:%M:%S"
# set xdata time

set xlabel "distance (km)"
set ylabel "battery percentage (%)"
set y2label "current (A)"
set y2range [-10:20]
set y2tics

filename = ARG1
plot filename using ($8/1000):7 title "percentage" with lines, \
     filename using ($8/1000):5 title "current" axes x1y2 with lines
