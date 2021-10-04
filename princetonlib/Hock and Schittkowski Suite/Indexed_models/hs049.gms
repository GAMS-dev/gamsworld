* Shitkovski AMPL model  (translation to GAMS)

Set I /1*5/;

Variable  x[I], Obj;

Equation Eq_1,Eq_2,Def_obj;

Def_obj..
Obj =e=sqr(x['1']-x['2'])+sqr(x['3']-1)+sqr(sqr(x['4']-1))+power((x['5']-1),6);

Eq_1.. sum{i$(ord(i) ne card(i)),(x[i] + 3*x['4'])} =e= 7;
Eq_2.. x['3'] + 5*x['5'] =e= 6;

x.l['1']    =10  ;
x.l['2']    = 7  ;
x.l['3']    = 2  ;
x.l['4']    =-3  ;
x.l['5']    = 0.8;

Model hs049 /all/;
Solve hs049 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =  0
