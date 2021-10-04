* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable     X[I], f    ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..    -1*sqr(x['1']) + x['2']  =g=  0   ;
Eq_2..    x['1'] - sqr(x['2'])     =g=  0   ;
Def_obj.. f =e= sqr(x['1']-2)+sqr(x['2']-1) ;

x.l['1'] = 0.5 ;
x.l['2'] = 0.5 ;

Model s227 /all/;

Solve s227 using nlp minimize f;

display x.l;
display f.l;
