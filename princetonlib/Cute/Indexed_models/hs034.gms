* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation  constr1 , constr2 , Def_obj ;

constr1.. x['i2'] =g= exp(x['i1']) ;
constr2.. x['i3'] =g= exp(x['i2']) ;

Def_obj..     obj =e= -x['i1']     ;


x.up['i1'] = 100 ;
x.up['i2'] = 100 ;
x.up['i3'] =  10 ;

x.l['i1'] = 0    ;
x.l['i2'] = 1.05 ;
x.l['i3'] =  2.9 ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0.83403;
*x.l['i2'] = 2.30258;
*x.l['i3'] = 10;

Model hs034  /all/;

Solve hs034 using nlp minimize obj;

display   x.l                 ;

obj.l  =  obj.l + log(log(10));
display obj.l                 ;
