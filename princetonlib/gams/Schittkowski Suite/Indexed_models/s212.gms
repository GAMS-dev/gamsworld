* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Def_obj;
Def_obj..
   f =e= sqr(4*(x['1']+x['2']))
        +sqr(4*(x['1']+x['2'])+(x['1']-x['2'])*(sqr(x['1']-2)+sqr(x['2'])-1));

x.l['1'] =  2.0;
x.l['2'] =  0.0;

Model s212 /all/;

Solve s212 using nlp minimize f;

display x.l;
display f.l;
