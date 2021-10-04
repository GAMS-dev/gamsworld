*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file capbgt.mos
*   ```````````````
*   TYPE:         Capital budgeting
*   DIFFICULTY:   1
*   FEATURES:     simple MIP problem
*   DESCRIPTION:  Among 8 projects under consideration we wish
*                 to choose the most profitable ones. Each project
*                 requires a capital investment and a commitment of
*                 skilled personnel. The (discounted) return of each
*                 project is known. The available capital and the
*                 number of skilled personnel are limited.
*   FURTHER INFO: Similar problem:
*                 `Applications of optimization with Xpress-MP',
*                 Section 13.6 `Choice of expansion projects'.
*
*    (c) 2001 Dash Associates
*       authors: Y. Colombani & S. Heipcke
********************************************************

* model Capbgt
* Range of possible projects

Set RPROJ / r1*r8 / ;
* Availability of capital
Scalar CAPAVL / 478 / ;
* Availability of skilled personnel
Scalar PERAVL / 106 / ;

* Capital required for project p
Parameter CAP[RPROJ] / r1 104 , r2 53 , r3 29 , r4 187 ,
                       r5  98 , r6 32 , r7 75 , r8 200 / ;
* Personnel required for project p
Parameter PER[RPROJ] / r1  22 , r2 14 , r3  7 , r4  36 ,
                       r5  24 , r6 10 , r7 20 , r8  41 / ;
* Return from project p
Parameter RET[RPROJ] / r1 124 , r2 75 , r3 42 , r4 188 ,
                       r5 108 , r6 56 , r7 88 , r8 225 / ;

Binary Variable x[RPROJ] ;
* Variables indicating whether a project
* is chosen
Variable MaxReturn ;

Equation LimCap  ,
         LimPers ,
         Def_Obj ;

* Limit on capital used by all projects
LimCap..
    Sum{RPROJ, CAP[RPROJ]*x[RPROJ] } =l= CAPAVL ;

* Limit on personnel used by all projects
LimPers..
    Sum{RPROJ, PER[RPROJ]*x[RPROJ] } =l= PERAVL ;

* Objective: maximize the return
Def_Obj..
    MaxReturn =e= Sum{RPROJ, RET[RPROJ]*x[RPROJ] } ;

* XPress solutions
*x.fx['r1'] = 1 ;
*x.fx['r2'] = 0 ;
*x.fx['r3'] = 1 ;
*x.fx['r4'] = 0 ;
*x.fx['r5'] = 1 ;
*x.fx['r6'] = 1 ;
*x.fx['r7'] = 0 ;
*x.fx['r8'] = 1 ;

* Solve the problem
Model Capbgt / all / ;

Solve Capbgt using MIP maximazing MaxReturn ;

Display MaxReturn.l ;