* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation equ_1, Def_obj;

 equ_1..     0  =e= 10*(x['2'] - sqr(x['1'])) ;
Def_obj..   Obj  =e= sqr(1-x['1'])            ;

x.l['1'] = -1.2;
x.l['2'] =  1  ;

Model hs006 /all/;
Solve hs006 using nlp minimaze obj;

display x.l  ;
display obj.l;
