set terminal pdf dashed fsize 14

set xlabel "Time"

set ylabel "Cache misses (%)"

set yrange [0:]

set key bottom samplen 2.5

set output "serverfail-missrate.pdf"

plot "data" u 1:2 w lp lw 6 ps 3 t columnhead,  "data" u 1:3 w lp lw 6 ps 3 lc 1 t columnhead;


set ylabel "Availabilty (100%)"

set yrange [99:100]

set output "serverfail-availability.pdf"

plot "data2" u 1:2 w lp lw 6 ps 3 t columnhead,  "data2" u 1:3 w lp lw 6 ps 3 lc 1 t columnhead;
