$echo '$include conelib.gms' > cb.gms
$echo 'file fgen / cbk.gms /;' >> cb.gms
$echo 'put fgen "$echo * Best known solution values > bestknown.txt" /;' >> cb.gms
$echo 'loop(bk(m,p),' >> cb.gms
$echo ' put fgen "$echon " m.tl:0 "." p.tl:0 ", >> bestknown.txt" /;' >> cb.gms
$echo ' put fgen "$call grep objvar.l " m.tl:0 "." p.tl:0 " | cut -d= -f2 | sed s/\;//g >> bestknown.txt" /;);' >> cb.gms
$echo 'put fgen "$echo * Trace file > cone.txt" /;' >> cb.gms
$echo 'loop(m, put fgen "$call gams " m.tl:0 " lp=convert rmip=convert nlp=conopt3 optfile=1 iterlim 0 traceopt=3 trace=cone.txt "; put$xp(m) xp.te(m); put /);' >> cb.gms

$call gams cb.gms
$call gams cbk.gms

$include conelib.gms

$call cat cone.txt | cut -d, -f1,8-12,22- > modsize.txt
$eolcom #
Table trace(m,*) 
$ondelim
m,equnum,varnum,dvarnum,nz,nl_nz,stuff
$include modsize.txt
$offdelim
;

set mybig(m), mybigs(s); 
mybig(m) = trace(m,'equnum') > 300;
mybig(m) = trace(m,'varnum') > 300 or mybig(m);
mybig(m) = trace(m,'nz') > 2000 or mybig(m);
mybig(m) = trace(m,'nl_nz') > 1000 or mybig(m);

mybigs(s) = sum(ms(mybig,s),1);
display mybigs;

file ftxt / conestat.txt /
     fhtm / conestat.htm /;

put ftxt "CONELib Model Statistics" /
put ftxt "Name          Type     #Eqns   #Vars     #NZ    #NNZ     Bestknown Point" /;
loop(ms(m,s),
  put m.tl:20;
  loop(smt(s,mtype), put mtype.tl:10);
  put trace(m,'equnum'):8:0;
  put trace(m,'varnum'):8:0;
  put trace(m,'nz'):8:0;
  put trace(m,'nl_nz'):8:0;
  loop(p, put bestknown(m,p):12:4 " " p.tl:0);
  put /;
)

put fhtm  '<html> <head> <title>CONELib Model Statistics</title>'
        / '<!--#include virtual="/cone/header.html" -->';
put "<H3>CONELib Model Statistics</H3>" /
put "<B>Total number of models: &nbsp " card(m):0:0 "</B><P>" /
put "Conic Models listed as LP in GAMS. Access the CONELIB" /
put "in <a href='conestat_nlp.htm'>NLP format</a>, converted using GAMS/CONVERT.<P>"/ 
put '<TABLE WIDTH="100%" BGCOLOR="#f8f8f8" BORDER=0  CELLSPACING=0 CELLPADDING=0>' /
put '<TH ALIGN=LEFT BGCOLOR="#00080"><FONT COLOR="#ffffff">Name</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Type</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Eqns</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#ConeEqns</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Vars</FONT></TH>' /
*put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#DVars</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NZ</FONT></TH>' /
*put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NNZ</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Bestknown</FONT></TH>' /
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

loop((mc(m,c),ms(m,s)),
  put '<TR>'/;
  put '<TD BGCOLOR="#' c.te(c) '"><a href="' m.tl:0 '.htm">' m.tl:0 '</a></TD>'/;
  loop(smt(s,mtype), put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' mtype.tl:10 '</TD>'/);
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'equnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' numcones(m):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'varnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'nz'):0:0 '</TD>'/;
*  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'nl_nz'):0:0 '</TD>'/;
  if(msol(m),
       put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' bestknown(m,'p1'):12:4
                    '</TD><TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"><a href="' m.tl:0
                    '_p1.htm">p1</a></TD>'
  );
  if (not msol(m),
       put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD>'
           '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD>';
  );

)
put '</TABLE>';
