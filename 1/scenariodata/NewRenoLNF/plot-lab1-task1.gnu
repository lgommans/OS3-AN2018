#!/usr/bin/gnuplot

reset
set terminal png
set out 'cwnd.png'
set xlabel "time (seconds)"
set xrange [23:100]
set ylabel "CWIN & SSthresh size (bytes)"
set title "Congestion window monitoring"
set grid

plot "TcpNewReno-cwnd.data" using 1:2 with linespoints title "cwnd_", \
	"TcpNewReno-ssth.data" using 1:($2>=2147483647 ? 0 : $2) with linespoints title "ssthresh_"



