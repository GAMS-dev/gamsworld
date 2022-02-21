*MPL Model Library MPL Model Library
*Nonlinear Objective, Example 13.2-2, Hillier and Lieberman
*   {  Exmpl13.2-2_NonlinearObjective.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.2,  Example 2, Nonlinear objective,  Size: 3x2,  Page 659  }

* TITLE  WyndorGlass;

Set product / Door , Window / ;
Set plant / plant_1 , plant_2 , plant_3 / ;

Parameter TimeAvail[plant] / plant_1 4 , plant_2 12 , plant_3 18 / ;

Table ProdTime[plant,product]
                      Door  Window
            plant_1     1       0
            plant_2     0       2
            plant_3     3       2   ;

Variables  Produce[product] , TotalProfit ;
*-> Prod

Equation TimeCapacity(plant) , Def_obj ;

TimeCapacity(plant)..
* -> TimeCap
        Sum{product, ProdTime[plant,product] * Produce[product]} =l=
                                                           TimeAvail[plant] ;
Def_obj..
        TotalProfit =e=   126 * Produce['Door']   -  9*Sqr(Produce['Door']  ) +
                          182 * Produce['Window'] - 13*Sqr(Produce['Window'])  ;

Model m13_2_2_NonlinearObjective / all / ;

Solve m13_2_2_NonlinearObjective using nlp maximazing TotalProfit ;

Display TotalProfit.l ;