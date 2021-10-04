* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;

Variable     x[I], f    ;

Equation Def_obj;

Def_obj..  f =e=   sqr( x['1']-x['2']+x['3'])
                 + sqr(-x['1']+x['2']+x['3'])
                 + sqr( x['1']+x['2']-x['3']);

x.l['1'] = 100   ;
x.l['2'] =  -1   ;
x.l['3'] =   2.5 ;

Model s240 /all/;

Solve s240 using nlp minimize f;

display x.l;
display f.l;
