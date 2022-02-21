* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set I /1*%N%/;

Variable  X[I],f;

Equation Def_obj;

Def_obj..  f =e=  sqr(sqr(x['1'])  + sqr(x['2'])+x['1']*x['2'])
                + sqr(sin(x['1'])) + sqr(cos(x['2']))          ;

x.l['1']  =   3  ;
x.l['2']  =   0.1;
Model s308 /all/;

Solve s308 using nlp minimize f;

display x.l;
display f.l;
