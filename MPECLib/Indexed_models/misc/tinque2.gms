$title Tinloi/Que Quasibrittle paper - 2 branching

* Dataset name e.g. sws2
*   Character 1,2 : data set   : sw = swiss
*   Character 3   : algorithm  :
*   Character 4   : # branches : 2  = two-branch

* Current data sets:
*   sws2 ... Swiss, smooth, 2-branch
*   mis2 ... Milan, smooth, 2-branch
*   dhs2 ... Danish High Strength, smooth, 2-branch
*   dns2 ... Danish Normal Strength, smooth, 2-branch
*   pss2 ... Pseudo data (based on sws2), smooth, 2-branch

* proc not used, AFAIK: SPD, March 2002
$setglobal  proc 200
$if not set dataset $error "you must $set the dataset"

$onlisting  offsymxref offsymlist offdigit

option    sysout    = off
          solprint  = off
          limrow    = 0
          limcol    = 0
          iterlim   = 100000
          reslim    = 100000
          decimals  = 7;

* Inverse problem
* ===============

set       i       'Num bem nodes, size Z etc'
          y       'Num yield modes per node'  / y1*y3 /
          s       'Load situations'
          ss(s)   'Subset of s';

alias     (i,ii)
          (y,yy);

* Contents of data files
* ----------------------

scalar    pe      'Reaction';
parameter Z(i,i)  'Z matrix'
          te(i)   'Unit elastic traction'
          r(i)    'Vector that converts lw to Qc'
          q(s)    'Imposed displacement'
          Qm(s)   'Total reaction for unit thickness'
          qscale  'Scaling factor for specimen size or units'
          thick   'Actual specimen thickness';

* 2-branch parameters
* -------------------

parameter vb(y),vc(y),M1(y,y),M2(y,y),N(y);
  vb("y2") = -1; vb("y3") = 1;
  vc("y1") =  1; vc("y2") = 1;
  M1("y1","y1")=-1; M1("y1","y2")=1; M1("y2","y1")=-1; M1("y2","y2")=1;
  M2("y1","y2")=-1; M2("y1","y3")=1; M2("y3","y2")=-1; M2("y3","y3")=1;
  N("y1") = -1;

* Variables
* ---------

variable  obj         'Error'
          tc          'Traction limit 1'
          tb          'Traction limit 2'
          h1          'Slope branch 1'
          h2          'Slope branch 2'
          t(ss,i)     'Tractions'
          lw(ss,i,y)  'Lambda-w vector'
          Qerr(ss)    'Qm - Qc'
          Qc(ss)      'Calculated reaction';

positive variable
          tc,tb,h1,h2,lw,Qerr;

* Model equations
* ---------------

equation
  cost,traction(ss,i),yield(ss,i,y),
  err_Ql(ss),err_Qu(ss),
  reaction(ss),tc_tb;

cost ..
  obj =e= sum(ss,Qerr(ss));

traction(ss,i) ..
  t(ss,i) =e= q(ss)*te(i) + sum(ii,Z(i,ii)*lw(ss,ii,"y1"));

yield(ss,i,y) ..
  tb*vb(y) + tc*vc(y)
  + h1*sum(yy,M1(y,yy)*lw(ss,i,yy))
  + h2*sum(yy,M2(y,yy)*lw(ss,i,yy))
  + t(ss,i)*N(y) =g= 0;

err_Ql(ss) ..
  Qc(ss) =g= Qm(ss) - Qerr(ss);

err_Qu(ss) ..
  Qc(ss) =l= Qm(ss) + Qerr(ss);

reaction(ss) ..
  Qc(ss) =e= q(ss)*pe + sum(i,r(i)*lw(ss,i,"y1"));

tc_tb ..
  tc =g= tb;

model id / cost,traction,yield.lw,err_Ql,err_Qu,reaction,tc_tb /;

* Read data set: size, bounds etc.
* --------------------------------

parameter tc_0,tb_0,h1_0,h2_0
          obj_0,lw_0,Qerr_0,phi_0;

$include tinquedat_%dataset%.gms

tc.l = tc_0;
tb.l = tb_0;
h1.l = h1_0;
h2.l = h2_0;

obj.l = obj_0;
Qerr.l(ss) = Qerr_0;
lw.l(ss,i,y) = lw_0;

* Solve
* -----

solve id using mpec minimizing obj;
