* MPL Model Library MPL Model Library
* Minimum Cost Flow,  Example 5.3-3,  H.P.Williams
*   {  Exmpl5.3-3_MinCostFlow.mpl  }
*   {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*   {  Chapter 5.3,  Example 3,  Minimum Cost Flow,  Size: 8x11,  Page 81  }

* TITLE MinimumCostFlow;

Set node / n0*n7 / ;

Alias(node,FromNode) ;
Alias(node,ToNode)   ;
Set Arcs[FromNode,ToNode] / n0.n2 , n1.n3 , n2.n3 , n2.n4 , n2.n5 ,
                            n3.n4 , n3.n7 , n4.n2 , n4.n5 , n4.n6 , n7.n6  /;

Parameter FlowCost[FromNode,ToNode] ;
    FlowCost['n0','n2'] = 5 ;
    FlowCost['n1','n3'] = 4 ;
    FlowCost['n2','n3'] = 2 ;
    FlowCost['n2','n4'] = 6 ;
    FlowCost['n2','n5'] = 5 ;
    FlowCost['n3','n4'] = 1 ;
    FlowCost['n3','n7'] = 2 ;
    FlowCost['n4','n2'] = 4 ;
    FlowCost['n4','n5'] = 6 ;
    FlowCost['n4','n6'] = 3 ;
    FlowCost['n7','n6'] = 4 ;

Set Link(FromNode,ToNode) ;
Link(FromNode,ToNode) = Yes$(FlowCost(FromNode,ToNode) gt 0);

Parameter Availability[node] ;
           Availability['n0'] = 10 ;
           Availability['n1'] = 15 ;

Parameter Requirement[node]  ;
           Requirement['n5'] =  9 ;
           Requirement['n6'] = 10 ;
           Requirement['n7'] =  6 ;

Variables
    Flow[FromNode,ToNode]  ,
*-> x
*   WHERE (FlowCost);
    TotalCost              ;

Equation FlowBalance(node) ,
         Def_obj           ;

FlowBalance(node)..
    Sum{FromNode$Link(FromNode,Node),Flow[FromNode,Node]}+Availability[node]=e=
    Sum{ToNode$Link(Node,ToNode),    Flow[Node,ToNode]  }+Requirement[node]    ;

Def_obj..
    TotalCost =e= Sum{(FromNode,ToNode), FlowCost[FromNode,ToNode] *
                                         Flow[FromNode,ToNode]       } ;

Flow.lo[FromNode,ToNode] = 0 ;
* MPL model solution
* Flow.fx['n0','n2'] =   10.0000 ;
* Flow.fx['n1','n3'] =   15.0000 ;
* Flow.fx['n2','n3'] =    1.0000 ;
* Flow.fx['n2','n4'] =    0.0000 ;
* Flow.fx['n2','n5'] =    9.0000 ;
* Flow.fx['n3','n4'] =   10.0000 ;
* Flow.fx['n3','n7'] =    6.0000 ;
* Flow.fx['n4','n2'] =    0.0000 ;
* Flow.fx['n4','n5'] =    0.0000 ;
* Flow.fx['n4','n6'] =   10.0000 ;
* Flow.fx['n7','n6'] =    0.0000 ;


Model m5_3_3_MinCostFlow / all / ;

Solve m5_3_3_MinCostFlow using lp minimazing TotalCost ;

Display TotalCost.l ;