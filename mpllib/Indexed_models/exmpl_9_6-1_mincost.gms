*MPL Model Library MPL Model Library
*Minimum Cost, Example 9.6-1, Hillier and Lieberman
*   {  Exmpl_9.6-1_MinCost.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {   Chapter 9.6,  Example 1, Minimum cost flow,   Size: 7x7,  Page 429  }

*TITLE MinimumCost;

Set Node / A , B , C , D , E / ;
Alias(Node,Node1) ;

Set FromNode(Node) ;
Set ToNode(Node)   ;

Parameter
    UnitCost[Node,Node]  / A.B  2 ,
                           A.C  4 ,
                           A.D  9 ,
                           B.C  3 ,
                           C.E  1 ,
                           D.E  3 ,
                           E.D  2  / ;
Set Link[Node,Node1];
    Link[Node,Node1] = Yes$(UnitCost[Node,Node1]>0) ;

Loop(Node1, FromNode(Node)$(UnitCost[Node,Node1]>0)=Yes ; );
Loop(Node1, ToNode(Node)$(UnitCost[Node1,Node]>0)  =Yes ; );



Parameter Capacity[Node,Node1] ; Capacity['A','B'] = 10 ;
                                 Capacity['C','E'] = 80 ;

Parameter SupplyDemand[Node] / A 50 , B 40 , C 0 , D -30 , E  -60 /;


Variables  Ship[Node,Node1] , TotalCost ;
*WHERE (UnitCost > 0 and Link[Node , Node1] =yes)

Equation FlowBalance(Node) , Def_obj ;

FlowBalance[Node]..
     SUM{Node1$(Link[Node1,Node]),Ship[Node1,Node]} + SupplyDemand[Node]  =e=
     SUM{Node1$(Link[Node,Node1]),Ship[Node,Node1]} ;

Def_obj..
     TotalCost =e= SUM{(Node,Node1)$(Link[Node,Node1]), UnitCost[Node,Node1]*
                                                        Ship[Node,Node1]     } ;

Ship.lo[Node,Node1]$(    Link[Node,Node1]) = 0.0 ;
Ship.up[Node,Node1]$(Capacity[Node,Node1]>0) = Capacity[Node,Node1] ;
Ship.fx[Node,Node1]$(not Link[Node,Node1]) = 0.0 ;

Model m9_6_1_MinCost / all / ;

Solve m9_6_1_MinCost using nlp minimazing TotalCost ;

Display TotalCost.l ;