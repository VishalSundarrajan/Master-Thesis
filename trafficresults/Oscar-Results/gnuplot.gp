set terminal postscript eps enhanced color 'Helvetica' 22       
set title 'Load vs Blocking Probability'  
#set title 'Load vs Failure Probability'
#set title 'Load vs Number of hops'
set xlabel 'Load' font 'Helvetica, 22' 
set ylabel 'Blocking Probability' font 'Helvetica, 22'
#set ylabel 'Number of hops' font 'Helvetica, 22'
#set ylabel 'Failure Probability' font 'Helvetica, 22'
set tics font "Helvetica,22"
#set logscale y
set xrange [0:600]
set xtics 0,100,600
#set xtics ("1"10000,"2" 20000,"3" 30000,"4" 40000,"5" 50000,"6" 60000,"7" 70000,"8" 80000,"9" 90000,"10" 100000)
set yrange [0:0.35]
set ytics 0.0, 0.07, 0.35
set output  "palinUnicast.eps" 

set style line 1 lt 2 lc rgb "blue"   lw 2 pt 2 ps 1
set style line 2 lt 3 lc rgb "red"    lw 2 pt 3 ps 1
set style line 3 lt 4 lc rgb "green"  lw 2 pt 4 ps 1
set style line 4 lt 5 lc rgb "black"  lw 2 pt 4 ps 1
set style line 5 lt 6 lc rgb "brown" lw 2 pt 4 ps 1

set pointsize 1.5
set key inside
set key top
set key left

plot 'data/uni_palin+nonpalin.txt' using 1:2:3 notitle w yerrorbars ls 1, '' using 1:2 title "Palindrome w/o Failures" w lines ls 1,\
      '' using 1:4:5 notitle w yerrorbars ls 2, '' using 1:4 title "NonPalindrome w/o Failures" w lines ls 2,\
      '' using 1:6:7 notitle w yerrorbars ls 3, '' using 1:6 title "NonPalindrome w Failures" w lines ls 3,\
      '' using 1:8:9 notitle w yerrorbars ls 4, '' using 1:8 title "Palindrome w Failures" w lines ls 4

#plot 'failureoutputs/101_periodicfailures.txt' using 1:2 notitle w lines ls 1

#plot 'outputs/normalizedfailprobability.txt' using 1:2 title "Load 100" w lines ls 1,\
	'' using 1:3 title "Load 200" w lines ls 2,\
	'' using 1:4 title "Load 300" w lines ls 3,\
	'' using 1:5 title "Load 400" w lines ls 4,\
	'' using 1:6 title "Load 500" w lines ls 5,\

#plot 'data/failure_uniAny.txt' using 1:8:9 notitle w yerrorbars ls 1,'' using 1:8 title "Unicast with failures" w lines ls 1,\
 	'' using 1:10:11 notitle w yerrorbars ls 2,'' using 1:10 title "Anycast(2c1) with failures" w lines ls 2,\
 	'' using 1:12:13 notitle w yerrorbars ls 3,'' using 1:12 title "Anycast(3c1) with failures" w lines ls 3

#plot 'data/protect+restore.txt' using 1:6:7 notitle w yerrorbars ls 1,'' using 1:6 title "Protection with failures" w lines ls 1,\
 	'' using 1:8:9 notitle w yerrorbars ls 2,'' using 1:8 title "Protection+Restoration with failures" w lines ls 2

pause -1 "Hit any key to continue"

