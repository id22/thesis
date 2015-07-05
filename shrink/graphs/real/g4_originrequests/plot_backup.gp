set terminal pdf fsize 13

set style fill pattern

set ylabel "Origin Requests (%)"

set yrange [0:]

set xrange [0.5:]

set xtics ("AllOn" 1, "Shrink" 2, "Shrink\nPreshutdown=0" 3)

set bmargin 2.5

set style data histograms

set output "origin.pdf"

plot "data" u 2 lc -1 notitle;
