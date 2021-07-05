* MPL Model Library MPL Model Library
* Multi-Period Scheduling,  Example 1.5,  Shapiro
*   {  Exmpl1-5_MultiPeriodSched.mpl  }
*   {  Roy D. Shapiro, Optimization Models for Planning and Allocation  }
*   {  Chapter 1,  Example 5,  Multi-Period Scheduling,  Size: 72x74,  Page 28  }

* TITLE MultiPeriodProdScheduling;

Set month / m1*m12 / ;

Parameter Demand[month] /  m1 3800 ,  m2 4100 ,  m3 4700 ,
                           m4 5900 ,  m5 7200 ,  m6 7900 ,
                           m7 6700 ,  m8 5100 ,  m9 5300 ,
                          m10 6400 , m11 5800 , m12 4800  /;

Scalar ProductionCost   /  100    / ;
Scalar InventoryCost    /    7    / ;
Scalar LaborCost        / 1600    / ;
Scalar HiringCost       /  300    / ;
Scalar LayoffCost       /  500    / ;
Scalar StockOutCost     /  500    / ;
Scalar RecordersPerDay  /    8    / ;
Scalar AssemblyCapacity / 7000    / ;
Scalar MaxNewWorkers    /   50    / ;
Scalar MaxLayoffPercent /    0.10 / ;
Scalar InitInventory    /  750    / ;
Scalar InitWorkforce    /  500    / ;


Variables Produce[month]      ,
*-> P;
          Inventory[month]    ,
*-> I;
          Workers[month]      ,
*-> W;
          Hired[month]        ,
*-> H;
          LaidOff[month]      ,
*-> L;
          StockOut[month]     ,
          TotalProductionCost ,
          TotalInventoryCost  ,
          TotalLaborCost      ,
          TotalHiringCost     ,
          TotalLayoffCost     ,
          TotalStockOutCost   ,
          TotalCost            ;

Equation  Eq_1                    ,
          Eq_2                    ,
          Eq_3                    ,
          Eq_4                    ,
          Eq_5                    ,
          Eq_6                    ,
          InventoryBalance(month) ,
          WorkforceLimit(month)   ,
          AssemblyLimit(month)    ,
          WorkforceBalance(month) ,
          MaxHired(month)         ,
          MaxLaidOff(month)       ,
          Def_obj                  ;

Eq_1.. TotalProductionCost =e= Sum{month,ProductionCost * Produce[month]};
Eq_2.. TotalInventoryCost  =e= Sum{month,InventoryCost*1/2*(Inventory[month] +
                                                            Inventory[month+1])};
Eq_3.. TotalLaborCost      =e= Sum{month,LaborCost *  Workers[month]};
Eq_4.. TotalHiringCost     =e= Sum{month,HiringCost * Hired[month]};
Eq_5.. TotalLayoffCost     =e= Sum{month,LayoffCost * LaidOff[month]};
Eq_6.. TotalStockOutCost   =e= Sum{month,StockOutCost * StockOut[month]};

InventoryBalance(month)..
    Produce[month]     +
    Inventory[month]   -
    Inventory[month+1] +
    StockOut[month]      =e= Demand[month];

WorkforceLimit(month)..
    Produce[month]  =l=  RecordersPerDay * Workers[month];

AssemblyLimit(month)..
    Produce[month]  =l=  AssemblyCapacity;

WorkforceBalance(month)..
    Workers[month]  =e=  Workers[month-1]$(ord(month) gt 1) +
                         InitWorkforce$(ord(month) eq 1)    +
                         Hired[month] - LaidOff[month];

MaxHired(month)..
    Hired[month]  =l=  MaxNewWorkers;

MaxLaidOff(month)..
    LaidOff[month]  =l=  MaxLayoffPercent *
                           (Workers[month-1]$(ord(month) gt 1) +
                            InitWorkforce$(ord(month) eq 1)
                            );

Def_obj..
    TotalCost =e= TotalProductionCost +
                  TotalInventoryCost  +
                  TotalLaborCost      +
                  TotalHiringCost     +
                  TotalLayoffCost     +
                  TotalStockOutCost    ;
*BOUNDS
Inventory.fx['m1'] = InitInventory;

Produce.lo[month]   = 0.0 ;
Inventory.lo[month] = 0.0 ;
Workers.lo[month]   = 0.0 ;
Hired.lo[month]     = 0.0 ;
LaidOff.lo[month]   = 0.0 ;
StockOut.lo[month]  = 0.0 ;


* MPL  model solution

*Produce.fx['m1']   =   4400.0000 ;
*Produce.fx['m2']   =   4800.0000 ;
*Produce.fx['m3']   =   5200.0000 ;
*Produce.fx['m4']   =   5600.0000 ;
*Produce.fx['m5']   =   6000.0000 ;
*Produce.fx['m6']   =   6400.0000 ;
*Produce.fx['m7']   =   6700.0000 ;
*Produce.fx['m8']   =   6030.0000 ;
*Produce.fx['m9']   =   5618.3333 ;
*Produce.fx['m10']  =   5618.3333 ;
*Produce.fx['m11']  =   5333.3333 ;
*Produce.fx['m12']  =   4800.0000 ;


*Hired.fx['m1']   =     50.0000  ;
*Hired.fx['m2']   =     50.0000  ;
*Hired.fx['m3']   =     50.0000  ;
*Hired.fx['m4']   =     50.0000  ;
*Hired.fx['m5']   =     50.0000  ;
*Hired.fx['m6']   =     50.0000  ;
*Hired.fx['m7']   =     37.5000  ;
*Hired.fx['m8']   =      0.0000  ;
*Hired.fx['m9']   =      0.0000  ;
*Hired.fx['m10']  =      0.0000  ;
*Hired.fx['m11']  =      0.0000  ;
*Hired.fx['m12']  =      0.0000  ;

*LaidOff.fx['m1']    =     0.0000  ;
*LaidOff.fx['m2']    =     0.0000  ;
*LaidOff.fx['m3']    =     0.0000  ;
*LaidOff.fx['m4']    =     0.0000  ;
*LaidOff.fx['m5']    =     0.0000  ;
*LaidOff.fx['m6']    =     0.0000  ;
*LaidOff.fx['m7']    =     0.0000  ;
*LaidOff.fx['m8']    =    83.7500  ;
*LaidOff.fx['m9']    =    51.4583  ;
*LaidOff.fx['m10']   =     0.0000  ;
*LaidOff.fx['m11']   =    35.6250  ;
*LaidOff.fx['m12']   =    66.6667  ;

*StockOut.fx[month]  =       0.0000 ;
*StockOut.fx['m6']   =     450.0000 ;

*Workers.fx['m1']  =    550.0000  ;
*Workers.fx['m2']  =    600.0000  ;
*Workers.fx['m3']  =    650.0000  ;
*Workers.fx['m4']  =    700.0000  ;
*Workers.fx['m5']  =    750.0000  ;
*Workers.fx['m6']  =    800.0000  ;
*Workers.fx['m7']  =    837.5000  ;
*Workers.fx['m8']  =    753.7500  ;
*Workers.fx['m9']  =    702.2917  ;
*Workers.fx['m10'] =    702.2917  ;
*Workers.fx['m11'] =    666.6667  ;
*Workers.fx['m12'] =    600.0000  ;

*Inventory.fx['m1'] =      750.0000  ;
*Inventory.fx['m2'] =     1350.0000  ;
*Inventory.fx['m3'] =     2050.0000  ;
*Inventory.fx['m4'] =     2550.0000  ;
*Inventory.fx['m5'] =     2250.0000  ;
*Inventory.fx['m6'] =     1050.0000  ;
*Inventory.fx['m7'] =        0.0000  ;
*Inventory.fx['m8'] =        0.0000  ;
*Inventory.fx['m9'] =      930.0000  ;
*Inventory.fx['m10'] =     1248.3333  ;
*Inventory.fx['m11'] =      466.6667  ;
*Inventory.fx['m12'] =        0.0000  ;


Model m1_5_MultiPeriodSched / all / ;

Solve m1_5_MultiPeriodSched using lp minimazing TotalCost ;

Display TotalCost.l ;

