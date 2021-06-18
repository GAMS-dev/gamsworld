*MPL Model Library MPL Model Library
*Distribution Unlimited, Example 3.4-6, Hillier and Lieberman
*   {  Exmpl_3.4-6_DistrUnlimited.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.4,  Example 6,  Transportation,  Size: 7x7,  Page 59  }

*TITLE DistributionUnlimited;

Set loc    / F1 , F2 , DC , W1 , W2 / ;
Set source(loc) / F1 , F2 / ;
Set dest(loc)   / W1 , W2 / ;
Alias(loc,loc1);
Parameter ShipCost[loc,loc1] / F1.F2  200,
                               F1.DC  400,
                               F1.W1  900,
                               F2.DC  300,
                               DC.W2  100,
                               W1.W2  300,
                               W2.W1  200 / ;
Set ShipCost_set(loc,loc1) ;
    ShipCost_set(loc,loc1) = YES$(ShipCost[loc,loc1] gt 0)

Parameter Supply[loc] / F1 50 , F2 40 / ;
Parameter Demand[loc] / W1 30 , W2 60 / ;

Parameter MaxFlow[loc,loc1] / F1.F2 10 , DC.W2 80 / ;

Variables Ship[loc,loc1] ,
          TotalCost       ;

Equation
         NetFlow(loc)          ,
         MaxShipment(loc,loc1) ,
         Def_obj               ;

NetFlow(loc)..
        SUM{loc1$(ShipCost_set(loc1,loc)),Ship[loc1,loc] }    + Supply(loc) =e=
        SUM{loc1$(ShipCost_set(loc,loc1)),Ship[loc,loc1] } + Demand(loc)       ;

MaxShipment(loc,loc1)$(MaxFlow[loc,loc1] gt 0)..
                        Ship[loc,loc1] =l=  MaxFlow[loc,loc1];

Def_obj..
   TotalCost =e= SUM{(loc,loc1)$(ShipCost_set(loc,loc1)),
                                            ShipCost[loc,loc1]*Ship[loc,loc1]};
Ship.lo[loc,loc1] = 0 ;
Ship.fx[loc,loc1]$(not ShipCost_set(loc,loc1)) = 0 ;

Model m3_4_6_DistrUnlimited / all / ;

Solve m3_4_6_DistrUnlimited using nlp minimazing TotalCost ;

Display TotalCost.l ;