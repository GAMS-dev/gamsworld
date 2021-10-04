*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file burglar.mos
*   ````````````````
*   Small MIP problem.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
*******************************************************

* model Burglar

Scalar WTMAX / 102 / ;
* Maximum weight allowed
Set ITEMS / i1*i8 / ;
* Index range for items

Parameter VALUE[ITEMS]  / i1 15 , i2 100 , i3 90 , i4 60 ,
                          i5 40 , i6 15 , i7  10 , i8  1 / ;
* Value of items
Parameter WEIGHT[ITEMS] / i1  2 , i2  20 , i3 20 , i4 30 ,
                          i5 40 , i6  30 , i7 60 , i8 10 / ;
* Weight of items

Binary Variable take[ITEMS] ;
       Variable MaxVal      ;

Equation Weight_restriction , Def_obj ;

Weight_restriction..
    Sum{ITEMS, WEIGHT[ITEMS]*take[ITEMS]} =l= WTMAX ;

* Objective: maximize total value
Def_obj..
    MaxVal =e= Sum{ITEMS, VALUE[ITEMS]*take[ITEMS] } ;

Model burglar / all / ;
* Solve the MIP-problem
Solve burglar using mip maximazing MaxVal ;

Display MaxVal.l ;