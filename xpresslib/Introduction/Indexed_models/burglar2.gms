*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file burglar2.mos
*   `````````````````
*   Knapsack problem
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Aug. 2002
********************************************************

* model "Burglar 2"

* Set of items
Set ITEMS  / camera , necklace , vase , picture , tv , video , chest , brick / ;

* Value of items
Parameter VALUE[ITEMS]  / camera 15 , necklace 100 , vase  90 , picture 60 ,
                          tv     40 , video     15 , chest 10 , brick    1  / ;

* Weight of items
Parameter WEIGHT[ITEMS] / camera  2 , necklace 20 , vase  20 , picture 30 ,
                          tv     40 , video    30 , chest 60 , brick   10  / ;

Scalar  WTMAX / 102 / ;
* Maximum weight allowed


* alternatively:
* initializations from 'burglar2.dat'
*  [VALUE, WEIGHT] as 'KNAPSACK'

* This is another manner for data input !!!!

* end-initializations
*

Binary Variable take[ITEMS]
* 1 if we take item i; 0 otherwise
       Variable MaxVal ;
Equation  Eq_1    ,
          Def_Obj ;

* Weight restriction
Eq_1..
    Sum{ITEMS, WEIGHT[ITEMS]*take[ITEMS] }  =l= WTMAX ;


* Objective: maximize total value
Def_Obj..
    MaxVal =e= Sum{ITEMS, VALUE[ITEMS]*take[ITEMS] } ;

* Solve the problem
Model Burglar_2 / All / ;

Solve Burglar_2 using MIP Maximazing  MaxVal ;

Display  MaxVal.l ;