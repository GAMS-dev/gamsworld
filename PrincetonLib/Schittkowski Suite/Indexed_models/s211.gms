* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Def_obj;
Def_obj.. f =e= 100*sqr(x['2'] - power(x['1'],3)) + sqr(1-x['1']);

x.l['1'] = -1.2;
x.l['2'] =  1  ;

Model s211 /all/;

Solve s211 using nlp minimize f;

display x.l;
display f.l;
