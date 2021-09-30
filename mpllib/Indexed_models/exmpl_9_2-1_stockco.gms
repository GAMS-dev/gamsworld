* MPL Model Library MPL Model Library
* Stockco, Example 1, Winston
*   {  Exmpl9.2-1_Stockco.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.2,  Example 1,  Capital Budgeting (MIP),  Size: 1x4,  Page 478  }

* TITLE  StockCoBudgeting;

Set investment / i1*i4 /;

Parameter NPV[investment] /i1 16 , i2 22 , i3 12 , i4 8 / ;
          NPV[investment] = NPV[investment] * 1000 ;

Parameter CashOutflow[investment] / i1 5000 , i2 7000 , i3 4000 , i4 3000 / ;

Scalar Budget / 14000 / ;

Binary Variables Invest[investment] ;
       Variables InvestmentValue ;

Equation Budgetlimit , Def_obj ;

Budgetlimit..
*-> BLIM:
    Sum{investment,Invest[investment] * CashOutflow[investment]} =l= Budget;

Def_obj..
    InvestmentValue =e= Sum{investment, Invest[investment] * NPV[investment]};

Invest.fx['i1'] = 0 ;
Invest.fx['i2'] = 1 ;
Invest.fx['i3'] = 1 ;
Invest.fx['i4'] = 1 ;

Model m9_2_1_Stockco / all / ;

Solve m9_2_1_Stockco using mip maximazing InvestmentValue ;

Display InvestmentValue.l ;