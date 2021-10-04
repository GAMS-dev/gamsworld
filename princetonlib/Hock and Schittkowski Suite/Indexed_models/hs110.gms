$Set N 10
Set i/i1*i%N%/;

Variable x(i) , obj ;

Equation Def_obj ;

Def_obj.. obj =e= sum{i,(sqr(log(x[i]-2)) + sqr(log(10-x[i]))) } -
                  exp(log(prod{i,x[i] })*0.2) ;

x.lo[i] = 2.001 ; x.up[i] = 9.999 ;
x.l[i] = 9;

Model hs110 /all/ ;

Solve hs110 using nlp minimazing obj ;

obj.l = obj.l + 45.77846971;

display obj.l;
