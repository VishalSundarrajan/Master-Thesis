set terminal postscript eps enhanced color 'NimbusSanL-Regu' 20       
set title 'Time vs Normalized Failure Probabiltiy'   
set xlabel 'Time (hours)' font 'NimbusSanL-Regu, 22' 
set ylabel 'Norm. Failure Probability' font 'NimbusSanL-Regu, 22'
set logscale y
set xrange [0:51000]
#set xtics ("0-1"10000,"1-2" 20000,"2-3" 30000,"3-4" 40000,"4-5" 50000,"5-6" 60000,"6-7" 70000,"7-8" 80000,"8-9" 90000,"9-10" 100000)
set yrange [0.08:0.23]
set ytics (0.05,0.1,0.15,0.2,0.25)
set output  "101_normalizedfailprobability.eps" 

set style line 1 lt 2 lc rgb "blue"   lw 2 pt 2 ps 0.5
set style line 2 lt 3 lc rgb "red"    lw 2 pt 3 ps 0.5
set style line 3 lt 4 lc rgb "green"  lw 2 pt 4 ps 0.5
set style line 4 lt 5 lc rgb "black"  lw 2 pt 4 ps 0.5
set style line 5 lt 6 lc rgb "yellow" lw 2 pt 4 ps 0.5

set pointsize 1.5
set key inside
set key top

#plot 'data/bhandari_50000_data.txt' using 1:6:7 notitle w yerrorbars ls 1, '' using 1:6 title "Bhandari- Fixed Request (5000)" w lines ls 1,\
#      '' using 1:8:9 notitle w yerrorbars ls 2, '' using 1:8 title "Bhandari- Fixed Sim. Time (50000 hrs) " w lines ls 2
#      '' using 1:6:7 notitle w yerrorbars ls 3, '' using 1:6 title "Anycast degree=3" w lines ls 3

#plot 'failureoutputs/101_periodicfailures.txt' using 1:2 notitle w lines ls 1

plot 'outputs/normalizedfailprobability.txt' using 1:2 title "Load 100" w lines ls 1,\
	'' using 1:3 title "Load 200" w lines ls 2,\
	'' using 1:4 title "Load 300" w lines ls 3,\
	'' using 1:5 title "Load 400" w lines ls 4,\
	'' using 1:6 title "Load 500" w lines ls 5,\

pause -1 "Hit any key to continue"

