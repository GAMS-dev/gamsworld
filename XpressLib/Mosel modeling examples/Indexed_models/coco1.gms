********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file coco1.mos
*  ``````````````
*  Coco Problem Phase 1.
*  Initial formulation: data, variables, and
*  constraints fixed.
*
*  (c) 2001 Dash Associates
*      authors: Y. Colombani & S. Heipcke
*******************************************************!)

* model Coco1                        ! Start a new model


Positive Variable
         make11    ,
* Amount of product 1 to make at factory 1
         make21    ,
* Amount of product 2 to make at factory 1
         make12    ,
* Amount of product 1 to make at factory 2
         make22    ;
* Amount of product 2 to make at factory 2
Variable
         MaxProfit ;

Equation MxMake1  ,
         MxMake2  ,
         MxSell1  ,
         MxSell2  ,
         Def_Obj  ;


MxMake1..
make11 + make21 =l= 400  ;
* Capacity limit at factory 1
MxMake2..
make12 + make22 =l= 500  ;
* Capacity limit at factory 2
MxSell1..
make11 + make12 =l= 650  ;
* Limit on the amount of prod. 1 to be sold
MxSell2..
make21 + make22 =l= 600  ;
* Limit on the amount of prod. 2 to be sold

* Objective: maximize total profit
Def_Obj..
 MaxProfit =e= 50*make11 + 125*make21 + 47*make12 + 132*make22 ;


* Solve the LP-problem
Model Coco1 / all / ;

Solve Coco1 using MIP maximazing MaxProfit ;

Display MaxProfit.l ;