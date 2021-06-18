$Title PrincetonLib: makes directories for all groups
$Ontext

The directory structure mirrors the Princeton web site which
allows easy access to gams and ampl files as well as princeton
documents.

root/raw/group
    /gams/group
    /htm/group
    /tools

This structure support the creation and testing of the gams
version and building of the web structure.

Note that windows allows the use of / or \ as separators.
Unfortunately this is not true everywhere:
1 gams does the field extractions etc incorrect
2 under windows we cannot do dir  xxx/*.gms because of the
findfirst, etc I guess.

As with all other gams programs, we assume that we are
running out of some other directory.

We assume that groups.inc and models.inc exists already in
the root dircetory.

$offtext

$                              set sep \
$if %system.filesys% == UNIX  $set sep /

* Currently gams looks for a \ to determine what path
* to attach, in the future, the Windows version will handle
* / or \
$set root /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%maked.gms $goto proceed
$call echo '    Error: root directory is incorrect (%root%)'  > error.log
$call echo '    Modify root directory as needed.'            >> error.log
$call cat error.log
$abort "Incorrect root directory specified (%root%)"
$label proceed

* For UNIX we need to set the -p flag when creating directories
$set uflag
$if %system.filesys% == UNIX  $set uflag -p

set g groups  /
$include "%root%/groups.inc"
              /;

file dir / temp.gms /;
put dir '$call mkdir %uflag% "%root%%sep%tools"';
loop(g,
   put /'$call mkdir %uflag% "%root%%sep%raw/'  g.tl:0 '"'
       /'$call mkdir %uflag% "%root%%sep%gams/' g.tl:0 '"'
       /'$call mkdir %uflag% "%root%%sep%htm/'  g.tl:0 '"');

putclose;

execute 'gams temp.gms';

