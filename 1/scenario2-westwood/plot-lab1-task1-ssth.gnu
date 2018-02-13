#!/usr/bin/gnuplot

reset
set terminal png
set out 'ssth.png'
set xlabel "time (seconds)"
set xrange [2:4]
set ylabel "SSTH Size (bytes)"
set title "SSTH monitoring"
set grid

plot "TcpWestwood-ssth.data" using 1:2 with linespoints title "ssth_"



