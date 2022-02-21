* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set I /1*%N%/;

Variable  X[I],f;

Equation Def_obj;

Def_obj..  f =e=

   1.41*power(x['1'],4) - 12.76*power(x['1'],3)
+ 39.91*  sqr(x['1'])   - 51.93*      x['1']
+ 24.37                 +         sqr(x['2']-3.9)      ;

x.l['1']  =   0  ;
x.l['2']  =   0  ;
Model s309 /all/;

Solve s309 using nlp minimize f;

display x.l;
display f.l;
