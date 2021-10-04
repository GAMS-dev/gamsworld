* Shitkovski AMPL model  (translation to GAMS)
$Set N 10
Set I /1*%N%/;

Variable X[I], f;

Equation Def_obj;

Def_obj..       f =e= sum{i,power(ord(i),3)* power((sqr(x[i]-1)),3)};

x.l[I]  =   0 ;

Model s253 /all/;

Solve s253 using nlp minimize f;

display x.l;
display f.l;
