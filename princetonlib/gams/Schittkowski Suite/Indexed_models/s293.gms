* Shitkovski AMPL model  (translation to GAMS)
$Set N 50
Set I /1*%N%/;
Alias(i,j);
parameter A[i,j]; A[i,j] =  0; A[i,j]$(ord(i) = ord(j)) = ord(i);

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e= sum{i,(x[i]*sum{j,(A[i,j]*x[j])})} ;

x.l[I]  =   1 ;

Model s293 /all/;

Solve s293 using nlp minimize f;

display x.l;
display f.l;
