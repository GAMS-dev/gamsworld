*MPL Model Library MPL Model Library
*PowerCo, Example 1, Winston
*    {  Exmpl8.2_1PowerCo.mpl  }
*    {  Winston, Operations Research, Applications and Algorithms, 3rd ed.  }
*    {  Chapter 4.2,  Example 1, Shortest Path,  Size: 6x7,  Page 414 }

* TITLE PowerCo;

Set node / n1*n6 / ;

Alias (node,node2) ;
Alias (node,node3) ;

PArameter DistApart[node,node2]; DistApart[node,node2] = 0 ;

         DistApart['n1','n2'] = 4 ;
         DistApart['n1','n3'] = 3 ;
         DistApart['n2','n4'] = 3 ;
         DistApart['n2','n5'] = 2 ;
         DistApart['n3','n5'] = 3 ;
         DistApart['n4','n6'] = 2 ;
         DistApart['n5','n6'] = 2 ;

Set Link(node,node2) ;
         Link(node,node2)$(DistApart[node,node2] gt 0) = Yes ;

Scalar NetFlow / 1 / ;

Variable Route[node,node2] ,
* WHERE (DistApart > 0);
         TotalDistance     ;

Equation StartFlow(node)   ,
         FlowBalance(node) ,
         EndFlow(node)     ,
         Def_obj            ;

StartFlow(node)$(ord(node) eq 1)..
           Sum{node2$Link(node,node2), Route[node,node2]} =e= NetFlow;

FlowBalance(node)$((ord(node) ne 1) and (ord(node) ne card(node)) )..
           Sum{node2$Link(node,node2), Route[node,node2]} =e=
           Sum{node2$Link(node2,node), Route[node2,node] } ;

EndFlow(node)$(ord(node) eq card(node))..
 SUM(node2$Link(node2,node), Route[node2,node]) =e=  NetFlow;

Def_obj.. TotalDistance =e= Sum{(node,node2), Route[node,node2] *
                                              DistApart[node,node2] };

Route.lo[node,node2] = 0 ;

* MLP model solution
* Route.lo['n1','n2'] = 0 ;
* Route.lo['n1','n3'] = 1 ;
* Route.lo['n2','n4'] = 0 ;
* Route.lo['n2','n5'] = 0 ;
* Route.lo['n3','n5'] = 1 ;
* Route.lo['n4','n6'] = 0 ;
* Route.lo['n5','n6'] = 1 ;



Model m8_2_1PowerCo / all / ;

Solve m8_2_1PowerCo using lp minimazing TotalDistance ;

Display TotalDistance.l ;