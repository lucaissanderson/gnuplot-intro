set terminal pdf
set output "cirlce.pdf"
set xrange [0:1]
set yrange [0:1]
set object circle at 0,0 radius 1
set size ratio -1
set palette defined (0 "red", 1 "blue")
unset colorbox

plot "< (./monte_carlo -n 2000 | \
grep -v 'x')" \
using 3:4:5 with dots palette title ""
