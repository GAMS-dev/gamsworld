**********************************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file facilityloc.mos
*   ````````````````````
*   TYPE:         Facility location problem
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, graphical solution representation,
*                 re-solving with modified bounds, data input from file,
*                 dynamic arrays for data and decision variables, use of
*                 'exists', model cuts
*   DESCRIPTION:  There are a set of depot locations and a set of clients.
*                 The cost of opening each depot, the depot capacities, and
*                 the demand of each client is given. For all possible
*                 delivery routes the unit shipping cost is given.
*                 We wish to supply all the clients at the least cost.
*                 The model is re-solved several times to study the effects
*                 of forcing some depots open.
*   FURTHER INFO: Similar problem:
*                 `Applications of optimization with Xpress-MP',
*                 Section 10.3 `Depot location'
*
*   (c) 2004 Dash Associates
*       author: S. Heipcke
**********************************************************************

* model "Facility location"
* Set of Depots
Set Depots / DEP5 , DEP2 , DEP3 , DEP6 , DEP9 , DEP1 / ;
* Set of Clients
Set Clients / C1  , C13 , C2  , C6  , C15 , C33 ,
              C67 , C84 , C49 , C38 , C55 , C51 , C72 / ;

* Cost of opening depot
Parameter COPEN[Depots] / DEP5  4000 ,
                          DEP2  2500 ,
                          DEP3  2600 ,
                          DEP6  2100 ,
                          DEP9  3000 ,
                          DEP1  3200 / ;

* Cost of shipping
Parameter CSHIP[Depots,Clients] ;

CSHIP['DEP5','C1']  =  9 ; CSHIP['DEP5','C2']  = 45 ;
CSHIP['DEP5','C6']  = 77 ; CSHIP['DEP5','C33'] =  4 ;
CSHIP['DEP5','C67'] = 34 ; CSHIP['DEP5','C84'] = 55 ;
CSHIP['DEP5','C49'] = 23 ; CSHIP['DEP5','C38'] =111 ;
CSHIP['DEP5','C55'] = 56 ; CSHIP['DEP5','C72'] = 72 ;
CSHIP['DEP2','C1']  = 65 ; CSHIP['DEP2','C13'] = 83 ;
CSHIP['DEP2','C6']  = 66 ; CSHIP['DEP2','C67'] = 49 ;
CSHIP['DEP2','C84'] = 11 ; CSHIP['DEP2','C49'] = 43 ;
CSHIP['DEP2','C55'] = 32 ; CSHIP['DEP2','C72'] = 71 ;
CSHIP['DEP3','C1']  = 91 ; CSHIP['DEP3','C2']  = 74 ;
CSHIP['DEP3','C13'] = 44 ; CSHIP['DEP3','C6']  = 21 ;
CSHIP['DEP3','C15'] = 25 ; CSHIP['DEP3','C33'] = 63 ;
CSHIP['DEP3','C67'] = 28 ; CSHIP['DEP3','C49'] = 55 ;
CSHIP['DEP3','C38'] =122 ; CSHIP['DEP3','C55'] =107 ;
CSHIP['DEP6','C13'] = 17 ; CSHIP['DEP6','C2']  = 48 ;
CSHIP['DEP6','C6']  = 51 ; CSHIP['DEP6','C15'] = 56 ;
CSHIP['DEP6','C33'] = 89 ; CSHIP['DEP6','C67'] = 53 ;
CSHIP['DEP6','C38'] = 82 ; CSHIP['DEP6','C55'] = 72 ;
CSHIP['DEP6','C51'] = 36 ; CSHIP['DEP9','C1']  = 31 ;
CSHIP['DEP9','C2']  = 39 ; CSHIP['DEP9','C6']  = 37 ;
CSHIP['DEP9','C67'] = 71 ; CSHIP['DEP9','C49'] = 79 ;
CSHIP['DEP9','C38'] = 78 ; CSHIP['DEP9','C55'] = 58 ;
CSHIP['DEP9','C51'] = 30 ; CSHIP['DEP1','C1']  = 59 ;
CSHIP['DEP1','C13'] = 61 ; CSHIP['DEP1','C2']  = 63 ;
CSHIP['DEP1','C6']  = 71 ; CSHIP['DEP1','C15'] = 75 ;
CSHIP['DEP1','C33'] = 59 ; CSHIP['DEP1','C67'] = 78 ;
CSHIP['DEP1','C84'] = 73 ; CSHIP['DEP1','C49'] = 30 ;
CSHIP['DEP1','C38'] = 55 ; CSHIP['DEP1','C51'] = 42 ;
CSHIP['DEP1','C72'] = 58 ;

* Demand of Clients
Parameter DEM[Clients] / C1   45 , C13  56 , C2   55 ,
                         C6  300 , C15 112 , C33  80 ,
                         C67  77 , C84  25 , C49  33 ,
                         C38  43 , C55  39 , C51  45 ,
                         C72  61 / ;
* Capacity of depots
Parameter CAP[Depots] / DEP5 600  , DEP2 500 , DEP3 320 ,
                        DEP6 200  , DEP9 260 , DEP1 400 / ;

Binary Variable open[Depots] ;
* 1, if depot d is open, 0 otherwise

Variable ship[Depots, Clients] ,
* Amount to be shipped from
* depot d to client c
         MinCost               ;

Equation Capacity(Depots) ,
         Demand(Clients)  ,
         Def_Obj          ;

* Capacity constraint at each depot
Capacity(Depots)..
    Sum{Clients, ship[Depots,Clients]} =l= CAP[Depots] * open[Depots] ;

* Demand requirements at each client
Demand(Clients)..
    Sum{Depots, ship[Depots,Clients] } =g= DEM[Clients] ;


* Objective: minimize total cost
Def_Obj..
    MinCost =e=
*               Shipping cost
                Sum{(Depots,Clients)$(CSHIP[Depots,Clients] gt 0 ),
                                      CSHIP[Depots,Clients] *
                                      ship[Depots,Clients]         } +
* Depot open cost
                Sum{Depots, COPEN[Depots] * open[Depots] } ;


ship.lo[Depots, Clients] = 0 ;
* Solve the problem
Model Facility_location / all / ;

Solve Facility_location using MIP Minimazing MinCost ;
Display MinCost.l ;

open.fx['DEP1'] = 1 ;
Solve Facility_location using MIP Minimazing MinCost ;
Display MinCost.l ;

open.l['DEP1']  = 0 ;
open.fx['DEP2'] = 1 ;
Solve Facility_location using MIP Minimazing MinCost ;
Display MinCost.l ;

open.fx['DEP1'] = 1 ;
open.fx['DEP2'] = 1 ;
Solve Facility_location using MIP Minimazing MinCost ;
Display MinCost.l ;

