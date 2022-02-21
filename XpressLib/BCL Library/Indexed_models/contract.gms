********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file contract.mos
*  `````````````````
*  Contract Allocation example.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke, rev. 2007
**********************************************************

* model Contract                     ! Start a new model

$Set District  6
* Number of districts
$Set Contract 10
* Number of contracts

Set RD / d1*d%District% / ;
Set RC / c1*c%Contract% / ;

Parameter OUTPUT[RD] / d1 50 , d2 40 , d3 10 ,
                       d4 20 , d5 70 , d6 50 / ;
* Max. output per district
Parameter COST[RD]   / d1 50 , d2 20 , d3  25 ,
                       d4 30 , d5 45 , d6 40 /   ;
* Cost per district
Parameter VOLUME[RC] / c1 20 , c2 10 , c3 30 , c4 15 ,  c5 20 ,
                       c6 30 , c7 10 , c8 50 , c9 10 , c10 20  / ;
* Volume of contracts

Binary Variable x[RD,RC] ;
* =1 if a project is chosen

       Variable y[RD,RC]   ,
                Total_Cost ;
* Quantities allocated to contractors

Equation Size(RC)      ,
         Min(RC)       ,
         Eq_Output(RD) ,
         XY(RD,RC)     ,
         Def_Obj       ;

* Cover the required contract volume
Size(RC)..
    Sum{RD, y[RD,RC] } =g= VOLUME[RC] ;

* At least 2 districts per contract
Min(RC)..
    Sum{RD, x[RD,RC] } =e= 2 ;

* Do not exceed max. output of any district
Eq_Output(RD)..
    Sum{RC,y[RD,RC]} =l= OUTPUT[RD] ;

* If a contract is allocated to a district, then at least 1 unit is
* allocated to it

XY(RD,RC)..
    x[RD,RC] =l= y[RD,RC] ;

Def_Obj..
    Total_Cost =e= Sum{(RD,RC), COST[RD]*y[RD,RC] } ;
* Objective function: total cost

y.lo[RD,RC] = 0          ;
y.up[RD,RC] = OUTPUT[RD] ;

* Solve the LP-problem
Model Contract / all / ;

Solve Contract using MIP minimazing Total_Cost ;

Display Total_Cost.l ;

