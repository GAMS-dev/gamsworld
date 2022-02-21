*****************************************************************
*   CP example problems
*   ===================
*
*   file ac2001.mos
*   ```````````````
*   Generic binary constraints.
*
*   (c) 2005 Artelys SA and Dash Associates
*
******************************************************************
* model "generic_binary_constraint example"
* # uses "kalis"

Scalar c / 4 / ;

Set Order / o1*o5 / ;

Parameter V2[Order]   ;

Loop{Order, V2[Order] = ord(Order) ;  } ;

Positive Variable V1[Order]  ;

Variable
         Obj ;
Equation
         Eq_1(Order)    ,
         Def_Obj        ;


Eq_1(Order)..
    V1[Order] =e=  mod(V2[Order],c) ;

Def_Obj..
    Obj =e= 1 ;

V1.up[Order] = 10 ;

Model generic_binary_constraint / all / ;
Solve generic_binary_constraint using DNLP maximazing Obj ;

Display V1.l ;