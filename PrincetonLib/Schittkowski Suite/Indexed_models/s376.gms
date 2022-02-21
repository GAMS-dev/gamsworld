* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 10
Set i /1*%N%/;

Variable  x[I],f   ;

Equation Eq_01, Eq_02, Eq_03, Eq_04, Eq_05,
         Eq_06, Eq_07, Eq_08, Eq_09, Eq_10,
         Eq_11, Eq_12, Eq_13, Eq_14, Eq_15, Def_obj;

Eq_01..          x['1'] - 0.75/(x['3']*x['4']) =g= 0;

Eq_02..          x['1'] - x['9']/(x['5']*x['4']) =g= 0;

Eq_03..          x['1'] - x['10']/(x['6']*x['4']) - 10/x['4'] =g= 0;

Eq_04..          x['1'] - 0.19/(x['4']*x['7']) - 10/x['4'] =g= 0;

Eq_05..          x['1'] - 0.125/(x['4']*x['8']) =g= 0;

Eq_06..    10000*x['2'] - 0.00131*   x['9']*
                 exp(log(x['5'])*0.666)*exp(log(x['4'])*1.5) =g= 0;
Eq_07..    10000*x['2'] - 0.001038*  x['10']*
                 exp(log(x['6'])*1.6)*power(x['4'],3)        =g= 0;
Eq_08..    10000*x['2'] - 0.000223*  exp(log(x['7'])*0.666)*
                 exp(log(x['4'])*1.5)                        =g= 0;
Eq_09..    10000*x['2'] - 0.000076*  exp(log(x['8'])*3.55)*
                 exp(log(x['4'])*5.66)                       =g= 0;
Eq_10..    10000*x['2'] - 0.000698*  exp(log(x['3'])*1.2)*
                 sqr(x['4'])                                 =g= 0;
Eq_11..    10000*x['2'] - 0.00005*   exp(log(x['3'])*1.6)*
                 power(x['4'],3)                             =g= 0;
Eq_12..    10000*x['2'] - 0.00000654*exp(log(x['3'])*2.42)*
                 exp(log(x['4'])*4.17)                       =g= 0;
Eq_13..    10000*x['2'] - 0.000257*  exp(log(x['3'])*0.666)*
                 exp(log(x['4'])*1.5)                        =g= 0;

Eq_14.. 30-2.003*x['4']*x['5']-1.885*x['6']*x['4']-
         0.184*x['8']*x['4']-2*exp(log(x['3'])*0.803)*x['4'] =g= 0;
Eq_15.. x['9']+x['10'] - 0.255 =e= 0;

Def_obj.. f=e=-20000*( 0.15*x['1']+14*x['2']-0.06)/
                     (0.002+x['1']+60*x['2']     ) ;

x.lo['1']   = 0     ;
x.lo['2']   = 0     ;
x.lo['3']   = 0.5e-4;
x.lo['4']   = 10    ;
x.lo['5']   = 0.5e-4;
x.lo['6']   = 0.5e-4;
x.lo['7']   = 0.5e-4;
x.lo['8']   = 0.5e-4;
x.lo['9']   = 0.5e-4;
x.lo['10']  = 0.5e-4;



x.up['1']  =   10        ;
x.up['2']  =    0.1      ;
x.up['3']  =    0.0081   ;
x.up['4']  = 1000        ;
x.up['5']  =    0.0017   ;
x.up['6']  =    0.0013   ;
x.up['7']  =    0.0027   ;
x.up['8']  =    0.002    ;
x.up['9']  =    1        ;
x.up['10'] =    1        ;

x.l['1']   =   10       ;
x.l['2']   =    0.005   ;
x.l['3']   =    0.0081  ;
x.l['4']   =  100       ;
x.l['5']   =    0.0017  ;
x.l['6']   =    0.0013  ;
x.l['7']   =    0.0027  ;
x.l['8']   =    0.002   ;
x.l['9']   =    0.15    ;
x.l['10']  =    0.105   ;
Model s376 /all/;

Solve s376 using nlp minimize f;

display x.l;
display f.l;