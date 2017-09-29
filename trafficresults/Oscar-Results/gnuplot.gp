set terminal postscript eps enhanced color 'NimbusSanL-Regu' 20       
set title 'Time Vs Normalized Failure Probability'   
set xlabel 'Time (hours*10000)' font 'NimbusSanL-Regu, 22' 
set ylabel 'Norm. Failure Probability' font 'NimbusSanL-Regu, 22'
#set logscale y
set xrange [0:50000]
set xtics 0, 10000,50000
#set xtics ("1"10000,"2" 20000,"3" 30000,"4" 40000,"5" 50000,"6" 60000,"7" 70000,"8" 80000,"9" 90000,"10" 100000)
set yrange [0.1: 0.25]
#set ytics ()
set output  "normalizedfailprobability.eps" 

set style line 1 lt 2 lc rgb "blue"   lw 2 pt 2 ps 0.5
set style line 2 lt 3 lc rgb "red"    lw 2 pt 3 ps 0.5
set style line 3 lt 4 lc rgb "green"  lw 2 pt 4 ps 0.5
set style line 4 lt 5 lc rgb "black"  lw 2 pt 4 ps 0.5
set style line 5 lt 6 lc rgb "brown" lw 2 pt 4 ps 0.5

set pointsize 1.5
set key inside
set key top

#plot 'data/bhandari_50000_data.txt' using 1:6:7 notitle w yerrorbars ls 1, '' using 1:6 title "Bhandari- Fixed Request (5000)" w lines ls 1,\
#      '' using 1:8:9 notitle w yerrorbars ls 2, '' using 1:8 title "Bhandari- Fixed Sim. Time (50000 hrs) " w lines ls 2
#      '' using 1:6:7 notitle w yerrorbars ls 3, '' using 1:6 title "Anycast degree=3" w lines ls 3

#plot 'failureoutputs/101_flatline100000.txt' using 2:1 notitle w points ls 1

plot 'outputs/normalizedfailprobability.txt' using 1:2 title "Load 100" w lines ls 1,\
	'' using 1:3 title "Load 200" w lines ls 2,\
	'' using 1:4 title "Load 300" w lines ls 3,\
	'' using 1:5 title "Load 400" w lines ls 4,\
	'' using 1:6 title "Load 500" w lines ls 5,\

pause -1 "Hit any key to continue"

