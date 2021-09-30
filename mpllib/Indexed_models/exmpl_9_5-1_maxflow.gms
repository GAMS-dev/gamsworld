*MPL Model Library MPL Model Library
*Maximum Flow, Example 9.5-1, Hillier and Lieberman
*   {  Exmpl_9.5-1_MaxFlow.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 9.5,  Example 1, Maximum Flow,   Size: 7x14,  Page 420 }

*TITLE   MaximumFlow;

Set Node / O , A , B , C , D , E , T / ;

Alias(Node,Node1);

Set FromNode(Node) ;
Set   ToNode(Node) ;

Set SourceNode(Node) / O / ;
Set DestNode(Node)   / T / ;

Parameter Capacity[Node,Node1] / O.A   5 ,
                                 O.B   7 ,
                                 O.C   4 ,
                                 A.B   1 ,
                                 A.D   3 ,
                                 B.C   2 ,
                                 B.D   4 ,
                                 B.E   5 ,
                                 C.E   4 ,
                                 D.T   9 ,
                                 E.D   1 ,
                                 E.T   6  / ;

Loop(Node1, FromNode(Node)$(Capacity[Node,Node1]>0)=Yes ; );
Loop(Node1, ToNode(Node)$(Capacity[Node1,Node]>0)  =Yes ; );

Variables
    Flow[Node,Node1]  ,
*-> x WHERE (Capacity > 0);
    Entrance[Node]    ,
    Destination[Node] ,
    TotalFlow          ;

Equation FlowBalance(Node) , Def_obj ;

FlowBalance(Node)..
 Entrance[Node]$SourceNode(Node)  + SUM{Node1$FromNode(Node1),Flow[Node1,Node]}           =e=
 Destination[Node]$DestNode(Node) + SUM{Node1$ToNode(Node1),Flow[Node,Node1]};

Def_obj.. TotalFlow =e= SUM{Node$SourceNode(Node),Entrance[Node]};

Flow.up[Node,Node1] = Capacity[Node,Node1];
Flow.lo[Node,Node1] = 0.0;
Flow.l[Node,Node1] = Capacity[Node,Node1];

Model m9_5_1_MaxFlow / all / ;

Solve m9_5_1_MaxFlow using nlp maximazing TotalFlow ;

Display TotalFlow.l ;