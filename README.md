# Getting Acquainted with C and Unix

## Files:

##### `plot.sh`
Bash script that executes two `gnuplot` commands, redirecting respective
`.plot` files to them.

##### `circle.plot`
Set of commands to be directed into gnuplot. Generates circle
and sets the range that’ll be plotted, x:[0:1]; y:[0:1]. Then
monte carlo is called with 2,000 iterations, piping the output
to grep, the purpose being to exclude the first line containing
column headers. All this is redirected into the plot command
which plots the points, those in the circle being blue, otherwise
they’re red.

##### `error.plot`
Set of commands to be directed into `gnuplot`. Uses same method
of redirecting monte carlo output to plot, but uses awk as well
to extract iterations and approximation columns. The difference
between the approximation and π is what ends up being plotted
so we end up with a Error vs Iteration graph. 

##### `comp.plot`
Set of commands to be directed into `gnuplot`. Takes the output 
from both `monte_carlo` and `riemann` to compare the two methods 
of approximating π.

##### `monte_carlo.c`
Source file that contains `main()` and produces the data table
approximating π.

##### `riemann.c`
A tertiary `C` file that uses Calculus to derive π instead of 
`monte_carlo`. <br>
***NOT MY WORK***<br>
Citation:
From Andrew Oliver on towardsdatascience.
URL: <https://towardsdatascience.com/how-to-make-pi-part-1-d0b41a03111f>

#### Makefile
Formats `monte_carlo.c` into `clang-format` and compiles it into
binary monte carlo with make from Makefile.

#### WRUTEUP.pdf
Shows example plots generated from the program as well as in-
depth specifics on which UNIX commands were used and why.

#### DESIGN.pdf
Describes the design and design process of the program. Uses
pseudocode.

#### README.md
Text file in Markdown format that describes how to build and run
the program, how the program handles erroneous inputs, and any
problems encountered while developing the program.

## Short Description:
This program uses the Monte Carlo method to estimate Pi, written in C, 
whose data is then evaluated by awk to extract values to plot with gnuplot.
All of this is orchestrated via a bash shell script.

## Build:
The user does not need to manually build the C program as just running 
`$ ./plot.sh` will do this for you. But if you wish, you can run it with 
`$ make` or `$ make all`.


## Clean
In order to clean the directory after building simply run `$ make clean`
to remove the executable `monte\_carlo` and the `.o` files from your 
directory.

## Running
Running `$ ./plot.sh` will generate 3 separate PDF documents containing 
plots analyzing the data generated from the Monte Carlo program.

