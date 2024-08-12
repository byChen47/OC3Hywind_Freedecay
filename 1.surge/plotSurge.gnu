set encoding iso_8859_1 
set xlabel "t (s)" 
set ylabel "motion" 
set term postscript eps color enhanced  "Times-Roman, 25" 
set size square 2.618,0.8 
set size ratio 0.15 
set output "motion.eps" 
set title "motion" 
set autoscale x 
set autoscale y 
set xtics auto 
set ytics auto 
set xrange [ : ] 
set yrange [ : ]
set grid xtics lc rgb "#bbbbbb" lw 1 lt 0 
set grid ytics lc rgb "#bbbbbb" lw 1 lt 0 
plot "Mooring/lines_v2_Body1.out" using 1:2 with line lt 1 lw 1.0 lc 0 title "surge"
  
