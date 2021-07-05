*MPL Model Library MPL Model Library
*Star Oil,  Example 3.6-8,  Winston
*   {  Exmpl3.6-8_StartOil.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 3rd ed.  }
*   {  Chapter 3.6,  Example 8,  Capital Budgeting,  Size: 2x5,  Page 80  }

Set invest / i1*i5/ ;
Set   time / t0 , t1 / ;

Parameter CashAvail[time] / t0 40 , t1 20 / ;

Table  CashOutflow[time,invest]
            i1  i2  i3  i4  i5
     t0     11  53   5   5  29
     t1      3   6   5   1  34        ;

Parameter  NPV[invest]     / i1 13 , i2 16 , i3 16 , i4 14 , i5 39 / ;

Variables Purchase[invest] , TotalNetPresentValue ;

Equation InvestLimit(time) , Def_obj ;

InvestLimit(time)..
     Sum{invest,CashOutflow[time,invest]*Purchase[invest]} =l= CashAvail[time] ;

Def_obj..
     TotalNetPresentValue =e= Sum{invest, NPV[invest] * Purchase[invest] }     ;

* MPL model solution
*Purchase.fx['i1']  =  1.0000  ;
*Purchase.fx['i2']  =  0.2009  ;
*Purchase.fx['i3']  =  1.0000  ;
*Purchase.fx['i4']  =  1.0000  ;
*Purchase.fx['i5']  =  0.2881  ;

Purchase.up[invest] = 1 ;

Model m3_6_8_StartOil / all / ;

Solve m3_6_8_StartOil using lp maximazing TotalNetPresentValue ;

Display TotalNetPresentValue.l ;