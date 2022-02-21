* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , Def_obj ;

constr1..  sqr(x['i1']) =l= x['i2'];
Def_obj..  obj =e= sqr(x['i1'] - 5)+sqr(x['i2'])-25;


x.l['i1'] = 4.9 ;
x.l['i2'] = 0.1 ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 1.23477;
*x.l['i2'] = 1.52466;

Model hs011  /all/;

Solve hs011 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + 8.498464223;
display obj.l         ;
