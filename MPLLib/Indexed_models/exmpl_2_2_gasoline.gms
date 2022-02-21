*MPL Model Library MPL Model Library
*Gasoline Blending,  Example 2.2,  Murty
*   {  Exmpl2.2_Gasoline.mpl  }
*   {  Murty, Operations Research, Deterministic Optimization Models  }
*   {  Chapter 2,  Example 2.2,  Blending,  Size: 9x16,  Page 28  }

* TITLE  GasolineBlending;

Set rawgas   / r1*r4 / ;
Set fueltype / f1*f3 / ;

Parameter OctaneRating[rawgas] / r1   68   , r2   86   , r3   91   , r4   99   / ;
Parameter RawGasAvail[rawgas]  / r1 4000   , r2 5050   , r3 7100   , r4 4300   / ;
Parameter RawGasCost[rawgas]   / r1   31.02, r2   33.15, r3   36.35, r4   38.75/ ;
Parameter RawGasPrice[rawgas]  / r1   36.85, r2   36.85, r3   38.95, r4   38.95/ ;

Parameter MinOctaneFuel[fueltype]  / f1    95    , f2  90    , f3    85     / ;
Parameter FuelPrice[fueltype]      / f1    45.15 , f2  42.95 , f3    40.99  / ;
Parameter MinimumDemand[fueltype]  / f1     0    , f2   0    , f3 15000     / ;
Parameter MaximumDemand[fueltype]  / f1 10000    , f2   0    , f3     0     / ;


Variable FuelComposition[fueltype,rawgas] ,
         RawGasSold[rawgas]               ,
         TotalFuelRevenue                 ,
         TotalRawGasRevenue               ,
         TotalRawGasCost                  ,
         TotalProfit                      ;

Equation  Eq_1                ,
          Eq_2                ,
          Eq_3                ,
          RawGasLimit(rawgas) ,
          OctaneReq(fueltype) ,
          MinDemand(fueltype) ,
          MaxDemand(fueltype) ,
          Def_obj              ;

Eq_1..
   TotalFuelRevenue =e= Sum{(rawgas,fueltype),FuelPrice[fueltype] *
                                              FuelComposition[fueltype,rawgas]};
Eq_2..
   TotalRawGasRevenue =e= Sum{rawgas,RawGasPrice[rawgas] *
                                     RawGasSold[rawgas]    };
Eq_3..
   TotalRawGasCost =e= Sum{(rawgas,fueltype),RawGasCost[rawgas] *
                                             FuelComposition[fueltype,rawgas]} +
                       Sum{rawgas, RawGasCost[rawgas] *
                                   RawGasSold[rawgas]};
RawGasLimit(rawgas)..
*-> RGasLim:
        Sum{fueltype,FuelComposition[fueltype,rawgas]}+RawGasSold[rawgas] =l=
                                                           RawGasAvail[rawgas] ;

OctaneReq(fueltype)..
*-> OctReq:
        Sum{rawgas,OctaneRating[rawgas]*FuelComposition[fueltype,rawgas]} =g=
        MinOctaneFuel[fueltype]*Sum{rawgas,FuelComposition[fueltype,rawgas]  } ;

MinDemand(fueltype)$(MinimumDemand[fueltype] gt 0)..
*-> MinDem:
      Sum(rawgas,FuelComposition[fueltype,rawgas]) =g= MinimumDemand[fueltype] ;

MaxDemand(fueltype)$(MaximumDemand[fueltype] gt 0)..
*-> MaxDem:
      Sum{rawgas,FuelComposition[fueltype,rawgas]} =l= MaximumDemand[fueltype] ;

Def_obj..
    TotalProfit =e= TotalFuelRevenue + TotalRawGasRevenue - TotalRawGasCost ;

FuelComposition.lo[fueltype,rawgas] = 0 ;
RawGasSold.lo[rawgas]               = 0 ;

* MPL model solution
*RawGasSold.fx['r1'] = 542.5926 ;
*RawGasSold.fx['r1'] = 0.0 ;
*RawGasSold.fx['r1'] = 0.0 ;
*RawGasSold.fx['r1'] = 0.0 ;

*FuelComposition.fx['f1','r1'] =        0.0000 ;
*FuelComposition.fx['f1','r2'] =     1509.9715 ;
*FuelComposition.fx['f1','r3'] =        0.0000 ;
*FuelComposition.fx['f1','r4'] =     3397.4359 ;
*FuelComposition.fx['f2','r1'] =        0.0000 ;
*FuelComposition.fx['f2','r2'] =        0.0000 ;
*FuelComposition.fx['f2','r3'] =        0.0000 ;
*FuelComposition.fx['f2','r4'] =        0.0000 ;
*FuelComposition.fx['f3','r1'] =     3457.4074 ;
*FuelComposition.fx['f3','r2'] =     3540.0285 ;
*FuelComposition.fx['f3','r3'] =     7100.0000 ;
*FuelComposition.fx['f3','r4'] =      902.5641 ;

Model m2_2_Gasoline / all / ;

Solve m2_2_Gasoline using lp maximazing TotalProfit ;

Display TotalProfit.l ;