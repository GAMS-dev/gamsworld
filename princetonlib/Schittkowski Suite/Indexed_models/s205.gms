* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Def_obj;
Def_obj.. f =e=  sqr(1.5  -x['1']*(1 - x['2'])            )
                +sqr(2.25 -x['1']*(1 - sqr(x['2']))       )
                +sqr(2.625-x['1']*(1 - power((x['2']),3)) );

x.l['1'] =       0;
x.l['2'] =       0;

Model s205 /all/;

Solve s205 using nlp minimaze f;

display x.l;
display f.l;
