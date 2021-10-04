* Shitkovski AMPL model  (translation to GAMS)
$Set N 5
$Set M 11
Set I /1*%N%/;
Set J /1*%M%/;
parameter z[J]; z[J]= 0.1*ord(J)                               ;
parameter y[J]; y[J]= exp(-z[J])-5*exp(-10*z[J])+3*exp(-4*z[J]);

Variable X[I], f;

Equation Def_obj;

Def_obj..       f =e= sum{J,sqr(x['3']*exp(-x['1']*z[J])-x['4']
                     *exp(-x['2']*z[J])+3*exp(-x['5']*z[J])-y[J])
                         };
x.up['5'] =  2  ;
x.l[I]    =  2  ;

Model s267 /all/;

Solve s267 using nlp minimize f;

display x.l;
display f.l;
