* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;

Variable x[i]  , obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;


constr1..   sqr(x['i1']) +  sqr(x['i2']) +sqr(x['i3']) +  sqr(x['i4']) +
                x['i1']  -      x['i2']  +    x['i3']  -      x['i4']   =l=  8;
constr2..   sqr(x['i1']) +2*sqr(x['i2']) +sqr(x['i3']) +2*sqr(x['i4']) -
                x['i1']  -                                    x['i4']   =l= 10;
constr3.. 2*sqr(x['i1']) +  sqr(x['i2']) +sqr(x['i3']) +
          2*    x['i1']  -      x['i2']                -      x['i4']   =l=  5;

Def_obj.. obj=e= sqr(x['i1']) + sqr(x['i2']) +  2*sqr(x['i3']) + sqr(x['i4']) -
                   5*x['i1']  -   5*x['i2']  - 21*    x['i3']  + 7*  x['i4']  ;

x.l['i1'] = 0;
x.l['i2'] = 0;
x.l['i3'] = 0;
x.l['i4'] = 0;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0;
*x.l['i2'] = 1;
*x.l['i3'] = 2;
*x.l['i4'] = -1;


Model hs043  /all/;

Solve hs043 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  +  44        ;
display obj.l               ;
