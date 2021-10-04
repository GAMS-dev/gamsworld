* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Positive Variable     X[I];
Variable              f   ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..    675     -           sqr(x['1'])*    x['2']  =g= 0;
Eq_2..      0.419 - 0.0000001*sqr(x['1'])*sqr(x['3']) =g= 0;
Def_obj.. f=e=(-0.0201*sqr(sqr(x['1']))*x['2']*sqr(x['3']))*0.0000001;

x.up['1'] =    36.0    ;
x.up['2'] =     5.0    ;
x.up['3'] =   125.0    ;
x.l['1']  =    22.3    ;
x.l['2']  =     0.5    ;
x.l['3']  =   125.0    ;
Model s343 /all/;

Solve s343 using nlp minimize f;

display x.l;
display f.l;
