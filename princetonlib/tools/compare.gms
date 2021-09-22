$title compares conopt with ampl solutions

$if NOT set group $abort missing --group=xxx

* we had to run scalar.gms first
$                              set sep \
$if %system.filesys% == UNIX  $set sep /

$set root  /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%compare.gms $goto proceed
$call echo '    Error: root directory is incorrect (%root%)'  > error.log
$call echo '    Modify root directory as needed.'            >> error.log
$call cat error.log
$abort "Incorrect root directory specified (%root%)"
$label proceed


$set gamsdir  %root%%sep%gams%sep%%group%
$set rawdir   %root%%sep%raw%sep%%group%
$set names    %root%%sep%gams%sep%%group%%sep%names.inc
$set solves   %root%%sep%gams%sep%%group%%sep%solves.inc
$set ampl     %root%%sep%raw%sep%%group%%sep%ampl_sol.inc

set mnames /
$include "%names%"
      /;
$include "%solves%"

parameter ampl /
$include "%ampl%"
               /;

Parameter rep summary report;

rep(mnames,'ampl') = ampl(mnames);
rep(mnames,'conopt') = sum(mtypes, trace(mnames,mtypes,'obj'));
rep(mnames,'diff') =  rep(mnames,'conopt') - rep(mnames,'ampl')  ;

display rep;
