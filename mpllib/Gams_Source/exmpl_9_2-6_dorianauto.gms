* MPL Model Library MPL Model Library
* DorianAuto, Example 6, Winston
*   {  Exmpl9.2-6_DorianAuto.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.2,  Example 6,  Either Or (MIP),  Size: 8x6,  Page 488  }

* TITLE  DorianAuto;

Set cartype / Compact , Midsize , Large / ;

Parameter Profit[cartype]   /  Compact 2000   , Midsize 3000 , Large 4000 / ;
Parameter SteelReq[cartype] /  Compact    1.5 , Midsize    3 , Large    5 / ;
Parameter LaborReq[cartype] /  Compact   30   , Midsize   25 , Large   40 / ;
Parameter M[cartype]        /  Compact 2000   , Midsize 2000 , Large 1200 / ;

Scalar    AvailLabor        / 60000 / ;
Scalar    AvailSteel        /  6000 / ;
Scalar    MinProduction     /  1000 / ;

Binary Variables  ChooseType[cartype];

       Variables  Produce[cartype] , TotalProfit ;

Equation  UpperProdLimit(cartype) ,
          MinProdLimit(cartype)   ,
          LaborLimit              ,
          SteelLimit              ,
          Def_obj                  ;

UpperProdLimit(cartype)..
*-> UPL:
     Produce[cartype] =l= M[cartype] * ChooseType[cartype];

MinProdLimit(cartype)..
*-> MPL:
     MinProduction - Produce[cartype] =l= M[cartype]*(1 - ChooseType[cartype]);

LaborLimit..
*-> LBL:
     Sum{cartype, Produce[cartype] * LaborReq[cartype]} =l= AvailLabor;

SteelLimit..
*-> STL:
     Sum{cartype, Produce[cartype] * SteelReq[cartype]} =l= AvailSteel;

Def_obj.. TotalProfit =e= Sum{cartype, Profit[cartype] * Produce[cartype]} ;

* MPL model solution
*Produce.fx['Compact'] =     0.0 ;
*Produce.fx['Midsize'] =  2000.0 ;
*Produce.fx['Large']   =     0.0 ;

*ChooseType.fx['Compact'] =  0 ;
*ChooseType.fx['Midsize'] =  1 ;
*ChooseType.fx['Large']   =  0 ;


Model m9_2_6_DorianAuto / all / ;

Solve m9_2_6_DorianAuto using mip maximazing TotalProfit ;

Display TotalProfit.l ;