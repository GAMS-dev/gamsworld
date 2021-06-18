$Title Fixed Cost Network Flow Problem with Cuts using BCH Facility
$Ontext

  Francisco Ortega, Laurence Wolsey
  A branch-and-cut algorithm for the single-commodity, uncapacitated,
  fixed-charge network flow problem.
  Networks 41 (2003), no. 3, 143--158.

  http://www.core.ucl.ac.be/services/psfiles/dp00/dp2000-49.pdf

  Michael Bussieck, Hua Ni, Alexey Koptsevich
  Technical Note: Solving the Steiner Tree Problem with GAMS Branch-and-Cut Facility.
  Technical report, GAMS Development Corp. 2003.

$Offtext

$onecho > decl.gms
Set       nn              nodes
          ss              sub arcs index
          arc(nn,nn,ss)   arcs

Alias(nn,n,m),(s,ss)

Parameter demand(nn)      node demand
          fcost(nn,nn,ss) fixed cost
          vcost(nn,nn,ss) variable cost
          xupp(nn,nn,ss)  upper bound on flow
          yupp(nn,nn,ss)  upper bound on build
Scalar    u               sum of demand
          usetree	  whether the additional equation is present
          usett1          same
          usett2          same;
$offecho
$include decl

* Some defaults
usetree=0; usett1=0; usett2=0;
$include %fname%.inc

arc(m,n,s)$(fcost(m,n,s) or vcost(m,n,s) or xupp(m,n,s) or yupp(m,n,s)) = yes;

* Export data for use in the cut generator
execute_unload 'net.gdx', nn ss arc demand fcost vcost u usetree usett1 usett2 xupp yupp;

$onecho > equs.gms
Variable  cost
          x(nn,nn,ss)     flow over the arc
          y(nn,nn,ss)     usage of the arc

Positive variables x
Binary variables y

Equations obj             objective
          tt2(n)          no flow through non-demanding nodes
          bf(nn,nn,ss)    binary forcing constraints
          bal(nn)         flow conservation constraints
	  tree(nn)	  outflow via one arc only
          tt1(n)          demanding nodes are fed via one arc only;

obj..       sum(arc, vcost(arc)*x(arc) + fcost(arc)*y(arc)) =e= cost;
bal(n)..    sum(arc(m,n,s), x(m,n,s)) - sum(arc(n,m,s), x(n,m,s)) =e= demand(n);
bf(arc)..   x(arc) =l= xupp(arc)*y(arc);
tree(n)$usetree..   sum(arc(n,m,s), y(n,m,s)) =l= 1;
tt1(n)$(usett1 and demand(n) > 0)..   sum((m,s), y(m,n,s)) =e= 1;
tt2(n)$(usett2 and demand(n) = 0)..   sum((m,s), y(m,n,s)) =l= 1;
$offecho
$include equs

model master /all/;

$onecho > cplex.opt
mipinterval 1
nodesel 1
$offecho

$if set cutsoff $goto coff
$onecho >> cplex.opt
usercutcall bchdicut.inc
usercutfirst 100 
$offecho

$label coff
$if set heuroff $goto hoff
$onecho >> cplex.opt
userheurcall bchfcheu.inc
userheurfirst 0
userheurobjfirst 0
userheurfreq 0
userheurnewint yes
$offecho

$label hoff
xupp(arc) = min(u,xupp(arc));
x.up(arc) = xupp(arc);
y.up(arc)$yupp(arc) = yupp(arc);

$call rm -f bchout_i.gdx startcut.txt startheur.txt cuthist.gdx agap.txt rgap.txt cntfail.txt
$echo mult=8; > mult.txt
$if set startcut  $echo startcut=%startcut%; > startcut.txt
$if set startheur $echo startheur=%startheur%; > startheur.txt
$if set cutrgap   $echo rgap=%cutrgap%; > rgap.txt
$if set cutagap   $echo agap=%cutagap%; > agap.txt

master.optcr=0;

* If you need to verify a solution written by savepoint uncomment the next line
*execute_loadpoint "%fname%.gdx", x, y;

solve master mini cost using mip;
