$include globallib.gms

$ontext
* Generate a script that runs all small trimloss models
file frs batch run script / rs.bat /;
loop((ms(m,s),d)$(not big(s) and ds(d,s) and sameas(d,"trimloss")),
  put frs "gams " m.tl:0  
  loop(bk(m,p), put " user1=" m.tl:0 "." p.tl:0);
  put$xp(m) " " xp.te(m);
  put /;
);
$offtext

* Generate a script that translate all scalar models
$echo terminate  > convert.opt
$echo objvar    >> convert.opt
$echo gmsinsert >> convert.opt
scalar lastm; lastm = card(m);
set xx(m);
xx(m) = sum(ms(m,s),ord(s))>205;
*xx(m) = yes;
file frs batch run script / rs.bat /;
loop((m,s,d)$(xx(m) and ms(m,s) and ds(d,s)),
*  put frs "gmszip globallib " m.tl:0 ".gms" /;
  put frs "gams " m.tl:0 " nlp=convert dnlp=convert cns=convert optfile 1 idir=..\" d.tl:0;
  put$xp(m) " " xp.te(m);
  put /;
  put "gams gams.gms nlp=convert dnlp=convert cns=convert optfile 1";
  put$xp(m) " " xp.te(m);
  put /;
  put "mv gams.gms " m.tl:0 ".gms" /;
*  put "del gams.lst" /;
*  put "del " m.tl:0 ".lst" /
  put "echo " m.tl:0 /;
  put "pause" /;
);


$ontext
* Generate a run script for SBB/CONOPT2 optcr=0 iterlim=big domlim=big 
* time=180 optfile=1 nodlim=big
set xxx(m) /
nuclearva
nuclearvb
nuclearvc
nuclearvd
nuclearve
nuclearvf
/;

file frs batch run script / rs.bat /;
put frs "echo minlp sbb > gamsbas.opt" /
loop(m$xxx(m),
  put frs "gams " m.tl:0 " minlp=gamsbas nlp=conopt2 optcr=0 iterlim=1000000 domlim=1000000 nodlim=1000000"
                         " reslim=300 optfile=1"
  put$xp(m) " " xp.te(m);
  put /;
);
$offtext

$ontext
set nom(m) /
  4stufen    
  alan       
  batch      
  batchdes   
  beuster    
  cecil_13   
  contvar    
  csched1    
  csched2    
  deb10      
  deb6       
  deb7       
  deb8       
  deb9       
  detf1      
/

* Generate a run script for BARON optcr=0 iterlim=big domlim=big time=100 workfactor 100
file frs batch run script / rs.cmd /;
loop(m$(not nom(m)),
  put frs "gams " m.tl:0 " minlp=baron optcr=0 iterlim=1000000 domlim=1000000"
                         " workfactor=200 reslim=180 trace=baron.txt traceopt=3"
  put$xp(m) " " xp.te(m);
  put /;
);
$offtext

$ontext
* Generate a run script for SBB/CONOPT optcr=0 iterlim=big domlim=big time=180
* which is executed through GAMSBAS. After the run we save the point.
set xx(m) /
TLN12
TLN2
TLN4
TLN5
TLN6
TLN7
/

file frs batch run script / rs.bat /;
$echo minlp sbb > gamsbas.opt
loop(m$xx(m),
  put frs "gams " m.tl:0 " minlp=gamsbas nlp=conopt2 optcr=0 iterlim=1000000 domlim=1000000"
                         " reslim=180 optfile 1 nodlim=1000000 trace=sbb.txt traceopt=3"
  put$xp(m) " " xp.te(m);
  put /;
  put "move " m.tl:0 ".bas " m.tl:0 ".p10" /;
);
$offtext

$ontext
* The headers of the trace file
    filename     TRNSPORT
    modeltype    LP
    solvername   BDMLP
    NLP def      CONOPT
    MIP def      OSL3
    juliantoday  36963.2xxx  start dat/time of job
    direction    0/1  min/max
    equnum
    varnum
    dvarnum
    nz
    nl nz
    optfile
    modelstat
    solvestat
    obj
    objest
    res used
    iter used
    dom used
    nodes used
    user1        .... ,# user1_string
$offtext

$ontext
set slv / CONOPT, MINOS, SNOPT /;
parameter bp (m,slv) /
$oneps
$ondelim
4STUFEN,conopt,116329.7
ALAN,conopt,2.925
BATCH,conopt,285506.5
BATCHDES,conopt,167427.7
$offeps
$offdelim
/

file frs / rs.gms /;
scalar n /0/;
loop((m,slv)$bp(m,slv),
 n$sameas(slv,"conopt") = 10;
 n$sameas(slv,"minos") = 11;
 n$sameas(slv,"snopt") = 12;
 put frs / "$echo $ontext > head" 
         / "$echo Solution found by SBB with " slv.tl:0 " as subsolver. >> head"
         / "$echo Solution value: " bp(m,slv) " >> head"
         / "$echo $offtext >> head "
         / "$call cat head " m.tl:0 ".p" n:0:0 " > " m.tl:0 ".p1"
         / "$echo " m.tl:15 ".p1    Solution of value " bp(m,slv) " >> bk.txt ";
)
$offtext

$ontext
* Run script for all models without a point
file frs / rs.bat /;
loop(m$(sum(mp(m,p),1)=0),
  put frs "gams " m.tl:0 " minlp=gamsbas nlp=conopt2 optcr=0 iterlim=1000000 domlim=1000000"
                         " reslim=2000 optfile 1 nodlim=1000000 trace=sbb.txt traceopt=3"
  put$xp(m) " " xp.te(m);
  put /;
)
$offtext

$ontext
* Run script for all models without a point
file frs / rs.bat /;
loop(m,
  loop(mp(m,p), put frs m.tl:0 " " p.tl:0 /);
)
$offtext

$ontext
file frs / rs.bat /;
loop(d,
  put frs d.te(d):50 " "  (sum(ds(d,s),1)):4:0 /;
);
$offtext
