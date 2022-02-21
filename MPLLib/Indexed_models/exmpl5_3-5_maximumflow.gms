* MPL Model Library MPL Model Library
* Maximum Flow,  Example 5.3-5,  H.P.Williams
*   {  Exmpl5.3-5_MaximumFlow.mpl  }
*   {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*   {  Chapter 5.3,  Example 5,  Maximum Flow,  Size: 8x16,  Page 85  }

* TITLE  MaximumFlow;

Set node / n0*n7 / ;

Alias(node,FromNode);
Alias(node,ToNode);

Set SourceNodes(node) / n0 , n1 / ;
Set SinkNodes(node)   / n5 , n6 , n7 / ;

Parameter FlowCapacity[FromNode,ToNode] ;
              FlowCapacity['n0','n2'] = 12 ;
              FlowCapacity['n1','n3'] = 20 ;
              FlowCapacity['n2','n3'] =  6 ;
              FlowCapacity['n2','n4'] =  3 ;
              FlowCapacity['n2','n5'] =  6 ;
              FlowCapacity['n3','n4'] =  7 ;
              FlowCapacity['n3','n7'] =  9 ;
              FlowCapacity['n4','n2'] =  2 ;
              FlowCapacity['n4','n5'] =  5 ;
              FlowCapacity['n4','n6'] =  8 ;
              FlowCapacity['n7','n6'] =  4 ;

Set Link(FromNode,ToNode) ;
    Link(FromNode,ToNode) = Yes$(FlowCapacity[FromNode,ToNode] gt 0) ;

Variables  Flow[FromNode,ToNode] ,
*-> x
           Sources[node]         ,
           Sinks[node]           ,
           TotalFlow             ;

Equation FlowBalance(node) ,
         Def_obj           ;



FlowBalance(node)..
    Sum{FromNode$Link(FromNode,Node),Flow[FromNode,node]} +
    Sources[node]$SourceNodes(node) =e=
    Sum{ToNode$Link(Node,ToNode)    ,Flow[node,ToNode]  } +
    Sinks[node]$SinkNodes(node)        ;

Def_obj..
    TotalFlow =e= Sum{node$SourceNodes(node), Sources[node]};

Flow.lo[FromNode,ToNode] = 0.0;
Flow.up[FromNode,ToNode] = FlowCapacity[FromNode,ToNode];

* MPL  model solution
*Flow.fx['n0','n2']   =      9.0000 ;
*Flow.fx['n1','n3']   =     16.0000 ;
*Flow.fx['n2','n3']   =      0.0000 ;
*Flow.fx['n2','n4']   =      3.0000 ;
*Flow.fx['n2','n5']   =      6.0000 ;
*Flow.fx['n3','n4']   =      7.0000 ;
*Flow.fx['n3','n7']   =      9.0000 ;
*Flow.fx['n4','n2']   =      0.0000 ;
*Flow.fx['n4','n5']   =      2.0000 ;
*Flow.fx['n4','n6']   =      8.0000 ;
*Flow.fx['n7','n6']   =      0.0000 ;

*Sources.fx['n0']   =      9.0000 ;
*Sources.fx['n1']   =     16.0000 ;

*Sinks.fx['n5']   =      8.0000 ;
*Sinks.fx['n6']   =      8.0000 ;
*Sinks.fx['n7']   =      9.0000 ;


Model m5_3_5_MaximumFlow / all / ;

Solve m5_3_5_MaximumFlow using lp maximazing TotalFlow ;

Display TotalFlow.l ;