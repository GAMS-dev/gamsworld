* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i] ;
         Variable  obj ;

Equation  constr1 , constr2 ,  Def_obj ;

constr1..     8*x['i1']  +   14*x['i2']  +   7*x['i3']   =e= 56 ;
constr2..   sqr(x['i1']) +  sqr(x['i2']) + sqr(x['i3'])  =e= 25 ;

Def_obj..   obj=e= 1000 - sqr(x['i1']) - 2*sqr(x['i2']) - sqr(x['i3']) -
                                x['i1']*x['i2'] - x['i1']*x['i3']        ;

x.l['i1']  = 2 ;
x.l['i2']  = 2 ;
x.l['i3']  = 2 ;

*printf "optimal solution as starting point \n";
*x.l['i1']  = 3.512118414  ;
*x.l['i2']  = 0.2169881741 ;
*x.l['i3']  = 3.552174034  ;

Model hs063  /all/;

Solve hs063 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  - 961.7151721;
display obj.l               ;
