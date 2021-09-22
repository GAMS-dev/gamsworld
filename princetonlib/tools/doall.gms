$Title PrincetonLib Driver - performs all steps to generate library
$ontext

This program performs all tasks associated with generating the lib:
  - make directories (calls makeh.gms)
  - convert to scalar format (calls scalar.gms)
  - solve converted models (calls solve.gms)
  - compares solutions (calls compare.gms)
  - make html files (calls makeh.gms)
  - make princetonlib stat file (calls global.gms)

User options:

  1. specify root and gams directories
  2. add groups to the set g

The groups specified will be run.

$offtext

$set root  /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

$                              set sep \
$if %system.filesys% == UNIX  $set sep /

set g groups /
$include ../groups.inc
/;

*
* You normally do not need to change anything below
*
* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%doall.gms $goto proceed
$call echo '    Error: root directory is incorrect (%root%)'  > error.log
$call echo '    Modify root directory as needed.'            >> error.log
$call cat error.log
$abort "Incorrect root directory specified (%root%)"
$label proceed

file fput / doprinceton.gms /;
put fput
  '$call gams  %root%%sep%tools%sep%maked.gms   idir=%root%' /
;

loop(g,
   put /
     '$call gams  %root%%sep%tools%sep%scalar.gms  idir=%root% --group=' g.tl:0 /
     '$call gams  %root%%sep%tools%sep%solve.gms   idir=%root% --group=' g.tl:0 /
     '$call gams  %root%%sep%tools%sep%compare.gms idir=%root% --group=' g.tl:0 /
     '$call gams  %root%%sep%tools%sep%makeh.gms   idir=%root% --group=' g.tl:0 /
);

put fput
   / '$call gams  %root%%sep%tools%sep%global.gms  idir=%root%' /;
putclose fput;

execute 'gams doprinceton.gms'