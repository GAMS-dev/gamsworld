*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file foliolps.mos
*   `````````````````
*   Modeling a small LP problem
*   to perform portfolio optimization.
*   -- Using string indices --
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke
********************************************************!)

*model "Portfolio optimization with LP"
* uses "mmxprs"                       ! Use Xpress-Optimizer

* Set of shares
Set SHARES / treasury    ,
             hardware    ,
             theater     ,
             telecom     ,
             brewery     ,
             highways    ,
             cars        ,
             bank        ,
             software    ,
             electronics / ;

* List of high-risk values among shares
Set RISK(SHARES) / hardware   ,
                   theater    ,
                   telecom    ,
                   software   ,
                   electronics / ;
* List of shares issued in N.-America
Set Set_NA(SHARES) / treasury ,
                     hardware ,
                     theater  ,
                     telecom  / ;

* Estimated return in investment
Parameter RET[SHARES] / treasury     5 ,
                        hardware    17 ,
                        theater     26 ,
                        telecom     12 ,
                        brewery      8 ,
                        highways     9 ,
                        cars         7 ,
                        bank         6 ,
                        software    31 ,
                        electronics 21  / ;




Variable
* Fraction of capital used per share
         frac[SHARES]  ,
         Return        ;

Equation
         Eq_1    ,
         Eq_2    ,
         Eq_3    ,
         Def_Obj ;

* Limit the percentage of high-risk values
Eq_1..
 Sum{SHARES$RISK(SHARES), frac[SHARES]} =l= 1/3 ;

* Minimum amount of North-American values
Eq_2..
 Sum{SHARES$Set_NA(SHARES), frac[SHARES]} =g= 0.5 ;

* Spend all the capital
Eq_3..
 Sum{SHARES, frac[SHARES]} =e= 1 ;

* Objective: total return
Def_Obj..
 Return =e= Sum{SHARES, RET[SHARES]*frac[SHARES]} ;

* Upper bounds on the investment per share
frac.up[SHARES] = 0.3 ;
frac.lo[SHARES] = 0.0 ;
* Solve the problem
Model Portfolio_optimization_LP / all / ;

Solve Portfolio_optimization_LP using LP maximazing Return ;

Display Return.l ;
Display frac.l ;
