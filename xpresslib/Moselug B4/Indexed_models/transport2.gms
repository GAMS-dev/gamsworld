*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
*   file transport2.mos
*   ```````````````````
*   Formatted output printing.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Transport 2"

***********************************************************************

Set REGION / Scotland , North , SWest , SEast , Midlands  / ;
Set Plant / Corby , Deeside , Glasgow , Oxford / ;

Parameter PLANTCAP[Plant]
          / Corby 3000 , Deeside 2700 , Glasgow 4500 , Oxford 4000 /;
Parameter PLANTCOST[Plant]
          /Corby 1700 , Deeside 1600 , Glasgow 2000 , Oxford 2100 /;

Parameter DEMAND[REGION]
        / Scotland 2840 , North 2800 , SWest  2600 , SEast 2820 , Midlands 2750 /;
Parameter DISTANCE[Plant,REGION] ;
           DISTANCE['Corby','North']     =  400 ;
           DISTANCE['Corby','SWest']     =  400 ;
           DISTANCE['Corby','SEast']     =  300 ;
           DISTANCE['Corby','Midlands']  =  100 ;
           DISTANCE['Deeside','Scotland']=  500 ;
           DISTANCE['Deeside','North']   =  200 ;
           DISTANCE['Deeside','SWest']   =  200 ;
           DISTANCE['Deeside','SEast']   =  200 ;
           DISTANCE['Deeside','Midlands']=  400 ;
           DISTANCE['Glasgow','Scotland']=  200 ;
           DISTANCE['Glasgow','North']   =  400 ;
           DISTANCE['Glasgow','SWest']   =  500 ;
           DISTANCE['Glasgow','SEast']   =  900 ;
           DISTANCE['Oxford','Scotland'] =  800 ;
           DISTANCE['Oxford','North']    =  600 ;
           DISTANCE['Oxford','SWest']    =  300 ;
           DISTANCE['Oxford','SEast']    =  200 ;
           DISTANCE['Oxford','Midlands'] =  400 ;

Parameter TRANSCAP(Plant,REGION) ;

           TRANSCAP['Corby','North']     =  1000;
           TRANSCAP['Corby','SWest']     =  1000;
           TRANSCAP['Corby','SEast']     =  1000;
           TRANSCAP['Corby','Midlands']  =  2000;
           TRANSCAP['Deeside','Scotland']=  1000;
           TRANSCAP['Deeside','North']   =  2000;
           TRANSCAP['Deeside','SWest']   =  1000;
           TRANSCAP['Deeside','SEast']   =  1000;
           TRANSCAP['Deeside','Midlands']=   300;
           TRANSCAP['Glasgow','Scotland']=  3000;
           TRANSCAP['Glasgow','North']   =  2000;
           TRANSCAP['Glasgow','SWest']   =  1000;
           TRANSCAP['Glasgow','SEast']   =   200;
           TRANSCAP['Oxford','Scotland'] =     0;
           TRANSCAP['Oxford','North']    =  2000;
           TRANSCAP['Oxford','SWest']    =  2000;
           TRANSCAP['Oxford','SEast']    =  2000;
           TRANSCAP['Oxford','Midlands'] =   500;

Set Exists(Plant,REGION);
Loop{(Plant,REGION)$(TRANSCAP[Plant,REGION] gt 0), Exists(Plant,REGION) = Yes ;
    };
Scalar FUELCOST / 17 / ;

Positive Variable
         flow[PLANT,REGION] ;
Variable MinCost ;

Equation Eq_1[PLANT]        ,
         Eq_2[REGION]       ,
         Def_Obj            ;

* Limits on plant capacity
Eq_1(PLANT)..
     Sum{REGION, flow[PLANT,REGION]} =l= PLANTCAP[PLANT] ;

* Satisfy all demands
Eq_2(REGION)..
     Sum{PLANT, flow[PLANT,REGION]} =e= DEMAND[REGION] ;

* Objective: minimize total cost
Def_Obj..
    MinCost =e=( Sum{(PLANT,REGION)$exists(PLANT,REGION),
                 (FUELCOST * DISTANCE[PLANT,REGION] + PLANTCOST[PLANT]) *
                  flow[PLANT,REGION]} ) / 1000000;

* Bounds on flows
     flow.up[PLANT,REGION] = TRANSCAP[PLANT,REGION] ;


Model Transport_2 / all / ;

Solve Transport_2 using NLP minimazing MinCost ;

Display MinCost.l ;