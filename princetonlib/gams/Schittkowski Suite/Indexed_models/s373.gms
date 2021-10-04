* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 9
Set i /1*%N%/;
Set inside(i) /4*%N%/;

Variable    x[I], f   ;

Equation Eq_01,Eq_02,Eq_03,Eq_04,Eq_05,Eq_06,Def_obj;

Eq_01..   x['1']+x['2']*exp(-5*x['3'])+x['4'] - 127 =e= 0;
Eq_02..   x['1']+x['2']*exp(-3*x['3'])+x['5'] - 151 =e= 0;
Eq_03..   x['1']+x['2']*exp(  -x['3'])+x['6'] - 379 =e= 0;
Eq_04..   x['1']+x['2']*exp(   x['3'])+x['7'] - 421 =e= 0;
Eq_05..   x['1']+x['2']*exp( 3*x['3'])+x['8'] - 460 =e= 0;
Eq_06..   x['1']+x['2']*exp( 5*x['3'])+x['9'] - 426 =e= 0;

Def_obj.. f=e=sum(i$inside(i),sqr(x[i]));

x.l['1']  =  300       ;
x.l['2']  = -100       ;
x.l['3']  =   -0.1997  ;
x.l['4']  = -127       ;
x.l['5']  = -151       ;
x.l['6']  =  379       ;
x.l['7']  =  421       ;
x.l['8']  =  460       ;
x.l['9']  =  426       ;
Model s373 /all/;

Solve s373 using nlp minimize f;

display x.l;
display f.l;
