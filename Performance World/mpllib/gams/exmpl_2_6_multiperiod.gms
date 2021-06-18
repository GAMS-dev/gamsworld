*MPL Model Library MPL Model Library
*Multi Period Planning,  Example 2.6,  Murty
*   {  Exmpl2.6_MultiPeriod.mpl  }
*   {  Murty, Operations Research, Determining Optimization Models  }
*   {  Chapter 2,  Example 2.6,  Production Planning,  Size: 6x19,  Page 40  }

* TITLE MultiPeriodProdPlanning;

Set period /p1*p6/ ;

Parameter ProdCost[period]     / p1   20 , p2   25 , p3   30 ,
                                 p4   40 , p5   50 , p6   60  / ;
Parameter ProdCapacity[period] / p1 1500 , p2 2000 , p3 2200 ,
                                 p4 3000 , p5 2700 , p6 2500  / ;
Parameter Demand[period]       / p1 1100 , p2 1500 , p3 1800 ,
                                 p4 1600 , p5 2300 , p6 2500  / ;
Parameter SellingPrice[period] / p1  180 , p2  180 , p3  250 ,
                                 p4  270 , p5  300 , p6  320  / ;
Scalar    InventoryCost        /   2 / ;
Scalar    InitialStock         / 500 / ;
Scalar    FinalStock           / 500 / ;

Variables
          Produce[period]
*-> Prod;
          Inventory[period]
*-> Invt;
          Sales[period]
*-> Sale;
          TotalRevenue  ,
          TotalProdCost ,
          TotalInvtCost ,
          TotalCost     ,
          NetProfit     ;

Equation Eq_1                     ,
         Eq_2                     ,
         Eq_3                     ,
         Eq_4                     ,
         InventoryBalance(period) ,
         Def_obj ;


Eq_1.. TotalRevenue  =e= Sum{period,SellingPrice[period] * Sales[period]};
Eq_2.. TotalProdCost =e= Sum{period,ProdCost[period] * Produce[period]}  ;
Eq_3.. TotalInvtCost =e= Sum{period,InventoryCost * Inventory[period]}   ;
Eq_4.. TotalCost     =e= TotalProdCost + TotalInvtCost                   ;

InventoryBalance(period)..
*-> InvtBal:
        Inventory[period]  =e=  Inventory[period-1]$(ord(period) gt 1) +
                                InitialStock$(ord(period) eq 1) +
                                Produce[period]     -
                                Sales[period]         ;

Def_obj..
    NetProfit =e= TotalRevenue - TotalCost ;


    Produce.lo[period] =  0 ;
    Produce.up[period] =  ProdCapacity[period] ;
    Sales.up[period]   =  Demand[period] ;
    Inventory.fx[period]$(ord(period) eq card(period))  =  FinalStock ;

* MPL model solution
* MPL model solution
*Produce.fx['p1']  =    1500.0000  ;
*Produce.fx['p2']  =    2000.0000  ;
*Produce.fx['p3']  =    2200.0000  ;
*Produce.fx['p4']  =    3000.0000  ;
*Produce.fx['p5']  =    2100.0000  ;
*Produce.fx['p6']  =       0.0000  ;

*Sales.fx['p1']   =   1100.0000    ;
*Sales.fx['p2']   =   1500.0000    ;
*Sales.fx['p3']   =   1800.0000    ;
*Sales.fx['p4']   =   1600.0000    ;
*Sales.fx['p5']   =   2300.0000    ;
*Sales.fx['p6']   =   2500.0000    ;

*Inventory.fx['p1'] =      900.0000 ;
*Inventory.fx['p2'] =     1400.0000 ;
*Inventory.fx['p3'] =     1800.0000 ;
*Inventory.fx['p4'] =     3200.0000 ;
*Inventory.fx['p5'] =     3000.0000 ;
*Inventory.fx['p6'] =      500.0000 ;


Model m2_6_MultiPeriod / all / ;

Solve m2_6_MultiPeriod using lp maximazing NetProfit ;

Display NetProfit.l ;