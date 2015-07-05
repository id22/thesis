set terminal pdf dashed fsize 14

set xlabel "Power law exponent"

set ylabel "Cache Misses (%)"

set yrange [0:]

set output "popularity-missrate.pdf"

set key bottom samplen 2.5

plot "data" u 1:2 w lp lw 6 ps 3 t columnhead,  "data" u 1:3 w lp lw 6 ps 3 lc 1 t columnhead;

set ylabel "Energy use (x10^6 J)"

set output "popularity-energy.pdf"

plot "data2" u 1:2 w lp lw 6 ps 3 t columnhead,  "data2" u 1:3 w lp lw 6 ps 3 lc 1 t columnhead;
