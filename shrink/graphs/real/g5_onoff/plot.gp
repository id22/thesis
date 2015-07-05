set terminal pdf dashed fsize 14

set ylabel "On-Off transitions/server/day"

set yrange [0:]

set ytics nomirror

set y2tics

set y2range [0:]

set y2label "Energy Use (x 10^6 J)"

set xlabel "Pre-shutdown wait (hour)"

set xrange [0:]

set key bottom

set output "onoff.pdf"

plot "data2" u ($1/60):($2/128.0) w lp lc -1 ps 3 lw 6 t "On-Off", "" u ($1/60):($3/1000.0) w lp  lc -1 ps 3 lw 6  axes x1y2 t "Energy";
