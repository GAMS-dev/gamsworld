* blend.mod     LOR2-MN-24-38
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Blending multicomponent mixtures

* Ref.: D. M. Himmelblau, Applied Nonlinear Programming,
* McGraw-Hill Book Company, New York, 1972.  Problem 20.

* Number of variables:  24
* Number of constraints:  38
* Objective nonseparable
* Objective nonconvex
* Nonlinear constraints

$Set ncomp  24
$Set neq    12

set I    /1*%ncomp%/;
alias(i,i1);

set J_1(i) /1*%neq%/;
set J_2(i) /%neq%*%ncomp%/;  loop(i$J_1(i),J_2(i)=no);

parameter  a(i);
parameter  b(i);
parameter  c(i);
parameter  d(i);

  a['1'] = 0.0693 ;      b['1'] =  44.094 ;
  a['2'] = 0.0577 ;      b['2'] =  58.12  ;
  a['3'] = 0.05   ;      b['3'] =  58.12  ;
  a['4'] = 0.20   ;      b['4'] = 137.4   ;
  a['5'] = 0.26   ;      b['5'] = 120.9   ;
  a['6'] = 0.55   ;      b['6'] = 170.9   ;
  a['7'] = 0.06   ;      b['7'] =  62.501 ;
  a['8'] = 0.10   ;      b['8'] =  84.94  ;
  a['9'] = 0.12   ;      b['9'] = 133.425 ;
  a['10']= 0.18   ;      b['10']=  82.507 ;
  a['11']= 0.10   ;      b['11']=  46.07  ;
  a['12']= 0.09   ;      b['12']=  60.097 ;
  a['13']= 0.0693 ;      b['13']=  44.094 ;
  a['14']= 0.0577 ;      b['14']=  58.12  ;
  a['15']= 0.05   ;      b['15']=  58.12  ;
  a['16']= 0.20   ;      b['16']= 137.4   ;
  a['17']= 0.26   ;      b['17']= 120.9   ;
  a['18']= 0.55   ;      b['18']= 170.9   ;
  a['19']= 0.06   ;      b['19']=  62.501 ;
  a['20']= 0.10   ;      b['20']=  84.94  ;
  a['21']= 0.12   ;      b['21']= 133.425 ;
  a['22']= 0.18   ;      b['22']=  82.507 ;
  a['23']= 0.10   ;      b['23']=  46.07  ;
  a['24']= 0.09   ;      b['24']=  60.097 ;

  c['1'] =123.7   ;      d['1'] =  31.224 ;
  c['2'] = 31.7   ;      d['2'] =  36.12  ;
  c['3'] = 45.7   ;      d['3'] =  34.784 ;
  c['4'] = 14.7   ;      d['4'] =  92.7   ;
  c['5'] = 84.7   ;      d['5'] =  82.7   ;
  c['6'] = 27.7   ;      d['6'] =  91.6   ;
  c['7'] = 49.7   ;      d['7'] =  58.708 ;
  c['8'] =  7.1   ;      d['8'] =  82.7   ;
  c['9'] =  2.1   ;      d['9'] =  80.8   ;
  c['10']= 17.7   ;      d['10']=  64.517 ;
  c['11']=  0.85  ;      d['11']=  49.4   ;
  c['12']=  0.64  ;      d['12']=  49.1   ;


parameter  f1;      f1 = 0.7302    ;
parameter  f2;      f2 = 530       ;
parameter  f3;      f3 = 14.7      ;
parameter  f4;      f4 = 40        ;
parameter  f ;      f = f1*f2*f3/f4;


positive variable x[i];
variable          cost;

equation    eq(i)   ,
          simplex   ,
              nl2   ,
           benobj   ;
***********************************************************
eq(i)$J_1(i).. x[i+%neq%]/ (b[i+%neq%]*sum{i1$J_2(i1),(x[i1]/b[i1])})  =e=
               c[i]*x[i]/  (40*b[i]   *sum{i1$J_1(i1),(x[i1]/b[i1])})   ;

simplex..    sum{i,x[i]} =e= 1;

nl2..        sum{i$j_1(i),(x[i]/d[i])}
          +  f*sum{i1$J_1(i1),(x[i1+%neq%]/b[i1+%neq%]) } =e=  1.671;

benobj..     cost =e= sum{i,(a[i]*x[i])};

x.L[i] = 0.04;

model blend /all/;
solve blend using nlp minimaze cost;

** Himmelblau (p. 420) gives two other sets of nonlinear inequality
** constraints, here omitted, which are apparently stated incorrectly:
** they imply x[i] == 0 for i in {1,2,3,7,8,9,13,14,15,19,20,21}.


file dem /output/;  put dem;
put " cost = " ;  put cost.l:15:8 ;        put /;
put " index->*        X[*]  ";             Put /;
Loop(i,put "  " put i.tl:8 Put x.l[i]:11:5
Put /;);
put " model BLEND.gms output "    ;        put /;
