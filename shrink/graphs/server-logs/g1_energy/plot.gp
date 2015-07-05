set terminal pdf fsize 14
set style fill pattern
set style histogram rowstacked
set style data histograms 
set boxwidth 0.5

set ylabel "Energy (kJ)"
set yrange [0:]
set xrange [-0.5:4]

set key samplen 2  font "Helvetica, 12"
set bmargin 3
set xtics ("AllOn" 0, "Shrink" 1) font "Helvetica, 12"

set output "energy.pdf" 
plot   "data" u 2 lc -1 t columnhead, "" u 3 lc -1 t columnhead, "" u 4 lc -1 t columnhead;

