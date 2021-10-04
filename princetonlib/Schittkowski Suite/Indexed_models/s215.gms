* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Eq_1,Def_obj;

Eq_1..    x['2']-sqr(x['1']) =g= 0      ;
Def_obj..                  f =e= x['2'] ;

x.lo['1'] =  0  ;
x.l['1']  =  1  ;
x.l['2']  =  1  ;

Model s215 /all/;

Solve s215 using nlp minimize f;

display x.l;
display f.l;
