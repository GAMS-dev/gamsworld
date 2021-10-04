* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;
$Set M 3
Set J /1*%M%/;
Parameter z[J] , y[J] ;

z[J] = 0.1*ord(J)                  ;
y[J] = exp(-1*z[J])-5*exp(-10*z[J]);

Positive Variable     x[I]   ;
         Variable     f      ;

Equation Def_obj;

Def_obj..
f =e=sum{J,sqr(exp(-x['1']*z[J])-x['3']*exp(-x['2']*z[J])-y[J])};

x.up[I] = 10   ;
x.l['1'] = 1   ;
x.l['2'] = 2   ;
x.l['3'] = 1   ;

Model s244 /all/;

Solve s244 using nlp minimize f;

display x.l;
display f.l;
