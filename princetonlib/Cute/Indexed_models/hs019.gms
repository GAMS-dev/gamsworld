* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , constr2 , Def_obj ;

constr1..   sqr(x['i1'] - 5) + sqr(x['i2'] - 5) =g= 100    ;
constr2..   sqr(x['i2'] - 5) + sqr(x['i1'] - 6) =l=  82.81 ;

Def_obj..

obj =e=  power((x['i1'] - 10),3)   +  power((x['i2'] - 20),3)
*              (x['i1'] - 10)* (x['i1'] - 10)* (x['i1'] - 10)
*             +
*              (x['i2'] - 20)* (x['i2'] - 20)* (x['i2'] - 20)
              ;

x.lo['i1'] = 13.0 ; x.up['i1'] = 100.0 ;
x.lo['i2'] =  0.0 ; x.up['i2'] =  50.0 ;

x.l['i1'] = 20.1;
x.l['i2'] =  5.84;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 14.095;
*x.l['i2'] =  0.84296079;

Model hs019  /all/;

Solve hs019 using nlp minimize obj;

display   x.l              ;

obj.l = obj.l + 6961.81381 ;
display obj.l              ;
