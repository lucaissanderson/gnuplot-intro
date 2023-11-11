set term pdf 
set output "error.pdf"
set title "Monte Carlo Error vs Iterations" 
set xrange [1:65536]
set yrange [-1:1]
set logscale x 4
set xlabel "Iterations"
set ylabel "Error (π - estimate)"
plot for [i = 0:4] \
"< (./monte_carlo -n 65000 |\
awk '{print $1, \
3.141592653589793238462643383279502884197 - $2\
}' | grep -v 'I')\nsleep 1" with lines lw 0.5 title ""

