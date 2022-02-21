*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file covering.mos
*   `````````````````
*   TYPE:         Covering problem
*   DIFFICULTY:   2
*   FEATURES:     MIP problem, modeling an equivalence; sparse data format,
*                 graphical output representation, 'if-then-else'
*   DESCRIPTION:  A mobile phone operator decides to equip a currently
*                 uncovered geographical zone. A budget is allocated to equip
*                 this region. 7 locations are possible for the construction
*                 of the transmitters. Every transmitter only covers a certain
*                 number of communities. For every community the number of
*                 inhabitants is known. Where should the transmitters be built
*                 to cover the largest population with the given budget?
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 12.6 `Location of GSM transmitters'.
*                 Similar problems: Section 9.5 `Cutting of sheet metal',
*                 Section 15.2 `CCTV surveillance'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
*******************************************************

* model "Transmitter placement"

* Set of communities
Set COMMS   / c1*c15 / ;
* Set of communities
Set PLACES  / p1*p7  / ;

* Cost of constructing transmitters
Parameter COST[PLACES]
          / p1 1.8 , p2 1.3 , p3 4.0 , p4 3.5 , p5 3.8 , p6 2.6 , p7 2.1 / ;

* Coverage by transmitter locations
Parameter COVER[PLACES,COMMS] ;
COVER['p1','c1'] =1;COVER['p1','c2'] =1;COVER['p1','c4'] =1;
COVER['p2','c2'] =1;COVER['p2','c3'] =1;COVER['p2','c5'] =1;
COVER['p3','c4'] =1;COVER['p3','c7'] =1;COVER['p3','c8'] =1;COVER['p3','c10']=1;
COVER['p4','c5'] =1;COVER['p4','c6'] =1;COVER['p4','c8'] =1;COVER['p4','c9'] =1;
COVER['p5','c8'] =1;COVER['p5','c9'] =1;COVER['p5','c12']=1;
COVER['p6','c7'] =1;COVER['p6','c10']=1;COVER['p6','c11']=1;COVER['p6','c12']=1;
COVER['p6','c15'] = 1 ;
COVER['p7','c12']=1;COVER['p7','c13']=1;COVER['p7','c14']=1;COVER['p7','c15']=1;

* Number of inhabitants (in 1000)
Parameter POP[COMMS]  / c1   2 , c2  4 , c3  13 ,
                        c4   6 , c5  9 , c6   4 ,
                        c7   8 , c8 12 , c9  10 ,
                        c10 11 , c11 6 , c12 14 ,
                        c13  9 , c14 3 , c15  6 / ;

* Budget limit
Scalar BUDGET /10 / ;


Binary Variable build[PLACES]  ,
* 1 if transmitter built, 0 otherwise
                covered[COMMS] ;
* 1 if community covered, 0 otherwise
Variable Coverage ;

Equation CoverTown(COMMS) ,
         BudgetLim        ,
         Def_Obj          ;

* Towns covered
CoverTown(COMMS)..
    Sum{PLACES, COVER[PLACES,COMMS]*build[PLACES] } =g= covered(COMMS) ;

* Budget limit
BudgetLim..
    Sum{PLACES, COST[PLACES]*build[PLACES] } =l= BUDGET ;

* Objective: total population covered
Def_Obj..
    Coverage =e= Sum{COMMS, POP[COMMS]*covered[COMMS] } ;

* Solve the problem
Model Transmitter_placement / all / ;

Solve Transmitter_placement using MIP maximazing Coverage ;

Display Coverage.l ;