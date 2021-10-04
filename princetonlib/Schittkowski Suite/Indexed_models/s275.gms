* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;
Alias(i,j);
parameter A[i,j];  A[i,j] = 1/(ord(j)+ord(i)-1);

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..   f =e=sum {i,(x[i]*(sum{j,(A[i,j]*x[j])}))};

x.l['1'] = -4  ;
x.l['2'] = -2  ;
x.l['3'] = -1.333  ;
x.l['4'] = -1      ;

Model s275 /all/;

Solve s275 using nlp minimize f;

display x.l;
display f.l;
