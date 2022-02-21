* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation  constr1 , Def_obj ;

constr1..   sqr(x['i1']) + sqr(x['i2']) =l= 1 ;
Def_obj..   obj =e= sqr(x['i1']) + sqr(x['i2']) + sqr(x['i3']) ;


x.lo['i1'] =  1 ;   x.up['i1'] =  10 ;
x.lo['i2'] =-10 ;   x.up['i2'] =  10 ;
x.lo['i3'] =-10 ;   x.up['i3'] =  10 ;

x.l['i1']  =  1;
x.l['i2']  =  1;
x.l['i3']  =  1;

*printf "optimal solution as starting point \n";
*x.l['i1'] =  1;
*x.l['i2'] =  0;
*x.l['i3'] =  0;

Model hs030  /all/;

Solve hs030 using nlp minimize obj;

display   x.l         ;
obj.l  = obj.l - 1    ;
display obj.l         ;
