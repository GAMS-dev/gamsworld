********************************************************
*  * Mosel Example Problems                              *
*  * ======================                              *
*  *                                                     *
*  * file blend.mos                                      *
*  * ``````````````                                      *
*  * Example for the use of the Mosel language           *
*  * (Blending problem)                                  *
*  *                                                     *
*  * Reading data from file.                             *
*  *                                                     *
*  * (c) 2001 Dash Associates                            *
*  *     author: S. Heipcke                              *
*  *******************************************************!)

* model Blend                    ! Start a new model

* uses "mmxprs"                  ! Load the optimizer library

* Range of Ores
Set ROres /r1,r2/;
* Unit revenue of product
Scalar REV / 125 / ;
* Min permitted grade of product
Scalar MINGRADE / 4 / ;
* Max permitted grade of product
Scalar MAXGRADE / 5 / ;

* Unit cost of ores
Parameter COST[ROres]  / r1 85.0 , r2 93.0 / ;
* Availability of ores
Parameter AVAIL[ROres] / r1 60.0 , r2 45.0 / ;
* Grade of ores (measured per unit of mass)
Parameter GRADE[ROres] / r1  2.1 , r2  6.3 / ;

Variables
* Quantities of ores used
         x[ROres] ,
         Profit   ;

Equation LoGrade ,
         UpGrade ,
         Def_Obj ;
* Lower and upper bounds on ore quality
LoGrade..
    Sum{ROres, (GRADE[ROres]-MINGRADE) * x[ROres]} =g= 0 ;
UpGrade..
    Sum{ROres, (MAXGRADE-GRADE[ROres]) * x[ROres]} =g= 0 ;

* Objective: maximize total profit
Def_Obj..
    Profit =e= Sum{ROres, (REV-COST[ROres])* x[ROres]};

* Set upper bounds on variables
x.lo[ROres] = 0.0 ;
x.up[ROres] = AVAIL[ROres] ;

* Solve the LP-problem
Model Blend / all / ;

Solve Blend using LP maximazing Profit ;

Display Profit.l ;
