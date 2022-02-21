* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Positive Variable  x[I];
Variable            Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..     x['2'] =g=  exp(x['1']);
Eq_2..     x['3'] =g=  exp(x['2']);
Def_obj..  Obj    =e= -x['1']     ;


x.up['1'] =  100 ;
x.up['2'] =  100 ;
x.up['3'] =   10 ;

x.l['1'] =  0   ;
x.l['2'] =  1.05;
x.l['3'] =  2.9 ;

*"optimal solution as starting point ";
*x.l['1'] =  0.83403;
*x.l['2'] =  2.30258;
*x.l['3'] =  10     ;

Model hs034 /all/;
Solve hs034 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal obj = -log(log(10)) ;
  parameter a;a=-log(log(10));
  display a;
