* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Def_obj;

Def_obj.. f =e= 100*sqr(x['2']-sqr(x['1']))+sqr(1-x['1']);

x.l['1'] =  -1.2 ;
x.l['2'] =   1   ;

Model s208 /all/;

Solve s208 using nlp minimaze f;

display x.l;
display f.l;
