*MPL Model Library MPL Model Library
*Production Rates, Example 12.4-1, Hillier and Lieberman
*   {  Exmpl12.4-1_ProdRate.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 12.4,  Example 1, Production, Size 6x7, Page 592  }

* TITLE ProductionRate;

Set plant   / plant1*plant2 / ;
Set product / prod1*prod3 / ;

Table Hours[plant,product]
                       prod1   prod2   prod3
               plant1    3       4       2
               plant2    4       6       2   ;
Parameter Profit[product] / prod1 5 , prod2 7 , prod3 3 / ;
*Per unit
Parameter Sales[product]  / prod1 7 , prod2 5 , prod3 9 / ;
Scalar M / 999 / ;

Binary Variables
   y[product] ,
*Equals 1 if product i is produced
   p          ;
*Equals 1 if we produce in Plant 2

Variables rate[product] ,
             TotProfit  ;

Equation Produce(product) , NumPrd , Plnt_1(plant) , Plnt_2(plant) , Def_obj ;

Produce(product)..
         rate[product] =l= M*y[product];

NumPrd..
         Sum{product, y[product]} =l=2;

Plnt_1(plant)$(ord(plant) eq 1)..
         Sum{product, Hours[plant,product] * rate[product]} =l= 30 + M*p;

Plnt_2(plant)$(ord(plant) eq 2)..
         Sum{product, Hours[plant,product] * rate[product]} =l= 40 + M*(1-p);

Def_obj.. TotProfit =e= Sum{product, Profit[product] * rate[product]};

rate.up[product] = Sales[product] ;
rate.lo[product] = 0              ;

* MPL solutions:
*rate.fx['prod1'] = 5.5 ;
*rate.fx['prod2'] = 0.0 ;
*rate.fx['prod3'] = 9.0 ;

*y.fx['prod1']    = 1 ;
*y.fx['prod2']    = 0 ;
*y.fx['prod3']    = 1 ;


Model m12_4_1_ProdRate / all / ;

Solve m12_4_1_ProdRate using mip maximazing TotProfit ;

Display TotProfit.l ;