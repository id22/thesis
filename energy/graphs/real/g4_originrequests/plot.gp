set terminal pdf fsize 13 size  4in, 4in

#set size square

set style fill pattern

set ylabel "Requests (%)"

set yrange [0:10]

set xrange [0.5:2.5]

set xtics ("AllOn" 1, "Shrink" 2)

set bmargin 2.5

set style data histograms

set style histogram rowstacked

set boxwidth 0.4


set output "origin.pdf"

plot  "data" u 2 lc -1 t "Origin", "" u 3 lc -1 t "Other Cache Misses";



set output "origin-off.pdf"

plot "off_cache_perf" u ($2)*100 lc -1 t "Origin", "" u ($3)*100 lc -1 t "Other Cache Misses";



set output "origin-on.pdf"

plot "on_cache_perf" u ($2)*100 lc -1 t "Origin", "" u ($3)*100 lc -1 t "Other Cache Misses";
