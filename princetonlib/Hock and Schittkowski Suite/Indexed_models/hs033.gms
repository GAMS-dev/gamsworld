* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Positive Variable  x[I];
Variable            Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..    sqr(x['1'])+sqr(x['2'])             =l= sqr(x['3']);
Eq_2..    sqr(x['1'])+sqr(x['2'])+sqr(x['3']) =g= 4          ;
Def_obj.. Obj=e=(x['1']-1)*(x['1']-2)*(x['1']-3)+x['3']      ;

x.up['3']=  5;
* string below important for GAMS version of model
x.lo['2']=0.0000001;
x.l['1'] =  0;
x.l['2'] =  0;
x.l['3'] =  3;

* "optimal solution as starting point ";
*x.l['1'] =  0;
*x.l['2'] =  sqrt(2);
*x.l['3'] =  sqrt(2);

Model hs033 /all/;
Solve hs033 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal obj = sqrt(2) - 6 ;
  parameter a; a=sqrt(2)-6;
  display a;
