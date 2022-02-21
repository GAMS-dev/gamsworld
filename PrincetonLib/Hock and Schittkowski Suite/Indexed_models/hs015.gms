* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1.. x['1']*x['2']        =g= 1  ;
Eq_2.. x['1'] + sqr(x['2']) =g= 0  ;
Eq_3.. x['1']               =l= 1/2;

Def_obj..     Obj =e= 100*sqr(x['2']-sqr(x['1']))+sqr(1-x['1']);

x.l['1'] =  -2;
x.l['2'] =   1;

*x.l['1'] =  0.5;
*x.l['2'] =  2;

Model hs015 /all/;
Solve hs015 using nlp minimaze obj;

display x.l  ;
display obj.l;

*optimal obj = 306.5;
