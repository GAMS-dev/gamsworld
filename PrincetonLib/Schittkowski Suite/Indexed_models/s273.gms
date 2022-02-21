* Shitkovski AMPL model  (translation to GAMS)
$Set N 6
Set I /1*%N%/;
Alias(I,I1);
Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e= 10*sum{I,((16-ord(I)) *sqr(x[I] -1)
                               +10*sqr(sum{I1,((16-ord(I1))*sqr(x[I1]-1))}))
                            };
x.l[I]  =   0 ;

Model s273 /all/;

Solve s273 using nlp minimize f;

display x.l;
display f.l;
