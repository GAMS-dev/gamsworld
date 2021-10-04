* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..  sqr(x['1']) + x['2'] =g= 0  ;
Eq_2..  x['1'] + sqr(x['2']) =g= 0  ;
Def_obj..     Obj =e= 100*sqr(x['2']-sqr(x['1']))+sqr(1-x['1']);


x.lo['1'] =  -1/2;
x.up['1'] =   1/2;

x.up['2'] =     1;

x.l['1'] =  0.5;
x.l['2'] =  0.25;

Model hs016 /all/;
Solve hs016 using nlp minimaze obj;

display x.l  ;
display obj.l;

*optimal obj =  1/4;
