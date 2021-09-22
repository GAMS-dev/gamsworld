$ontext

REMARK:  Must run plibstat.gms before running performhtm.gms

$offtext

files htm     HTML file handle        / htm.htm /;

$goto done

$echo '$include performlib.gms' > cb.gms
$echo 'file fgen / cbk.gms /;' >> cb.gms
$echo 'put fgen "$echo * Best known solution values > bestknown.txt" /;' >> cb.gms
$echo 'loop(bk(m,p),' >> cb.gms
$echo ' put fgen "$echon " m.tl:0 "." p.tl:0 ", >> bestknown.txt" /;' >> cb.gms
$echo ' put fgen "$call grep objvar.l " m.tl:0 "." p.tl:0 " | cut -d= -f2 | sed s/\;//g >> bestknown.txt" /;);' >> cb.gms

$call gams cb.gms
$call gams cbk.gms

$label done



$offlisting
$include performlib.gms
$onlisting



$onempty
parameter bestknown(m,p) /
$ondelim
$include bestknown.txt
$offdelim
/;
$offempty



$eolcom #
Table stats(m,mtype,*) 
$include mstats.txt
;

*
*  model htm files
*

put htm; htm.lcase=1; htm.pw=1024;

loop((m,mtype)$(stats(m,mtype,'var')),
   put_utilities 'ren'/ m.tl:0 '.htm';
   put   '<html> <head> <title>' m.tl:0 '</title>'
       / '<!--#include virtual="/performance/header.html" -->'
       / '<h2>'m.tl:0 ':</h2>';
   put / '<h4>Reference';
   put$(sum(mr(m,r),1)>1) 's';
   put   ': (see our <a href="credits.htm">remarks</a>)</h4>'
       / '<ul>'/;
   loop(mr(m,r), put '<li>' r.te(r) /;)
   if (card(m.te), put '<li>Original source: ' m.te(m) /);
   put   '</ul>';
   put / '<p><b>Point';
   put$(sum(mp(m,p),1)>1) 's';
   put   ':</b> '/;

   loop(mp(m,p), put '<a href="' m.tl:0 '_' p.tl:0 '.htm">' p.tl:0 '</a>&nbsp;' /);
   loop(bk(m,p), put '<br><b>Best known point:</b> <a href="' m.tl:0 '_' p.tl:0 '.htm">'
                      p.tl:0 '</a> with solution ' bestknown(m,p):12:4 /);
   put  / '<hr>'
  
   put  / '<b>Download model: </b><a href=' m.tl:0 '.gms>' m.tl:0  '.gms</a> <br>'
  
   put       / '<b>Download data : </b><a href= 'm.tl:0'.gdx>' m.tl:0'.gdx</a>,&nbsp&nbsp'
   put         '                            <a href= 'm.tl:0'.gdx.zip>' m.tl:0'.gdx.zip</a><br>'  
   put  / '<br><b>Model Stats:</b>'
        / '<plaintext>'
        / ' Equation counts '
        / '     Total         E       G       L       R'
        / stats(m,mtype,'eq'):10:0   stats(m,mtype,'eeq'):10:0   stats(m,mtype,'geq'):8:0  
          stats(m,mtype,'leq'):8:0   stats(m,mtype,'req'):8:0
        /
        / ' Variable counts'
        / '     Total      cont  binary integer    sos1    sos2   scont    sint'
        / stats(m,mtype,'var'):10:0   stats(m,mtype,'contvar'):10:0  stats(m,mtype,'binvar'):8:0
          stats(m,mtype,'intvar'):8:0 stats(m,mtype,'ss1'):8:0  stats(m,mtype,'ss2'):8:0
          stats(m,mtype,'scvar'):8:0  stats(m,mtype,'sivar'):8:0
        /
        / ' Nonzero counts '
        / '     Total    matrix     obj'
        / stats(m,mtype,'nz'):10:0   stats(m,mtype,'mnz'):10:0  stats(m,mtype,'cnz'):8:0 
);

*
*  point htm files
*

alias (m,mm), (p,pp);

loop( (m,p)$mp(m,p),
   put_utilities 'ren'/ m.tl:0 '_' p.tl:0 '.htm';
   put   '<html> <head> <title>' m.tl:0 '.' p.tl:0 '</title>'
       / '<!--#include virtual="/performance/header.html" -->'
       / '<h2>Point ' p.tl:0 ' for model <a href="' m.tl:0 '.htm">' m.tl:0 '</a>';
   if (bk(m,p), put ' (Best known point)');
   put '</h4>';
   put / '<xmp>Solution found by ' bk.te(m,p) /;
   put / 'Solution value:' bestknown(m,p):12:4  '</xmp>';  
   put / 'Details on resource times for points are listed in JFK, GAMS, and solver <a href="/performance/specs.htm">specifications.</a>' /; 
   put   '<br><br><hr>';
   put / '<h4>Point';
   put$(sum(mp(m,pp),1)>1) 's';
   put   ': '/;
   loop(pp$mp(m,pp), put '<a href="' m.tl:0 '_' pp.tl:0 '.htm">' pp.tl:0 '</a>&nbsp;' /;)
   put /  '<br>Download point data &nbsp&nbsp'; 
   loop(pp$mp(m,pp), 
       put '<a href="' m.tl:0 '_' pp.tl:0 '.gdx">' m.tl:0 '_' pp.tl:0 '.gdx </a>&nbsp&nbsp;' /;
       put '<a href="' m.tl:0 '_' pp.tl:0 '.gdx.zip">' m.tl:0 '_' pp.tl:0 '.gdx.zip </a>&nbsp;' /;
   );
   put / '</h4><hr>'
*   if (mMIP(m),
   loop(mtype $stats(m,mtype,'var'),

        if (mMIP(m),
           put  / '<b>Download model: </b><a href=mip.gms>mip.gms</a> <br>'
        else
           put  / '<b>Download model: </b><a href=lp.gms>lp.gms</a> <br>'
        );
        put       / '<b>Download data : </b><a href= 'm.tl:0'.gdx>' m.tl:0'.gdx</a>,&nbsp&nbsp'
        put    '                            <a href= 'm.tl:0'.gdx.zip>' m.tl:0'.gdx.zip</a><br>'  
        put  / '<br><b>Model Stats:</b>'
           / '<plaintext>'
           / ' Equation counts '
           / '     Total         E       G       L       R'
           / stats(m,mtype,'eq'):10:0   stats(m,mtype,'eeq'):10:0   stats(m,mtype,'geq'):8:0  
             stats(m,mtype,'leq'):8:0   stats(m,mtype,'req'):8:0
           /
           / ' Variable counts'
           / '     Total      cont  binary integer    sos1    sos2   scont    sint'
           / stats(m,mtype,'var'):10:0   stats(m,mtype,'contvar'):10:0  stats(m,mtype,'binvar'):8:0
             stats(m,mtype,'intvar'):8:0 stats(m,mtype,'ss1'):8:0  stats(m,mtype,'ss2'):8:0
             stats(m,mtype,'scvar'):8:0  stats(m,mtype,'sivar'):8:0
           /
           / ' Nonzero counts '
           / '     Total    matrix     obj'
           / stats(m,mtype,'nz'):10:0   stats(m,mtype,'mnz'):10:0  stats(m,mtype,'cnz'):8:0 
   );
);



file fcred / credits.htm /;
fcred.pw=1000;


put fcred '<html> <head> <title>Credits</title>'
       /  '<!--#include virtual="/performance/header.html" -->'

put fcred   '<h2>Remarks:</h2>'
put       / 'We have made every attempt to give credit to the original author'
          / 'or authors of the individual models. Unfortunately, since some models'
          / 'come from large model collections or are derived from client models,'
          / 'the correct reference is not always available. <br><br>'
          /
          / 'We welcome your comments and suggestions if references of a '
          / 'particular model are incorrect. Please contact the current '
          / 'PerformanceLib coordinator at'
          / '<a href="mailto:apruessner@gams.com">apruessner@gams.com</a>'
          / '<br><br>'
          / '<hr>'

put    /  '<h2>Credits:</h2>'
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



file fpubs / biblio.htm /;

put fpubs  '<html> <head> <title>PERFORMLib Bibliography</title>'
       / '<!--#include virtual="/performance/header.html" -->'
       / '<h2>PERFORMLib Bibliography</h2>';

put fpubs '<ul>'
set aar(r); alias (r,rr);
loop(a$sum(r$af(a,r),1),
  aar(r) = af(a,r) and not sum(cr(rr,r),yes);
  loop(aar(r)$pubs(aar), put / '<li>' r.te(r));
)  

put / '</ul>';


file forg / performorg.htm /;
put forg  '<html> <head> <title>Performance Lib Organization</title>'
       / '<!--#include virtual="/performance/header.html" -->'
       / '<h2>Performance Lib Organization</h2>';

put_utilities 'htm'/ 'performlib.gms';



file fchn / changelog.htm /;
put fchn  '<html> <head> <title>Performance Lib Organization</title>'
       / '<!--#include virtual="/performance/header.html" -->'
       / '<h2>PERFORMLib Changelog</h2>';
put    / '<pre>'
put_utilities 'inc'/ 'changelog';
put   / '</pre>'






