* Shitkovski AMPL model  (translation to GAMS)
* This model is dumb.  The cube root can be removed.
$Set N 10
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..  f =e= exp(log(sum{i,(power(ord(i),3)*sqr(x[i]-1))})*(1/3));

x.l[I]  =   0.0            ;
x.lo[i] =   1.0+0.000000001;
Model s281 /all/;

Solve s281 using nlp minimize f;

display x.l;
display f.l;
