* Shitkovski AMPL model  (translation to GAMS)
$Set N 30
Set I /1*%N%/;
Set k[i] ; k[i]=YES$(ord(i) ne card(i));

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..  f =e= sum{i$k[i],(100*sqr(x[i+1]-sqr(x[i]))+sqr(1-x[i]))};

x.l[i]  = -1.2;

Model s297 /all/;

Solve s297 using nlp minimize f;

display x.l;
display f.l;
