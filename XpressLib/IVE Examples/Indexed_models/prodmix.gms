*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file prodmix.mos
*   ````````````````
*   TYPE:         Product mix (single period production planning)
*   DIFFICULTY:   1
*   FEATURES:     simple LP problem
*   DESCRIPTION:  A firm has 3 workshops, each working 40 hours per week, in
*                 which it can produce two products. A unit of each product
*                 requires a given number of hours in the workshops and a
*                 given number of man hours. The hourly labor cost and the
*                 unit sales prices are known. The objective is to determine
*                 the most profitable operation.
*   FURTHER INFO: "Applications of optimization with Xpress-MP",
*                 Section 2.3 "Simple resource constraints"
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model Workshop


* Number of products
$Set NProd  2
* Number of workshops
$Set NShop  3

Set RP /RP1*RP%NProd%/;
Set RS /RS1*RS%NShop%/;
*// Maximum weekly working time
Scalar WMAX  / 40 / ;
*// Hourly labor cost
Scalar LABOR /  5 / ;
*// Duration of product p in shop s
Table DUR[RP,RS]
             RS1 RS2 RS3
       RP1    5   9   7
       RP2   10   2   5   ;

*// Man hours per unit
Parameter RES[RP]     / RP1  10 , RP2  8 / ;
*//Selling price per unit
Parameter PRICE[RP]   / RP1 108 , RP2 84 / ;
*// Amount of product p
Variable make[RP] ,
         MaxBen   ;

Equation Capacity(RS) ,
         Def_Obj      ;

*// Limit on weekly working hours
Capacity(RS)..
    Sum{RP, DUR[RP,RS]*make[RP] } =l= WMAX ;

*// Objective: Maximize Benefit
Def_Obj..
    MaxBen =e= Sum{RP, (PRICE[RP]-LABOR*RES[RP]) * make[RP] } ;

* Solve the problem
Model Workshop / all / ;

Solve Workshop using LP maximazing MaxBen ;

Display MaxBen.l ;