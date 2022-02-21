* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation  constr1 , constr2 , Def_obj ;

constr1..           6*x['i2'] + 4*x['i3'] - power(x['i1'],3) =g= 3 ;
constr2..             x['i1'] +   x['i2'] +       x['i3']    =e= 1 ;

Def_obj.. obj =e=   sqr(x['i1'] + 3*x['i2'] + x['i3']) +
                  4*sqr(x['i1'] -   x['i2']          )  ;

x.l['i1'] = 0.1;
x.l['i2'] = 0.7;
x.l['i3'] = 0.2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0;
*x.l['i2'] = 0;
*x.l['i3'] = 1;

Model hs032  /all/;

Solve hs032 using nlp minimize obj;

display   x.l         ;
obj.l  =  obj.l - 1   ;
display obj.l         ;
