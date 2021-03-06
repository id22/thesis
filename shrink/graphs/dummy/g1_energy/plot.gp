set terminal pdf fsize 14
set style fill pattern
set style histogram rowstacked
set style data histograms
set ylabel "Energy (kJ)"
set yrange [0:]
set xrange [0:]

set xtics ("AllOn" 1, "Shrink" 2, "Optimal" 3)

set output "energy.pdf" 
plot "data" u 2 lw 6 t "Server", "" u 3 lw 6 lc 1 t "Network"

set output "energy-server.pdf" 
plot "data2" u 2 lw 6 t "Base", "" u 3 lw 6 lc 1 t "Server-Client", "" u 4 lw 6 lc 1 t "Other-Traffic"
