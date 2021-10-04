* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 100
Set i /1*%N%/;
Alias(i,j);
Parameter A(i,j);
A[i,j] = 0.0;
A[i,j]$((ord(i) = ord(j)  ) and (ord(i)=       1)) =  1.0;
A[i,j]$((ord(i) = ord(j)-1) or  (ord(i)=ord(j)+1)) = -1.0;
A[i,j]$((ord(i) = ord(j)  ) and (ord(i)>       1)) =  2.0;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..  f =e= sum{i,(x[i]*(sum {j,(A[i,j]*x[j])}))}-2*x['1'];


x.l[I]  = 1.0            ;

Model s302 /all/;

Solve s302 using nlp minimize f;

display x.l;
display f.l;
