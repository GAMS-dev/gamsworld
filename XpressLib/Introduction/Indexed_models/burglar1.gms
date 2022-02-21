*******************************************************
*   Mosel Example Problems
*   ======================
*
* Original file burglar1.mos
*   `````````````````
*   Knapsack problem
*
*   (c) 2002 Dash Associates
*       author: R.C. Daniel, Jul. 2002
********************************************************

*model "Burglar 1"


Set ITEMS / i1*i8 / ;
* Index range for items
Scalar WTMAX / 102 /
* Maximum weight allowed

Parameter VALUE[ITEMS]   / i1 15 , i2 100 , i3 90 , i4 60 ,
                           i5 40 , i6  15 , i7 10 , i8  1 / ;
* Value of items
Parameter WEIGHT[ITEMS]  / i1  2 , i2  20 , i3 20 , i4 30 ,
                           i5 40 , i6  30 , i7 60 , i8 10 / ;
* Weight of items

Binary Variable take[ITEMS]  ;
* 1 if we take item i; 0 otherwise

Variable        MaxVal       ;
* Objective: maximize total value

Equation Eq_1   ,
         Def_Obj ;

* Weight restriction
Eq_1..
 Sum{ITEMS, WEIGHT[ITEMS]*take[ITEMS] } =l= WTMAX ;

Def_Obj..
 MaxVal =e= Sum{ITEMS, VALUE[ITEMS]*take[ITEMS] } ;

* Solve the problem
Model Approximation / All / ;

Solve Approximation using MIP Maximazing  MaxVal ;

Display  MaxVal.l ;