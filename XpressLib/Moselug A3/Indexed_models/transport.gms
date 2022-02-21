******************************************************
*
*   Mosel User Guide Example Problems
*
*   =================================
*
*
*
*   file transport.mos
*
*   ``````````````````
*
*   Using dynamic arrays.
*
*
*
*   (c) 2001 Dash Associates
*
*       author: S.Heipcke
*
*******************************************************
*
*model Transport

* Set of customer regions
Set  REGION  / Scotland , North , SWest , SEast , Midlands / ;

* Set of plants
Set  PLANT   / Corby , Deeside , Glasgow , Oxford  / ;

* Fuel cost per unit distance
Scalar FUELCOST / 17 / ;

* Demand at regions
Parameter DEMAND[REGION]     / Scotland 2840 , North    2800 ,
                               SWest    2600 , SEast    2820 ,
                               Midlands 2750 / ;

* Production capacity at plants
Parameter  PLANTCAP[PLANT]    / Corby   3000 , Deeside  2700 ,
                                Glasgow 4500 , Oxford   4000 / ;

* Unit production cost at plants
Parameter  PLANTCOST[PLANT]   / Corby   1700 , Deeside  1600 ,
                                Glasgow 2000 , Oxford   2100 / ;

Parameter TRANSCAP[PLANT,REGION] ;
* Capacity on each route plant->region
          TRANSCAP['Corby','North']      =   1000  ;
          TRANSCAP['Corby','SWest']      =   1000  ;
          TRANSCAP['Corby','SEast']      =   1000  ;
          TRANSCAP['Corby','Midlands']   =   2000  ;
          TRANSCAP['Deeside','Scotland'] =   1000  ;
          TRANSCAP['Deeside','North']    =   2000  ;
          TRANSCAP['Deeside','SWest']    =   1000  ;
          TRANSCAP['Deeside','SEast']    =   1000  ;
          TRANSCAP['Deeside','Midlands'] =    300  ;
          TRANSCAP['Glasgow','Scotland'] =   3000  ;
          TRANSCAP['Glasgow','North']    =   2000  ;
          TRANSCAP['Glasgow','SWest']    =   1000  ;
          TRANSCAP['Glasgow','SEast']    =    200  ;
          TRANSCAP['Oxford','Scotland']  =      0  ;
          TRANSCAP['Oxford','North']     =   2000  ;
          TRANSCAP['Oxford','SWest']     =   2000  ;
          TRANSCAP['Oxford','SEast']     =   2000  ;
          TRANSCAP['Oxford','Midlands']  =    500  ;

Set Link_TRANSCAP(PLANT,REGION) ;
Link_TRANSCAP(PLANT,REGION) = Yes$(TRANSCAP[PLANT,REGION] ge 0 );

Parameter DISTANCE[PLANT,REGION] ;
* Distance of each route plant->region
          DISTANCE['Corby','North']      =    400  ;
          DISTANCE['Corby','SWest']      =    400  ;
          DISTANCE['Corby','SEast']      =    300  ;
          DISTANCE['Corby','Midlands']   =    100  ;
          DISTANCE['Deeside','Scotland'] =    500  ;
          DISTANCE['Deeside','North']    =    200  ;
          DISTANCE['Deeside','SWest']    =    200  ;
          DISTANCE['Deeside','SEast']    =    200  ;
          DISTANCE['Deeside','Midlands'] =    400  ;
          DISTANCE['Glasgow','Scotland'] =    200  ;
          DISTANCE['Glasgow','North']    =    400  ;
          DISTANCE['Glasgow','SWest']    =    500  ;
          DISTANCE['Glasgow','SEast']    =    900  ;
          DISTANCE['Oxford','Scotland']  =    800  ;
          DISTANCE['Oxford','North']     =    600  ;
          DISTANCE['Oxford','SWest']     =    300  ;
          DISTANCE['Oxford','SEast']     =    200  ;
          DISTANCE['Oxford','Midlands']  =    400  ;

Variable flow[PLANT,REGION] ,
* Flow on each route
         MinCost            ;

Equation Eq_1(PLANT,REGION) ,
         Eq_2(PLANT)        ,
         Eq_3(REGION)       ,
         Def_obj ;

* Create the flow variables that exist
Eq_1(PLANT,REGION)$( not Link_TRANSCAP(PLANT,REGION))..
               flow[PLANT,REGION] =e= 0 ;

* Limits on plant capacity
Eq_2(PLANT)..
     Sum{REGION, flow[PLANT,REGION]} =l= PLANTCAP[PLANT] ;

* Satisfy all demands
Eq_3(REGION)..
     Sum{PLANT, flow[PLANT,REGION] } =e= DEMAND[REGION] ;


* Objective: minimize total cost
Def_obj..
    MinCost =e= Sum{(PLANT,REGION)$Link_TRANSCAP(PLANT,REGION) ,
                    (FUELCOST * DISTANCE[PLANT,REGION] + PLANTCOST[PLANT])*
                     flow[PLANT,REGION]} ;

* Bounds on flows
  flow.up[PLANT,REGION] = TRANSCAP[PLANT,REGION] ;
  flow.lo[PLANT,REGION] = 0.0 ;

Model Transport / all / ;

Solve Transport using lp minimazing MinCost ;

Display MinCost.l ;