# Horizontal grid lines only.

set terminal postscript color
set output 'result.eps'

set grid y linetype 1 linecolor 0 linewidth -0.5

# Plots with lines instead of points.
# set style data lines

#set style fill solid 1.0 noborder
set style data lines 

# Legend below the plot. 

#set key outside bottom center horizontal
set key outside right vertical

# Extend the range of the axis a little so the data points don't end up
# on the edge of the plot.

#set offsets graph 0.1, graph 0.1, graph 0.1, graph 0.1

# Remove the border around the plot.

# unset border

set datafile separator "\t"
set key autotitle columnhead


# No tick marks on the right and top.
set xtics nomirror rotate by -45
set ytics nomirror

#set title 'Chart Title'
#set key title "Columns"

set xlabel "Date"
set ylabel "Value"

# Make the lines thicker by setting lw (short for linewidth) larger than 1.
# Pro vypln: 'masks_rotation.txt' using 2:xtic(1) lw 2 with filledcurves above y1=0,\

plot 'gnuplot.txt' using 2:xtic(1) lw 2 with filledcurves above y1=0,\
     'gnuplot.txt' using 3:xtic(1) lw 2 with filledcurves above y1=0,\
     'gnuplot.txt' using 4:xtic(1) lw 2 with filledcurves above y1=0,\
     'gnuplot.txt' using 5:xtic(1) lw 2 with filledcurves above y1=0,\
     'gnuplot.txt' using 6:xtic(1) lw 2 with filledcurves above y1=0,\
     'gnuplot.txt' using 7:xtic(1) lw 2 with filledcurves above y1=0,\
     'gnuplot.txt' using 8:xtic(1) lw 2 with filledcurves above y1=0,\
     'gnuplot.txt' using 9:xtic(1) lw 5 with points,\
     'gnuplot.txt' using 10:11 lw 5 linecolor 7 with errorbars notitle,\
#     'gnuplot.txt' using 10:xtic(1) lw 5 linecolor 7
     
  


#     'data.txt' using 4:xtic(1) lw 3 title 'Celková'
