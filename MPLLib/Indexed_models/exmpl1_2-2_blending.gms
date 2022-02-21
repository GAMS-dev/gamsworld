* MPL Model Library MPL Model Library
* Vegetable Oil Blending,  Example 1.2-2,  H.P. Williams
*   {  Exmpl1.2-2_Blending.mpl  }
*   {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*   {  Chapter 1.2,  Example 2,  Blending,  Size: 5x6,  Page 8  }

* TITLE VegetableOilBlending;

Set oils             / Veg1 , Veg2 , Oil1 , Oil2 , Oil3 / ;
Set VegOils(oils)    / Veg1 , Veg2 / ;
Set NonVegOils(oils) / Oil1 , Oil2 , Oil3 / ;

Scalar MaxVegRefine     / 200 / ;
Scalar MaxNonVegRefine  / 250 / ;
Scalar Price            / 150 / ;
Scalar MinHardness      /   3 / ;
Scalar MaxHardness      /   6 / ;

Parameter Cost[oils]     / Veg1 110   , Veg2 120   ,
                           Oil1 130   , Oil2 110   , Oil3 115   / ;
Parameter Hardness[oils] / Veg1   8.8 , Veg2   6.1 ,
                           Oil1   2.0 , Oil2   4.2 , Oil3   5.0 / ;

Variables  RawOils[oils]   ,
*-> Raw;
           Produce         ,
           NetProfit       ;

Equation ProductWeight     ,
         MaxVegRefining    ,
         MaxNonVegRefining ,
         MinimumHardness   ,
         MaximumHardness   ,
         Def_obj           ;

ProductWeight..
    Produce =e= Sum{oils, RawOils[oils]};

MaxVegRefining..
    Sum{oils$VegOils(oils),    RawOils[oils]} =l= MaxVegRefine    ;

MaxNonVegRefining..
    Sum{oils$NonVegOils(oils), RawOils[oils]} =l= MaxNonVegRefine ;

MinimumHardness..
    Sum{oils, Hardness[oils] * RawOils[oils]} =g= MinHardness * Produce ;

MaximumHardness..
    Sum{oils, Hardness[oils] * RawOils[oils]} =l= MaxHardness * Produce ;

Def_obj..
    NetProfit =e= Price * Produce - Sum{oils, Cost[oils] * RawOils[oils] } ;

RawOils.lo[oils] = 0.0 ;
* MPL  model solution
*RawOils.fx['Veg1']  =   159.2593 ;
*RawOils.fx['Veg2']  =    40.7407 ;
*RawOils.fx['Oil1']  =     0.0    ;
*RawOils.fx['Oil2']  =   250.0000 ;
*RawOils.fx['Oil3']  =     0.0    ;


Model m1_2_2_Blending / all / ;

Solve m1_2_2_Blending using lp maximazing NetProfit ;

Display NetProfit.l ;