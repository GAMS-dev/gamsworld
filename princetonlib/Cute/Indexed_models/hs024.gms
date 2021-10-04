* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Positive Variable  x[i] ;
         Variable   obj ;

Equation constr1 , constr2 , constr3 , Def_obj ;

constr1..   x['i1']/sqrt(3) - x['i2'] =g=  0 ;
constr2..   x['i1'] + sqrt(3)*x['i2'] =g=  0 ;
constr3..  -x['i1'] - sqrt(3)*x['i2'] =g= -6 ;
Def_obj..  obj=e=(sqr(x['i1']-3)-9)*power(x['i2'],3)/(27*sqrt(3));

x.l['i1'] = 1;
x.l['i2'] = 1/2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 3;
*x.l['i2'] = 1.73205;

Model hs024  /all/;

Solve hs024 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + 1     ;
display obj.l         ;
