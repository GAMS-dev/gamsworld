******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file c5fiber.mos
*   ````````````````
*   Planning the production of fiberglass
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "C-5 Fiberglass"

Set  NODES / n1*n12 / ;
Set isodd(NODES) / n1 , n3 , n5 , n7 , n9 , n11 / ;
* Production and demand nodes
* odd numbers: production capacities
* even numbers: demands

Alias(NODES,NODES1) ;
Parameter Arc_par[NODES,NODES1] ;

       Arc_par['n1','n2']   = 5.00  ;
       Arc_par['n3','n4']   = 8.00  ;
       Arc_par['n5','n6']   = 6.00  ;
       Arc_par['n7','n8']   = 6.00  ;
       Arc_par['n9','n10']  = 7.00  ;
       Arc_par['n11','n12'] = 6.00  ;
       Arc_par['n2','n4']   = 0.20  ;
       Arc_par['n4','n6']   = 0.30  ;
       Arc_par['n6','n8']   = 0.20  ;
       Arc_par['n8','n10']  = 0.25  ;
       Arc_par['n10','n12'] = 0.30  ;

Set Arc(NODES,NODES1) ;  Arc(NODES,NODES1) = Yes$(Arc_par[NODES,NODES1] gt  0 ) ;
* Cost of flow on arcs
Parameter WEIGHT[NODES] /  n1 140 ,  n2 100 ,  n3 100 ,
                           n4 120 ,  n5 110 ,  n6 100 ,
                           n7 100 ,  n8  90 ,  n9 120 ,
                          n10 120 , n11 100 , n12 110 / ;
* Node weights (capacities/demand)

Variables  flow[NODES,NODES1] ,
* Flow on arcs
           Cost               ;

Equation Eq_1(NODES,NODES1) ,
         Def_obj     ;

* Satisfy demands (flow balance constraints)
Eq_1(NODES,NODES1)$(( not isodd(NODES))and(ord(NODES) eq ord(NODES1)))..
  flow[NODES-2,NODES1]$(ord(NODES) gt 2)           +
  flow[NODES-1,NODES1]                               =e=
  flow[NODES,NODES1+2]$(ord(NODES) ne card(NODES)) +
  WEIGHT[NODES] ;

* Production capacities

flow.up(NODES,NODES1+1)$((isodd(NODES))and(ord(NODES) eq ord(NODES1))) = WEIGHT[NODES] ;
flow.lo(NODES,NODES1) = 0 ;
* Objective: total cost of production and storage
Def_obj..
 Cost =e= Sum{(NODES,NODES1)$Arc(NODES,NODES1),
                         Arc_par[NODES,NODES1]*flow[NODES,NODES1]} ;


* Solve the problem
Model C_5_Fiberglass / all / ;

Solve C_5_Fiberglass using lp minimazing Cost ;

Display Cost.l ;





