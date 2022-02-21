*MPL Model Library MPL Model Library
*Wyndor Glass Company, Example 3.1-1, Hillier and Lieberman
*   {  Exmpl_3.1-1_WyndorGlass.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.1,  Example 1,  Product-mix,  Size: 2x3,  Page 25  }
*
*TITLE
*    WyndorGlass;

SET product / Door, Window /;
SET plant   / P1*P3 /;

Parameter TimeAvail[plant]  /p1 4, p2 12, p3 18 /;
Parameter Profit[product] / Door 3.00, Window 5.00 /;

Table ProdTime[plant, product]
                 Door Window
        p1          1      0
        p2          0      2
        p3          3      2    ;

Variable Produce[product] , TotalProfit ;
* Produce[product] -> Prod ;
* TimeCapacity[plant] -> TimeAvail ;

Equation Eq_1(plant) ,  Def_obj ;

Eq_1(plant)..   SUM(product, ProdTime[plant, product] * Produce[product]) =l=
                                              TimeAvail[plant];

Def_obj..       TotalProfit =e= SUM(product, Profit[product] * Produce[product]);

Model m3_1_1_WyndorGlass / all / ;

Solve m3_1_1_WyndorGlass using nlp maximazing TotalProfit ;

Display TotalProfit.l ;
