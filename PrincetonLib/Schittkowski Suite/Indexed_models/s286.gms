* Shitkovski AMPL model  (translation to GAMS)
$Set N 20
Set I /1*%N%/;
Set left(I)  /1*10 /;
Set right(I) /11*20/;
Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e= sum{i$left(i),(100*sqr(sqr(x[i])-x[i+10])+sqr(x[i]-1))};

x.l[i]$left(I)  = -1.2;
x.l[i]$right(I) =  1.0;

Model s286 /all/;

Solve s286 using nlp minimize f;

display x.l;
display f.l;
