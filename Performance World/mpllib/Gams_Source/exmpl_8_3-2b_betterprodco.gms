*MPL Model Library MPL Model Library
*Better Products Company, Example 8.3-2b, Hillier and Lieberman
*   {  Exmpl_8.3-2b_BetterProdCo.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 8.3,  Example 2b, Assignment, Size 10x25, Page 386  }

*TITLE   BetterProdCo_Option2;

Set plant / p1a , p1b , p2a , p2b , p3 / ;

Set product / Pr1*Pr5 / ;

Scalar M / 99999 / ;

Table  Cost[plant, product]
                                 Pr1    Pr2    Pr3    Pr4   Pr5
                       p1a       820    810    840    960     0
                       p1b       820    810    840    960     0
                       p2a       800    870  99999    920     0
                       p2b       800    870  99999    920     0
                       p3        740    900    810    840 99999    ;

Variable Assign[plant,product] , TotalCost ;
*-> x;

Equation Assignee(plant) , Ask(product) ,  Def_obj ;

Assignee(plant).. SUM{product, Assign[plant,product]} =e= 1 ;

Ask(product)..    SUM{plant, Assign[plant,product]}   =e= 1 ;

Def_obj..
      TotalCost =e= SUM{(plant,product),Cost[plant,product] *
                                        Assign[plant,product] };
Assign.lo[plant,product] = 0 ;

Model m8_3_2b_BetterProdCo / all / ;

Solve m8_3_2b_BetterProdCo using nlp minimazing TotalCost ;

Display TotalCost.l ;