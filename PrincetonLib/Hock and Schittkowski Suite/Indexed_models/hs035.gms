* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Positive Variable  x[I];
Variable            Obj;

Equation Eq_1,Def_obj;

Eq_1..  x['1'] + x['2'] + 2*x['3'] =l= 3;
Def_obj..  Obj=e= 9-8*x['1']-6*x['2']-4*x['3']+2*sqr(x['1'])+2*sqr(x['2'])+
                      sqr(x['3'])+2*x['1']*x['2']+2*x['1']*x['3']         ;

x.l['1'] = 0.5;
x.l['2'] = 0.5;
x.l['3'] = 0.5;

*"optimal solution as starting point ";
*x.l['1'] = 4/3;
*x.l['2'] = 7/9;
*x.l['3'] = 4/9;

Model hs035 /all/;
Solve hs035 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj = 1/9
  parameter a;a   = 1/9  ;
  display a;

display a;
