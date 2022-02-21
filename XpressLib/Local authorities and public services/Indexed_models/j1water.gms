*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file j1water.mos
*   ````````````````
*   Water conveyance/water supply management
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "J-1 Water supply"

Set NODES / n1*n12 / ;
* Number of source and sink nodes
Set SOURCE(NODES) / n11 / ;
Set SINK(NODES)   / n12 / ;

Alias(NODES,NODES1) ;
* Set of arcs
Set ARCS(NODES,NODES1) ;
            ARCS('n1','n3')  = Yes ;
            ARCS('n1','n5')  = Yes ;
            ARCS('n1','n6')  = Yes ;
            ARCS('n2','n5')  = Yes ;
            ARCS('n2','n6')  = Yes ;
            ARCS('n3','n4')  = Yes ;
            ARCS('n3','n5')  = Yes ;
            ARCS('n4','n8')  = Yes ;
            ARCS('n4','n9')  = Yes ;
            ARCS('n5','n8')  = Yes ;
            ARCS('n5','n9')  = Yes ;
            ARCS('n5','n10') = Yes ;
            ARCS('n6','n7')  = Yes ;
            ARCS('n7','n9')  = Yes ;
            ARCS('n7','n10') = Yes ;
            ARCS('n8','n12') = Yes ;
            ARCS('n9','n12') = Yes ;
            ARCS('n10','n12')= Yes ;
            ARCS('n11','n1') = Yes ;
            ARCS('n11','n2') = Yes ;


Parameter PIPE(NODES,NODES1) ;
* Definition of arcs (=> pipes)

* Capacity of arcs
Parameter CAP(NODES,NODES1) ;  CAP(NODES,NODES1) = 0 ;
            CAP('n1','n3')  = 20 ;
            CAP('n1','n5')  = 15 ;
            CAP('n1','n6')  = 12 ;
            CAP('n2','n5')  =  6 ;
            CAP('n2','n6')  = 22 ;
            CAP('n3','n4')  = 15 ;
            CAP('n3','n5')  = 10 ;
            CAP('n4','n8')  =  7 ;
            CAP('n4','n9')  = 10 ;
            CAP('n5','n8')  = 10 ;
            CAP('n5','n9')  = 15 ;
            CAP('n5','n10') = 15 ;
            CAP('n6','n7')  = 22 ;
            CAP('n7','n9')  = 10 ;
            CAP('n7','n10') = 10 ;
            CAP('n8','n12') = 18 ;
            CAP('n9','n12') = 15 ;
            CAP('n10','n12')= 20 ;
            CAP('n11','n1') = 35 ;
            CAP('n11','n2') = 25 ;


Variable
* Flow on arcs
         flow[NODES,NODES1] ,
* Objective: total flow

         TotalFlow          ;

Equation Eq_1(NODES) ,
         Def_obj     ;

* Flow balances in nodes
Eq_1(NODES)$(( not SOURCE(NODES)) and ( not SINK(NODES)))..
  Sum{NODES1$ARCS(NODES,NODES1), flow[NODES,NODES1] } =e=
  Sum{NODES1$ARCS(NODES1,NODES), flow[NODES1,NODES] }     ;

* Capacity limits
flow.up[NODES,NODES1]$ARCS(NODES,NODES1) = CAP[NODES,NODES1] ;
flow.lo[NODES,NODES1]$ARCS(NODES,NODES1) = 0                 ;


* Objective: total flow
Def_obj..
 TotalFlow =e= Sum{(NODES,NODES1)$(ARCS(NODES,NODES1) and SINK(NODES1)),
                                 flow[NODES,NODES1] } ;

* Solve the problem
Model J_1_Water_supply / all / ;
* Solve the MIP-problem
Solve J_1_Water_supply using LP maximazing TotalFlow ;

Display TotalFlow.l ;




