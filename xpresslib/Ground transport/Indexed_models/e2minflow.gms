*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file e2minflow.mos
*   ``````````````````
*   Choosing the mode of transport (Minimum cost flow)
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "E-2 Minimum cost flow"

Set NODES  / SOURCE  , D1      , D2      , D3      , D4      ,
             rail-C1 , road-C1 , rail-C2 , road-C2 , rail-C3 ,
             road-C3 , C1      , C2      , C3      , SINK      /  ;
* Set of nodes
Alias(NODES,NODES1) ;
Alias(NODES,NODES2) ;


Set ARC(NODES,NODES1) ;

ARC('SOURCE','D1')  = Yes ;
ARC('SOURCE','D2')  = Yes ;
ARC('SOURCE','D3')  = Yes ;
ARC('SOURCE','D4')  = Yes ;
ARC('D1','road-C1') = Yes ;
ARC('D1','road-C2') = Yes ;
ARC('D2','rail-C1') = Yes ;
ARC('D2','road-C1') = Yes ;
ARC('D3','road-C2') = Yes ;
ARC('D3','rail-C3') = Yes ;
ARC('D3','road-C3') = Yes ;
ARC('D4','rail-C2') = Yes ;
ARC('D4','road-C2') = Yes ;
ARC('D4','rail-C3') = Yes ;
ARC('D4','road-C3') = Yes ;
ARC('rail-C1','C1') = Yes ;
ARC('road-C1','C1') = Yes ;
ARC('rail-C2','C2') = Yes ;
ARC('road-C2','C2') = Yes ;
ARC('rail-C3','C3') = Yes ;
ARC('road-C3','C3') = Yes ;
ARC('C1','SINK')    = Yes ;
ARC('C2','SINK')    = Yes ;
ARC('C3','SINK')    = Yes ;
* Arcs

Parameter COST[NODES,NODES1] ;
COST['D1','road-C1']  = 12 ;
COST['D1','road-C2']  = 11 ;
COST['D2','rail-C1']  = 12 ;
COST['D2','road-C1']  = 14 ;
COST['D3','road-C2']  =  9 ;
COST['D3','rail-C3']  =  4 ;
COST['D3','road-C3']  =  5 ;
COST['D4','rail-C2']  = 11 ;
COST['D4','road-C2']  = 14 ;
COST['D4','rail-C3']  = 10 ;
COST['D4','road-C3']  = 14 ;
* Transport cost on arcs


Parameter MINCAP[NODES,NODES1] ;
MINCAP['D2','rail-C1']   =  10 ;
MINCAP['D3','rail-C3']   =  10 ;
MINCAP['D4','rail-C2']   =  10 ;
MINCAP['D4','rail-C3']   =  10 ;

Parameter MAXCAP[NODES,NODES1] ;
MAXCAP['SOURCE','D1'] = 50 ;
MAXCAP['SOURCE','D2'] = 40 ;
MAXCAP['SOURCE','D3'] = 35 ;
MAXCAP['SOURCE','D4'] = 65 ;
MAXCAP['D2','rail-C1']= 50 ;
MAXCAP['D3','rail-C3']= 50 ;
MAXCAP['D4','rail-C2']= 50 ;
MAXCAP['D4','rail-C3']= 50 ;
* Minimum and maximum arc capacities

Scalar MINQ / 180 / ;
* Total quantity to transport

Variable flow[NODES,NODES1] ,
* Flow on arcs
         Total_Cost         ;

Equation Eq_1(NODES)        ,
         Eq_2               ,
         Def_obj            ;

* Flow balance: inflow equals outflow
Eq_1(NODES)$((ord(NODES) ne 1) and (ord(NODES) ne card(NODES))) ..
     Sum{NODES1$ARC(NODES1,NODES) , flow[NODES1,NODES] }=e=
     Sum{NODES1$ARC(NODES,NODES1) , flow[NODES,NODES1] }      ;

* Minimum total quantity to transport
Eq_2..
Sum{NODES1$ARC('SOURCE',NODES1),
          flow['SOURCE',NODES1]} =e= MINQ ;


* Objective: total transport cost
Def_obj..
    Total_Cost =e= Sum{(NODES,NODES1)$ARC(NODES,NODES1),
                                      COST[NODES,NODES1]*flow[NODES,NODES1] } ;
* Solve the problem

flow.lo[NODES,NODES1] = 0 ;
flow.lo[NODES,NODES1]$((ARC(NODES,NODES1))and(MAXCAP[NODES,NODES1] gt 0)) =
                      MINCAP[NODES,NODES1] ;
flow.up[NODES,NODES1]$((ARC(NODES,NODES1))and(MAXCAP[NODES,NODES1] gt 0)) =
                      MAXCAP[NODES,NODES1] ;



Model E_2_Minimum_cost_flow / All  / ;

Solve E_2_Minimum_cost_flow using lp minimazing Total_Cost ;

Display Total_Cost.l ;






