* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1*%N%/;
Alias(i,j);
parameter A[i,j];  A[i,j] = 1/(ord(j)+ord(i)-1);

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..   f =e=sum {i,(x[i]*(sum{j,(A[i,j]*x[j])}))};

x.l['1'] = -4  ;
x.l['2'] = -2  ;

Model s274 /all/;

Solve s274 using nlp minimize f;

display x.l;
display f.l;
