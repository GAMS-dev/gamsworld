* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Positive Variable X[I] ;
Variable          f    ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..     x['2']-exp(exp(x['1'])) =g= 0       ;
Eq_2..            exp(exp(x['1'])) =g= 0       ;
Def_obj..                        f =e= -x['1'] ;

x.up['1'] =  10 ;
x.up['2'] =  10 ;

x.l['1'] =  0.1;
x.l['2'] =  3.3;

Model s223 /all/;

Solve s223 using nlp minimize f;

display x.l;
display f.l;
