set terminal postscript eps enhanced color 'Helvetica' 22       
#set title 'Load vs Blocking Probability'  
set title 'Load vs Failure Probability'
#set title 'Load vs Number of hops'
set xlabel 'Load (erlang)' font 'Helvetica, 22' 
#set ylabel 'Blocking Probability' font 'Helvetica, 19'
#set ylabel 'Number of hops' font 'Helvetica, 22'
set ylabel 'Failure Probability' font 'Helvetica, 22'
set tics font "Helvetica,22"
#set logscale y
set xrange [50:150]
set xtics 50,25,150
#set xtics ("1"10000,"2" 20000,"3" 30000,"4" 40000,"5" 50000,"6" 60000,"7" 70000,"8" 80000,"9" 90000,"10" 100000)
set yrange [0.08:0.15]
set ytics 0.07, 0.01, 0.15 
set output  "surviv_path_modified+plot.eps" 

set style line 1 lt 2 lc rgb "blue"   lw 2 pt 2 ps 1
set style line 2 lt 3 lc rgb "red"    lw 2 pt 3 ps 1
set style line 3 lt 4 lc rgb "green"  lw 2 pt 4 ps 1
set style line 4 lt 5 lc rgb "black"  lw 2 pt 5 ps 1
set style line 5 lt 6 lc rgb "brown"  lw 2 pt 6 ps 1
set style line 6 lt 7 lc rgb "purple" lw 2 pt 7 ps 1

set pointsize 1.5
set key inside
set key bottom
set key right

plot 'data/surviv_path.txt' using 1:2:3 notitle w yerrorbars ls 1, '' using 1:2 title "Iterative SP(Primary)" w lines ls 1,\
      '' using 1:4:5 notitle w yerrorbars ls 2, '' using 1:4 title "Bhandari(Primary)" w lines ls 2,\
      '' using 1:14:15 notitle w yerrorbars ls 4, '' using 1:14 title "Iterative SP (Backup)" w lines ls 3,\
      '' using 1:16:17 notitle w yerrorbars ls 5, '' using 1:16 title "Bhandari(Backup)" w lines ls 5
      #'' using 1:12:13 notitle w yerrorbars ls 6, '' using 1:12 title "Risk-Aware (Backup)" w lines ls 6
       # '' using 1:24:25 notitle w yerrorbars ls 3, '' using 1:24 title "Risk-Aware" w lines ls 3
#plot 'data/hold.txt' using 1:2:3 notitle w yerrorbars ls 1, '' using 1:2 notitle w lines ls 1

#plot 'outputs/normalizedfailprobability.txt' using 1:2 title "Load 100" w lines ls 1,\
	'' using 1:3 title "Load 200" w lines ls 2,\
	'' using 1:4 title "Load 300" w lines ls 3,\
	'' using 1:5 title "Load 400" w lines ls 4,\
	'' using 1:6 title "Load 500" w lines ls 5,\

#plot 'data/palindrome.txt' using 1:2:3 notitle w yerrorbars ls 1,'' using 1:2 title "palindrome without Failures" w lines ls 1,\
 	'' using 1:4:5 notitle w yerrorbars ls 2,'' using 1:4 title "Palindrome with failures" w lines ls 2,\
 	'' using 1:6:7 notitle w yerrorbars ls 3,'' using 1:6 title "nonpalindrome without failures" w lines ls 3,\
	'' using 1:8:9 notitle w yerrorbars ls 4,'' using 1:8 title "nonpalindrome with failures" w lines ls 4

#plot 'data/protect+restore.txt' using 1:6:7 notitle w yerrorbars ls 1,'' using 1:6 title "Protection with failures" w lines ls 1,\
 	'' using 1:8:9 notitle w yerrorbars ls 2,'' using 1:8 title "Protection+Restoration with failures" w lines ls 2

pause -1 "Hit any key to continue"

