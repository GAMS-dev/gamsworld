* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 4
Set i /1*%N%/;

Positive Variable     X[I];
Variable           Q, f   ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Def_obj;

Eq_1..    Q =e= sqr(0.53*x['1']) + sqr(0.44*x['2']) +
                         sqr(4.50*x['3']) + sqr(0.79*x['4'])  ;

Eq_2..    2.3*x['1']+5.6*x['2']+11.1*x['3']+1.3*x['4']-5 =g= 0;

Eq_3..    12.0*x['1']+11.9*x['2']+41.8*x['3']+52.1*x['4']
                                              -1.645*Q-12=g= 0;
Eq_4..    x['1']+x['2']+x['3']+x['4']-1 =e= 0;

Def_obj.. f=e= -(24.55*x['1']+26.75*x['2']+
                                    39.00*x['3']+40.50*x['4']);

x.l['1']  =     0      ;
x.l['2']  =     0      ;
x.l['3']  =     0.4    ;
x.l['4']  =     0.6    ;


Model s353 /all/;

Solve s353 using nlp minimize f;

display x.l;
display f.l;
display Q.l;
