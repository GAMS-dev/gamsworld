* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..           0.5* x['1']  +       x['2']    +     x['3']    - 1 =e= 0;
Eq_2..            sqr(x['1']) + 2*sqr(x['2'])/3 + sqr(x['3'])/4 - 4 =e= 0;
Def_obj.. f =e= -(sqr(x['1']) +   sqr(x['2'])   + sqr(x['3']))           ;

x.l['1']   =   0.0      ;
x.l['2']   =   0.0      ;
x.l['3']   =   0.0      ;

*x.lo['1']  =   0.75     ;
*x.lo['2']  =   0.0      ;


Model s338 /all/;

Solve s338 using nlp minimize f;

display x.l;
display f.l;
