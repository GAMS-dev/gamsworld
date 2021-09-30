*MPL Model Library MPL Model Library
*Nori and Leets, Example 3.4-3, Hillier and Lieberman
*   {  Exmpl_3.4-3_NoriAndLeets.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.4,  Example 3,  Blending/Air Pollution,  Size: 3x6,  Page 50  }
*
* TITLE    NoriLeetsAirPollution;

Set pollutant / Particulates , SulfurOxides , Hydrocarbons / ;
Set furnace   / Blast, OpenHearth / ;
Set abatement / TallerSmokestacks , Filters , BetterFuels /;

Parameter RequiredReduction[pollutant] / Particulates  60 ,
                                         SulfurOxides 150 ,
                                         Hydrocarbons 125  /;

Parameter ReducedEmissionRate[pollutant, abatement, furnace] ;

ReducedEmissionRate['Particulates','TallerSmokestacks','Blast'] =      12 ;
ReducedEmissionRate['Particulates','TallerSmokestacks','OpenHearth'] =  9 ;
ReducedEmissionRate['Particulates','Filters','Blast'] =                25 ;
ReducedEmissionRate['Particulates','Filters','OpenHearth'] =           20 ;
ReducedEmissionRate['Particulates','BetterFuels','Blast'] =            17 ;
ReducedEmissionRate['Particulates','BetterFuels','OpenHearth'] =       13 ;
ReducedEmissionRate['SulfurOxides','TallerSmokestacks','Blast'] =      35 ;
ReducedEmissionRate['SulfurOxides','TallerSmokestacks','OpenHearth'] = 42 ;
ReducedEmissionRate['SulfurOxides','Filters','Blast'] =                18 ;
ReducedEmissionRate['SulfurOxides','Filters','OpenHearth'] =           31 ;
ReducedEmissionRate['SulfurOxides','BetterFuels','Blast'] =            56 ;
ReducedEmissionRate['SulfurOxides','BetterFuels','OpenHearth'] =       49 ;
ReducedEmissionRate['Hydrocarbons','TallerSmokestacks','Blast']=       37 ;
ReducedEmissionRate['Hydrocarbons','TallerSmokestacks','OpenHearth']=  53 ;
ReducedEmissionRate['Hydrocarbons','Filters','Blast'] =                28 ;
ReducedEmissionRate['Hydrocarbons','Filters','OpenHearth'] =           24 ;
ReducedEmissionRate['Hydrocarbons','BetterFuels','Blast']=             29 ;
ReducedEmissionRate['Hydrocarbons','BetterFuels','OpenHearth'] =       20 ;

Table AnnualCost[abatement, furnace]
                   Blast  OpenHearth
TallerSmokestacks      8          10
Filters                7           6
BetterFuels           11           9  ;

Variables UseMethod[abatement, furnace] , TotalCost ;

Equation EmissionReduction[pollutant] , Def_obj ;

EmissionReduction[pollutant]..
   SUM{(furnace, abatement),ReducedEmissionRate[pollutant, abatement, furnace]*
                            UseMethod[abatement,furnace]} =g=
                                                    RequiredReduction[pollutant];

Def_obj.. TotalCost =e= SUM{(abatement, furnace),AnnualCost[abatement,furnace]*
                                                 UseMethod[abatement,furnace]  };

UseMethod.up[abatement,furnace]  =  1 ;
UseMethod.lo[abatement,furnace]  =  0 ;

Model m3_4_3_NoriAndLeets / all / ;

Solve m3_4_3_NoriAndLeets using nlp minimazing TotalCost ;

Display TotalCost.l ;