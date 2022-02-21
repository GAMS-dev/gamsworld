*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file knapsack.mos
*   `````````````````
*   TYPE:         Knapsack problem
*   DIFFICULTY:   1
*   FEATURES:     simple IP problem, formulation of knapsack constraints,
*                 model parameters, function 'random'
*   DESCRIPTION:  We wish to choose among items of different value and
*                 weight those that result in the maximum total value for
*                 a given weight limit.
*   FURTHER INFO: `Mosel User Guide', Section 2.1 `The burglar problem';
*                 `Applications of optimization with Xpress-MP',
*                 Section 5.2 `Modeling with Mosel'.
*                 Similar problem: Section 9.2 `Barge loading'
*
*   (c) 2003 Dash Associates
********************************************************

* model Knapsack
* Number of items
$Set NUM 8
* Maximum value
$Set MAXVAL 100
* Maximum weight
$Set MAXWEIGHT 80
* Max weight allowed for haul
$Set WTMAX 102

* Index range for items
Set Items / i1*i%NUM% / ;
* Value of items
Parameter VALUE[Items]
* Value of items
Parameter WEIGHT[Items]

Loop(Items,
  VALUE[Items]  = 50 + Uniform(0,1) * %MAXVAL%    ;
  WEIGHT[Items] = 1  + Uniform(0,1) * %MAXWEIGHT% ;
    ) ;


Binary Variable x[Items]
* 1 if we take item i; 0 otherwise

Variable MaxVal ;

Equation WtMax , Def_Obj ;

* Weight restriction
WtMax..
    Sum{Items, WEIGHT[Items]*x[Items]} =l= %WTMAX% ;


* Objective: maximize total value
Def_Obj..
    MaxVal =e= Sum{Items, VALUE[Items]*x[Items] } ;

* Solve the MIP-problem
Model Knapsack / all / ;

Solve Knapsack using MIP maximazing MaxVal ;

Display MaxVal.l ;

