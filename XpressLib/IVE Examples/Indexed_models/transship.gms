*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file transship.mos
*   ``````````````````
*   TYPE:         Production planning with time-dependent production cost
*                 (transshipment flow formulation)
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, representation of multi-period production
*                 as flow; encoding of arcs, `exists', `create', `isodd',
*                 `getlast', inline `if'
*   DESCRIPTION:  A company wishes to plan the production of a product
*                 for the next six weeks. The weekly demand is known for
*                 the entire planning period. The production capacity and
*                 the production and storage costs take different values
*                 depending on the time period. Which is the production
*                 plan that minimizes the total cost of production and
*                 storage?
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 8.5 `Planning the production of fiberglass'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Transshipment"

* Production and demand nodes
* odd numbers: production capacities
* even numbers: demands
Set NODES /n1*n12/;
Alias(NODES,NODES1);

Parameter A[NODES] ;
Loop{NODES, A[NODES] = mod(ord(NODES),2); } ;
Set odd(NODES) ;
    odd(NODES) = Yes$(A[NODES] = 1 ) ;

* Cost of flow on arcs
Parameter ARC[NODES,NODES1] ;
* Production costs
    ARC['n1','n2']  = 5   ;
    ARC['n3','n4']  = 8   ;
    ARC['n5','n6']  = 6   ;
    ARC['n7','n8']  = 6   ;
    ARC['n9','n10'] = 7   ;
   ARC['n11','n12'] = 6   ;
* Storage costs
    ARC['n2','n4']  = 0.2 ;
    ARC['n4','n6']  = 0.3 ;
    ARC['n6','n8']  = 0.2 ;
    ARC['n8','n10'] = 0.25;
    ARC['n10','n12'] = 0.3 ;

Set Exist(NODES,NODES1);
Loop{(NODES,NODES1),
    Exist(NODES,NODES1) = Yes$(ARC[NODES,NODES1] gt 0 ) ;
    } ;
* Node weights (capacities/demand)
Parameter WEIGHT[NODES]
                        / n1 140 ,  n2 100 ,  n3 100 ,  n4 120 ,
                          n5 110 ,  n6 100 ,  n7 100 ,  n8  90 ,
                          n9 120 , n10 120 , n11 100 , n12 110 / ;


Variable flow[NODES,NODES1] ,
* Flow on arcs
         Cost               ;
Equation Balance(NODES,NODES1) ,
         Eq_1(NODES,NODES1)    ,
         Def_Obj               ;

* Satisfy demands (flow balance constraints)

Balance(NODES,NODES1)$((not odd(NODES))and (ord(NODES) eq ord(NODES1)))..
           flow[NODES-2,NODES1]$(ord(NODES) gt 2) +
           flow[NODES-1,NODES1] =e=
           flow[NODES,NODES1+2]$(ord(NODES) lt card(NODES)) +
           WEIGHT[NODES] ;

* Production capacities

Eq_1(NODES,NODES1)$((odd(NODES))and(ord(NODES) eq ord(NODES1)))..
   flow[NODES,NODES1+1] =l= WEIGHT[NODES] ;

* Objective: total cost of production and storage
Def_Obj..
    Cost =e= Sum{(NODES,NODES1)$(ARC[NODES,NODES1] gt 0),
                               ARC[NODES,NODES1]*flow[NODES,NODES1] } ;

flow.lo[NODES,NODES1] = 0.0 ;
* Solve the problem
Model Transshipment / all / ;

Solve Transshipment using MIP minimazing Cost ;

Display Cost.l ;