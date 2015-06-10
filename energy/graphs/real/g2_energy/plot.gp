set terminal pdf fsize 14
set style fill pattern
set style histogram rowstacked
set style data histograms 
set boxwidth 0.5

set ylabel "Energy (kJ)"
set yrange [0:]
set xrange [-0.5:4]

set key samplen 2 spacing 2 font "Helvetica, 12"
set bmargin 3
set xtics ("Shrink" 0, "RandServer\nShutdown" 1, "Alternate\nLB" 2) font "Helvetica, 12"

set output "energy.pdf" 
plot "data" u 2 lw 6 t columnhead, "" u 3 lw 6 lc 1 t columnhead, "" u 4 lw 6 lc 1 t columnhead, "" u 5 lw 6 lc 1 t columnhead;
