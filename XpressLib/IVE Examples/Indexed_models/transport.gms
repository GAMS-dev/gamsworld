*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file transport.mos
*   ``````````````````
*   TYPE:         Transport problem
*   DIFFICULTY:   2
*   FEATURES:     simple LP problem, using dynamic arrays for data and
*                 decision variables, formatted output printing, inline `if',
*                 format of data files
*   DESCRIPTION:  A company produces the same product at different plants.
*                 Every plant has a different production cost per unit and
*                 a limited total capacity. The customers (grouped into
*                 customer regions) may receive the product from different
*                 production locations. The transport cost is proportional
*                 to the distance between plants and customers, and the
*                 capacity on every delivery route is limited. The objective
*                 is to minimize the total cost, whilst satisfying the
*                 demands of all customers.
*   FURTHER INFO: `Mosel User Guide', Section 3.1 `A transport example',
*                 Section 10.1 `Producing formatted output'.
*                 Similar problem:
*                 `Applications of optimization with Xpress-MP',
*                 Section 10.1 `Car rental'
*
*   (c) 2001 Dash Associates
*       author: S.Heipcke
********************************************************

* model Transport
* Set of customer regions
Set REGION / Scotland , North , SWest , SEast , Midlands / ;
* Set of plants
Set PLANT  / Corby , Deeside , Glasgow , Oxford / ;
* Demand at regions
Parameter DEMAND[REGION] /  Scotland 2840 ,
                            North    2800 ,
                            SWest    2600 ,
                            SEast    2820 ,
                            Midlands 2750  / ;
* Production capacity at plants
Parameter PLANTCAP[PLANT]         / Corby     3000 ,
                                    Deeside   2700 ,
                                    Glasgow   4500 ,
                                    Oxford    4000  / ;

* Unit production cost at plants
Parameter PLANTCOST[PLANT]        / Corby     1700 ,
                                    Deeside   1600 ,
                                    Glasgow   2000 ,
                                    Oxford    2100  / ;
* Distance of each route plant->region
Parameter DISTANCE[PLANT,REGION] ;
                     DISTANCE['Corby','North']      =  400 ;
                     DISTANCE['Corby','SWest']      =  400 ;
                     DISTANCE['Corby','SEast']      =  300 ;
                     DISTANCE['Corby','Midlands']   =  100 ;
                     DISTANCE['Deeside','Scotland'] =  500 ;
                     DISTANCE['Deeside','North']    =  200 ;
                     DISTANCE['Deeside','SWest']    =  200 ;
                     DISTANCE['Deeside','SEast']    =  200 ;
                     DISTANCE['Deeside','Midlands'] =  400 ;
                     DISTANCE['Glasgow','Scotland'] =  200 ;
                     DISTANCE['Glasgow','North']    =  400 ;
                     DISTANCE['Glasgow','SWest']    =  500 ;
                     DISTANCE['Glasgow','SEast']    =  900 ;
                     DISTANCE['Oxford','Scotland']  =  800 ;
                     DISTANCE['Oxford','North']     =  600 ;
                     DISTANCE['Oxford','SWest']     =  300 ;
                     DISTANCE['Oxford','SEast']     =  200 ;
                     DISTANCE['Oxford','Midlands']  =  400 ;

* Capacity on each route plant->region
Parameter TRANSCAP[PLANT,REGION] ;
                     TRANSCAP['Corby','North']      =  1000 ;
                     TRANSCAP['Corby','SWest']      =  1000 ;
                     TRANSCAP['Corby','SEast']      =  1000 ;
                     TRANSCAP['Corby','Midlands']   =  2000 ;
                     TRANSCAP['Deeside','Scotland'] =  1000 ;
                     TRANSCAP['Deeside','North']    =  2000 ;
                     TRANSCAP ['Deeside','SWest']   =  1000 ;
                     TRANSCAP['Deeside','SEast']    =  1000 ;
                     TRANSCAP['Deeside','Midlands'] =   300 ;
                     TRANSCAP['Glasgow','Scotland'] =  3000 ;
                     TRANSCAP['Glasgow','North']    =  2000 ;
                     TRANSCAP['Glasgow','SWest']    =  1000 ;
                     TRANSCAP['Glasgow','SEast']    =   200 ;
                     TRANSCAP['Oxford','Scotland']  =     0 ;
                     TRANSCAP['Oxford','North']     =  2000 ;
                     TRANSCAP['Oxford','SWest']     =  2000 ;
                     TRANSCAP['Oxford','SEast']     =  2000 ;
                     TRANSCAP['Oxford','Midlands']  =   500 ;

Set Exist(PLANT,REGION) ;
    Exist(PLANT,REGION) = Yes$(TRANSCAP[PLANT,REGION] gt 0 );

* Fuel cost per unit distance
Scalar FUELCOST /  17 / ;

* Flow on each route
Variable flow[PLANT,REGION] ,
         MinCost            ;

Equation Eq_Capacity(PLANT) ,
         Eq_Demand(REGION)  ,
         Def_Obj          ;

* Limits on plant capacity
Eq_Capacity(PLANT)..
      Sum{REGION, flow[PLANT,REGION] } =l= PLANTCAP[PLANT] ;

* Satisfy all demands
Eq_Demand(REGION)..
      Sum{PLANT, flow[PLANT,REGION] } =e= DEMAND[REGION] ;

* Objective: minimize total cost
Def_Obj..
 MinCost =e= Sum{(PLANT,REGION)$exist(PLANT,REGION),
                               (FUELCOST * DISTANCE[PLANT,REGION] +
                                PLANTCOST[PLANT]) * flow[PLANT,REGION] } ;

* Bounds on flows
flow.lo[PLANT,REGION] = 0 ;
flow.up[PLANT,REGION] = TRANSCAP[PLANT,REGION] ;

* Solve the problem
Model Transport / all / ;

Solve Transport using LP Minimazing MinCost ;

Display MinCost.l ;
