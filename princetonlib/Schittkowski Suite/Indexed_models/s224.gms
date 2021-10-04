* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Positive Variable X[I] ;
Variable          f    ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Def_obj;

Eq_1..    x['1'] + 3*x['2']       =g=     0 ;
Eq_2..    18 - x['1'] - 3*x['2']  =g=     0 ;
Eq_3..    x['1'] + x['2']         =g=     0 ;
Eq_4..    8 - x['1'] - x['2']     =g=     0 ;
Def_obj.. f =e=  2*sqr(x['1'])+sqr(x['2'])
                -48*x['1']-40*x['2']        ;

x.up['1'] =  6  ;
x.up['2'] =  6  ;

x.l['1'] =  0.1;
x.l['2'] =  0.1;

Model s223 /all/;

Solve s223 using nlp minimize f;

display x.l;
display f.l;
