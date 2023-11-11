#!/bin/bash


make all

# Citations:
#
# Derived "grep -v ..." (line 25-26) from user codaddict 
# on stackoverflow at url:  
# https://stackoverflow.com/questions/4538253/how-can-i-exclude-one-word-with-grep
#
# Derived "set object circle ..." (line ) and "set size ratio -1"
# from users anyras and mgilson respectively at url:
# https://stackoverflow.com/questions/11138012/drawing-a-circle-of-radius-r-around-a-point


# plot circle segment graph
gnuplot < circle.plot 

# plot error v iterations graph 
# see error.plot for details
gnuplot < error.plot

# generate data for last plot
(./riemann | grep -v 'e') > r.dat
(./monte_carlo -n 800 |  awk '{print}' | grep -v 'Pi') > mc.dat
# plot monte carlo v riemann sum method
gnuplot < comp.plot

# clean .dat files
rm r.dat mc.dat
