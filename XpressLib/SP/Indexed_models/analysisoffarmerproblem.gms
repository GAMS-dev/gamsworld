*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: AnalysisOfFarmerProblem.mos
*
*   DESCRIPTION: Farm production planning
*
*   TYPE: Stochastic 2-stage linear model
*
*      A farmer needs to make decisions regarding the devotion
*   of available land to different products: wheat, corn and
*   sugar beet, during the winter season. The yield is realized
*   in the summer and depends on the overall weather during the
*   year (e.g., bad, ok, good). The farmer must produce a certain
*   amount of products for the cattle feed. Then the farmer must
*   also decide how much of each product needs to be purchased or
*   sold depending on the yield. There is an additional restriction
*   on the selling price of sugar beet because of quota restriction.
*
*   MODEL:
*   • Sets
*           o Stages: {Winter, Summer}
*           o Products: {Wheat, Corn, Sugar Beet}
*   • Constraints
*           o Minimum production for cattle feed
*           o Quota restriction on sugar beet production
*   • Variables o x(i): acres of land devoted to product i
*           o w(wheat), w(corn): tons of wheat and corn sold respectively
*           o y(wheat), y(corn): tons of wheat and corn purchased respectively
*           o w(favor), w(unfavor): tons of sugar beet sold at favorable
*                                                        and unfavorable price respectively
*
*   FURTHER INFO:
*   see J.R.Birge and Francois Louveaux (97) - “A farmer’s problem”-
*   Introduction to Stochastic Programming, 4-10
*
*   see Xpress-SP guide
*
*   DATE: Mar 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
*******************************************************!)
*model farmer
*uses 'mmsp'


* ALLProducts={"Wheat","Corn","Sugar Beet Favorable","Sugar Beet Unfavorable"}

Set Products               / Wht , Crn , SugBtFav , SugBtUnfav  / ;
Set WheatAndCorn(Products) / Wht , Crn  / ;
Set  S /s1*s3/;

Parameter SellingPrice[Products]
            / Wht 170 , Crn 150 , SugBtFav 36 , SugBtUnfav 10 /    ;

Parameter PlantingCost[Products]       ;

PlantingCost['Wht']        = 150 ;
PlantingCost['Crn']        = 150 ;
PlantingCost['SugBtFav']   = 150 ;
PlantingCost['SugBtUnfav'] = 150 ;

Parameter PurchasePrice[Products]      ;
          PurchasePrice['Wht']      = 238 ;
          PurchasePrice['Crn']      = 210 ;

Parameter MinimumRequirement[Products] ;
          MinimumRequirement['Wht'] = 200 ;
          MinimumRequirement['Crn'] = 240 ;

Table Values[Products,S]
                 s1      s2     s3
   Wht           3.0     2.5    2.0
   Crn           3.6     3.0    2.4
   SugBtFav     24.0    20.0   16.0
   SugBtUnfav   24.0    20.0   16.0  ;

Parameter yield[Products] ;
Loop{S$(ord(S) eq 1),
Loop{Products,
     yield[Products] = Values[Products,S] ;
    };};
Scalar TotalAvailableLand /  500 / ;
Scalar MaxSugarBeetQuota  / 6000 / ;


Positive Variable
*                 Land under each product
                  x[Products] ,
                  y[Products] ,
                  w[Products] ;
Variable TotalCost ;

Equation LandUtilized                            ,
         SugarBeetProduction                     ,
         SugarBeetQuota                          ,
         MinCattleFeedRequirement(Products)      ,
         Def_Obj                                 ;
*model

LandUtilized..
    Sum{Products,x[Products] } =l=TotalAvailableLand ;

SugarBeetProduction..
    Sum{Products$(ord(Products) gt 2), w[Products] } =l=
                                         yield['SugBtFav']*x['SugBtFav']    +
                                         yield['SugBtUnFav']*x['SugBtUnFav'] ;
SugarBeetQuota..
    w['SugBtFav']=l= MaxSugarBeetQuota ;

MinCattleFeedRequirement(Products)$WheatAndCorn(Products)..
    yield[Products]*x[Products]+y[Products]- w[Products] =g=
                                           MinimumRequirement[Products] ;

Def_Obj..
    TotalCost =e= Sum{Products, PlantingCost[Products]*x[Products]   }-
                  Sum{Products, SellingPrice[Products]*w[Products]   }+
                  Sum{Products$WheatAndCorn[Products],PurchasePrice[Products]*
                                                      y[Products]};

*maximize the expected profit
Model farmer /all / ;
Solve farmer using LP minimazing TotalCost ;
Display TotalCost.l ;


