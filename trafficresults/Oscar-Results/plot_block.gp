set terminal postscript eps enhanced color 'NimbusSanL-Regu' 20       
set title 'Total Requests - 5000, Bandwidth - 500 mbps, Failed Requests - Remain'   
set xlabel 'Load' font 'NimbusSanL-Regu, 22' 
set ylabel 'Failure Probability' font 'NimbusSanL-Regu, 22'
set logscale y
set xrange [100:650]
set yrange [0.15:0.26]
set output  "bhanvsbhan50000_fail.eps" 

set style line 1 lt 2 lc rgb "blue"   lw 2 pt 2 ps 0.5
set style line 2 lt 3 lc rgb "red"    lw 2 pt 3 ps 0.5
set style line 3 lt 4 lc rgb "green"  lw 2 pt 4 ps 0.5


set pointsize 1.5
set key inside
set key bottom

plot 'data/bhandari_50000_data.txt' using 1:6:7 notitle w yerrorbars ls 1, '' using 1:6 title "Bhandari- Fixed Request (5000)" w lines ls 1,\
      '' using 1:8:9 notitle w yerrorbars ls 2, '' using 1:8 title "Bhandari- Fixed Sim. Time (50000 hrs) " w lines ls 2
     # '' using 1:6:7 notitle w yerrorbars ls 3, '' using 1:6 title "Anycast degree=3" w lines ls 3
pause -1 "Hit any key to continue"

