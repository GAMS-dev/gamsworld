*MPL Model Library MPL Model Library
*Job Shop Company, Example 8.3-1, Hillier and Lieberman
*   {  Exmpl_8.3-1_JobShopCo.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 8.3,  Example 1, Assignment/Transportation, Size 8x16 , Page 382 }

*TITLE JobShopCo;

Set machine / m1 , m2 , m3 , Dummy / ;
Set location / L1*L4 / ;

Scalar M / 999 / ;

Table DistCost[machine, location]
                             L1    L2    L3       L4
                         m1  13    16    12       11
                         m2  15   999    13       20
                         m3   5     7    10        6
                      Dummy   0     0     0        0 ;

Parameter Supply[machine]  / m1 1 , m2 1 , m3 1 , Dummy 1 / ;
Parameter Demand[location] / L1 1 , L2 1 , L3 1 , L4    1 / ;

Variable  Assign[machine,location] , TotalCost ;

Equation  Source(machine) , Destination(location) , Def_obj ;

Source(machine)..
                   SUM{location,Assign[machine,location]} =e= Supply[machine]  ;
Destination(location)..
                   SUM{machine,Assign[machine,location]}  =e= Demand[location] ;
Def_obj..
     TotalCost =e= SUM{(machine,location),DistCost[machine,location] *
                                          Assign[machine,location]    } ;

Assign.lo[machine,location] = 0 ;

Model m8_3_1_JobShopCo / all / ;

Solve m8_3_1_JobShopCo using nlp minimazing TotalCost ;

Display TotalCost.l ;