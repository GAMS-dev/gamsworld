*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file mincostflow.mos
*   ````````````````````
*   TYPE:         Minimum cost flow problem
*   DIFFICULTY:   2
*   FEATURES:     MIP problem, formulation with extra nodes for modes of
*                 transport; encoding of arcs, `finalize', union of sets,
*                 nodes labeled with strings, graphical solution representation
*   DESCRIPTION:  A company needs to transport 180 tonnes of chemical products
*                 stored in four depots to three recycling centers. The depots
*                 contain 190 tonnes in total. Each depot only delivers to
*                 certain centers, by road and/or by rail, at a given cost
*                 per tonne. Transports by rail need to have at least 10 tonnes
*                 and at most 50 tonnes for any single delivery.
*                 How should the company transport the 180 tonnes of chemicals
*                 to minimize the total cost of transport?
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 10.2 `Choosing the mode of transport'.
*                 Similar problems:
*                 Section 6.4 `Cane sugar production',
*                 Section 6.5 `Opencast mining'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Minimum cost flow"

* Set of nodes
Set NODES / SOURCE  , D1      , D2      , D3      , D4      ,
            road_C1 , road_C2 , road_C3 , rail_C1 , rail_C2 ,
            rail_C3 , C1      , C2      , C3      , SINK     / ;

Alias(NODES,NODES1) ;

* Total quantity to transport
Scalar MINQ / 180 / ;

* Arcs
Set A(NODES,NODES1)         / 'SOURCE'.'D1'  , 'SOURCE'.'D2'  ,  'SOURCE'.'D3' ,
                              'SOURCE'.'D4'  , 'D1'.'road_C1' ,  'D1'.'road_C2' ,
                              'D2'.'rail_C1' , 'D2'.'road_C1' ,  'D3'.'road_C2' ,
                              'D3'.'rail_C3' , 'D3'.'road_C3' ,  'D4'.'rail_C2' ,
                              'D4'.'road_C2' , 'D4'.'rail_C3' ,  'D4'.'road_C3' ,
                              'rail_C1'.'C1' , 'road_C1'.'C1' ,  'rail_C2'.'C2' ,
                              'road_C2'.'C2' , 'rail_C3'.'C3' ,  'road_C3'.'C3' ,
                              'C1'.'SINK'    , 'C2'.'SINK'    ,  'C3'.'SINK'  / ;

* Transport cost on arcs
Parameter COST[NODES,NODES1] ;
                              COST['D1','road_C1']     =     12 ;
                              COST['D1','road_C2']     =     11 ;
                              COST['D2','rail_C1']     =     12 ;
                              COST['D2','road_C1']     =     14 ;
                              COST['D3','road_C2']     =      9 ;
                              COST['D3','rail_C3']     =      4 ;
                              COST['D3','road_C3']     =      5 ;
                              COST['D4','rail_C2']     =     11 ;
                              COST['D4','road_C2']     =     14 ;
                              COST['D4','rail_C3']     =     10 ;
                              COST['D4','road_C3']     =     14 ;

* Minimum and maximum arc capacities
Parameter MINCAP[NODES,NODES1] ;
                                   MINCAP['D2','rail_C1'] = 10 ;
                                   MINCAP['D3','rail_C3'] = 10 ;
                                   MINCAP['D4','rail_C2'] = 10 ;
                                   MINCAP['D4','rail_C3'] = 10 ;

Parameter MAXCAP[NODES,NODES1] ;
                                   MAXCAP['SOURCE','D1']  =    50 ;
                                   MAXCAP['SOURCE','D2']  =    40 ;
                                   MAXCAP['SOURCE','D3']  =    35 ;
                                   MAXCAP['SOURCE','D4']  =    65 ;
                                   MAXCAP['D2','rail_C1'] =    50 ;
                                   MAXCAP['D3','rail_C3'] =    50 ;
                                   MAXCAP['D4','rail_C2'] =    50 ;
                                   MAXCAP['D4','rail_C3'] =    50 ;


Variable flow[NODES,NODES] ,
* Flow on arcs

         Total_Cost        ;

Equation
         Balance(NODES)    ,
         MinQuant          ,
         Def_Obj           ;

* Flow balance: inflow equals outflow
Balance(NODES)..

               Sum{NODES1$((A(NODES,NODES1)            ) and
               (ord(NODES) ne 1 ))      ,
                flow[NODES,NODES1] }

                                      =e=
               Sum{NODES1$((A(NODES1,NODES)           ) and
                           (ord(NODES) ne card(NODES)             ))      ,
                          flow[NODES1,NODES] } ;
* Minimum total quantity to transport
MinQuant..
   Sum{(NODES,NODES1)$((A(NODES,NODES1)) and (ord(NODES) eq 1)),
                                              flow[NODES,NODES1] } =g= MINQ ;

* Objective: total transport cost
Def_Obj..
      Total_Cost =e= Sum{(NODES,NODES1)$A(NODES,NODES1),
                                 COST[NODES,NODES1]*flow[NODES,NODES1] } ;

* Min and max flow capacities

flow.lo[NODES,NODES1] = 0 ;

flow.lo[NODES,NODES1]$(MINCAP[NODES,NODES1] gt 0 ) = MINCAP[NODES,NODES1] ;
flow.up[NODES,NODES1]$(MAXCAP[NODES,NODES1] gt 0 ) = MAXCAP[NODES,NODES1] ;

* XPress solution

*flow.fx['SOURCE','D1'] =  50 ;
*flow.fx['SOURCE','D2'] =  30 ;
*flow.fx['SOURCE','D3'] =  35 ;
*flow.fx['SOURCE','D4'] =  65 ;
*flow.fx['D1','road_C2']= 50 ;
*flow.fx['D2','rail_C1']= 30 ;
*flow.fx['D3','rail_C3']= 35 ;
*flow.fx['D4','rail_C2']= 15 ;
*flow.fx['D4','rail_C3']= 50 ;
*flow.fx['rail_C1','C1']= 30 ;
*flow.fx['rail_C2','C2']= 15 ;
*flow.fx['road_C2','C2']= 50 ;
*flow.fx['rail_C3','C3']= 85 ;
*flow.fx['C1','SINK'] =  30 ;
*flow.fx['C2','SINK'] =  65 ;
*flow.fx['C3','SINK'] =  85 ;


* Solve the problem
Model Minimum_cost_flow / all / ;

Solve Minimum_cost_flow using LP minimazing Total_Cost ;

Display Total_Cost.l ;
