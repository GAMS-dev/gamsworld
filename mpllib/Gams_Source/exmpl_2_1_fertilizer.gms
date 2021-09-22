*MPL Model Library MPL Model Library
*Fertilizer,  Example 2.1,  Murty
*   {  Exmpl2.1_Fertilizer.mpl  }
*   {  Murty, Operations Research, Deterministic Optimization Models  }
*   {  Chapter 2,  Example 2.1,  Product-mix,  Size: 3X2,  Page 23  }

* TITLE  Fertilizer;

Set fertilizer / Hi_ph , Lo_ph / ;
Set material   / RM1   , RM2   , RM3 / ;

Parameter NetProfit[fertilizer]  / Hi_ph  15 , Lo_ph  10 / ;
Parameter RawMatAvail[material]  / RM1  1500 , RM2  1200 , RM3 500 /;

Table RawMatReq[fertilizer, material]
               RM1  RM2  RM3
      Hi_ph     2    1    1
      Lo_ph     1    1    0    ;

Variable Produce[fertilizer] , TotalProfit ;

Equation Requirement[material] , Def_obj ;

Requirement[material]..
        SUM{fertilizer,RawMatReq[fertilizer, material] *
                       Produce[fertilizer]}          =l= RawMatAvail[material] ;
Def_obj..
    TotalProfit =e= SUM{fertilizer,NetProfit[fertilizer]*Produce[fertilizer] } ;

* MPL model solution
*Produce.fx['Hi_ph'] =  300 ;
*Produce.fx['Lo_ph'] =  900 ;

Model m2_1_Fertilizer / all / ;

Solve m2_1_Fertilizer using lp maximazing TotalProfit ;

Display TotalProfit.l ;