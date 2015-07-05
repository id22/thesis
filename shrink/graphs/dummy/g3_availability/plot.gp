set terminal pdf dashed fsize 14

set ylabel "Server Availablity (%)"

set xlabel "Load Balancing Frequency/hr"

set logscale x 2

#set logscale y

set output "availability.pdf"

set key bottom samplen 2.5

plot "data" u 1:2 w lp lw 6 ps 3 t columnhead,  "data" u 1:3 w lp lw 6 ps 3 lc 1 t columnhead,  "data" u 1:4 w lp lw 6 ps 3 lc 1 t columnhead;
