*******************************************************
*   Mosel Example Problems
*  ======================
*
*   file a4sugar.mos
*   ````````````````
*   Production of cane sugar
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Feb. 2002
********************************************************
*
*model "A-4 Cane sugar production"

$Set  NW  11
* Number of wagon loads of sugar
$Set  NL  4
* Number of production lines

Set WAGONS /w1*w%NW% / ;

Set SLOTS / s1*s%NL%/;

* Time slots for production

Parameter LOSS[WAGONS] / w1 43 ,  w2 26 ,  w3 37 , w4 28 ,
                         w5 13 ,  w6 54 ,  w7 62 , w8 49 ,
                         w9 19 , w10 28 , w11 30 / ;
* LOSS - Loss in kg/hour

Parameter LIFE[WAGONS] / w1  8 ,  w2   8 ,  w3   2 , w4   8 ,
                         w5  4 ,  w6   8 ,  w7   8 , w8   8 ,
                         w9  6 , w10   8 , w11   8  / ;
* LIFE - Remaining time per lot

Scalar DUR / 2 / ;

Binary Variable process[WAGONS,SLOTS] ;
       Variable TotalLoss ;

Equation Eq_1(WAGONS) ,
         Eq_2(SLOTS)  ,
         Eq_3(WAGONS) ,
         Def_obj      ;

* Assignment
Eq_1(WAGONS)..
    Sum{(SLOTS),process[WAGONS,SLOTS]} =e= 1  ;

* Wagon loads per time slot
Eq_2(SLOTS)..
    Sum{(WAGONS), process[WAGONS,SLOTS] } =l= %NL%-1  ;

* Limit on raw product life
Eq_3(WAGONS)..
    Sum{(SLOTS),ord(SLOTS)*process[WAGONS,SLOTS]} =l= LIFE[WAGONS]/DUR  ;


Def_obj..
    TotalLoss =e= Sum{(WAGONS,SLOTS), ord(SLOTS)*DUR*LOSS[WAGONS]*
                                            process[WAGONS,SLOTS]  } ;

Model A_4_Cane_sugar_production / all / ;

Solve A_4_Cane_sugar_production using mip minimazing TotalLoss ;

Display TotalLoss.l ;