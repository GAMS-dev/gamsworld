* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable     X[I], f   ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1..    -sqr(x['1'])-  sqr(x['2'])-sqr(x['3'])  -sqr(x['4'])
                                         -x['1']+x['2']+x['3']+x['4']+8=g= 0;
Eq_2..    -sqr(x['1'])-2*sqr(x['2'])-sqr(x['3'])-2*sqr(x['4'])
                                         +x['1']              +x['4']+9=g= 0;
Eq_3..    -sqr(x['1'])-  sqr(x['2'])-sqr(x['3'])
                                       -2*x['1']+x['2']       +x['4']+5=g= 0;

Def_obj.. f =e=
sqr(x['1'])+sqr(x['2'])+2*sqr(x['3'])+sqr(x['4'])
                                     - 5*x['1']-5*x['2']-21*x['3']+7*x['4'];

x.l['1'] =  0  ;
x.l['2'] =  0  ;
x.l['3'] =  0  ;
x.l['4'] =  0  ;

Model s264 /all/;

Solve s264 using nlp minimize f;

display x.l;
display f.l;
