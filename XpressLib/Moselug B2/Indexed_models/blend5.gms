******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file blend5.mos
*   ```````````````
*   User type definition.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke
*******************************************************

* model "Blend"

Set ORES /o1,o2/;
* Range of ores
Scalar  REV      / 125 / ;
* Unit revenue of product
Scalar  MINGRADE /   4 / ;
* Minimum permitted grade of product
Scalar  MAXGRADE /   5 / ;
* Maximum permitted grade of product

Parameter COST[ORES]   / o1 85.0 , o2 93.0 / ;
* Unit cost of ores
Parameter AVAIL[ORES]  / o1 60.0 , o2 45.0 / ;
* Availability of ores
Parameter GRADE[ORES]  / o1  2.1 , o2  6.3 / ;
* Grade of ores (measured per unit of mass)

Variable use[ORES] ,
* Quantities of ores used
         Profit    ;

Equation Eq_1    ,
         Eq_2    ,
         Def_obj ;

* Lower and upper bounds on ore quality
Eq_1.. Sum{ORES, (GRADE[ORES]-MINGRADE)*use[ORES]} =g= 0 ;

Eq_2.. Sum{ORES, (MAXGRADE-GRADE[ORES])*use[ORES]} =g= 0 ;

* Objective: maximize total profit
Def_obj.. Profit =e= Sum{ORES, (REV-COST[ORES])* use[ORES]} ;


* Set upper bounds on variables
use.up[ORES] = AVAIL[ORES] ;

* Xpress solution
* use.fx['o1']= 54.4737 ;
* use.fx['o2']= 45.0000 ;

Model Blend / all / ;

* Solve the LP-problem
Solve Blend using lp maximazing Profit ;

Display Profit.l ;