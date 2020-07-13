$Title Fixed Cost Network Flow Problem with Cuts using BCH Facility - Dicut Generation

set       nn              nodes
          ss              sub arcs index
          arc(nn,nn,ss)   arcs
Alias(nn,n,m),(s,ss)

Parameter  demand(nn)      node demand

Variables  y(nn,nn,ss)        usage of the arc
           orgcost

$gdxin net.gdx
$load nn ss arc demand

$gdxin bchout.gdx
$load y orgcost=cost

scalar startcut /0/; 

$if exist startcut.txt $include startcut.txt

set ch / ch1*ch10 /;
parameter cuthist(ch) obj value for the root LPs;

$if not exist cuthist.gdx $goto nocuthist
$gdxin cuthist
$load cuthist
$goto chcont
$label nocuthist
cuthist(ch)=0
$label chcont

* Start cuts after CPLEX is done with cuts
abort$(orgcost.l < startcut) 'stop',orgcost.l,startcut; 

* Is this an integer solution?
abort$(sum(arc$(y.l(arc)>1e-6 and y.l(arc)<1-1e-6),1)=0) 'stop no frac';

* Progress in cut generation
scalar xrgap, rgap /0.01/, xagap, agap /10000/, cntfail /0/;

$if exist rgap.txt $include rgap.txt
$if exist agap.txt $include agap.txt
$if exist cntfail.txt $include cntfail.txt

abort$(cntfail > 3) 'stop cntfail';

file fxx; fxx.ap=1;
file fx /cntfail.txt/; 

if (card(cuthist) = card(ch),
  xagap = cuthist('ch10')-cuthist('ch1');
  xrgap = xagap/cuthist('ch1');
  putclose fxx cuthist('ch1') ' ' cuthist('ch10') ' ' xrgap:8:5 ' ' xagap:8:2;
  if (xrgap < rgap and xagap < agap,
     execute 'rm -f cuthist.gdx';
     putclose fx 'cntfail=' (cntfail+1):0:0 ';';
     abort 'stop root cuts';
  )
);

Set        cc        maximum number of cuts  / 1*20 /
           gdxcc     / bchdicut1*bchdicut20 / 
           c(cc)     active solution eliminating constraints
Variable   z(nn)     indicator for node membership
           cost      objective
           zall(gdxcc,nn)
Binary variables z, zall
Equations  obj       objective
           sc        positive demand over the node set;

obj..     sum(arc(m,n,s), y.l(m,n,s)*z(n)*(1-z(m))) =e= cost;
sc..      sum(n, demand(n)*z(n))                    =g= 1;

Model dicut /obj, sc/;

option limrow=0, limcol=0, solprint=off, miqcp=baron, optcr=0, optca=0.5, reslim=10;

Parameter y_c(cc,nn,nn,ss)  coefficient of the y variables in the cut
          rhs_c(cc)         cut rhs
          sense_c(cc)       'the sense of the cuts: 1 =L=, 2 =E=, 3 =G='
          numcuts           /0/
	  first             /1/
Set       gdxccact(gdxcc);

c(cc)     = no;
$call rm -f bchdicut*.gdx

$onecho > baron.opt
isoltol 0.99
numsol 20
gdxout bchdicut
firstfeas 1
$offecho
dicut.optfile=1;

z.l(nn) = uniform(0.25,0.75);
cost.up = 0.985; 
solve dicut minimizing cost using miqcp;

$set devnull nul
$if %system.filesys% == UNIX $set devnull /dev/null

if ((dicut.modelstat = 1 or  dicut.modelstat = 8 or    
     dicut.modelstat = 2 and dicut.solvestat = 1) and  
     cost.l < 0.985,
  execute 'gdxmerge bchdicut*.gdx > %devnul%';    
  execute_load 'merged.gdx', gdxccact=merged_set_1, zall=z;
  zall.l(gdxccact,n) = round(zall.l(gdxccact,n));
  loop((gdxccact(gdxcc),cc)$(ord(gdxcc)=ord(cc)),
    numcuts     = numcuts + 1;
    sense_c(cc) = 3; 
    rhs_c(cc)   = 1;
    y_c(cc,arc(m,n,s))$(not zall.l(gdxccact,m) and zall.l(gdxccact,n)) = 1;
    c(cc)       = yes;
  )
  if (card(cuthist) = card(ch),
    cuthist(ch) = cuthist(ch+1); 
    cuthist('ch10') = orgcost.l;
  else
    loop(ch$(cuthist(ch)=0 and first=1), cuthist(ch)=orgcost.l; first=0);
  );
  execute_unload 'cuthist.gdx', cuthist;
else
  abort 'stop no cuts';
)
