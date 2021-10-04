* Shitkovski AMPL model  (translation to GAMS)
$Set N 6
Set I /1*%N%/;
Alias(i,j);
parameter A[i,j];  A[i,j] = 1/(ord(j)+ord(i)-1);

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..   f =e=sum {i,(x[i]*(sum{j,(A[i,j]*x[j])}))};

x.l['1'] = -4      ;
x.l['2'] = -2      ;
x.l['3'] = -1.333  ;
x.l['4'] = -1      ;
x.l['5'] = -0.8    ;
x.l['6'] =  0.6667 ;

x.up['5'] = -0.8   ;

Model s276 /all/;

Solve s276 using nlp minimize f;

display x.l;
display f.l;
