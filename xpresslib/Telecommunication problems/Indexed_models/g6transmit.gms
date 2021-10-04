*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file g6transmit.mos
*   ```````````````````
*   Placing mobile phone transmitters
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Apr. 2002
********************************************************

* model "G-6 Transmitter placement"


Set COMMS  / c1*c15 / ;
* Set of communities
Set PLACES / p1*p7  / ;
* Set of possible transm. locations

Parameter COST[PLACES] / p1 1.8 , p2 1.3 , p3 4.0 ,
                         p4 3.5 , p5 3.8 , p6 2.6 , p7 2.1 / ;
* Cost of constructing transmitters
Parameter COVER[PLACES,COMMS] ;
COVER['p1','c1']  = 1 ; COVER['p1','c2']  = 1 ; COVER['p1','c4']  = 1 ;
COVER['p2','c2']  = 1 ; COVER['p2','c3']  = 1 ; COVER['p2','c5']  = 1 ;
COVER['p3','c4']  = 1 ; COVER['p3','c7']  = 1 ; COVER['p3','c8']  = 1 ; COVER['p3','c10'] = 1 ;
COVER['p4','c5']  = 1 ; COVER['p4','c6']  = 1 ; COVER['p4','c8']  = 1 ; COVER['p4','c9']  = 1 ;
COVER['p5','c8']  = 1 ; COVER['p5','c9']  = 1 ; COVER['p5','c12'] = 1 ;
COVER['p6','c7']  = 1 ; COVER['p6','c10'] = 1 ; COVER['p6','c11'] = 1 ; COVER['p6','c12'] = 1 ; COVER['p6','c15'] = 1 ;
COVER['p7','c12'] = 1 ; COVER['p7','c13'] = 1 ; COVER['p7','c14'] = 1 ; COVER['p7','c15'] = 1 ;
* Coverage by transmitter locations

Parameter   POP[COMMS] /  c1 2 ,  c2  4 ,  c3 13 ,  c4  6 ,  c5  9 ,
                          c6 4 ,  c7  8 ,  c8 12 ,  c9 10 , c10 11 ,
                         c11 6 , c12 14 , c13  9 , c14  3 , c15  6  / ;
* Number of inhabitants (in 1000)

Scalar BUDGET / 10 / ;
* Budget limit

Binary Variable build[PLACES] ,
* 1 if transmitter built, 0 otherwise
                covered[COMMS] ;
* 1 if community covered, 0 otherwise

Variable Coverage ;

Equation Eq_1(COMMS) ,
         Eq_2        ,
         Def_Obj     ;
* Towns covered
Eq_1(COMMS)..
 Sum{PLACES, COVER[PLACES,COMMS]*build[PLACES] } =g= covered[COMMS] ;

* Budget limit
Eq_2..
 Sum{PLACES, COST[PLACES]*build[PLACES] } =l= BUDGET ;

* Objective: total population covered
Def_Obj..
 Coverage =e= Sum{COMMS, POP[COMMS]*covered[COMMS] } ;

* Solve the problem
Model G_6_Transmitter_placement / All / ;

Solve G_6_Transmitter_placement using MIP maximazing Coverage ;

Display Coverage.l ;





