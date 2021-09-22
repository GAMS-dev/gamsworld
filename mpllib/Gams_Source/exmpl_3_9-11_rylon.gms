*MPL Model Library MPL Model Library
*Rylon Corp.,  Example 3.9-11-9,  Winston
*   {  Exmpl3.9-11_Rylon.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 3rd ed.  }
*   {  Chapter 3.9,  Example 11,  Production Process,  Size: 5x4,  Page 95  }

* TITLE RylonCorp;

Set perfume  / Brute   , Chanele / ;
Set    type  / Regular , Luxury  / ;

Scalar RawMatCost  /  3.00 / ;
*      [$/lb]
Parameter RawMatYield[perfume]  / Brute 3 , Chanele 4 / ;
*      [oz/lb]

Scalar LabTimeRaw  /  1 / ;
*      [Hour/lb]
Parameter  LabTimeLux[perfume]   / Brute 3 , Chanele 2 / ;
*      [Hour/oz]

Table  Price[perfume,type]
                     Regular  Luxury
      Brute             7       18
      Chanele           6       14         ;
*      [$/oz]

Parameter ProcessCost[perfume]  / Brute 4 , Chanele 4 / ;
*      [$/oz]

Scalar LabTimeAvail / 6000 / ;
Scalar RawMatAvail  / 4000 / ;

Variables
    Sales[perfume,type]  ,
*   [oz]
    RawMatPurchased      ,
*   [lb]
    TotalRevenue         ,
    TotalProcessCost     ,
    TotalRawMatCost
    TotalProfit           ;

Equation Eq_1                     ,
         Eq_2                     ,
         Eq_3                     ,
         RawMatLimit              ,
         LabTimeLimit             ,
         MaterialBalance(perfume) ,
         Def_obj                   ;

Eq_1.. TotalRevenue     =e= Sum{(perfume,type), Price[perfume,type] *
                                                Sales[perfume,type]         };

Eq_2.. TotalProcessCost =e= Sum{(perfume,type)$(ord(type) eq card(type)),
                                                ProcessCost[perfume]*
                                                Sales[perfume,type]          };

Eq_3.. TotalRawMatCost  =e= RawMatCost * RawMatPurchased;

RawMatLimit..
        RawMatPurchased =l= RawMatAvail;

LabTimeLimit..
        LabTimeRaw * RawMatPurchased +
        Sum{(perfume,type)$(ord(type) eq card(type)),
                                                LabTimeLux[perfume] *
                                                Sales[perfume,type]}  =l=
                                                              LabTimeAvail   ;

MaterialBalance(perfume)..
        Sum{type,Sales[perfume,type]} =e= RawMatYield[perfume]*RawMatPurchased;

Def_obj.. TotalProfit =e= TotalRevenue - TotalProcessCost - TotalRawMatCost;

MaterialBalance.lo(perfume) = 0 ;

Sales.lo[perfume,type]   =  0.0 ;

* MPL model solution
*Sales.fx['Brute','Regular']   =  11333.333 ;
*Sales.fx['Brute','Luxury']    =    666.667 ;
*Sales.fx['Chanele','Regular'] =  16000.000 ;
*Sales.fx['Chanele','Luxury']  =      0.000 ;

Model m3_9_11_Rylon / all / ;

Solve m3_9_11_Rylon using lp maximazing TotalProfit ;

Display TotalProfit.l ;