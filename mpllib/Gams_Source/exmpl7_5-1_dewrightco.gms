* MPL Model Library MPL Model Library
* Goal Programming, Example 7.5-1, Hillier and Lieberman
*   {  Exmpl7.5-1_DewrightCo.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 7.5,  Example 1,  Dewright Co.,  Size: 3x7,  Page 333  }

* TITLE Dewright_Co;

Set product / p1*p3 /;
Set factor  / Profit , Employment , Investment / ;
Set deviation / Over , Under /;

Parameter Goal[factor] / Profit 125 , Employment 40 , Investment 55 / ;

Table PenaltyWeight[deviation,factor]
                 Profit  Employment  Investment
      Over          0        2            3
      Under         5        4            0       ;

Table UnitContrib[factor,product]
                  p1  p2  p3
      Profit      12   9  15
      Employment   5   3   4
      Investment   5   7   8   ;



Variable  ProdRate[product]         ,
          Amount[factor,deviation]  ,
          WeightedSum               ;

Equation Calc(factor) ,
         Def_obj      ;

Calc(factor)..
       Sum{(product), ProdRate[product] * UnitContrib[factor,product]}  =e=
        Goal[factor] + Amount[factor,'Over'] - Amount[factor,'Under']          ;

Def_obj..
    WeightedSum =e= Sum{(deviation, factor), PenaltyWeight[deviation,factor] *
                                             Amount[factor, deviation]        };


Amount.lo[factor,deviation] = 0.0 ;
ProdRate.lo[product] = 0.0 ;
* MPL  model solution
*Amount.fx['Profit','Under']      =          0.0000  ;
*Amount.fx['Employment','Over']   =          8.3333  ;
*Amount.fx['Employment','Under']  =          0.0000  ;
*Amount.fx['Investment','Over']   =          0.0000  ;

*ProdRate.fx['p1'] = 8.3333 ;
*ProdRate.fx['p2'] = 0.0    ;
*ProdRate.fx['p3'] = 1.6667 ;

Model m7_5_1_DewrightCo / all / ;

Solve m7_5_1_DewrightCo using lp minimazing WeightedSum ;

Display WeightedSum.l ;