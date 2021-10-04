*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file maxflow.mos
*   ````````````````
*   TYPE:         Maximum flow with unitary capacities
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, encoding of arcs, `range', `exists', `create',
*                 algorithm for printing paths, `forall-do', `while-do',
*                 `round', graphical representation of results
*   DESCRIPTION:  We wish to test the reliability of a telecommunications
*                 network that consists of eleven sites connected by
*                 bidirectional lines for data transmission. The specifications
*                 require that the two sites (nodes) 10 and 11 of the network
*                 remain able to communicate even if any three other sites of
*                 the network are destroyed.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 12.1 `Network reliability'
*                 Similar problem:
*                 Section 15.1 `Water conveyance/water supply management'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Network reliability"

Set NODES / n1*n11 / ;
Set SOURCE(NODES)   / n10 / ;
Set SINK(NODES)     / n11 / ;
* Source and sink nodes
Alias(NODES,NODES1) ;

Set ARC(NODES,NODES1) ;
                       ARC['n1','n2']  = Yes ; ARC['n1','n3']  = Yes ;
                       ARC['n1','n11'] = Yes ; ARC['n2','n3']  = Yes ;
                       ARC['n2','n8']  = Yes ; ARC['n2','n9']  = Yes ;
                       ARC['n3','n4']  = Yes ; ARC['n3','n9']  = Yes ;
                       ARC['n3','n10'] = Yes ; ARC['n3','n11'] = Yes ;
                       ARC['n4','n5']  = Yes ; ARC['n4','n6']  = Yes ;
                       ARC['n4','n11'] = Yes ; ARC['n5','n9']  = Yes ;
                       ARC['n5','n11'] = Yes ; ARC['n6','n7']  = Yes ;
                       ARC['n6','n9']  = Yes ; ARC['n6','n10'] = Yes ;
                       ARC['n7','n8']  = Yes ; ARC['n7','n10'] = Yes ;
                       ARC['n8','n10'] = Yes ; ARC['n9','n10'] = Yes ;

Loop{(NODES,NODES1)$(ord(NODES) lt ord(NODES1)),
ARC(NODES1,NODES) =  ARC(NODES,NODES1) ;
    } ;
Binary Variable flow[NODES,NODES]
* 1 if flow on arc, 0 otherwise
Variable Paths ;

Equation Balance(NODES) ,
         Capacity(NODES),
         NoReturn       ,
         Def_Obj        ;

Balance(NODES)$((not SOURCE(NODES)) and (not SINK(NODES)))..
    Sum{NODES1$ARC(NODES1,NODES), flow[NODES1,NODES] } =e=
    Sum{NODES1$ARC(NODES,NODES1), flow[NODES,NODES1] } ;

Capacity(NODES)$((not SOURCE(NODES)) and (not SINK(NODES)))..
    Sum{NODES1$(ARC(NODES,NODES1)), flow[NODES,NODES1] }  =l= 1 ;

* No return to SOURCE node
NoReturn..
    Sum{(NODES,NODES1)$(ARC(NODES,NODES1) and SOURCE(NODES1)),
                                                  flow[NODES,NODES1] } =e= 0 ;

* Objective: number of disjunctive paths
Def_Obj..
    Paths =e= Sum{(NODES,NODES1)$(ARC(NODES1,NODES) and SOURCE(NODES1)),
                                                        flow[NODES1,NODES] } ;

* Solve the problem
Model Network_reliability / all / ;

Solve Network_reliability using MIP maximazing Paths ;

Display Paths.l ;


