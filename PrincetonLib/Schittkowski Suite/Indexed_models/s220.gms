* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Eq_1,Def_obj;

Eq_1..    power((x['1']-1),3)-x['2'] =e= 0      ;
Def_obj..                          f =e= x['1'] ;

x.lo['1'] =   1 ;
x.lo['2'] =   0 ;

Model s220 /all/;

Solve s220 using nlp minimize f;

display x.l;
display f.l;
