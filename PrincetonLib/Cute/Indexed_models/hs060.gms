* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         Def_obj  ;

constr1.. x['i1']*(1+sqr(x['i2'])) + power(x['i3'],4) =e= 4 + 3*sqrt(2);

Def_obj.. obj =e=   sqr( x['i1'] - 1         ) +
                    sqr( x['i1'] - x['i2']   ) +
                  power((x['i2'] - x['i3']),4)  ;


 x.lo[i]    = -10 ;
 x.up[i]    =  10 ;

 x.l['i1']  = 2;
 x.l['i2']  = 2;
 x.l['i3']  = 2;

*printf "optimal solution as starting point \n";
*x.l['i1']  = 1.104859024;
*x.l['i2']  = 1.196674194;
*x.l['i3']  = 1.535262257;

Model hs060  /all/;

Solve hs060 using nlp minimize obj;

display   x.l               ;

obj.l =  obj.l-0.03256820025;
display obj.l               ;
