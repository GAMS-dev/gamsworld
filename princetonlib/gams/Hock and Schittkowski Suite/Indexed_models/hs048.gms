* Shitkovski AMPL model  (translation to GAMS)

Set I /1*5/;

Variable  x[I], Obj;

Equation Eq_1,Eq_2,Def_obj;


Eq_1..              Sum{i,x[i]}             =e=  5;
Eq_2..              x['3']-2*(x['4']+x['5'])=e= -3;
Def_obj..
Obj =e= sqr(x['1']-1)+sqr(x['2']-x['3'])+(x['4']-x['5']);


x.l['1']  =  3;
x.l['2']  =  5;
x.l['3']  = -3;
x.l['4']  =  2;
x.l['5']  = -2;

Model hs048 /all/;
Solve hs048 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =  0
