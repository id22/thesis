set terminal pdf dashed font "Helvetica, 12"

set ylabel "CDF across time"
set xlabel "Fraction of requests"

set xrange [0:1]

set title "Origin Requests CDF"

set output "cache-perf-origin-cdf.pdf"

plot "cdf_origin_allon" u 2:1 w l lw 6 t "AllOn",  "cdf_origin_shrink" u 2:1 w l lw 6 t "Shrink";



set title "Cache Miss CDF"

set output "cache-perf-cachemiss-cdf.pdf"

plot "cdf_miss_allon" u 2:1 w l lw 6 t "AllOn",  "cdf_miss_shrink" u 2:1 w l lw 6 t "Shrink";


