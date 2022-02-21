* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Eq_1,Def_obj;

Eq_1..    x['1']*(x['1'] - 4) - 2*x['2'] + 12 =e= 0        ;
Def_obj.. f =e= 100*sqr(sqr(x['1'])-x['2'])+sqr(x['1']-1)  ;

x.l['1']  = -1.2 ;
x.l['2']  =  1   ;

Model s216 /all/;

Solve s216 using nlp minimize f;

display x.l;
display f.l;
