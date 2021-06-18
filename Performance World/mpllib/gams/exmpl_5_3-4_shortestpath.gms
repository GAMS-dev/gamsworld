* MPL Model Library MPL Model Library
* Shortest Path,  Example 5.3-4,  H.P.Williams
*   {  Exmpl5.3-4_ShortestPath.mpl  }
*   {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*   {  Chapter 5.3,  Example 4,  Shortest Path,  Size: 9x16,  Page 84  }

* TITLE ShortestPath;

Set node / n0*n8 / ;
Alias(node,FromNode) ;
Alias(node,ToNode)   ;

Parameter PathDist[FromNode,ToNode] ;
           PathDist['n0','n1'] = 1 ;
           PathDist['n0','n3'] = 1 ;
           PathDist['n1','n2'] = 1 ;
           PathDist['n1','n3'] = 2 ;
           PathDist['n2','n3'] = 1 ;
           PathDist['n2','n4'] = 1 ;
           PathDist['n2','n5'] = 3 ;
           PathDist['n3','n4'] = 2 ;
           PathDist['n3','n6'] = 4 ;
           PathDist['n4','n5'] = 3 ;
           PathDist['n4','n6'] = 2 ;
           PathDist['n4','n7'] = 4 ;
           PathDist['n5','n7'] = 1 ;
           PathDist['n6','n7'] = 2 ;
           PathDist['n6','n8'] = 1 ;
           PathDist['n7','n8'] = 1 ;
Set Link(FromNode,ToNode) ;
Link(FromNode,ToNode) = Yes$(PathDist[FromNode,ToNode] gt 0);

Parameter StartPath[node] ; StartPath['n0'] = 1 ;

Parameter EndPath[node]   ; EndPath['n8']   = 1 ;

Variables Path[FromNode,ToNode] ,
*-> x
*   WHERE (PathDist);
          TotalDistance         ;

Equation FlowBalance(node) ,
         Def_obj           ;

FlowBalance(node)..
    Sum{FromNode$Link(FromNode,Node),Path[FromNode,Node]} +StartPath[node] =e=
    Sum{ToNode$Link(Node,ToNode),  Path[Node,Tonode]  } +EndPath[node]         ;

Def_obj..
    TotalDistance =e= Sum{(FromNode, ToNode),PathDist[FromNode,ToNode]*
                                             Path[FromNode,ToNode]     } ;

Path.lo[FromNode,ToNode] = 0 ;
* MPL  model solution
*Path.fx['n0','n1'] =  0.0000 ;
*Path.fx['n0','n3'] =  1.0000 ;
*Path.fx['n1','n2'] =  0.0000 ;
*Path.fx['n1','n3'] =  0.0000 ;
*Path.fx['n2','n3'] =  0.0000 ;
*Path.fx['n2','n4'] =  0.0000 ;
*Path.fx['n2','n5'] =  0.0000 ;
*Path.fx['n3','n4'] =  0.0000 ;
*Path.fx['n3','n6'] =  1.0000 ;
*Path.fx['n4','n5'] =  0.0000 ;
*Path.fx['n4','n6'] =  0.0000 ;
*Path.fx['n4','n7'] =  0.0000 ;
*Path.fx['n5','n7'] =  0.0000 ;
*Path.fx['n6','n7'] =  0.0000 ;
*Path.fx['n6','n8'] =  1.0000 ;
*Path.fx['n7','n8'] =  0.0000 ;


Model m5_3_3_MinCostFlow / all / ;

Solve m5_3_3_MinCostFlow using lp minimazing TotalDistance ;

Display TotalDistance.l ;