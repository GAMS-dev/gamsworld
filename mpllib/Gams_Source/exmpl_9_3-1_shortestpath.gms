*MPL Model Library MPL Model Library
*Shortest Path, Example 9.3-1, Hillier and Lieberman
*   {  Exmpl_9.3-1_ShortestPath.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 9.3,  Example 1, Shortest path,  Size: 7x12,  Page 411  }

* TITLE ShortestPath;

Set Node / O , A , B , C , D , E , T / ;

Alias(Node,Node1);


Parameter Distance[Node,Node1] / O.A   2,
                                 O.B   5,
                                 O.C   4,
                                 A.B   2,
                                 A.D   7,
                                 B.C   1,
                                 B.D   4,
                                 B.E   3,
                                 C.E   4,
                                 D.E   1,
                                 D.T   5,
                                 E.T   7  / ;

Set FromNode(Node) ;
Set   ToNode(Node) ;
Set Link(Node,Node1);
Loop((Node,Node1),Link(Node,Node1)$(Distance[Node,Node1]>0)=Yes ;);

Loop(Node1, FromNode(Node)$(Distance[Node,Node1]>0)=Yes ; );
Loop(Node1, ToNode(Node)$(Distance[Node1,Node]>0)  =Yes ; );

Variable Path[Node,Node1] , TotalDistance ;
* Path WHERE (Distance > 0);

Equation FlowBalance[Node] , Def_obj ;

FlowBalance[Node]..
      1$(ord(Node)=1) +SUM{Node1$Link(Node1,Node),Path[Node1,Node]}       =e=
      1$(ord(Node)=card(Node)) +SUM{Node1$Link(Node,Node1),Path[Node,Node1]}    ;

Def_obj..
      TotalDistance =e= SUM{(Node,Node1)$Link(Node,Node1),
                             Distance[Node,Node1] *
                             Path[Node,Node1]                                 };

Path.lo[Node,Node1] = 0 ;
Model m9_3_1_ShortestPath / all / ;

Solve m9_3_1_ShortestPath using nlp minimazing TotalDistance ;

Display TotalDistance.l ;
