* MPL Model Library MPL Model Library
* EuingGas, Example 7, Winston
*   {  Exmpl9.2-7_EuingGas.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.2,  Example 7, Piecewise Linear (MIP),  Size: 5x6,  Page 492  }

* TITLE  EuingGas;

Set gasoline  / g1*g2 / ;
Set level     / L1*L3 / ;
Set bpoint    / b1*b4 / ;

Alias(gasoline,gasoline2);
Alias(level,level2);

Parameter Price[gasoline]        / g1  12 , g2   14 / ;
Parameter CurrentAvail[gasoline] / g1 500 , g2 1000 / ;
Scalar    MaxPurchase  / 1500 / ;
Parameter PriceBreak[level] / L1 25 , L2 20 , L3 15 / ;
Parameter LowerBreakpoint[level] / L1 0 , L2 500 , L3 1000 / ;
Parameter UpperBreakpoint[bpoint] / b1 0 , b2 500 , b3 1000 , b4 1500 / ;

Parameter ExcessCostA[level] ;
Loop(level$(ord(level) gt 1 ),
ExcessCostA[level] = (LowerBreakpoint[level] *
                     (PriceBreak[level-1]    -
                      PriceBreak[level]
                      ));     );

Parameter ExcessCost[level]  ;
ExcessCost[level] = Sum{level2$(ord(level2) lt ord(level)),ExcessCostA[level2] };

Parameter PurchaseCost[bpoint] ;

Loop(bpoint,
PurchaseCost[bpoint] =
          (UpperBreakpoint[bpoint] *
           Sum{level$(ord(level) eq ord(bpoint)-1 ), PriceBreak[level]} +
           Sum{level$(ord(level) eq ord(bpoint)-1 ), ExcessCost[level]    }
                        ); );

Binary Variables  AssignPiecewise[level];

       Variables  Purchase                    ,
                  PartPurchase[bpoint]        ,
                  AmntOil[gasoline,gasoline2] ,
                  Profit                       ;

Equation  MaxOil1Usage(gasoline)      ,
          MaxOil2Usage(gasoline)      ,
          Oil50Constituent(gasoline2) ,
          Oil60Constituent(gasoline2) ,
          PurchaseCalc                ,
          PiecewiseConA[bpoint]       ,
          AssignOneLevel              ,
          AssignOnebpoint             ,
          Def_obj ;

MaxOil1Usage(gasoline)$(ord(gasoline) eq 1)..
*-> OUSG:
        Sum{gasoline2, AmntOil[gasoline,gasoline2]} =l=
                                  Purchase + CurrentAvail[gasoline];

MaxOil2Usage(gasoline)$(ord(gasoline) eq 2)..
*-> TUSG:
         Sum{gasoline2, AmntOil[gasoline,gasoline2]} =l= CurrentAvail[gasoline];

Oil50Constituent(gasoline2)$(ord(gasoline2) eq 1)..
*-> OCON:
         AmntOil['g2',gasoline2] =l=        AmntOil['g1',gasoline2];

Oil60Constituent(gasoline2)$(ord(gasoline2) eq 2)..
*-> OCON:
     0.6*AmntOil['g2',gasoline2] =l=  0.4* AmntOil['g1',gasoline2];

PurchaseCalc..
*-> PrC:
        Purchase =e= Sum{bpoint,UpperBreakpoint[bpoint] * PartPurchase[bpoint]};


PiecewiseConA[bpoint]..
*-> PCA:

        PartPurchase[bpoint] =l= Sum{level$((ord(level) eq ord(bpoint)) or
                                            (ord(level) eq ord(bpoint)-1)),
                                                       AssignPiecewise[level]};
AssignOneLevel..
*-> AOL:
        Sum{level, AssignPiecewise[level]} =e= 1 ;

AssignOnebpoint..
*-> AOBP:
        Sum{bpoint, PartPurchase[bpoint]} =e= 1 ;

Def_obj..
   Profit =e= Sum{(gasoline,gasoline2),AmntOil[gasoline,gasoline2]*
                                       Price[gasoline] } -
              Sum{bpoint, PartPurchase[bpoint] * PurchaseCost[bpoint]}  ;

* MPL model solution
*PartPurchase.fx['b1'] = 0 ;
*PartPurchase.fx['b2'] = 1 ;
*PartPurchase.fx['b3'] = 0 ;
*PartPurchase.fx['b4'] = 0 ;

*AmntOil.fx['g1','g1'] = 1000 ;
*AmntOil.fx['g1','g2'] =    0 ;
*AmntOil.fx['g2','g1'] = 1000 ;
*AmntOil.fx['g2','g2'] =    0 ;

*AssignPiecewise.fx['L1'] = 1 ;
*AssignPiecewise.fx['L2'] = 0 ;
*AssignPiecewise.fx['L3'] = 0 ;

AmntOil.lo[gasoline,gasoline2] = 0 ;

Model m9_2_7_EuingGas / all / ;

Solve m9_2_7_EuingGas using mip maximazing Profit ;

Display Profit.l ;