*MPL Model Library MPL Model Library
*Semicond Eletronics,  Example 3.7-9,  Winston
*   {  Exmpl3.7-9_Semicond.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 3rd ed.  }
*   {  Chapter 3.7,  Example 9,  Financial Planning,  Size: 4x2,  Page 82  }

* TITLE SemicondElectronics;

Set product / TapeRec , Radio / ;

Parameter SellingPrice[product]  / TapeRec 100 , Radio 90 / ;
Parameter LaborCost[product]     / TapeRec  50 , Radio 35 / ;
Parameter RawMatCost[product]    / TapeRec  30 , Radio 40 / ;

Parameter ContribProfit[product] ;
          ContribProfit[product] = SellingPrice[product] -
                                      LaborCost[product] -
                                     RawMatCost[product]   ;

Parameter RawMatAvail[product]   / TapeRec 100 , Radio 100 / ;

Scalar CashOnHandDec1      /  10000 / ;
Scalar AccountsRecDec1     /   3000 / ;
Scalar InventoryValueDec1  /   7000 / ;
Scalar LiabilitiesDec1     /  10000 / ;
Scalar RawMatReceivedJan1  /   2000 / ;
Scalar AccRecCollectDec    /   2000 / ;
Scalar LoanPaymentDec      /   1000 / ;
Scalar MonthlyRentDec      /   1000 / ;
Scalar MinCashOnHandJan    /   4000 / ;
Scalar MinAssetLiabRatio   /      2 / ;

Variables     CashPositionJan1    ,
              AccountsRecJan1     ,
              InventoryValueJan1  ,
              LiabilitiesJan1     ,
              AssetsJan1          ,
              ProduceDec[product] ,
*-> Prod;
              TotalProfit          ;

Equation Eq_1                 ,
         Eq_2                 ,
         Eq_3                 ,
         Eq_4                 ,
         Eq_5                 ,
         RawMatLimit(product) ,
         CashBalance          ,
         AssetLiabRatio       ,
         Def_obj               ;

Eq_1..
    CashPositionJan1   =e=  CashOnHandDec1 + AccRecCollectDec
                           - LoanPaymentDec - MonthlyRentDec
                           - Sum{product,LaborCost[product]*
                                         ProduceDec[product]}      ;
Eq_2..
    AccountsRecJan1    =e=  AccountsRecDec1
                           + Sum{product,SellingPrice[product]*
                                         ProduceDec[product]}
                           - AccRecCollectDec                      ;
Eq_3..
    InventoryValueJan1 =e=  InventoryValueDec1
                           - Sum{product,RawMatCost[product]*
                                         ProduceDec[product]}
                           + RawMatReceivedJan1                    ;
Eq_4..
    LiabilitiesJan1    =e=  LiabilitiesDec1
                           - LoanPaymentDec
                           + RawMatReceivedJan1                    ;
Eq_5..
    AssetsJan1         =e=  CashPositionJan1
                           + AccountsRecJan1
                           + InventoryValueJan1                    ;

RawMatLimit(product)..
        ProduceDec[product]  =l=  RawMatAvail[product]             ;

CashBalance..
        CashPositionJan1  =g=  MinCashOnHandJan                    ;

AssetLiabRatio..
       AssetsJan1 =g= MinAssetLiabRatio * LiabilitiesJan1          ;

Def_obj..
       TotalProfit =e= Sum{product,ContribProfit[product]*
                                      ProduceDec[product] }        ;
* MPL model solution
*ProduceDec.fx['TapeRec'] =  50 ;
*ProduceDec.fx['Radio']   = 100 ;

Model m3_7_9_Semicond / all / ;

Solve m3_7_9_Semicond using lp maximazing TotalProfit ;

Display TotalProfit.l ;
