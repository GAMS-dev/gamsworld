$title makes solves with different solvers

$if NOT set group  $abort missing --group=xxx
$if NOT set reslim $set reslim 10

* we had to run scalar.gms first



$                              set sep \
$if %system.filesys% == UNIX  $set sep /

$set root /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%maket.gms $goto proceed
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
* InputFileName ModelType SolverName SolverStatus ModelStatus SolverTime ObjectiveValue

alias(*,mnames);

set tracecols /  sstat, mstat, stime, obj /
    mtypes    / LP, NLP, DNLP, QCP /;

table trace(mnames,mtypes,*,tracecols) this is a trace table
                sstat mstat stime obj
$ondelim
$offecho

set f /
$include "%names%"
      /;

file temp  / temp.gms /;

set s solvers / conopt,minos,snopt /

put temp '* solve scalar models num=' card(f):0:0;
loop((f,s), put
   /'$call gams "%gamsdir%%sep%' f.tl:0 '.gms" lp=' s.tl:0 ' nlp=' s.tl:0 ' dnlp=' s.tl:0 ' qcp=' s.tl:0 ' reslim=%reslim% trace=trace.gms'  );

putclose / '* end of make scalar model';

execute 'gams temp.gms';
execute 'echo $offdelim >> trace.gms';
execute 'echo option trace:6:3:1 display trace >> trace.gms';

execute 'gams trace.gms';
