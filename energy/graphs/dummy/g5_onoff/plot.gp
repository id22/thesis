set terminal pdf dashed fsize 14

set ylabel "On-Off transitions/server/day"

set yrange [0:3]

set ytics nomirror

set y2tics

set y2range [0:180]

set y2label "Energy Use (kJ)"

set xlabel "Pre-shutdown wait (min)"

set xrange [0:]

set key left

set output "onoff.pdf"

plot "data" u 1:2 w lp lc 1 ps 3 lw 6 t "On-Off", "" u 1:3 w lp  lc 1 ps 3 lw 6  axes x1y2 t "Energy";
