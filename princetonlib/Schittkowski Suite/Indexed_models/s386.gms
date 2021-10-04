* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     x[I],f   ;

Equation Def_obj;
Def_obj.. f=e=4*sqr(x['1']-5)+sqr(x['2']-6);

x.l['1']  =     8      ;
x.l['2']  =     9      ;
Model s386 /all/;

Solve s386 using nlp minimize f;

display x.l;
display f.l;
