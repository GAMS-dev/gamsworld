$include mpeclib.gms

$ontext
* Generate a script that runs all small MacMPEC models
file frs batch run script / rs.bat /;
loop((ms(m,s),d)$(not big(s) and ds(d,s) and sameas(d,"macmpec")),
  put frs "gams " m.tl:0
  loop(bk(m,p), put " user1=" m.tl:0 "." p.tl:0);
  put$xp(m) " " xp.te(m);
  put /;
);
$offtext

$set DEL  del
$set MOVE move
$set DSEP \
$if %system.filesys% == UNIX $set DEL  /bin/rm
$if %system.filesys% == UNIX $set MOVE /bin/mv
$if %system.filesys% == UNIX $set DSEP /

* Generate a script that translates all scalar models
$echo terminate  > convert.opt
$echo objvar    >> convert.opt
$echo gmsinsert >> convert.opt
scalar lastm; lastm = card(m);
set xx(m);
xx(m) = sum(ms(m,s),ord(s))>205;
xx(m) = yes;
file frs batch run script / rs.bat /;
put frs;
put "%DEL% mpeclib.zip" //;
loop((m,s)$(xx(m) and ms(m,s)),
*  put "gmszip mpeclib " m.tl:0 ".gms" /;
  put "%DEL% " m.tl:0 ".gms" /;
  put "gams " m.tl:0 " mpec=convert mcp=convert nlp=convert minlp=convert mip=convert optfile 1";
  if {(sum(ds(d,s), 1) > 0),
    loop {(ds(d,s)),
      put " idir=..%DSEP%" d.tl:0;
    }
  else
    put " idir=..%DSEP%misc";
  };
  put$xp(m) " " xp.te(m);
  put /;
  put "%MOVE% gams.gms bubbaXX.gms" /;
  put "gams bubbaXX.gms mpec=convert mcp=convert nlp=convert minlp=convert mip=convert optfile 1";
  put$xp(m) " " xp.te(m);
  put /;
  put "%MOVE% gams.gms " m.tl:0 ".gms" /;
  put "%DEL% bubbaXX.gms" /;
  put "%DEL% bubbaXX.lst" /;
  put "%DEL% gams.lst" /;
  put "%DEL% " m.tl:0 ".lst" /
  put "gmszip mpeclib.zip " m.tl:0 ".gms" /
  put "echo " m.tl:0 /;
*  put "pause" /;
  put /;
);
put "gmszip mpeclib.zip mpeclib.gms mpecscript.gms mpecstat.gms mpechtm.gms mpecref.inc stats.pl" /;
