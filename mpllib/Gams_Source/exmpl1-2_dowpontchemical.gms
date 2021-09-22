* MPL Model Library MPL Model Library
* DowPont Chemical,  Example 1.2,  Shapiro
*   {  Exmpl1-2_DowPontChemical.mpl  }
*   {  Roy D. Shapiro, Optimization Models for Planning and Allocation  }
*   {  Chapter 1,  Example 2,  Process Scheduling,  Size: 8x8,  Page 17  }

* TITLE DowPontChemical;

Set chemical / R , A , B , C , D / ;
Set process  / p1*p3 /;

Scalar RawMatCost / 1.00 / ;

Parameter ProcessCapacity[process] / p1 56 , p2 25 , p3 46 / ;

Parameter MarketPrice[chemical]    / R 0.0 , A 2.4 , B 3.2 , C 6.4 , D 12.2 / ;

Parameter ProcessCost[process,chemical] ;

     ProcessCost['p1','R'] = 1.50 ;
     ProcessCost['p2','A'] = 3.50 ;
     ProcessCost['p3','B'] = 4.20 ;
     ProcessCost['p3','C'] = 4.20 ;

Parameter ProcessOutput[process,chemical] ;

     ProcessOutput['p1','A'] = 0.45 ;
     ProcessOutput['p1','B'] = 0.55 ;
     ProcessOutput['p2','C'] = 0.80 ;
     ProcessOutput['p3','D'] = 0.75 ;

Variables ProdSale[chemical] ,
*-> S;
          ProdUse[chemical]  ,
*-> U;
          TotalProfit        ;
Equation Eq_1    ,
         Eq_2    ,
         Eq_3    ,
         Eq_4    ,
         Eq_5    ,
         Eq_6    ,
         Eq_7    ,
         Eq_8    ,
         Def_obj  ;

Eq_1.. ProdUse['A'] + ProdSale['A'] =e= ProcessOutput['p1','A'] * ProdUse['R'] ;
Eq_2.. ProdUse['B'] + ProdSale['B'] =e= ProcessOutput['p1','B'] * ProdUse['R'] ;
Eq_3.. ProdUse['C'] + ProdSale['C'] =e= ProcessOutput['p2','C'] * ProdUse['A'] ;
Eq_4.. ProdSale['D'] =e= ProcessOutput['p3','D'] *(ProdUse['B'] + ProdUse['C']);
Eq_5.. ProdUse['B']  =e=  1.5 * ProdUse['C'] ;
Eq_6.. ProdUse['R']                 =l=  ProcessCapacity['p1'] ;
Eq_7.. ProdUse['A']                 =l=  ProcessCapacity['p2'] ;
Eq_8.. ProdUse['B'] + ProdUse['C']  =l=  ProcessCapacity['p3'] ;

Def_obj..
    TotalProfit =e= Sum{chemical, MarketPrice[chemical] *
                                  ProdSale[chemical]      }                 -
                    RawMatCost * ProdUse['R']                               -
                    Sum{(chemical,process), ProcessCost[process,chemical] *
                                            ProdUse[chemical]              }   ;

ProdSale.lo[chemical] = 0.0 ;
ProdUse.lo[chemical]  = 0.0 ;

* MPL  model solution
*ProdSale.fx['A']   =    2.2000  ;
*ProdSale.fx['B']   =    3.2000  ;
*ProdSale.fx['C']   =    0.0000  ;
*ProdSale.fx['D']   =   34.5000  ;

*ProdUse.fx['R']    =   56.0000  ;
*ProdUse.fx['A']    =   23.0000  ;
*ProdUse.fx['B']    =   27.6000  ;
*ProdUse.fx['C']    =   18.4000  ;

Model m1_2_DowPontChemical / all / ;

Solve m1_2_DowPontChemical using lp maximazing TotalProfit ;

Display TotalProfit.l ;