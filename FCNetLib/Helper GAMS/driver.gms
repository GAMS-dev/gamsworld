$Title Fixed Cost Network Flow Problem with Cuts using BCH Facility - driver

$version 140 goto OK
$abort 'need newer GAMS version'
$label OK

$ontext
This script generates tracefiles for pure CPLEX, pure XPRESS, and
CPLEX with cuts and heuristic. Just run this script as

gams driver

If you want to regenerate the HTML afterwards, just run

gams fcstat

$offtext

* First run all instances with the default MIP solver
$call gams data --solver cplex  --cutsoff 1 --heuroff 1 --runall 1 --doexec 1
$call gams data --solver xpress --cutsoff 1 --heuroff 1 --runall 1 --doexec 1

$ontext
Since the time spend for generating cuts and heuristic solution does
not count towards the solver's CPU time, we need to give a SIGINT to
the solver process after the max allowed time (1800 secs) using
schulz. Start the following process in a separate window. Sending
SIGINT does not work under Windows.

$call gams schulz --watch ^gms --time etime --resseq 1800:1900 --sigseq 2:9

You can download schulz.gms from http://www.gamsworld.org/performance/schulz.htm
$offtext

* Second run difficult instances with the default MIP solver
$call gams data --solver cplex --optfile 1 --cutsoff 0 --heuroff 1 --doexec 1 --tracebase cplexcuts
$call gams data --solver cplex --optfile 1 --cutsoff 0 --heuroff 0 --doexec 1 --tracebase cplexcutsheur

