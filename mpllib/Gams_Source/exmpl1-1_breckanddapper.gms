* MPL Model Library MPL Model Library
* Breck and Dapper,  Example 1.1,  Shapiro
*   {  Exmpl1-1_BreckAndDapper.mpl  }
*   {  Roy D. Shapiro, Optimization Models for Planning and Allocation  }
*   {  Chapter 1,  Example 1,  Product-Mix,  Size: 5x6,  Page 12  }

* TITLE BreckAndDapper;

Set drill / d1*d4 /;

Parameter PlastReq[drill]  / d1  0.82 , d2  0.62 , d3 1.42  , d4 2.03  / ;
*lb
Parameter CopperReq[drill] / d1  0.43 , d2  0.69 , d3 0.33  , d4 0.20  / ;
*lb
Parameter WireReq[drill]   / d1 15    , d2 16    , d3 9     , d4 9     / ;
*yd
Parameter Contrib[drill]   / d1 12.50 , d2 11.30 , d3 17.20 , d4 19.90 / ;
*dollars

Scalar PlastAvail   / 16000 / ;
*lb
Scalar CopperAvail  /  5000 / ;
*lb
Scalar WireOnHand   /  8000 / ;
*yd

Scalar ProdWireCap      /  80000   /;
*yd
Scalar ProdWireRate     /  3.6     /; ProdWireRate = ProdWireRate/100 ;
*lb/yd
Scalar WireProdCost     /  0.14    /;
Scalar WirePurchaseCost /  0.29    /;

Variables Produce[drill] ,
*-> x;
          WirePurchase   ,
*-> Wp;
          WireProduce    ,
*-> Wm;
          TotalProfit     ;

Equation PlastLimit      ,
         CopperLimit     ,
         WireLimit       ,
         WireProdLimit   ,
         Marketing       ,
         Def_obj          ;

PlastLimit..
        Sum{drill, PlastReq[drill] * Produce[drill]}  =l=  PlastAvail;

CopperLimit..
        Sum{drill, CopperReq[drill] * Produce[drill]} +
        ProdWireRate * WireProduce  =l=  CopperAvail;

WireLimit..
        Sum{drill,WireReq[drill] * Produce[drill]}  =l=  WireOnHand  +
                                                         WireProduce +
                                                         WirePurchase  ;
WireProdLimit..
        WireProduce  =l=  ProdWireCap ;

Marketing..
        Produce['d1'] + Produce['d2']  =g=  Produce['d3'] + Produce['d4'] ;


Def_obj..
    TotalProfit  =e=  Sum{drill, Contrib[drill] * Produce[drill]} -
                      WireProdCost * WireProduce                  -
                      WirePurchaseCost * WirePurchase ;

Produce.lo[drill] = 0.0 ;

* MPL  model solution
* Produce.fx['d1'] =     6796.5024 ;
* Produce.fx['d2'] =        0.0000 ;
* Produce.fx['d3'] =     5524.6423 ;
* Produce.fx['d4'] =     1271.8601 ;


Model m1_1_BreckAndDapper / all / ;

Solve m1_1_BreckAndDapper using lp maximazing TotalProfit ;

Display TotalProfit.l ;