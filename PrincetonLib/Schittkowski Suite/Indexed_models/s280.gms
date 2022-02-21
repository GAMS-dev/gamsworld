* Shitkovski AMPL model  (translation to GAMS)
$Set N 10
Set I /1*%N%/;
Alias(i,j);
parameter c[i]; c[i] = sum{j,1/(ord(j)+ord(i)-1)};
parameter A[i,j];  A[i,j] = 1/(ord(j)+ord(i)-1);
parameter b[i]; b[i]= c[i];

Positive Variable     X[I]   ;
         Variable     f      ;

Equation Eq_1[j],Def_obj;
Eq_1[j].. sum(i,A[i,j]*x[j]) - b[j] =g= 0;
Def_obj..   f =e= sum{i,(c[i]*x[i])};

Model s280 /all/;

Solve s280 using nlp minimize f;

display x.l;
display f.l;
