* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Positive Variable     X[I];
         Variable     f   ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Def_obj;

Eq_1..          10    -x['1']    -x['2']    -x['3']    -x['4']   =g= 0;
Eq_2..          10-0.2*x['1']-0.5*x['2']    -x['3']-2  *x['4']   =g= 0;
Eq_3..          10  -2*x['1']    -x['2']-0.5*x['3']-0.2*x['4']   =g= 0;
Eq_4..                 x['1']    +x['2']    +x['3']-2*  x['4']-6 =e= 0;
Def_obj.. f =e=   -0.5*x['1']    -x['2']-0.5*x['3']-    x['4']        ;


x.l['1'] =  1  ;
x.l['2'] =  1  ;
x.l['3'] =  1  ;
x.l['4'] =  1  ;

Model s262 /all/;

Solve s262 using nlp minimize f;

display x.l;
display f.l;
