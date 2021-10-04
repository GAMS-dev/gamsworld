*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file g2dimens.mos
*   `````````````````
*   Diminsioning of a mobile phone network
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Apr. 2002
********************************************************

* model "G-2 Mobile network dimensioning"

Set NODES / n1*n5 / ;
* Set of nodes (simple hubs + MTSO)
Set HUBS(NODES) / n1*n4 / ;
Set MTSO(NODES) / n5 / ;
* Node number of MTSO
Set CELLS / c1*c10 / ;
* Cells to connect

Scalar CAP / 48.0 / ;
* Capacity of ring segments
Table COST[CELLS,NODES]
                            n1  n2  n3  n4  n5
                        c1  15   8   7  11  10
                        c2   9  11   8   5  14
                        c3  12   6   7  15  15
                        c4  17   5   9  18  24
                        c5   8  22  21  19   6
                        c6   7  25  15   9  17
                        c7  19  25  21  20  22
                        c8  20   9  15  18  25
                        c9  21  22  14  16  20
                       c10  25  24  13   4  11   ;
* Connection cost

Parameter TRAF[CELLS] / c1 22 , c2 12 , c3 20 , c4 12 , c5 15 ,
                        c6 25 , c7 15 , c8 14 , c9  8 , c10 22 / ;
* Traffic from every cell
Parameter CNCT[CELLS] / c1  2 , c2  2 , c3  2 , c4  2 , c5  3 ,
                        c6  1 , c7  3 , c8  2 , c9  2 , c10  2 / ;
* Connections of a cell to the ring

Binary Variable connect[CELLS,NODES] ;
* 1 if cell connected to node,
* 0 otherwise

Variable TotCost ;

Equation Eq_1(CELLS) ,
         Eq_2        ,
         Def_Obj     ;

* Number of connections per cell
Eq_1(CELLS)..
 Sum{NODES, connect[CELLS,NODES] } =e= CNCT[CELLS] ;

* Ring capacity
Eq_2..
 Sum{(CELLS,NODES)$( HUBS(NODES)), (TRAF[CELLS]/CNCT[CELLS])*
                                     connect[CELLS,NODES]       } =l= 2*CAP ;
* Objective: total cost
Def_Obj..
 TotCost =e= Sum{(CELLS,NODES), COST[CELLS,NODES]*connect[CELLS,NODES] } ;

* XPress solution  solver MOSEK in the GAMS give the same
* Another solvers give another solutions.
*connect.fx['c1','n3']  = 1 ;
*connect.fx['c1','n5']  = 1 ;
*connect.fx['c2','n3']  = 1 ;
*connect.fx['c2','n4']  = 1 ;
*connect.fx['c3','n2']  = 1 ;
*connect.fx['c3','n5']  = 1 ;
*connect.fx['c4','n2']  = 1 ;
*connect.fx['c4','n3']  = 1 ;
*connect.fx['c5','n1']  = 1 ;
*connect.fx['c5','n4']  = 1 ;
*connect.fx['c5','n5']  = 1 ;
*connect.fx['c6','n5']  = 1 ;
*connect.fx['c7','n1']  = 1 ;
*connect.fx['c7','n4']  = 1 ;
*connect.fx['c7','n5']  = 1 ;
*connect.fx['c8','n2']  = 1 ;
*connect.fx['c8','n3']  = 1 ;
*connect.fx['c9','n3']  = 1 ;
*connect.fx['c9','n5']  = 1 ;
*connect.fx['c10','n4'] = 1 ;
*connect.fx['c10','n5'] = 1 ;

* Solve the problem
Model G_2_Mobile_network_dimensioning / All / ;

Solve G_2_Mobile_network_dimensioning using MIP minimazing TotCost ;

Display TotCost.l ;