* MPL Model Library MPL Model Library
* Transportation,  Example 1.4,  Shapiro
*   {  Exmpl1-4_Transportation.mpl  }
*   {  Roy D. Shapiro, Optimization Models for Planning and Allocation  }
*   {  Chapter 1,  Example 4,  Transportation,  Size: 6x8,  Page 24  }

* TITLE TransportationProblem;

Set mill    / m1 , m2/ ;
Set market  / Northburg , Midburg , Southburg / ;
*-> (N, M, S)

Scalar WheatAvail / 50000 / ;

Parameter MillingCost[mill]     / m1 0.13 , m2 0.16 / ;
Parameter MarketDemand[market]  / Northburg 10000 , Midburg 15000 , Southburg 25000 / ;
Parameter ShipCostMill[mill]    / m1 0.31 , m2 0.33 / ;

Table ShipCostMarket[market,mill]
                            m1     m2
             Northburg     0.18   0.25
             Midburg       0.22   0.23
             Southburg     0.27   0.19  ;

Variables ShipMill[mill]           ,
          ShipMarket[mill,market]  ,
          TotalCost                 ;

Equation WheatToMills      ,
         MillBalance(mill) ,
         MarketReq(market) ,
         Def_obj            ;

WheatToMills..
    Sum{mill, ShipMill[mill]} =e=  WheatAvail;

MillBalance(mill)..
    ShipMill[mill]  =e=  Sum{market, ShipMarket[mill,market]};

MarketReq(market)..
    Sum{mill, ShipMarket[mill,market]}  =e=  MarketDemand[market];

Def_obj..
    TotalCost =e= Sum{mill, MillingCost[mill] * ShipMill[mill]}   +
                  Sum{mill, ShipCostMill[mill] * ShipMill[mill]}  +
                  Sum{(mill,market), ShipCostMarket[market,mill] *
                                     ShipMarket[mill,market]        } ;

ShipMarket.lo[mill,market]  = 0.0 ;
* MPL  model solution

*ShipMarket.fx['m1','Northburg']  =         0.0000  ;
*ShipMarket.fx['m1','Midburg']    =         0.0000  ;
*ShipMarket.fx['m1','Southburg']  =     25000.0000  ;
*ShipMarket.fx['m2','Northburg']  =     10000.0000  ;
*ShipMarket.fx['m2','Midburg']    =     15000.0000  ;
*ShipMarket.fx['m2','Southburg']  =         0.0000  ;

*ShipMill.fx['m1'] = 25000 ;
*ShipMill.fx['m2'] = 25000 ;

Model m1_4_Transportation / all / ;

Solve m1_4_Transportation using lp maximazing TotalCost ;

Display TotalCost.l ;