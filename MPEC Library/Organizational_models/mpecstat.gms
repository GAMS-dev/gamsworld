$echo '$include mpeclib.gms' > cb.gms
$echo 'file fgen / cbk.gms /;' >> cb.gms
$echo 'put fgen "$echo * Best known solution values > bestknown.txt" /;' >> cb.gms
$echo 'loop(bk(m,p),' >> cb.gms
$echo ' put fgen "$echon " m.tl:0 "." p.tl:0 ", >> bestknown.txt" /;' >> cb.gms
$echo ' put fgen "$call grep objvar.l " m.tl:0 "." p.tl:0 " | cut -d= -f2 | sed s/\;//g >> bestknown.txt" /;);' >> cb.gms
$echo 'put fgen "$echo * Trace file > mpec.txt" /;' >> cb.gms
$echo 'loop(m, put fgen "$call gams " m.tl:0 " mpec mpecdump mcp mpecdump iterlim 0 traceopt=3 trace=mpec.txt "; put$xp(m) xp.te(m); put /);' >> cb.gms

$call gams cb.gms
$call gams cbk.gms

$echo '$include mpeclib.gms' > gene1.gms
$echo 'file fgen / gene2.gms /;' >> gene1.gms
$echo 'put fgen "$echo * Trace file > gene.txt" /;' >> gene1.gms
$echo 'loop{m,'  >> gene1.gms
$echo '  put "$call gams " m.tl:0 " mpec mpecdump mcp mpecdump logoption 2 "; put$xp(m) xp.te(m); put /;' >> gene1.gms
$echo '  put "$call perl stats.pl " m.tl:0 " >> gene.txt" /;' >> gene1.gms
$echo '};' >> gene1.gms

$call gams gene1.gms
$call gams gene2.gms

$include mpeclib.gms

$onempty
parameter bestknown(m,p) /
$ondelim
$include bestknown.txt
$offdelim
/;
$offempty

$call cat mpec.txt | cut -d, -f1,8-9,11-12,22- > modsize.txt
$eolcom #
Table trace(m,*)
$ondelim
$ontext
m,equnum,varnum,nz,nl_nz
$include modsize.txt
$offtext
m,Uequnum,Uvarnum,Unz,islinked,Lequnum, Lnz
$include gene.txt
$offdelim
;

set mybig(m), mybigs(s);
mybig(m) = trace(m,'Lequnum') > 300;
mybig(m) = trace(m,'Uequnum') > 300 or mybig(m);
mybig(m) = trace(m,'Uvarnum') > 300 or mybig(m);
mybig(m) = trace(m,'Unz') > 2000 or mybig(m);
mybig(m) = trace(m,'Lnz') > 2000 or mybig(m);

mybigs(s) = sum(ms(mybig,s),1);
display mybigs;

file ftxt / mpecstat.txt /
     fhtm / mpecstat.htm /;

$ontext
put ftxt "MPECLib Model Statistics" /
put ftxt "Name         Type      #Eqns   #Vars     #NZ    #NNZ" /;
loop(ms(m,s),
  put m.tl:15;
  loop(smt(s,mtype), put mtype.tl:5);
  put trace(m,'equnum'):8:0;
  put trace(m,'varnum'):8:0;
  put trace(m,'nz'):8:0;
  put trace(m,'nl_nz'):8:0;
  put /;
)

put fhtm  '<html> <head> <title>MPECLib Model Statistics</title>'
        / '<!--#include virtual="/mpec/header.html" -->';
put "<H3>MPECLib Model Statistics</H3>" /
put '<TABLE WIDTH="100%" BGCOLOR="#f8f8f8" BORDER=0  CELLSPACING=0 CELLPADDING=0>' /
put '<TH ALIGN=LEFT BGCOLOR="#00080"><FONT COLOR="#ffffff">Name</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Type</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Eqns</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#Vars</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NZ</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">#NNZ</FONT></TH>' /
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
  loop(smt(s,mtype), put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' mtype.tl:5 '</TD>'/);
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'equnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'varnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'nz'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'nl_nz'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD></TR>'/;
)
put '</TABLE>';

$offtext

put ftxt "MPECLib Model Statistics" /
put ftxt "Name        #UEqns    #UVars    #UNZ    isLinked   #LEqns   #LNZ" /;
loop(ms(m,s),
  put m.tl:15;
*  loop(smt(s,mtype), put mtype.tl:5);
  put trace(m,'Uequnum'):8:0;
  put trace(m,'Uvarnum'):8:0;
  put trace(m,'Unz'):8:0;
  if {trace(m,'isLinked'),
    put "     yes";
  else
    put "      no";
  };
  put trace(m,'Lequnum'):8:0;
  put trace(m,'Lnz'):8:0;
  put /;
)


put fhtm  '<html> <head> <title>MPECLib Model Statistics</title>'
        / '<!--#include virtual="/mpec/header.html" -->';
put "<H3>MPECLib Model Statistics</H3>" /
put '<TABLE WIDTH="100%" BGCOLOR="#f8f8f8" BORDER=0  CELLSPACING=0 CELLPADDING=0>' /
put '<TH ALIGN=LEFT BGCOLOR="#888888"><FONT COLOR="#ffffff">&nbsp;</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">Total</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">Total</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">Total</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">&nbsp;</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">Equil</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">Equil</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">&nbsp;</FONT></TH></TR>' /
put '<TH ALIGN=LEFT BGCOLOR="#888888"><FONT COLOR="#ffffff">Name</FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff"><A HREF="mpecdefs.htm#teqns">#Eqns</A></FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff"><A HREF="mpecdefs.htm#tvars">#Vars</A></FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff"><A HREF="mpecdefs.htm#tnz">#NZ</A></FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff"><A HREF="mpecdefs.htm#islinked">isLinked</A></FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff"><A HREF="mpecdefs.htm#eeqns">#Eqns</A></FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff"><A HREF="mpecdefs.htm#enz">#NZ</A></FONT></TH>' /
put '<TH ALIGN=RIGHT BGCOLOR="#888888"><FONT COLOR="#ffffff">&nbsp;</FONT></TH>' /

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
*  loop(smt(s,mtype), put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' mtype.tl:5 '</TD>'/);
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'Uequnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'Uvarnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'Unz'):0:0 '</TD>'/;
  if {trace(m,'isLinked'),
    put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">yes</TD>'/;
  else
    put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">no</TD>'/;
  };
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'Lequnum'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' trace(m,'Lnz'):0:0 '</TD>'/;
  put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD></TR>'/;
)
put '</TABLE>';
