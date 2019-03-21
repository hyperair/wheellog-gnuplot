set datafile separator ","
# set timefmt "%H:%M:%S"
# set xdata time

filename = ARG1
plot filename using 8:7 title "mileage" with lines
