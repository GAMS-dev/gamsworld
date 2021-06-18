$Title solves scalar models for one group

$if NOT set group $abort missing --group=xxx

* we had to run scalar.gms first

$                              set sep \
$if %system.filesys% == UNIX  $set sep /

** could be empty
$set root /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%solve.gms $goto proceed
$call echo '    Error: root directory is incorrect (%root%)'  > error.log
$call echo '    Modify root directory as needed.'            >> error.log
$call cat error.log
$abort "Incorrect root directory specified (%root%)"
$label proceed

$set gamsdir  %root%%sep%gams%sep%%group%
$set names    %root%%sep%gams%sep%%group%%sep%names.inc
$set solves   %root%%sep%gams%sep%%group%%sep%solves.inc

$onecho > trace.gms
* Trace Record Definition
* GamsSolve
* InputFileName ModelType SolverStatus  ModelStatus
*  NumberOfEquations NumberOfVariables NumberOfNonZeros NumberOfNonlinearNonZeros ObjectiveValue

alias(*,mnames);

set tracecols / sstat, mstat, equ, var, nz, nlnz, obj /
    mtypes    / LP, NLP, DNLP, QCP /;

table trace(mnames,mtypes,tracecols) this is a trace table
               sstat mstat equ var nz nlnz obj
$ondelim
$offecho

set f /
$include "%names%"
      /;

file temp  / temp.gms /;

put temp '* solve scalar models num=' card(f):0:0;
loop(f, put
   /'$call gams "%gamsdir%%sep%' f.tl:0 '.gms" lp=cplex nlp=conopt dnlp=conopt cns=conopt trace=trace.gms reslim=10'  );

putclose / '* end of make scalar model';

execute 'gams temp.gms';
execute 'echo $offdelim >> trace.gms';

execute 'sed -e "1,7d" trace.gms > "%solves%"';

execute 'echo option trace:6 display trace >> trace.gms';

execute 'gams trace.gms';

