* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable x(i) , obj ;

Equation Def_obj  ;

Def_obj..  obj=e= 100*sqr(x['i2']-sqr(x['i1']))+sqr(1-x['i1']);


x.l['i1']  =-2.0 ;
x.l['i2']  = 1.0 ;
x.lo['i2'] =-1.5 ;

Model hs001 /all/;

Solve hs001 using nlp minimize obj;

display x.l;

display obj.l;
