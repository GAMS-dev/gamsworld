* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 10
Set I /1*%N%/;
Parameter y(i);  y(i)=2+2*ord(i);

Positive Variable     X[I];
Variable              f   ;

Equation Def_obj;

Def_obj..  f =e= sum{i,sqr(y[i]-(exp(ord(i)*x['1'])+exp(ord(i)*x['2'])))};

x.l[i]    =   0.0;
x.l['1']  =   0.3;
x.l['2']  =   0.4;
Model s307 /all/;

Solve s307 using nlp minimize f;

display x.l;
display f.l;
