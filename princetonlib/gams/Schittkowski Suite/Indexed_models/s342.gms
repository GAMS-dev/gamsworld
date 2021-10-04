* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Positive Variable     X[I];
Variable              f   ;

Equation Eq_1,Def_obj;
Eq_1..    48-sqr(x['1'])-2*sqr(x['2'])-4*sqr(x['3'])  =g= 0;
Def_obj..    f   =e=   -x['1']*x['2']*x['3']               ;

x.l['1']  =   100      ;
x.l['2']  =   100      ;
x.l['3']  =   100      ;
Model s342 /all/;

Solve s342 using nlp minimize f;

display x.l;
display f.l;
