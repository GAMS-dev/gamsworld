* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Positive Variable     X[I] ;
         Variable     f    ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1..            x['1']/sqrt(3) - x['2']      =g= 0;
Eq_2..            x['1'] + sqrt(3)*x['2']      =g= 0;
Eq_3..            6 - x['1'] - sqrt(3)*x['2']  =g= 0;
Def_obj..  f =e= -1*(9-sqr(x['1']-3))*(power(x['2'],3)/(27*sqrt(3)));

x.l['1'] = 2   ;
x.l['2'] = 0.5 ;

Model s232 /all/;

Solve s232 using nlp minimize f;

display x.l;
display f.l;
