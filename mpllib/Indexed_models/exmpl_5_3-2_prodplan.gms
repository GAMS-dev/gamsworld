* MPL Model Library MPL Model Library
*Production Planning,  Example 5.3-2,  H.P.Williams
*    {  Exmpl5.3-2_ProdPlan.mpl  }
*    {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*    {  Chapter 5.3,  Example 2,  Production Planning,  Size: 12x12,  Page 76  }

* TITLE ProductionPlanning;


Set shift  / Regular , Overtime / ;
Set month  / January , February , March , April / ;
Alias(month,month2);

Table  ProdCapacity[shift,month]
                  January  February  March  April
       Regular      100       150     140    160
       Overtime      50        75      70     80     ;

Parameter ProdCost[shift] / Regular 1.00 , Overtime 1.50 / ;

Parameter Demand[month] / January 80 , February 200 , March 300 , April 200 / ;

Scalar StorageCost / 0.30 / ;

Parameter CombinedCost[month, shift, month2] ;

CombinedCost[month,shift,month2] = ProdCost[shift]$(ord(month2) ge ord(month)) +
                                   StorageCost*(ord(month2)$(ord(month2) gt ord(month))-
                                                ord(month)$( ord(month2) gt ord(month))
                                               ) ;

Variables Produce[month,shift] ,
          Inventory[month]     ,
          TotalProdCost        ,
          TotalStoreCost       ,
          TotalCost            ;

Equation Eq_1
         Eq_2
         MaxCapacity(shift,month)
         InventoryBalance(month)
         Def_obj ;

Eq_1..    TotalProdCost  =e= Sum{(shift, month), ProdCost[shift] *
                                                 Produce[month,shift]};
Eq_2..    TotalStoreCost =e= Sum{month, StorageCost * Inventory[month]};

MaxCapacity(shift,month)..
    Produce[month,shift] =l= ProdCapacity[shift,month];

InventoryBalance(month)..
    Inventory[month]  =e=  Inventory[month--1]               +
                           Sum{shift, Produce[month,shift]} -
                           Demand[month]                     ;

Def_obj..
    TotalCost =e= TotalProdCost + TotalStoreCost;

Produce.lo[month,shift] = 0 ;
Produce.up[month,shift] = ProdCapacity[shift,month] ;
Inventory.lo[month] = 0 ;

* MPL model solution
*Inventory.fx['January']  =   65.0000 ;
*Inventory.fx['February'] =   90.0000 ;
*Inventory.fx['March']    =    0.0000 ;
*Inventory.fx['April']    =    0.0000 ;

*Produce.fx['January','Regular']  =  100.00 ;
*Produce.fx['January','Overtime'] =   45.00 ;
*Produce.fx['February','Regular'] =  150.00 ;
*Produce.fx['February','Overtime']=   75.00 ;
*Produce.fx['March','Regular']    =  140.00 ;
*Produce.fx['March','Overtime']   =   70.00 ;
*Produce.fx['April','Regular']    =  160.00 ;
*Produce.fx['April','Overtime']   =   40.00 ;


Model m5_3_2_ProdPlan / all / ;

Solve m5_3_2_ProdPlan using lp minimazing TotalCost ;

Display TotalCost.l ;