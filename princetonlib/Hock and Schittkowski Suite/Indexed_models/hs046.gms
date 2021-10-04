* Shitkovski AMPL model  (translation to GAMS)

Set I /1*5/;

Variable  x[I], Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..   sqr(x['1'])*x['4'] + sin(x['4'] - x['5']) =e= 1;
Eq_2..   x['2']+sqr(sqr(x['3']))*sqr(x['4'])       =e= 2;
Def_obj..
Obj =e=sqr(x['1']-x['2'])+sqr(x['3']-1)+sqr(sqr(x['4']-1))+power((x['5']-1),6);


x.l['1']  = sqrt(2)/2;
x.l['2']  = 1.75;
x.l['3']  = 0.5;
x.l['4']  = 2;
x.l['5']  = 2;

Model hs046 /all/;
Solve hs046 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal obj =  0
