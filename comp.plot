set term pdf 
set output "comp.pdf"
set title "Comparing Pi Estimations" 

set ylabel "Iteration"
set xlabel "Value"

set xtics 2.5, 0.08, 4
set xrange [3:3.5]

# derived these parameters and 
# functions from Neil Carter at url:
# https://ieeexplore.ieee.org/abstract/document/6594174

set boxwidth 0.008 absolute
set style fill solid 1.0 noborder
bin_width = 0.01
bin_number(x) = floor(x/bin_width)
rounded(x) = bin_width * ( bin_number(x) + 0.05 )

plot "mc.dat" \
using (rounded($2)):(2) smooth frequency with boxes \
title "Monte Carlo Method" fs transparent, \
"r.dat" using (rounded($1)):(1) smooth frequency with boxes \
title "Riemann Sum Method" fs transparent

