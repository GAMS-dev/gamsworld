*MPL Model Library MPL Model Library
*SunCoOil, Example 3, Winston
*    {  Exmpl8.3_3SunCoOil.mpl  }
*    {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*    {  Chapter 8.3,  Example 3, Maximum Flow,  Size: 5x7,  Page 420 }

* TITLE  SunCoOil;

Set node / n0 , n1 , n2 , n3 , n4 / ;

Alias(node,node2) ;

Parameter Capacity[node,node2] ; Capacity[node,node2] = 0 ;
          Capacity['n0','n1'] = 2 ;
          Capacity['n0','n2'] = 3 ;
          Capacity['n1','n2'] = 3 ;
          Capacity['n1','n3'] = 4 ;
          Capacity['n3','n4'] = 1 ;
          Capacity['n2','n4'] = 2 ;
          Capacity['n4','n0'] = 9 ;

Set links(node,node2) ;
    links(node,node2) = Yes$(Capacity[node,node2]>0) ;


Variable  Flow[node,node2] , TotalFlow ;

Equation FlowBalance(node) , Def_obj ;

FlowBalance(node)..
 Sum{node2$links(node,node2),Flow[node,node2]} =e=
                                Sum{node2$links(node2,node),Flow[node2,node]} ;
Def_obj..
 TotalFlow =e= Sum{(node,node2)$((ord(node2) eq card(node2))and
                                 (links(node,node2))           ),
                                                           Flow[node,node2] } ;

Flow.lo[node,node2] = 0 ;
Flow.up[node,node2] = Capacity[node,node2] ;

* MPL model solution
* Flow.fx['n0','n1']  =       1.0000  ;
* Flow.fx['n0','n2']  =       2.0000  ;
* Flow.fx['n1','n2']  =       0.0000  ;
* Flow.fx['n1','n3']  =       1.0000  ;
* Flow.fx['n2','n4']  =       2.0000  ;
* Flow.fx['n3','n4']  =       1.0000  ;
* Flow.fx['n4','n0']  =       3.0000  ;


Model m8_3_3SunCoOil / all / ;

Solve m8_3_3SunCoOil using lp maximazing TotalFlow ;

Display TotalFlow.l ;