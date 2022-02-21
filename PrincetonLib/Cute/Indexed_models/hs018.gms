* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , constr2 , Def_obj ;

constr1..               x['i1']      *     x['i2']  =g= 25 ;
constr2..           sqr(x['i1'])     + sqr(x['i2']) =g= 25 ;
Def_obj..   obj=e=  sqr(x['i1'])/100 + sqr(x['i2'])        ;

x.lo['i1'] =  2.0 ; x.up['i1'] = 50.0 ;
x.lo['i2'] =  0.0 ; x.up['i2'] = 50.0 ;

x.l['i1'] = 2 ;
x.l['i2'] = 2 ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 15.8114;
*x.l['i2'] =  1.58114;


Model hs018  /all/;

Solve hs018 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l - 5     ;
display obj.l         ;
