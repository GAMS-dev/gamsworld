* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 9
Set i /1*%N%/;
Set inside(i) /4*%N%/;

Variable    x[I], f   ;

Equation Eq_01,Eq_02,Eq_03,Eq_04,Eq_05,Eq_06,
         Eq_07,Eq_08,Eq_09,Eq_10,Eq_11,Eq_12,Def_obj;

Eq_01..   x['1']+x['2']*exp(-5*x['3'])+x['4'] - 127 =g= 0;
Eq_02..   x['1']+x['2']*exp(-3*x['3'])+x['5'] - 151 =g= 0;
Eq_03..   x['1']+x['2']*exp(  -x['3'])+x['6'] - 379 =g= 0;
Eq_04..   x['1']+x['2']*exp(   x['3'])+x['7'] - 421 =g= 0;
Eq_05..   x['1']+x['2']*exp( 3*x['3'])+x['8'] - 460 =g= 0;
Eq_06..   x['1']+x['2']*exp( 5*x['3'])+x['9'] - 426 =g= 0;
Eq_07..  -x['1']-x['2']*exp(-5*x['3'])+x['4'] + 127 =g= 0;
Eq_08..  -x['1']-x['2']*exp(-3*x['3'])+x['5'] + 151 =g= 0;
Eq_09..  -x['1']-x['2']*exp(  -x['3'])+x['6'] + 379 =g= 0;
Eq_10..  -x['1']-x['2']*exp(   x['3'])+x['7'] + 421 =g= 0;
Eq_11..  -x['1']-x['2']*exp( 3*x['3'])+x['8'] + 460 =g= 0;
Eq_12..  -x['1']-x['2']*exp( 5*x['3'])+x['9'] + 426 =g= 0;

Def_obj.. f=e=sum(i$inside(i),sqr(x[i]));

x.lo['4']  =  0  ;
x.lo['5']  =  0  ;
x.lo['6']  =  0  ;
x.lo['7']  =  0  ;
x.lo['8']  =  0  ;
x.lo['9']  =  0  ;

x.l['1']  =  300       ;
x.l['2']  = -100       ;
x.l['3']  =   -0.1997  ;
x.l['4']  = -127       ;
x.l['5']  = -151       ;
x.l['6']  =  379       ;
x.l['7']  =  421       ;
x.l['8']  =  460       ;
x.l['9']  =  426       ;
Model s372 /all/;

Solve s372 using nlp minimize f;

display x.l;
display f.l;
