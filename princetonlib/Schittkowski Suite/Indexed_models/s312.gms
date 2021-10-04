* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set I /1*%N%/;

Variable X[I],f;

Equation Def_obj;

Def_obj..   f =e=  sqr(sqr(x['1'])+12*x['2']-1)
                 + sqr( 49*sqr(x['1'])+ 49*sqr(x['2'])
                       +84*x['1']+2324*x['2'] - 681  ) ;


x.l['1']  =   1.0;
x.l['2']  =   1.0;
Model s312 /all/;

Solve s312 using nlp minimize f;

display x.l;
display f.l;
