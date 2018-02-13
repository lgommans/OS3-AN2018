#!/usr/bin/gnuplot

reset
set terminal png
set out 'cwnd.png'
set xlabel "time (seconds)"
set xrange [4:30]
set ylabel "CWIN size (bytes)"
set title "Congestion window monitoring"
set grid

plot "TcpWestwood-cwnd.data" using 1:2 with linespoints title "cwnd_"



