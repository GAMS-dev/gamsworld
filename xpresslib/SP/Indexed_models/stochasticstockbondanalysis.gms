*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: StochasticStockBondAnalysis.mos
*
*   DESCRIPTION: Stochastic multi-stage linear model
*
*   TYPE: Finance
*
*      We currently want to invest $b in stocks and bonds.
*   At the end of T-1 years, we would like to exceed the goal $G.
*   The investment is changed every year. The excess income would
*   imply an income of q% of the excess income and shortage would
*   imply borrowing at r% of the amount short.
*
*   MODEL:
*                We also assume that at each stage the return on stocks and
*   bonds is 1.25 and 1.14 or 1.06 and 1.12 each with probability 0.5
*   • Decision variables
*        o x(i,t): amount invested in asset i at time t
*        o y: shortage
*        o w: excess
*   • Constraints
*        o Balance of initial investment, returns and goal meeting requirements
*
*   We also compare the results if all investments are done in stocks only.
*
*   FURTHER INFO: see
*   J.R.Birge and Francois Louveaux (97) - “Financial planning and control”
*   - Introduction to Stochastic Programming, 20-24
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
********************************************************
* model stochasticStockAndBondModel
* uses 'mmsp'
$Set T 4

Set Assets / Stocks , Bonds / ;
Set Stages / s1*s%T% /        ;

*data
Scalar b / 55 / ;
Scalar G / 80 / ;
Scalar q /  1 / ;
Scalar r /  4 / ;

Parameter StockVal[Assets] / Stocks 1.25 , Bonds 1.06 / ;
Parameter BondVal[Assets]  / Stocks 1.14 , Bonds 1.12 / ;
Alias(Assets,Assets1);
Parameter Return[Assets,Stages] ;
Loop{Stages,
Loop{Assets$(ord(Assets) eq 1),
    Return[Assets,Stages] = StockVal[Assets] ;
    };
Loop{Assets$(ord(Assets) eq 2),
    Return[Assets,Stages] = Sum{Assets1$(ord(Assets1) eq 1),BondVal[Assets1]}  ;
    };

    };

Positive Variable
         x[Assets,Stages] ,
         w                ,
         y                ;
Variable
         ExpectedUtility  ;

Equation
         Balance_1(Stages) ,
         Balance_2(Stages) ,
         Balance_3(Stages) ,
         Def_Obj           ;

Balance_1(Stages)$(ord(Stages) eq 1)..
    Sum{Assets, x[Assets,Stages] } =e= b ;

Balance_2(Stages)$(ord(Stages) eq card(Stages))..
    Sum{Assets, return[Assets,Stages]*x[Assets,Stages-1]}-y+w=e=G;

Balance_3(Stages)$((ord(Stages) gt 1)and(ord(Stages) lt card(Stages)))..
   -Sum{Assets,x(Assets,Stages)} +
    Sum{Assets, return[Assets,Stages]*x[Assets,Stages-1]}=e=0;

Def_Obj..
    ExpectedUtility =e= q * y - r * w ;

Model stochasticStockAndBond /all / ;
Solve stochasticStockAndBond using LP maximazing ExpectedUtility ;
Display ExpectedUtility.l ;

