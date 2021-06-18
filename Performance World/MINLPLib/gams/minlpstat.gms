file ftxt / minlpstat.txt /
     fhtm / minlpstat.htm /;

$offlisting
$include minlplib.gms
$onlisting

parameter bestknown(m,p); scalar objval;
loop(bk(m,p),
  objval = NA;
  put_utility fhtm 'gdxin' / m.tl:0 '_' p.tl:0 '.gdx';
  execute_load objval=objvar.l;
  bestknown(bk) = objval;
);

$ontext
$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:35:48
*  
*  Equation counts
*     Total       E       G       L       N       X
*      6206    4003    2203       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*      4408    4008     400       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*     26610   11210   15400       0
$offtext
$onecho > x.awk
BEGIN  { printf("%s",m) }
NR==6  { printf(",%d",$2) } # Eqns
NR==11 { printf(",%d,%d",$2,$2-$3) } # Vars, DVars
NR==16 { printf(",%d,%d\n",$2,$4) } # NZ, NNZ
$offecho
$onecho > cb.gms
$offlisting
$include minlplib.gms
$onlisting
file fx; loop(m,
  put_utility fx 'shell' / 'head -n 18 ' m.tl:0 '.gms | awk -f x.awk -vm=' m.tl:0 ' >> modsize.txt';
)
$offecho
$call rm -f modsize.txt && gams cb.gms

$eolcom #
Table trace(m,*) 
$ondelim
m,equnum,varnum,dvarnum,nz,nl_nz,stuff
$include modsize.txt
$offdelim
;

put ftxt "MINLPLib Model Statistics" /
put ftxt "Name              #Eqns   #Vars  #DVars     #NZ    #NNZ     BestInt Point" /;
loop(m,
  put m.tl:15;
  put trace(m,'equnum'):8:0;
  put trace(m,'varnum'):8:0;
  put trace(m,'dvarnum'):8:0;
  put trace(m,'nz'):8:0;
  put trace(m,'nl_nz'):8:0;
  loop(bk(m,p), put bestknown(bk):12:4 " " p.tl:0);
  put /;
)

put fhtm  '<html> <head> <title>MINLPLib Model Statistics</title>'
        / '<!--#include virtual="/minlp/header.html" -->';
put "<H3>MINLPLib Model Statistics</H3>" /
put '<TABLE WIDTH="100%" BGCOLOR="#f8f8f8" BORDER=0  CELLSPACING=0 CELLPADDING=0>' /
put '<TH ALIGN=LEFT BGCOLOR="#00080"><FONT COLOR="#ffffff">Name</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Eqns</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Vars</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#DVars</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NZ</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NNZ</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">BestInt</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">at Point</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</FONT></TH>' /

set c /
  c1 fefefe
  c2 e0e0e0
/

set mc(m,c);
mc(m,'c1')$(mod(ord(m),2)=1) = yes;
mc(m,'c2')$(mod(ord(m),2)=0) = yes;

scalar havesol;

loop(mc(m,c),
  put '<TR>'/;
  put '<TD BGCOLOR="#' c.te(c) '"><a href="' m.tl:0 '.htm">' m.tl:0 '</a></TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'equnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'varnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'dvarnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'nz'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'nl_nz'):0:0 '</TD>'/;
  havesol=0;
  loop(bk(m,p)$(not havesol), 
       havesol=1;
       put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' bestknown(bk):12:4 
                    '</TD><TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"><a href="points.htm#' m.tl:0 '">' p.tl:0 '</a></TD>'
  );
  if (havesol=0,
       put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD>'
           '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD>';
  );  
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD></TR>'/;
)
put '</TABLE>';
