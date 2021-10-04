*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file blending.mos
*   `````````````````
*   TYPE:         Blending problem
*   DIFFICULTY:   1
*   FEATURES:     simple LP problem, formulation of blending constraints
*   DESCRIPTION:  Several ores are blended to a final product that must
*                 have a certain quality (`grade'). We wish to determine
*                 the quantity of every ore to be used in the blend with
*                 the objective to maximize the total profit (calculated
*                 as sales revenues - raw material cost).
*   FURTHER INFO: `Mosel User Guide', Section 2.2 `A blending example';
*                 `Applications of optimization with Xpress-MP',
*                 Section 2.7 `Blending constraints'.
*                 Similar problems: Section 6.1 `Production of alloys',
*                 Section 6.2 `Animal food production',  Section 6.3 `Refinery'
*
*   (c) 2001 Dash Associates
*       author: S.Heipcke
********************************************************

* model blending

* Range of Ores
Set ROres / r1*r2 / ;
* Unit revenue of product
Scalar REV / 125 / ;
* Min permitted grade of product
Scalar MINGRADE / 4 / ;
* Max permitted grade of product
Scalar MAXGRADE / 5 / ;
* Unit cost of ores
Parameter COST[ROres]  / r1 85   , r2 93   / ;
* Availability of ores
Parameter AVAIL[ROres] / r1 60   , r2 45   / ;
* Grade of ores (measured per unit of mass)
Parameter GRADE[ROres] / r1  2.1 , r2  6.3 / ;

Variables  x[ROres] ,
*          Quantities of ores used
           Profit   ;

Equation LoGrade ,
         UpGrade ,
         Def_Obj ;

* Lower and upper bounds on ore quality
LoGrade..
    Sum{ROres, (GRADE[ROres]-MINGRADE) * x[ROres] } =g= 0 ;
UpGrade..
    Sum{ROres, (MAXGRADE-GRADE[ROres]) * x[ROres] } =g= 0 ;
* Objective: maximize total profit
Def_Obj..
    Profit =e= Sum{ROres, (REV-COST[ROres])* x[ROres] } ;

* Set upper bounds on variables
 x.lo[ROres] = 0            ;
 x.up[ROres] = AVAIL[ROres] ;


* Solve the problem
Model blending / all / ;

Solve blending using LP maximazing Profit ;

Display Profit.l ;