********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file cutstock.mos
*   `````````````````
*   TYPE:         Cutting stock problem
*   DIFFICULTY:   5
*   FEATURES:     MIP problem solved by column generation,
*                 working with multiple problems, using 'sethidden',
*                 setting Optimizer and Mosel control parameters
*   DESCRIPTION:  A paper mill produces rolls of paper of a fixed width that
*                 are subsequently cut into smaller rolls according to the
*                 customer orders. The rolls can be cut into NWIDTHS different
*                 sizes. The orders are given as demands for each width.
*                 The objective of the paper mill is to satisfy the demand
*                 with the smallest possible number of paper rolls in order
*                 to minimize the losses.
*                 Starting with just a basic set of cutting patterns a
*                 column generation heuristic is employed to find more
*                 profitable cutting patterns. This heuristic solves a
*                 second optimization problem (a knapsack problem) that is
*                 independent of the main, cutting stock problem.
*   FURTHER INFO: "Mosel User Guide", Section 11.2 "Column generation";
*                 Dash White Paper "Embedding Optimization Algorithms".
*                 Similar problem:
*                 `Applications of optimization with Xpress-MP',
*                 Section 9.6 `Cutting steel bars for desk legs'
*
*   (c) 2001 Dash Associates
*       authors: Bob Daniel, S. Heipcke, J. Tebboth
********************************************************!)

* model "Cutting stock"

$Set NWIDTHS 15
* Range of widths
Set WIDTHS / w1*w%NWIDTHS% / ;
Alias(WIDTHS,WIDTHS1);
* Possible widths
Parameter WIDTH[WIDTHS]  /  w1  6 ,  w2 11 ,  w3 17 ,  w4 21 ,  w5 24 ,
                            w6 28 ,  w7 30 ,  w8 33 ,  w9 42 , w10 49 ,
                           w11 56 , w12 69 , w13 74 , w14 87 , w15 91  / ;
* Demand per width
Parameter DEMAND[WIDTHS] /  w1  9 ,  w2  6 ,  w3 20 ,  w4 30 ,  w5 17 ,
                            w6 19 ,  w7 25 ,  w8 12 ,  w9  8 , w10 20 ,
                           w11  5 , w12 14 , w13 15 , w14 18 , w15 10  / ;


* Zero tolerance
Scalar EPSI     / 0.001 / ;
Scalar MAXWIDTH / 100   / ;

* (Basic) cutting patterns
Parameter PATTERN[WIDTHS, WIDTHS1] ;

* Make basic patterns
Loop{(WIDTHS,WIDTHS1),
      PATTERN[WIDTHS,WIDTHS1]$(ord(WIDTHS) eq ord(WIDTHS1)) =
                              floor(MAXWIDTH/WIDTH[WIDTHS]) ;
    } ;

Integer Variable
* Rolls per pattern
  use[WIDTHS] ;

Variable
* Objective function
  MinRolls    ;

Equation Dem(WIDTHS) ,

         Def_Obj ;
* Satisfy all demands
Dem(WIDTHS)..
    Sum{WIDTHS1, PATTERN[WIDTHS,WIDTHS1] * use[WIDTHS1]} =g= DEMAND[WIDTHS] ;

* Objective: minimize the number of rolls
Def_Obj..
MinRolls =e= Sum{WIDTHS, use[WIDTHS] } ;


* Compute the best integer solution
* for the current problem (including
* the new columns)

* Solve the problem
Model Cutting_stock / all / ;

Solve Cutting_stock using MIP Minimazing MinRolls ;

Display MinRolls.l ;