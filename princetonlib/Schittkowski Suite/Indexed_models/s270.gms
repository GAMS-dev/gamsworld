* Shitkovski AMPL model  (translation to GAMS)
$Set N 5
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1.. 34-sqr(x['1'])-sqr(x['2'])-sqr(x['3'])-sqr(x['4'])-sqr(x['5']) =g= 0;
Eq_2[I]$(ord(I) ne card(I))..   x[I] =g= ord(I);
Def_obj..   f =e=   x['1']*x['2']*x['3']*x['4']
               -  3*x['1']*x['2']*x['4'] - 4*x['1']*x['2']*x['3']
               + 12*x['1']*x['2'] -x['2']*x['3']*x['4']
               +  3*x['2']*x['4']  + 4*x['2']*x['3'] - 12*x['2']
               -  2*x['1']*x['3']*x['4'] + 6*x['1']*x['4'] + 8*x['1']*x['3']
               - 24*x['1'] + 2*x['3']*x['4'] - 6*x['4'] - 8*x['3']
               + 24 + 1.5*power(x['5'],4) - 5.75*power(x['5'],3)
               + 5.25*sqr(x['5']);
x.l['1'] = 1.1 ;
x.l['2'] = 2.1 ;
x.l['3'] = 3.1 ;
x.l['4'] = 4.1 ;
x.l['5'] =-1   ;

Model s270 /all/;

Solve s270 using nlp minimize f;

display x.l;
display f.l;
