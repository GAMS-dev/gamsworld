* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 8
Set i /1*%N%/;

Positive Variable     X[I];
Variable              f   ;

Equation Def_obj;
Def_obj..
      f=e=-(sum{i,sqr(x[i])})*(sum{i,power(x[i],4)})+sqr(sum{i,power(x[i],3)});

x.up[i]  =  1    ;
x.l[i]  =   1    ;
Model s368 /all/;

Solve s368 using nlp minimize f;

display x.l;
display f.l;
