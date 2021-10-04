* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , constr2 , constr3 , constr4 , constr5 , Def_obj ;

constr1..           x['i1']  +     x['i2']  =g= 1 ;
constr2..       sqr(x['i1']) + sqr(x['i2']) =g= 1 ;
constr3..     9*sqr(x['i1']) + sqr(x['i2']) =g= 9 ;
constr4..       sqr(x['i1']) -     x['i2']  =g= 0 ;
constr5..       sqr(x['i2']) -     x['i1']  =g= 0 ;
Def_obj.. obj=e=sqr(x['i1']) + sqr(x['i2'])       ;

x.lo[i] = -50.0 ; x.up[i] =  50.0 ;

x.l['i1'] = 3;
x.l['i2'] = 1;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 1;
*x.l['i2'] = 1;

Model hs023  /all/;

Solve hs023 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l - 2     ;
display obj.l         ;
