$Title Convert GAMS indexed models to scalar .gms fromat for one group

$if NOT set group $abort missing --group=xxx

$                              set sep \
$if %system.filesys% == UNIX  $set sep /

** could be empty
$set root /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%scalar.gms $goto proceed
$call echo '    Error: root directory is incorrect (%root%)'  > error.log
$call echo '    Modify root directory as needed.'            >> error.log
$call cat error.log
$abort "Incorrect root directory specified (%root%)"
$label proceed

$set rawdir    %root%%sep%raw%sep%%group%
$set gamsdir   %root%%sep%gams%sep%%group%
$set names     %root%%sep%gams%sep%%group%%sep%names.inc
$set stats     %root%%sep%gams%sep%%group%%sep%stats.inc

* Extract all .gms file names frow raw directory
* and prepare include file in gams directory

$if NOT %system.filesys% == UNIX $call dir %rawdir%%sep%*.gms /b > names.gms
$if     %system.filesys% == UNIX $call (cd %rawdir%; ls -m *.gms  >%root%%sep%tmp%sep%names.gms; cd -)

$call 'sed -e "s/\.gms//g" names.gms > "%names%"'


$onecho > convert.opt
objvar
gmsinsert
terminate
$offecho

$onecho > trace.gms
* Trace Record Definition
* GamsSolve
* InputFileName ModelType Direction SolverStatus  ModelStatus
*  NumberOfEquations NumberOfVariables NumberOfNonZeros NumberOfNonlinearNonZeros
*  NumberOfInstructions

alias(*,mnames);

set tracecols / dir, sstat, mstat, equ, var, nz, nlnz, nlcode /
    mtypes    / LP,NLP,DNLP, QCP /;

table trace(mnames,mtypes,tracecols) this is a trace table
               dir sstat mstat equ var nz nlnz nlcode
$ondelim
$offecho

set f /
$include "%names%"
/;

file temp  / temp.gms /;

put temp '* make scalar models num=' card(f):0:0;
loop(f, put
   /'$call gams "%rawdir%%sep%' f.tl:0 '" lp=convert nlp=convert dnlp=convert cns=convert qcp=convert optfile=1 trace=trace.gms'
   /'$call cp gams.gms "%gamsdir%%sep%' f.tl:0 '.gms"'  );
putclose / '* end of make scalar model';


execute 'gams temp.gms lo=%gams.lo%';
execute 'echo $offdelim >> trace.gms';

execute 'sed -e "1,8d" trace.gms > "%stats%"';

execute 'echo option trace:0 display trace >> trace.gms';

execute 'gams trace.gms lo=%gams.lo%';

