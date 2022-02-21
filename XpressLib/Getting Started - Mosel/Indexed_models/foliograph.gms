*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file foliograph.mos
*   ```````````````````
*   Modeling a small LP problem
*   to perform portfolio optimization.
*   -- Re-solving with varied parameter settings,
*      graphical solution display --
*
*   (c) 2003 Dash Associates
*       author: S. Heipcke
*******************************************************!)

* model "Portfolio optimization with LP"


Set I /i1*i21/;
* Set of shares
Set SHARES / treasury , hardware , theater  , telecom  ,    brewery  ,
             highways , cars     , bank     , software , electronics / ;

* Set of shares issued in N.-America
Set NA_1(SHARES) / treasury , hardware , theater , telecom / ;

* Set of high-risk values among shares
Set RISK(SHARES) / hardware
                   theater
                   telecom
                   software
                   electronics / ;

* Max. investment per share
Scalar MAXVAL / 0.3 / ;
* Min. investment into N.-American values
Scalar MINAM  / 0.5 / ;


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


* Standard deviation
Parameter DEV[SHARES] / treasury  0.1 , hardware    19   , theater 28 , telecom 22   ,
                        brewery   4   , highways     3.5 , cars     5 , bank     0.5 ,
                        software 25   , electronics 16   / ;

Parameter r ; r = -1 ;

* Fraction of capital used per share
Variable frac[SHARES] ,
         Return       ;

Equation Eq_1    ,
         Eq_2    ,
         Eq_Risk ,
         Def_Obj ;

* Minimum amount of North-American values
Eq_1..
   Sum{SHARES$NA_1(SHARES), frac[SHARES]} =g= MINAM ;

* Spend all the capital
Eq_2..
   Sum{SHARES, frac[SHARES]} =e= 1 ;

* Limit the percentage of high-risk values
Eq_Risk..
    Sum{SHARES$RISK(SHARES), frac[SHARES]} =l= r/20 ;

* Objective: total return
Def_Obj..
    Return =e= Sum{SHARES, RET[SHARES]*frac[SHARES] } ;

* Upper bounds on the investment per share
frac.up[SHARES] = MAXVAL ;

* Lower bounds on the investment per share
frac.lo[SHARES] = 0 ;

* Solve the problem
Model Portfolio_optimization_a / all / ;


Loop{I,
* Solve the problem
r = r + 1 ;
Solve Portfolio_optimization_a using LP maximazing Return ;
     };

Display Return.l ;




