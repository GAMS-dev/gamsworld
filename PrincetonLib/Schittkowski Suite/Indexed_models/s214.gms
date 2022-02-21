* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Def_obj;
Def_obj.. f =e= sqrt(sqrt(10*sqr(x['1']-x['2'])+sqr(x['1']-1)));

x.l['1'] =  1  ;
x.l['2'] =  1  ;

Model s214 /all/;

Solve s214 using nlp minimize f;

display x.l;
display f.l;
