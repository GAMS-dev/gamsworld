* Shitkovski AMPL model  (translation to GAMS)

Set I /1*4/;

Positive Variable  x[I];
         Variable   Obj;

Equation Eq_1,
         Def_obj;

Eq_1..     sqr(x['3'])+sqr(x['4'])=e=2;
Def_obj..  Obj=e=sqr(x['1']-1)+sqr(x['2']-2)+sqr(x['3']-3)+sqr(x['4']-4);


x.fx['1'] =  2;
x.l['2']  =  1;
x.l['3']  =  1;
x.l['4']  =  1;

* "optimal solution as starting point ";
*x.l['1'] =  2;
*x.l['2'] =  2;
*x.l['3'] =  0.848529;
*x.l['4'] =  1.13137;

Model hs042 /all/;
Solve hs042 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =   28 - 10*sqrt(2)

parameter a; a=28 - 10*sqrt(2);
 display  a;
