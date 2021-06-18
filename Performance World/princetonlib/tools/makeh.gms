$Title Writes html file for for one group

$if NOT set group $abort missing --group=xxx

* we had to run scalar.gms first

$                              set sep \
$if %system.filesys% == UNIX  $set sep /

** could be empty
$set root /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%makeh.gms $goto proceed
$call echo '    Error: root directory is incorrect (%root%)'  > error.log
$call echo '    Modify root directory as needed.'            >> error.log
$call cat error.log
$abort "Incorrect root directory specified (%root%)"
$label proceed

$set gamsdir  %root%%sep%gams%sep%%group%
$set rawdir   %root%%sep%raw%sep%%group%
$set names    %root%%sep%gams%sep%%group%%sep%names.inc
$set missing  %root%%sep%missing.inc
$set solves   %root%%sep%gams%sep%%group%%sep%solves.inc
$set html     %root%%sep%htm%sep%%group%stat.htm
$set tools    tools
$set princeton http://www.orfe.princeton.edu/~rvdb/ampl/nlmodels/

set g  /
$include "%root%%sep%groups.inc"
       /;
set mnames /
$include "%names%"
           /;
$include "%solves%"

$onempty
set gmi models with AMPL source missing /
$include "%missing%"
/;
$offempty

display gmi;

alias(u1,*);

file htm / "%html%" /;

put htm; put_utilities "ren" / "%root%%sep%htm/group" sum(g$sameas(g,"%group%"), ord(g)):0:0 "stat.htm";

put htm
'<HTML>' /
'<!--#include virtual="/performance/header.html" -->' /
'<B>Total number of models: &nbsp ' card(mnames):0:0 ' </B> <BR>' /
'<B>Original Source: &nbsp <a href="%princeton%%group%/index.html">' g.te('%group%') '</a>';
if(sum(gmi("%group%",u1),1)>0,
   put "*";
);
put '</B><P>' //

'<TABLE WIDTH="100%" BGCOLOR="#f8f8f8" BORDER=0  CELLSPACING=0 CELLPADDING=0>' /
'<TH ALIGN=LEFT BGCOLOR="#00080"><FONT COLOR="#ffffff">Name</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Type</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Eqns</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Vars</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NZ</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NNZ</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Bestknown Objective</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">GAMS Scalar</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">AMPL Source</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">GAMS Source</FONT></TH>' /;

loop(mnames,
   put
   '<TR>' /
   '<TD BGCOLOR="#fefefe"><a href="%group%/' mnames.tl:0 '.htm">' mnames.tl:0 '</a></TD>' /;
   loop(mtypes$trace(mnames,mtypes,'equ'),
     put '<TD ALIGN=RIGHT BGCOLOR="#fefefe">' mtypes.tl:0  '</TD>' /
         '<TD ALIGN=RIGHT BGCOLOR="#fefefe">' trace(mnames,mtypes,'equ'):0:0 '</TD>' /
         '<TD ALIGN=RIGHT BGCOLOR="#fefefe">' trace(mnames,mtypes,'var'):0:0 '</TD>' /
         '<TD ALIGN=RIGHT BGCOLOR="#fefefe">' trace(mnames,mtypes,'nz'):0:0 '</TD>' /
         '<TD ALIGN=RIGHT BGCOLOR="#fefefe">' trace(mnames,mtypes,'nlnz'):0:0 '</TD>' /
         '<TD ALIGN=RIGHT BGCOLOR="#fefefe">' trace(mnames,mtypes,'obj'):0:8 '</TD>' /
   );

   put
   '<TD ALIGN=RIGHT BGCOLOR="#fefefe"><a' /
   'href="../gams/%group%/' mnames.tl:0 '.gms">gms</a></TD>' /
   '<TD ALIGN=RIGHT BGCOLOR="#fefefe"><a' /
   'href="%princeton%/%group%/' mnames.tl:0 '.mod">ampl</a></TD>' /
   '<TD ALIGN=RIGHT BGCOLOR="#fefefe"><a' /
   'href="../raw/%group%/' mnames.tl:0 '.gms">raw gams</a></TD></TR>' / ;
);
put '</TABLE>';
if(sum(gmi("%group%",u1),1)>0,
   put '<p><b>*Models missing due to AMPL source missing:</b>&nbsp<tt>';
   loop(gmi("%group%",u1),
      put " " u1.tl:0 ;
   );
);
put '</tt>';

$set hhh %root%%sep%htm%sep%%group%%sep%
$set ggg gams%sep%%group%%sep%

loop(mnames,
   put_utility  'ren'/ '%hhh%' mnames.tl:0 '.htm                ' ;
   put '<html> <head> <title>' mnames.tl:0 '.gms</title>' /
       '<!--#include virtual="/performance/header.html" -->' /
       '<h2>' mnames.tl:0 '.gms</h2>' /
       '<hr>' /
       '<plaintext>' /
       '<!--#include virtual="/performance/princetonlib/gams/%group%/' mnames.tl:0 '.gms" -->' /  );