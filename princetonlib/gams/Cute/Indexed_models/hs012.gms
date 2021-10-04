* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , Def_obj ;

constr1.. 4*sqr(x['i1']) + sqr(x['i2']) =l= 25;

Def_obj..
    obj =e= sqr(x['i1'])/2+sqr(x['i2'])-x['i1']*x['i2']-7*x['i1']-7*x['i2'] ;

x.l['i1'] = 0;
x.l['i2'] = 0;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 2;
*x.l['i2'] = 3;


Model hs012  /all/;

Solve hs012 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + 30    ;
display obj.l         ;
