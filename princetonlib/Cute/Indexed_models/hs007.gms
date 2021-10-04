* Cute AMPL model  (translation to GAMS)
*

$Set N 2
Set i /i1*i%N%/;
Variable x[i] , obj ;

Equation subject , Def_obj ;

subject.. sqr(1+sqr(x['i1'])) + sqr(x['i2']) =e= 4;

Def_obj.. obj =e= log(1+sqr(x['i1'])) - x['i2'] ;

x.l['i1'] = 2;
x.l['i2'] = 2;

*printf "optimal solution as starting point \n";
*let x[1] := 0;
*let x[2] := 1.73205;

Model hs007  /all/;

Solve hs007 using nlp minimize obj;

display   x.l           ;

obj.l = obj.l + sqrt(3) ;
display obj.l           ;
