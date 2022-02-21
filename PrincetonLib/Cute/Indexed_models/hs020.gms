* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , constr2 , constr3 , Def_obj ;


constr1..     x['i1']  + sqr(x['i2'])    =g= 0;
constr2.. sqr(x['i1']) +     x['i2']     =g= 0;
constr3.. sqr(x['i1']) + sqr(x['i2'])    =g= 1;
Def_obj.. obj =e= 100*sqr(x['i2']-sqr(x['i1']))+sqr(1-x['i1']);

x.lo['i1'] = -0.5 ; x.up['i1'] =  0.5 ;

x.l['i1'] = -2;
x.l['i2'] =  1;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 1/2;
*x.l['i2'] = 1/(2*sqrt(3));

Model hs020  /all/;

Solve hs020 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l - 81.5 + 25*sqrt(3);
display obj.l         ;
