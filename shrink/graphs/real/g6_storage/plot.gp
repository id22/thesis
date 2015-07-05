set terminal pdf dashed fsize 14

set ylabel "Origin requests (%)"

set xlabel "Storage/server (TB)"

set yrange [0:]

set xrange [0:]

set output "storage-missrate.pdf"

set key top samplen 2.5

plot "data" u 1:2 w lp lw 6 lc -1 ps 3 t columnhead,  "data" u 1:3 w lp lw 6 ps 3 lc -1 t columnhead;


set ylabel "Energy use (x10^6 J)"

set output "storage-energy.pdf"

set key bottom samplen 2.5

plot "data3" u 1:2 w lp lw 6 lc -1 ps 3 t columnhead,  "data3" u 1:3 w lp lw 6 ps 3 lc -1 t columnhead;
