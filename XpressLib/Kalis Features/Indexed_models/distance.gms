*****************************************************************
*   CP example problems
*   ===================
*
*   file distance.mos
*   `````````````````
*   Abs and distance constraints.
*
*   (c) 2005 Artelys SA and Dash Associates
*
******************************************************************!)
* model "Distance constraints"
* uses "kalis"


Variable
         x    ,
         y    ,
         z    ;
Variable
         Dist ;

Equation Eq_1 ,
         Eq_2 ,
         Eq_3 ,
         Eq_4 ,
         Eq_5 ;



Eq_1..
   sqrt(sqr(x))   =e= y ;
Eq_2..
   y        =g= 20 ;

* Equivalent version of this constraint:
Eq_3..
   sqrt(sqr(y-z)) =l= 9 ;

Eq_4..
   sqrt(sqr(x-z)) =e= 5 ;

Eq_5..
   Dist     =e= sqrt(sqr(x-z)) ;

x.lo = -50  ;
y.lo = -50  ;
z.lo = -50  ;
x.up =  50  ;
y.up =  50  ;
z.up =  50  ;

Model Distance_constraints / all / ;
Solve Distance_constraints using NLP maximazing Dist ;

Display x.l ;

