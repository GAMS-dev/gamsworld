$Title Fixed Cost Network Flow Problem with Cuts using BCH Facility - Local Branching Heuristic

$if not exist bchout_i.gdx $abort 'stop'

$include decl

* Export data for use in the cut generator
$gdxin net
$load nn ss arc demand fcost vcost u usetree usett1 usett2 xupp yupp

$include equs

scalar mult;
Parameter blb(nn,nn,ss);
Equation deflb;
deflb.. sum(arc$blb(arc), 1-y(arc)) + sum(arc$(not blb(arc)), y(arc)) =l= mult;

model master /all/;

option mip=cplex, reslim=10, optcr=0, limrow=0, limcol=0, solprint=off, solvelink=2;

* Get the best integer from CPLEX
scalar costold;
execute_load 'bchout_i' y.l, cost.l;
blb(arc) = round(y.l(arc));
costold=cost.l;

xupp(arc) = u;
x.up(arc) = xupp(arc);
y.up(arc)$yupp(arc) = yupp(arc);

$echo mipstart 1 > cplex.op2
master.optfile = 2;
$include mult.txt
mult$(mult>=card(arc)) = 8;

scalar startheur; startheur = inf;
$if exist startheur.txt $include startheur.txt
abort$(costold > startheur) 'stop',costold,startheur;

scalar doit /1/,foundnew /0/;
while(doit,
  solve master mini cost using mip;
  if (cost.l > costold-0.5, mult=mult*2; else foundnew=1); 
  doit=mult<card(arc) and foundnew=0;
);
file fx /mult.txt/;
putclose fx 'mult=' mult:0:0 ';' /;
