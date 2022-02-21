*MPL Model Library MPL Model Library
*Better Products Company, Example 8.3-2a, Hillier and Lieberman
*   {  Exmpl_8.3-2a_BetterProdCo.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 8.3,  Example 2a, Transportation, Size 8x15 , Page 386  }

*TITLE BetterProdCo_Option1;

Set plant   / Plant1*Plant3 / ;
Set product / Product1*Product5 / ;

Scalar M / 999 / ;

Table DistCost[plant, product]
                 Product1 Product2 Product3 Product4 Product5
         Plant1        41       27       28       24        0
         Plant2        40       29      999       23        0
         Plant3        37       30       27       21        0  ;

Parameter Supply[plant]   / Plant1 75 ,
                            Plant2 75 ,
                            Plant3 45  / ;

Parameter Demand[product] / Product1 20 ,
                            Product2 30 ,
                            Product3 30 ,
                            Product4 40 ,
                            Product5 75 / ;

Variable Assign[plant,product] , TotalCost ;

Equation Source(plant) , Destination(product) , Def_obj ;

Source(plant)..        SUM{product,Assign[plant,product]} =e= Supply[plant] ;

Destination(product).. SUM{plant,Assign[plant,product]}   =e= Demand[product] ;

Def_obj..
         TotalCost =e= SUM{(plant,product),DistCost[plant,product] *
                                           Assign[plant,product]     } ;

Assign.lo[plant,product] = 0 ;

Model m8_3_2a_BetterProdCo / all / ;

Solve m8_3_2a_BetterProdCo using nlp minimazing TotalCost ;

Display TotalCost.l ;