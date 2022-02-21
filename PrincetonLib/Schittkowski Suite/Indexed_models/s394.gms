* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 20
Set i /1*%N%/;

Variable   x[i], f   ;

Equation Eq_1,Def_obj;
Eq_1..        sum{i,sqr(x[i])} =e= 1;
Def_obj.. f=e=sum{i,(ord(i)*(sqr(x[i])+power(x[i],4)))};

x.l[i]  =    2    ;
Model s394 /all/;

Solve s394 using nlp minimize f;

display x.l;
display f.l;
