********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file works.mos
*  ``````````````
*  Workshop planning example.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke, rev. 2007
*********************************************************

* model Workshop

* Number of products
$Set NProd 2

* Number of workshops
$Set NShop 3

Set RP / p1*p%NProd% / ;
Set RS / s1*s%NShop% / ;

* Maximum weekly working time
Scalar WMAX / 40 / ;

* Duration of product p on shop s
Table DUR[RP,RS]
                  s1 s2 s3
               p1  5  9  7
               p2 10  2  5   ;

* Man hours per unit
Parameter RES[RP]   / p1  10 , p2   8 / ;

* Selling price per unit
Parameter PRICE[RP] / p1 108 , p2  84 / ;

Variable
* Amount of product p
          x[RP]  ,
          MaxBen ;

Equation ResMax(RS) ,
         Def_Obj    ;

* Limit on weekly working hours
ResMax(RS)..
    Sum{RP, DUR(RP,RS)*x(RP) } =l= WMAX ;

* Objective: Maximize Benefit
Def_Obj..
    MaxBen =e= Sum{RP,(PRICE[RP]-5*RES[RP]) * x[RP] } ;


* Solve the LP-problem
Model Workshop / all / ;

Solve Workshop using LP maximazing MaxBen ;

Display MaxBen.l ;