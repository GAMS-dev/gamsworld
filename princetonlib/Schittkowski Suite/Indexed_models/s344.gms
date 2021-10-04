* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Variable     x[I],f ;

Equation Eq_1,Def_obj;
Eq_1..    x['1']*(1+sqr(x['2']))+power(x['3'],4)-4-3*sqrt(2)   =e=     0;
Def_obj.. f=e= sqr(x['1']-1)+sqr(x['1']-x['2'])+power((x['2']-x['3']),4);

x.l[i]  =    2 ;

Model s344 /all/;
Solve s344 using nlp minimize f;

display x.l;
display f.l;
