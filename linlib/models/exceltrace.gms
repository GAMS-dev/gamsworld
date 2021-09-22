$ontext ===============================================================

LAST MODIFIED:  October 10, 2002

FILENAME: exceltrace.gms

PURPOSE:  This tool creates an Excel readable comma-delimited
          file of all the trace data, simplifying viewing and
          data aggregation.
         
REQUIRED INPUTS:
	  --trace1:    trace file of solver 1
	  --trace2:    trace file of solver 2 etc up to --trace8
          --ntrace1:   non-GAMS solver data file 1
          --ntrace2:   non-GAMS solver data file 2 up to --ntrace8

          Users cannot input two tracefile numbers of different type
          with the same (n)trace number, i.e.

          --trace1=... --ntrace1 is not allowed, only --trace1=... --ntrace2=...


OPTIONAL INPUTS:
          --outdir:    output directory (default: results/)
          --outfile:   output filename (default: results.htm)

REMARKS: 
	  User must input one tracefiles for each solver. Currently 
          works for LP, RMIP, NLP, RMINLP, MIP, and MINLP  type models. 

	  Each trace file can have model/solve information for only 1 
          solver. For example trace1.trc can have info for all LPs in 
          PerformanceLib for solver A, and trace2.trc can have 
          information for all LPs using solver B. 
  
$offtext ==============================================================


*=== Convert non-GAMS data files to GAMS trace files
$if set trace1 $set tracefiles %trace1%
$if set trace2 $set tracefiles %tracefiles% %trace2%
$if set trace3 $set tracefiles %tracefiles% %trace3%
$if set trace4 $set tracefiles %tracefiles% %trace4%
$if set trace5 $set tracefiles %tracefiles% %trace5%
$if set trace6 $set tracefiles %tracefiles% %trace6%
$if set trace7 $set tracefiles %tracefiles% %trace7%
$if set trace8 $set tracefiles %tracefiles% %trace8%

$call cat %tracefiles% > %gams.scrdir%tracedata

$onecho > %gams.scrdir%tconvawk2 
$1 !~ /^*/ { print $0 }
$offecho


$call echo Filename ,Modeltype ,Solvername , Def NLP Solver ,Def MIP Solver ,Julian Today ,Direction ,#Eq ,#Var ,#Disc. Var ,NZ ,NL NZ ,Optfile ,Model Status ,Solve Status ,Obj ,Objest ,Res Used ,Iter Used ,Dom Used ,Nodes Used ,Comments > exceltrace.csv

$if set trace1 $call 'awk -F, -f "%gams.scrdir%tconvawk2" %gams.scrdir%tracedata >> exceltrace.csv'
