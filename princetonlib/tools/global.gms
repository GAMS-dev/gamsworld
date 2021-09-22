$Title  Counts models ang generates summary HTML table

$set root /srv/www/vhosts/gamsworld.eu/httpdocs/performance/princetonlib

$                              set sep \
$if %system.filesys% == UNIX  $set sep /

* Protect the user if we have an incorrect root
$if exist %root%%sep%tools%sep%global.gms $goto proceed
$call echo '    Error: root directory is incorrect (%root%)'  > error.log
$call echo '    Modify root directory as needed.'            >> error.log
$call cat error.log
$abort "Incorrect root directory specified (%root%)"
$label proceed

$set html     %root%%sep%princetonlibstat.htm

set g groups  /
$include "%root%%sep%groups.inc"
              /;
$offlisting
set gm(g,*) all models /
$include "%root%%sep%models.inc"
              /;
$onlisting

set gmi(g,*) models missing AMPL source /
$include "%root%%sep%missing.inc"
/;

set gmg(g,*) gams names;
set gma(g,*) ampl names with solutions;

file temp / temp.gms /;

put temp '* collection of names.inc'/ '$phantom phantom' / 'set gmg(*,*) / ';
loop(g,
   put / '"' g.tl:0 '".( phantom '
   put / '$if exist "%root%%sep%gams%sep%' g.tl:0 '%sep%names.inc" $include "%root%%sep%gams%sep%' g.tl:0 '%sep%names.inc"';
   put / '    )'
);
put / '/;';
put /// '$onembedded' / 'set gma(*,*) ampl model with solution / ';
loop(g,
   put / '"' g.tl:0 '".( phantom '
   put / '$if exist "%root%%sep%raw%sep%' g.tl:0 '%sep%ampl_sol.inc" $include "%root%%sep%raw%sep%' g.tl:0 '%sep%ampl_sol.inc"';
   put / '    )'
);
putclose / '/;'
         / '$offembedded'
         / '*end of includes';
execute 'gams temp.gms gdx=temp.gdx';
execute_load 'temp.gdx',gmg,gma;
option gmg:0:0:1;
option gma:0:0:1;
 display gmg, gma;

alias(m,*);

set mm unique model name; mm(m) = sum(gm(g,m), yes);

parameter tab summary table
          cnt counts;

set tabcol / ampl,
             gams,
             missing        "AMPL Model Missing"
             amplsolmissing "AMPL Solution Missing"
/;

* Subtract number of models where AMPL source is missing from web
tab(g,'ampl') = sum(gm(g,mm), 1) - sum(gmi(g,mm), 1);
tab(g,'amplsrcmissing') = sum(gmi(g,mm), 1);
tab(g,'gams') = sum(gmg(g,mm), 1);
tab(g,'amplsol') = sum(gma(g,mm), 1);
tab(g,'missing') = tab(g,'ampl') - tab(g,'gams');
tab(g,'amplsolmissing') = max(tab(g,'ampl') - tab(g,'amplsol'),0);
tab('total',tabcol) = sum(g, tab(g,tabcol));

cnt(mm) = sum(gm(g,mm), 1);

option tab:0; display tab;

set problem;

problem(gm(g,mm)) = cnt(mm) <> 1;

option problem:0:0:1;
*display problem;

* Now output htm file

file fput /'%html%'/;
put fput
'<HTML>'
'<TABLE WIDTH="100%" BGCOLOR="#f8f8f8" BORDER=0  CELLSPACING=0 CELLPADDING=0>' /
'<TH ALIGN=LEFT BGCOLOR="#00080"><FONT COLOR="#ffffff">Directory Name</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">AMPL</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">GAMS</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Missing</FONT></TH>' /
'<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">AMPL Solution Unknown</FONT></TH>' /

loop(g,
   put
   '<TR>' /
   '<TD BGCOLOR="#fefefe">';
   if(tab(g,"gams"),
      put '<A HREF="htm/group' ord(g):0:0 'stat.htm">' g.te(g):50 "</A>";
      if(tab(g,"amplsrcmissing"),
         put '*';
      )
      put '</TD>' /;
   else
      put g.te(g):50;
      if(tab(g,"amplsrcmissing"),
         put '*';
      )
      put '</TD>' /;
   );
   loop(tabcol,
      put '<TD ALIGN=RIGHT BGCOLOR="#fefefe">' tab(g,tabcol):0:0 '</TD>' /;
   )
   put '</TR>'/;
);

put '<TD BGCOLOR="#e8e8e8"><B>Total:</B></TD>' / ;
    loop(tabcol,
       put '<TD ALIGN=RIGHT BGCOLOR="#e8e8e8"><B>' tab("total",tabcol):0:0 '</B></TD>' /
    );
put '</TR>',


putclose fput;