*****************************************************************
*   CP example problems
*   ===================
*
*   file impequiv.mos
*   `````````````````
*   Logical constraints (implication, equivalence).
*
*   (c) 2005 Artelys SA and Dash Associates
*
******************************************************************!)
* model "Logical constraints"
*  uses "kalis"

* Default bounds for all variables =>  0 , 5

Variable
         x       ,
         y       ,
         z       ,
         b       ,
         Obj     ;
Equation
         A_eq    ,
         B_eq    ,
         C_1_eq  ,
         C_2_eq  ,
         C_3_eq  ,
         D_eq    ,
         E_eq    ,
         Def_Obj ;

* Definition of constraints (without posting)
A_eq..
   x =g= y + 5 + z + b ;
B_eq..
   b =e= 1 ;
C_1_eq..
   (x-y)*(x-y) =g= 0.00001 ;

C_2_eq..
   (x-z)*(x-z) =g= 0.00001 ;

C_3_eq..
   (z-y) =g= 0.00001 ;

D_eq..
    y =l= z ;
E_eq..
   (z-y) =l= 2 ;

Def_Obj..
    Obj =e= 1 ;

x.lo = 0 ;
y.lo = 0 ;
z.lo = 0 ;
b.lo = 0 ;


y.up = 5 ;
z.up = 5 ;

b.up = 1 ;

Model Logical_constraints / all / ;
Solve Logical_constraints using DNLP minimazing Obj ;

Display Obj.l ;
