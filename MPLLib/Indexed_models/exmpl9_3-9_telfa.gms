* MPL Model Library MPL Model Library
* Telfa, Example 9, Winston
*   {  Exmpl9.3-9_Telfa.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.3,  Example 9,  Production Planning (MIP),  Size: 5x6,  Page 513  }

* TITLE Telfa ;

Set product / Tables , Chairs / ;

Parameter LaborUse[product] / Tables 1 , Chairs 1 / ;
Parameter WoodUse[product]  / Tables 9 , Chairs 5 / ;
Parameter Profit[product]   / Tables 8 , Chairs 5 / ;
Scalar LaborCapacity /  6 / ;
Scalar WoodAvail     / 45 / ;

Integer Variables Produce[product];

Variables TotalProfit ;

Equation LaborLimit ,
         WoodLimit  ,
         Def_obj     ;

LaborLimit..
*-> LAB:
   Sum{product, LaborUse[product] * Produce[product]} =l= LaborCapacity;

WoodLimit..
*-> WDL:
   Sum{product, WoodUse[product] * Produce[product]} =l= WoodAvail;

Def_obj..
   TotalProfit =e= Sum{product, Profit[product] * Produce[product]};


* MPL  model solution
*produce.fx['Tables']  =   5.00 ;
*produce.fx['Chairs']  =   0.00 ;
*TotalProfit = 40 ;

* GAMS  model solution
*produce.fx['Tables']  =   3.00 ;
*produce.fx['Chairs']  =   3.00 ;
*TotalProfit = 41.25 ;


Model m9_3_9_Telfa / all / ;

Solve m9_3_9_Telfa using mip maximazing TotalProfit ;

Display TotalProfit.l ;

Parameter aa, bb ;
aa = LaborCapacity - Sum{product, LaborUse[product] * Produce.l[product]}  ;
bb = WoodAvail - Sum{product, WoodUse[product] * Produce.l[product]} ;
