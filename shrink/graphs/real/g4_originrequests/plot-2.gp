set terminal pdf fsize 12
# size  4in, 4in

#set size square


set style fill pattern

set ylabel "Requests (%)"

set yrange [0:10]

set xrange [0.5:10]

set xtics ("AllOn" 1, "Shrink" 2, "AllOn" 5, "Shrink" 6) font "Helvetica, 11"
#unset xtics
set bmargin 2

set style data histograms

set style histogram rowstacked

set boxwidth 0.6

set key spacing 1.6 samplen 1.5 font "Helvetica,12"

set output "origin-2.pdf"

plot newhistogram "Overall", "data" u 2 lc -1 t "Origin", "" u 3 lc -1 t "Other Cache\n Miss", newhistogram "Post-shutdown", "off_cache_perf" u ($2)*100 lc -1 t "Origin", "" u ($3)*100 lc -1 t "Other Cache\n Miss";


