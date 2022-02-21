*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file g1rely.mos
*   ```````````````
*   Reliability of a telecommunications network
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "G-1 Network reliability"

Set NODES / n1*n11 / ;
* Set of nodes
Set SOURCE(NODES) / n10 / ;
Set SINK(NODES)   / n11 / ;
* Source and sink nodes

Alias(NODES,NODES1) ;
* 1 if arc defined, 0 otherwise

Set Add1(NODES,NODES1) ;
Set Add2(NODES,NODES1) ;

Set ARC(NODES,NODES1) ;
ARC('n1', 'n2') = Yes ;
ARC('n1', 'n3') = Yes ;
ARC('n1','n11') = Yes ;
ARC('n2', 'n3') = Yes ;
ARC('n2', 'n8') = Yes ;
ARC('n2', 'n9') = Yes ;
ARC('n3', 'n4') = Yes ;
ARC('n3', 'n9') = Yes ;
ARC('n3','n10') = Yes ;
ARC('n3','n11') = Yes ;
ARC('n4', 'n5') = Yes ;
ARC('n4', 'n6') = Yes ;
ARC('n4','n11') = Yes ;
ARC('n5', 'n9') = Yes ;
ARC('n5','n11') = Yes ;
ARC('n6', 'n7') = Yes ;
ARC('n6', 'n9') = Yes ;
ARC('n6','n10') = Yes ;
ARC('n7', 'n8') = Yes ;
ARC('n7','n10') = Yes ;
ARC('n8','n10') = Yes ;
ARC('n9','n10') = Yes ;

Add1(NODES1,NODES) = Yes$(ARC(NODES,NODES1) ) ;
Add2(NODES1,NODES) = Yes$(ARC(NODES1,NODES) ) ;

ARC(NODES,NODES1) = Add1(NODES,NODES1) +  Add2(NODES,NODES1)   ;

* forall(n,m in NODES | exists(ARC(n,m)) and n<m ) ARC(m,n):= ARC(n,m)


Binary Variable  flow[NODES,NODES1] ;
* 1 if flow on arc, 0 otherwise
Variable Paths ;

Equation Eq_1(NODES) ,
         Eq_2(NODES) ,
         Eq_3(NODES) ,
         Def_obj      ;

* Flow conservation and capacities

Eq_1(NODES)$( (not SOURCE(NODES)) and (not SINK(NODES)) )..
  Sum{NODES1$ARC(NODES1,NODES), flow[NODES1,NODES] } =e=
  Sum{NODES1$ARC(NODES,NODES1), flow[NODES,NODES1] } ;

Eq_2(NODES)$( (not SOURCE(NODES))and(not SINK(NODES)) )..
  Sum{NODES1$ARC(NODES,NODES1), flow[NODES,NODES1] } =l= 1 ;

* No return to SOURCE node
Eq_3(NODES)$SOURCE(NODES)..
 Sum{NODES1$ARC(NODES,NODES1), flow[NODES1,NODES] } =e= 0 ;

* Objective: number of disjunctive paths
Def_obj..
 Paths =e= Sum{(NODES,NODES1)$(SOURCE(NODES) and ARC(NODES,NODES1) ),
                               flow(NODES,NODES1) } ;

* Solve the problem
Model G_1_Network_reliability / All / ;

Solve G_1_Network_reliability using MIP maximazing Paths ;

Display Paths.l ;

