* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 100
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..  f =e=sum{i,sqr(x[i])}
                                   +power((sum{i,(ord(i)*x[i]/2)}),2)
                                   +power((sum{i,(ord(i)*x[i]/2)}),4);

x.l[I]  =   0.1            ;
X.LO[i]=0.000;

Model s305 /all/;

Solve s305 using nlp minimize f;

display x.l;
display f.l;
