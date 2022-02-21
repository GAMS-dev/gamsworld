*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file foliolperr.mos
*   ```````````````````
*   Modeling a small LP problem
*   to perform portfolio optimization.
*   -- Model with syntax errors --
*
*   (c) 2003 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Portfolio optimization with LP"

* Set of shares
Set SHARES / s1*s10 / ;
* Set of high-risk values among shares
Set RISK(SHARES) / s2 , s3 , s4 , s9 , s10 / ;

* Set of shares issued in N.-America
Set NA_1(SHARES) / s1 , s2 , s3 , s4     / ;

* Estimated return in investment
Parameter RET[SHARES] / s1 5 , s2 17 , s3 26 , s4 12 , s5   8 ,
                        s6 9 , s7  7 , s8  6 , s9 31 , s10 21  / ;

Variable
* Fraction of capital used per share
         frac[SHARES] ,
         Return       ;

Equation Eq_1    ,
         Eq_2    ,
         Eq_3    ,
         Def_Obj ;


* Limit the percentage of high-risk values
Eq_1..
 Sum{SHARES$RISK(SHARES), frac[SHARES] } =l= 1/3 ;

* Minimum amount of North-American values
Eq_2..
 Sum{SHARES$NA_1(SHARES), frac[SHARES] } =g= 0.5 ;

* Spend all the capital
Eq_3..
 Sum{SHARES,              frac[SHARES] } =e= 1   ;

* Objective: total return
Def_Obj..
    Return =e= Sum{SHARES, RET[SHARES]*frac[SHARES] } ;

* Upper bounds on the investment per share
frac.up[SHARES] = 0.3 ;
frac.lo[SHARES] = 0.0 ;

* Solve the problem
Model Portfolio_optimization_c / all / ;

Solve Portfolio_optimization_c using LP maximazing Return ;

Display Return.l ;
