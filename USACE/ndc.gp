set datafile separator ","
set xrange [-180:180]
set yrange [-90:90]
plot 'ndc.csv' every ::1 using 13:12 with points pointtype 7 pointsize 1 lc rgb "blue"
