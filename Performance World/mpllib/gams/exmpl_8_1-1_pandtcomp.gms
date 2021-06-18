*MPL Model Library MPL Model Library
*P&T Company, Example 8.1-1, Hillier and Lieberman
*   {  Exmpl_8.1-1_P&TComp.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 8.1,  Example 1, Transportation, Size 7x12, Page 351  }

* TITLE P&TCompany;

Set cannery   / C1 , C2 , C3      / ;
Set warehouse / W1 , W2 , W3 , W4 / ;

Table ShipCost[cannery, warehouse]
                                       W1  W2  W3  W4
                                  C1  464 513 654 867
                                  C2  352 416 690 791
                                  C3  995 682 388 685  ;

Parameter Supply[cannery]   / C1  75 , C2 125 , C3 100          / ;
Parameter Demand[warehouse] / W1  80 , W2  65 , W3  70 , W4  85 / ;

Variable  Ship[cannery,warehouse] , TotalCost ;

Equation Output(cannery) , Allocation(warehouse) ,  Def_obj ;

Output(cannery)..
          SUM{warehouse, Ship[cannery,warehouse]} =e= Supply[cannery];

Allocation(warehouse)..
          SUM{cannery, Ship[cannery,warehouse]} =e= Demand[warehouse];

Def_obj..
          TotalCost =e= SUM{(cannery, warehouse),ShipCost[cannery,warehouse]*
                                                 Ship[cannery,warehouse]     } ;
Ship.lo[cannery,warehouse] = 0 ;

Model m8_1_1_P_and_TComp / all / ;

Solve m8_1_1_P_and_TComp using nlp minimazing TotalCost ;

Display TotalCost.l ;

