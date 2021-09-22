$ontext =======================================================================

LAST MODIFIED: 1 August, 2002

FILENAME: tracemod.gms

PURPOSE:  Modified an existing trace file (traceopt=3), by 
          replacing the solver used  (listed in the third 
          column) by a user-specified solver name. This is 
          especially useful if multiple trace files are to 
          be analyzed, all using the same solver.

REQUIRED INPUTS:
	  --trace1:    trace file to be modified
	 

OPTIONAL INPUTS:
          --outfile:   filename of new tracefile


$offtext ======================================================================

$if not set newsolver $set newsolver none
$if not set outfile   $set outfile "new.trc"

$onecho > %gams.scrdir%tracemod.tmp
$call cat %trace1% | awk -F, -f %gams.scrdir%tmp.awk  > %outfile%
$offecho

$onecho > %gams.scrdir%tmp.awk
BEGIN {OFS=","} {$3="%newsolver%"; print$0}
$offecho

$call gams %gams.scrdir%tracemod.tmp 

execute 'rm  %gams.scrdir%tracemod.tmp %gams.scrdir%tmp.awk'





