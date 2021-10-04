* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation  constr1 , constr2 , Def_obj ;

constr1..     sqr(x['i1']) + sqr(x['i2'])                =l= sqr(x['i3']) ;
constr2..     sqr(x['i1']) + sqr(x['i2']) + sqr(x['i3']) =g= 4            ;

Def_obj.. obj=e=(x['i1'] - 1)*(x['i1'] - 2)*(x['i1'] - 3) + x['i3'];

x.up['i3'] = 5;

x.l['i1'] = 0;
x.l['i2'] = 0;
x.l['i3'] = 3;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0;
*x.l['i2'] = sqrt(2);
*x.l['i3'] = sqrt(2);

Model hs033  /all/;

Solve hs033 using nlp minimize obj;

display   x.l                 ;

obj.l  =  obj.l - sqrt(2) + 6 ;
display obj.l                 ;
