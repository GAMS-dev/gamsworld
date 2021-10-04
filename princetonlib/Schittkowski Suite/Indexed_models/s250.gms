* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;

Positive Variable     x[I]  ;
         Variable     f     ;

Equation
         Eq_1   ,
         Eq_2   ,
         Def_obj;

Eq_1..    x['1']+2*x['2']+2*x['3']           =g= 0;
Eq_2..    72 - x['1'] - 2*x['2'] - 2*x['3']  =g= 0;
Def_obj..  f =e= -x['1']*x['2']*x['3']            ;

x.up['1'] = 20   ;
x.up['2'] = 11   ;
x.up['3'] = 42   ;

x.l['1']  = 10   ;
x.l['2']  = 10   ;
x.l['3']  = 10   ;

Model s250 /all/;

Solve s250 using nlp minimize f;

display x.l;
display f.l;
