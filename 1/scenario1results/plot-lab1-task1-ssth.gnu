#!/usr/bin/gnuplot

reset
set terminal png
set out 'ssth.png'
set xlabel "time (seconds)"
set xrange [2:10]
set ylabel "SSTH Size (bytes)"
set title "SSTH monitoring"
set grid

plot "TcpNewReno-ssth.data" using 1:2 with linespoints title "ssth_"



