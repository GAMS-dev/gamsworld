*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file foliomip1.mos
*   ``````````````````
*   Modeling a small MIP problem
*   to perform portfolio optimization.
*   -- Limiting the total number of assets --
*
*   (c) 2003 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Portfolio optimization with MIP"


* Set of shares
Set SHARES / treasury , hardware , theater  , telecom  ,    brewery  ,
             highways , cars     , bank     , software , electronics / ;
* Set of high-risk values among shares
Set NA_1(SHARES) / treasury , hardware , theater , telecom / ;

* Set of high-risk values among shares
Set RISK(SHARES) / hardware
                   theater
                   telecom
                   software
                   electronics / ;

* Estimated return in investment
Parameter RET[SHARES] / treasury      5 ,
                        hardware     17 ,
                        theater      26 ,
                        telecom      12 ,
                        brewery       8 ,
                        highways      9 ,
                        cars          7 ,
                        bank          6 ,
                        software     31 ,
                        electronics  21 / ;

* Max. investment into high-risk values
Scalar MAXRISK / 1.0 / ;   MAXRISK = MAXRISK / 3 ;
* Max. investment per share
Scalar MAXVAL  / 0.3 / ;
* Min. investment into N.-American values
Scalar MINAM   / 0.5 / ;
* Max. number of different assets
Scalar MAXNUM  / 4.0 / ;

Binary Variable
                buy[SHARES]  ; 
Variable
* Fraction of capital used per share
                frac[SHARES] ,
                Return       ;

Equation
         Eq_1         ,
         Eq_2         ,
         Eq_3         ,
         Eq_4         ,
         Eq_5(SHARES) ,
         Def_Obj      ;

* Limit the percentage of high-risk values
Eq_1..
    Sum{SHARES$RISK(SHARES), frac[SHARES] } =l= MAXRISK ;

* Minimum amount of North-American values
Eq_2..
    Sum{SHARES$NA_1(SHARES), frac[SHARES] } =g= MINAM ;

* Spend all the capital
Eq_3..
    Sum{SHARES, frac[SHARES] } =e= 1 ;

* Limit the total number of assets
Eq_4..
    Sum{SHARES, buy[SHARES]} =l= MAXNUM ;

Eq_5(SHARES)..
      frac[SHARES] =l= buy[SHARES] ;
* Objective: total return
Def_Obj..
    Return =e= Sum{SHARES, RET[SHARES]*frac[SHARES] };

* Upper bounds on the investment per share
frac.up[SHARES] = MAXVAL      ;
frac.lo[SHARES] = 0           ;

* Solve the problem
Model Portfolio_optimization_1 / all / ;

Solve Portfolio_optimization_1 using MIP maximazing Return ;

Display Return.l ;

