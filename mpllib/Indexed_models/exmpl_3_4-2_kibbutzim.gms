*MPL Model Library MPL Model Library
*Kibbutzim, Example 3.4-2, Hillier and Lieberman
*   {  Exmpl_3.4-2_Kibbutzim.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.4,  Example 2,  Product-mix/Allocation,  Size: 12x9,  Page 46  }
*
*TITLE
*    KibbutzimCropAllocation;

Set kibbutz / k1*k3 / ;
Set crop / SugarBeets , Cotton , Sorghum / ;

Parameter UsableLand[kibbutz] / k1  400 , k2 600 , k3 300 / ;
*  [Acres]
Parameter WaterAlloc[kibbutz] / k1  600 , k2 800 , k3 375 / ;
*  [AcreFeet]
Parameter WaterUsed[crop]     / SugarBeets    3 , Cotton    2 , Sorghum   1 / ;
*  [AcreFeet/Acre]
Parameter NetReturn[crop]     / SugarBeets 1000 , Cotton  750 , Sorghum 250 / ;
*  [$/Acre]
Parameter MaxQuota[crop]      / SugarBeets  600 , Cotton  500 , Sorghum  325/ ;
*  [Acres]

Variables  AllocAcre[crop,kibbutz] , TotalProfit ;

Equation   MaxLandUse(kibbutz)    ,
           MaxWaterAlloc(kibbutz) ,
           TotalAcreage(crop)     ,
           EqProp12               ,
           EqProp23               ,
           EqProp31               ,
           Def_obj                 ;

    MaxLandUse(kibbutz)..
        SUM{crop, AllocAcre[crop,kibbutz]} =l= UsableLand[kibbutz];

    MaxWaterAlloc(kibbutz)..
        SUM{crop, WaterUsed[crop] * AllocAcre[crop,kibbutz]} =l= WaterAlloc[kibbutz];

    TotalAcreage(crop)..
        SUM{kibbutz, AllocAcre[crop,kibbutz]} =l= MaxQuota[crop];

    EqProp12..
        SUM{(crop,kibbutz)$(ord(kibbutz) eq 1), AllocAcre[crop,kibbutz] / UsableLand[kibbutz]}  =e=
        SUM{(crop,kibbutz)$(ord(kibbutz) eq 2), AllocAcre[crop,kibbutz] / UsableLand[kibbutz]}      ;
    EqProp23..
        SUM{(crop,kibbutz)$(ord(kibbutz) eq 2), AllocAcre[crop,kibbutz] / UsableLand[kibbutz] } =e=
        SUM{(crop,kibbutz)$(ord(kibbutz) eq 3), AllocAcre[crop,kibbutz] / UsableLand[kibbutz] }     ;
    EqProp31..
        SUM{(crop,kibbutz)$(ord(kibbutz) eq 3), AllocAcre[crop,kibbutz] / UsableLand[kibbutz] } =e=
        SUM{(crop,kibbutz)$(ord(kibbutz) eq 1), AllocAcre[crop,kibbutz] / UsableLand[kibbutz] }     ;

Def_obj..  TotalProfit =e= SUM{(crop, kibbutz), NetReturn[crop] * AllocAcre[crop,kibbutz]} ;

AllocAcre.lo[crop,kibbutz] = 0 ;

Model m3_4_2_Kibbutzim / all / ;

Solve m3_4_2_Kibbutzim using nlp maximazing TotalProfit ;

Display TotalProfit.l ;