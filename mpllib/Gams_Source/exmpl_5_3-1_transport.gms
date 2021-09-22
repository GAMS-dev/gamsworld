*MPL Model Library MPL Model Library
*Transportation,  Example 5.3-1,  H.P.Williams
*    {  Exmpl5.3-1_Transport.mpl  }
*    {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*    {  Chapter 5.3,  Example 1,  Transportation,  Size: 7x9,  Page 73  }

* TITLE Transportation;

Set supplier / S1 , S2 , S3 / ;
Set customer / T1 , T2 , T3 , T4 / ;

Parameter Capacity[supplier]    / S1 135 , S2 56 , S3 93 / ;
Parameter Requirement[customer] / T1  62 , T2 83 , T3 39 , T4 91 /;

Table ShippingCost[supplier,customer]
                  T1   T2   T3   T4
          S1     132   -1   97  103
          S2      85   91   -1   -1
          S3     106   89  100   98  ;

Variables Ship[supplier,customer] ,
*         WHERE (ShippingCost >= 0)
          TotalCost               ;

Equation MaxCapacity(supplier)    ,
         MinRequirement(customer) ,
         Def_obj                  ;

MaxCapacity(supplier)..
      Sum{customer$(ShippingCost[supplier,customer] gt 0),
                    Ship[supplier,customer]} =l=  Capacity[supplier];

MinRequirement(customer)..
      Sum{supplier$(ShippingCost[supplier,customer] gt 0),
                    Ship[supplier,customer]} =g=  Requirement[customer];

Def_obj..
   TotalCost =e= Sum{(supplier,customer)$(ShippingCost[supplier,customer] gt 0),
                                          ShippingCost[supplier,customer] *
                                          Ship[supplier,customer]              };

Ship.lo[supplier,customer] = 0 ;

* MPL model solution
*Ship.fx['S1','T1'] =   0.0000 ;
*Ship.fx['S1','T3'] =  39.0000 ;
*Ship.fx['S1','T4'] =  87.0000 ;
*Ship.fx['S2','T1'] =  56.0000 ;
*Ship.fx['S2','T2'] =   0.0000 ;
*Ship.fx['S3','T1'] =   6.0000 ;
*Ship.fx['S3','T2'] =  83.0000 ;
*Ship.fx['S3','T3'] =   0.0000 ;
*Ship.fx['S3','T4'] =   4.0000 ;

Model m5_3_1_Transport / all / ;

Solve m5_3_1_Transport using lp minimazing TotalCost ;

Display TotalCost.l ;