*****************************************************************
*   CP example problems
*   ===================
*
*   file a4sugar2_ka.mos
*   ````````````````````
*   Production of cane sugar
*   (See "Applications of optimization with Xpress-MP",
*        Section 6.4 Cane sugar production)
*
*   Assignment with resource-dependent cost.
*   Wagen loads need to be assigned time slots on production
*   lines. The limit on the number of resources (= production lines)
*   is modeled by counting the 'occurrence' of the time slot values
*   in the assigment variables 'process'.
*   - Alternative formulation using 'distribute' constraint -
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************!)

* model "A-4 Cane sugar production (CP) - 2"
*  uses "kalis"

* Number of wagon loads of sugar
$Set NW 11
* Number of production lines
$Set NL  3
* Time slots for production
$Set NS  4

Set WAGONS / w1 * w%NW% / ;

Set SLOTS / s1*s%NS% / ;

* Loss in kg/hour
Parameter LOSS_BIG[WAGONS] / w1 43 , w2 26 , w3 37 , w4 28 ,  w5 13 ,
                             w6 54 , w7 62 , w8 49 , w9 19 , w10 28 , w11 30 / ;

* Remaining time per lot (in hours)
Parameter LIFE[WAGONS]     / w1  8 , w2  8 , w3  2 , w4  8 , w5   4 ,
                             w6  8 , w7  8 , w8  8 , w9  6 , w10  8 , w11  8 / ;

* Duration of the production (in hours)
Scalar DUR / 2 / ;

* Cost per wagon
Parameter COST[SLOTS,WAGONS]   ;
* Lower and upper bounds on slot use
Loop{WAGONS,COST[SLOTS,WAGONS] =  ord(SLOTS)*DUR*LOSS_BIG[WAGONS] ;};

Parameter MINUSE[SLOTS],MAXUSE[SLOTS] ;
          MINUSE[SLOTS] = 0 ;
* Wagon loads per time slot
          MAXUSE[SLOTS] = %NL% ;


Integer Variable
* Time slots for wagon loads
         process[SLOTS,WAGONS] ;

Variable
* Loss per wagon
         loss[WAGONS]    ,
* Objective variable
         totalLoss       ;

Equation Eq_1(WAGONS)       ,
         Eq_2(WAGONS)       ,
         Eq_3(SLOTS)        ,
         Def_Obj            ;



* Objective function: total loss

Eq_1(WAGONS)..
     loss[WAGONS] =e= Sum{SLOTS,COST[SLOTS,WAGONS]*process[SLOTS,WAGONS]} ;

Eq_2(WAGONS)..
     Sum{SLOTS,process[SLOTS,WAGONS]} =e= 1 ;

* Limit on raw product life
Eq_3(SLOTS)..
     Sum{WAGONS,process[SLOTS,WAGONS]} =l= %NL% ;

Def_Obj..
    totalLoss =e= Sum{WAGONS, loss[WAGONS]} ;


*process.lo[SLOTS,WAGONS] = 0 ;
process.up[SLOTS,WAGONS] = 1 ;
process.fx[SLOTS,WAGONS]$(ord(SLOTS) gt floor(LIFE[WAGONS]/DUR) ) = 0 ;

* Xpress-kalis solution
*process.fx['S2','W1']  =  1 ;
*process.fx['S4','W2']  =  1 ;
*process.fx['S1','W3']  =  1 ;
*process.fx['S3','W4']  =  1 ;
*process.fx['S2','W5']  =  1 ;
*process.fx['S1','W6']  =  1 ;
*process.fx['S1','W7']  =  1 ;
*process.fx['S2','W8']  =  1 ;
*process.fx['S3','W9']  =  1 ;
*process.fx['S4','W10'] =  1 ;
*process.fx['S3','W11'] =  1 ;


* Xpress-kalis solution
*loss.fx['w1'] = 172  ;
*loss.fx['w2'] = 208  ;
*loss.fx['w3'] = 74   ;
*loss.fx['w4'] = 168  ;
*loss.fx['w5'] = 52   ;
*loss.fx['w6'] = 108  ;
*loss.fx['w7'] = 124  ;
*loss.fx['w8'] = 196  ;
*loss.fx['w9'] = 114  ;
*loss.fx['w10'] = 224 ;
*loss.fx['w11'] = 180 ;


* Solve the problem
Model A_4_Cane_sugar_production / all / ;

Solve A_4_Cane_sugar_production using MIP minimazing totalLoss ;

Display totalLoss.l ;

