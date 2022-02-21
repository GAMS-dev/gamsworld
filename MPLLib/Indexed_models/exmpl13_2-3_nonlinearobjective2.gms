*MPL Model Library MPL Model Library
*Nonlinear Objective 2, Example 13.2-3, Hillier and Lieberman
*   {  Exmpl13.2-3_NonlinearObjective2.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 13.2,  Example 3, Nonlinear objective,  Size: 3x2,  Page 661  }

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
        TotalProfit =e=  54*Produce['Door']   -  9*Sqr(Produce['Door']  ) +
                         78*Produce['Window'] - 13*Sqr(Produce['Window'])   ;

Model m13_2_3_NonlinearObjective2 / all / ;

Solve m13_2_3_NonlinearObjective2 using nlp maximazing TotalProfit ;

Display TotalProfit.l ;