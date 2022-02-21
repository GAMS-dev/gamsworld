* MPL Model Library MPL Model Library
* Portfolio Selection,  Example 1.3b,  Shapiro
*   {  Exmpl1-3b_PortfolioSelection.mpl  }
*   {  Roy D. Shapiro, Optimization Models for Planning and Allocation  }
*   {  Chapter 1,  Example 3,  Portfolio Selection,  Size: 5x6,  Page 21  }

* TITLE PortfolioSelection;

Set bond / A , B , C , D , E / ;
Set type / Municipal , Agency , Government / ;

Set BondType(bond,type) ;
    BondType('A','Municipal') = Yes ;
    BondType('B','Agency')    = Yes ;
    BondType('C','Government')= Yes ;
    BondType('D','Government')= Yes ;
    BondType('E','Municipal') = Yes ;

Scalar TotalAvailForInvest / 10 / ;
Scalar MaxMunicipal   / 3    / ;
Scalar MaxAvgQuality  / 1.4  / ;
Scalar MaxAvgMaturity / 5    / ;
Scalar TaxRate        / 0.50 / ;
Scalar BorrowInterestRate / 0.11 / ;



Parameter QualityBank[bond]     / A 2   , B 2    , C 1    , D 1   , E 5   / ;
Parameter YearsToMaturity[bond] / A 9   , B 15   , C  4   , D 3   , E 2   / ;
Parameter Yield[bond]           / A 8.6 , B 10.8 , C 10.0 , D 8.8 , E 9.0 / ;
          Yield[bond] = Yield[bond] /100 ;
Parameter YieldAfterTax[bond]   / A 8.6 , B  5.4 , C  5.0 , D 4.4 , E 9.0 / ;
          YieldAfterTax[bond] = YieldAfterTax[bond] / 100 ;

Variables Invest[bond]       ,
*-> x;
          Borrow
*-> y;
          AfterTaxEarnings    ;

Equation AmountInvested      ,
         MaxInvestType(type) ,
         QualityReq          ,
         MaturityReq         ,
         Def_obj              ;

AmountInvested..
        Sum{bond, Invest[bond]} =l=  TotalAvailForInvest + Borrow;

MaxInvestType(type)$(ord(type) eq 1)..
        Sum{bond$(BondType(bond,type)),Invest[bond]}  =l=  MaxMunicipal;

QualityReq..
    Sum{bond, QualityBank[bond] * Invest[bond]}   =l=  MaxAvgQuality *
                                                       Sum{bond, Invest[bond]};
MaturityReq..
    Sum{bond, YearsToMaturity[bond]*Invest[bond]} =l=  MaxAvgMaturity *
                                                       Sum{bond, Invest[bond]};

Def_obj.. AfterTaxEarnings  =e= Sum{bond, YieldAfterTax[bond] * Invest[bond] } -
                                 BorrowInterestRate * TaxRate * Borrow ;

Borrow.up = 1;
Borrow.lo = 0;
Invest.lo[bond]  =  0.0 ;

* MPL  model solution
*Invest.fx['A']  =  2.4000 ;
*Invest.fx['B']  =  0.0000 ;
*Invest.fx['C']  =  8.1000 ;
*Invest.fx['D']  =  0.0000 ;
*Invest.fx['E']  =  0.5000 ;


Model m1_3b_PortfolioSelection / all / ;

Solve m1_3b_PortfolioSelection using lp maximazing AfterTaxEarnings ;

Display AfterTaxEarnings.l ;