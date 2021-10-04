********************************************************
*  Mosel Example Problems
*  ======================
*
*  file expl2.mos
*  ``````````````
*  Network example from BCL User Guide.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke
**********************************************************

* model Trans

* Set of suppliers
Set Suppliers / SUP1,SUP2,SUP3,SUP6,SUP9,SUP10 / ;
* Set of customers
Set Customers / c1  , c2  , c6  , c33 , c84 ,
                c67 , c49 , c38 , c55 , c13 , c15 / ;

* Cost per supplier-customer pair
Parameter COST[Suppliers,Customers] ;

COST['SUP1','C1']    =   9 ;
COST['SUP1','C2']    =  45 ;
COST['SUP1','C6']    =  77 ;
COST['SUP1','C33']   =   4 ;
COST['SUP1','C67']   =  34 ;
COST['SUP1','C84']   =  55 ;
COST['SUP1','C49']   =  23 ;
COST['SUP1','C38']   = 111 ;
COST['SUP1','C55']   =  56 ;
COST['SUP2','C13']   =  83 ;
COST['SUP2','C6']    =  66 ;
COST['SUP2','C67']   =  49 ;
COST['SUP2','C84']   =  11 ;
COST['SUP2','C55']   =  28 ;
COST['SUP3','C1']    =  91 ;
COST['SUP3','C13']   =  44 ;
COST['SUP3','C6']    =  21 ;
COST['SUP3','C15']   =  25 ;
COST['SUP3','C67']   =  28 ;
COST['SUP3','C49']   =  55 ;
COST['SUP3','C38']   = 122 ;
COST['SUP3','C55']   = 107 ;
COST['SUP6','C13']   =  17 ;
COST['SUP6','C2']    =  48 ;
COST['SUP6','C6']    =  51 ;
COST['SUP6','C15']   =  56 ;
COST['SUP6','C67']   =  53 ;
COST['SUP6','C38']   =  82 ;
COST['SUP6','C55']   =  72 ;
COST['SUP9','C1']    =  31 ;
COST['SUP9','C2']    =  39 ;
COST['SUP9','C6']    =  37 ;
COST['SUP9','C67']   =  71 ;
COST['SUP9','C49']   =  79 ;
COST['SUP9','C38']   =  78 ;
COST['SUP9','C55']   =  58 ;
COST['SUP10','C1']   =  59 ;
COST['SUP10','C13']  =  61 ;
COST['SUP10','C2']   =  63 ;
COST['SUP10','C6']   =  71 ;
COST['SUP10','C15']  =  75 ;
COST['SUP10','C33']  =  59 ;
COST['SUP10','C67']  =  78 ;
COST['SUP10','C84']  =  73 ;
COST['SUP10','C49']  =  22 ;
COST['SUP10','C38']  =  55 ;



* Availability of products
Parameter AVAIL[Suppliers] / SUP1 256 , SUP2 234 , SUP3  166 ,
                             SUP6 100 , SUP9 133 , SUP10 200 / ;


* Demand by customers
Parameter DEMAND[Customers] / C1  45 , C13 56 , C2  55 , C6  300 , C15 112 ,
                              C33 80 , C67 77 , C84 25 , C49  33 , C38  43 ,
                              C55 39 / ;


Variable   x[Suppliers,Customers] ,
          MinCost                 ;

Equation  av(Suppliers) ,
          de(Customers) ,
          Def_Obj       ;
av(Suppliers)..
    Sum{Customers$(COST[Suppliers,Customers] gt 0),x[Suppliers,Customers]} =l=
                                                              AVAIL[Suppliers] ;
de(Customers)..
    Sum{Suppliers$(COST[Suppliers,Customers] gt 0),x[Suppliers,Customers]} =g=
                                                              DEMAND[Customers];
Def_Obj..
    MinCost =e= Sum{(Suppliers,Customers), COST[Suppliers,Customers] *
                                              x[Suppliers,Customers]  };

x.lo[Suppliers,Customers] = 0 ;
* Solve the LP-problem
Model Trans / all / ;

Solve Trans using LP minimazing MinCost ;

Display MinCost.l ;

