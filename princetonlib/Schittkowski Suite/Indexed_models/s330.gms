* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Def_obj;
Eq_1..             1 - 8.62*(power(x['2'],3)/x['1']) =g= 0;
Def_obj..    f =e= 0.1*(0.44*(power(x['1'],3)/sqr(x['2']))
                  + 10/x['1']+ 0.592*(x['1']/power(x['2'],3)));

x.lo[i]   =   0.0000001    ;
x.up[i]   =   5.0          ;
x.l['1']  =   2.5          ;
x.l['2']  =   2.5          ;
Model s330 /all/;

Solve s330 using nlp minimize f;

display x.l;
display f.l;
