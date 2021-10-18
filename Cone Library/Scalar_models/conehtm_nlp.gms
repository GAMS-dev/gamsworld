files htm     HTML file handle        / htm.htm /;
$echo '$include conelib_nlp.gms' > cb.gms
$echo 'file fgen / cbk.gms /;' >> cb.gms
$echo 'put fgen "$echo * Best known solution values > bestknown.txt" /;' >> cb.gms
$echo 'loop(bk(m,p),' >> cb.gms
$echo ' put fgen "$echon " m.tl:0 "." p.tl:0 ", >> bestknown.txt" /;' >> cb.gms
$echo ' put fgen "$call grep objvar.l " m.tl:0 "." p.tl:0 " | cut -d= -f2 | sed s/\;//g >> bestknown.txt" /;);' >> cb.gms

$call gams cb.gms
$call gams cbk.gms

$offlisting
$include conelib_nlp.gms
$onlisting

*
*  model htm files
*
put htm; htm.lcase=1; htm.pw=1024;
loop(m,
   put_utilities 'ren'/ m.tl:0 '.htm';
   put   '<html> <head> <title>' m.tl:0 '.gms</title>'
       / '<!--#include virtual="/cone/header.html" -->'
       / '<h2>'m.tl:0 '.gms:</h2>';
   put / '<h4>Reference';
   put$(sum(mr(m,r),1)>1) 's';
   put   ':</h4>'
       / '<ul>'/;
   loop(mr(m,r), put '<li>' r.te(r) /;)
   if (card(m.te), put '<li>Original source: ' m.te(m) /);
   put   '</ul>';
   put / '<p><b>Point';
   put$(sum(mp(m,p),1)>1) 's';
   put   ':</b> '/;
   loop(mp(m,p), put '<a href="' m.tl:0 '_' p.tl:0 '.htm">' p.tl:0 '</a>&nbsp;' /);
   loop(bk(m,p), put '<br><b>Best known point:</b> <a href="' m.tl:0 '_' p.tl:0 '.htm">' 
                      p.tl:0 '</a> with value ' bestknown(m,p):12:4 /);

   put / '<hr>'
       / '<plaintext>'
       / '<!--#include virtual="' m.tl:0 '.gms" -->'
);
*
*  point htm files
*
alias (m,mm), (p,pp);

loop((m,p)$mp(m,p),
   put_utilities 'ren'/ m.tl:0 '_' p.tl:0 '.htm';
   put   '<html> <head> <title>' m.tl:0 '.' p.tl:0 '</title>'
       / '<!--#include virtual="/cone/header.html" -->'
       / '<h2>Point ' p.tl:0 ' for model <a href="' m.tl:0 '.htm">' m.tl:0 '.gms</a>';
   if (bk(m,p), put ' (Best known point)');
   put '</h4>';
   put_utilities 'htm'/ m.tl:0 '.' p.tl:0;
   put   '<hr>';
   put / '<h4>Point';
   put$(sum(mp(m,pp),1)>1) 's';
   put   ': '/;
   loop(pp$mp(m,pp), put '<a href="' m.tl:0 '_' pp.tl:0 '.htm">' pp.tl:0 '</a>&nbsp;' /;)
   put / '</h4><hr>'
       / '<plaintext>'
       / '<!--#include virtual="' m.tl:0 '.' p.tl:0 '" -->'
);

file fcred / credits.htm /;
fcred.pw=1000;
put fcred '<html> <head> <title>Credits</title>'
       /  '<!--#include virtual="/cone/header.html" -->'
       /  '<h2>Credits:</h2>'
       / '<table width="100%">';
scalar cnter /0/;

loop(a$sum((m,r)$(mr(m,r) and ar(a,r)),1),
  if (mod(cnter,5)=0, put / '<tr>');cnter = cnter+1;
  put / '<td align=left><a href="#' a.tl:0 '">'a.te(a):0'</a></td>'
);
put / '</table>'
    / '<hr>'
    / '<h3>Credit List:</h3>';

set ma(m), ra(r);

loop(a$sum((m,r)$(mr(m,r) and ar(a,r)),1),
  put / '<a name="' a.tl:0 '"></a>'
      / '<h4>' a.te(a) ':</h4>'
      / '<ul>';
  ra(r)  = ar(a,r);
  ra(ra) = not sum(cr(r,ra)$ar(a,r),yes)
  loop(ra(r), put / '<li>' r.te(r));
  ma(m) = sum(r$(mr(m,r) and ar(a,r)),1);
  put / '<li> Model';
  put$(card(ma)>1) 's';
  put   ':'
      / '<ul>'
  loop(ma(m), put / '<li><a href="' m.tl:0 '.htm">' m.tl:0 '</a>&nbsp');
  put / '</ul>';
  put / '</ul>';
);
  

file fpubs / pubs.htm /;
put fpubs '<ul>'
set aar(r); alias (r,rr);
loop(a$sum(r$af(a,r),1),
  aar(r) = af(a,r) and not sum(cr(rr,r),yes);
  loop(aar(r)$pubs(aar), put / '<li>' r.te(r));
)
put / '</ul>';

file forg / coneorg.htm /;
put forg  '<html> <head> <title>CONELib Organization</title>'
       / '<!--#include virtual="/cone/header.html" -->'
       / '<h2>CONELib Organization</h2>';
put_utilities 'htm'/ 'conelib.gms';
