*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file folioqp.mos
*   ````````````````
*   Modeling a small QP problem
*   to perform portfolio optimization.
*   -- 1. QP: minimize variance
*      2. MIQP: limited number of assets ---
*
*   (c) 2003 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Portfolio optimization with QP/MIQP"
*  uses "mmxprs", "mmquad"            ! Use Xpress-Optimizer with QP solver



* Set of shares
Set SHARES / treasury , hardware , theater , telecom  , brewery    ,
             highways , cars     , bank    , software , electronics / ;
Set Set_NA(SHARES) / treasury , hardware , theater , telecom / ;

Set RISK(SHARES) / hardware , theater , telecom  , software , electronics / ;

Alias(SHARES,SHARES1) ;


* Set of shares issued in N.-America

* Estimated return in investment
Parameter RET /  treasury 5 , hardware 17 , theater 26 , telecom  12 , brewery      8 ,
                 highways 9 , cars      7 , bank     6 , software 31 , electronics 21  / ;


Table Var_1(SHARES,SHARES1)
             treasury hardware theater telecom brewery highways cars  bank software electronics
 treasury     0.1        0        0       0        0      0       0     0        0     0
 hardware     0         19       -2       4        1      1       1     0.5     10     5
 theater      0         -2       28       1        2      1       1     0       -2    -1
 telecom      0          4        1      22        0      1       2     0        3     4
 brewery      0          1        2       0        4     -1.5    -2    -1        1     1
 highways     0          1       1        1       -1.5    3.5     2     0.5      1     1.5
 cars         0          1        1       2       -2      2       5     0.5      1     2.5
 bank         0          0.5      0       0       -1      0.5     0.5   1        0.5   0.5
 software     0         10       -2       3        1      1       1     0.5     25     8
 electronics  0          5       -1       4        1      1.5     2.5   0.5      8    16

;
* Max. investment per share
Scalar MAXVAL / 0.3 / ;
* Min. investment into N.-American values
Scalar MINAM  / 0.5 / ;
* Max. number of different assets
Scalar MAXNUM / 4   / ;
* Minimum target yield
Scalar TARGET / 9.0 / ;

Binary Variable
         buy[SHARES] ;

Variable
* Fraction of capital used per share
         frac[SHARES]  ,
         Variance      ;

Equation Eq_1         ,
         Eq_2         ,
         Eq_3         ,
         Eq_4         ,
         Eq_5(SHARES) ,
         Def_Obj      ;

* Spend all the capital
Eq_1..
 Sum{SHARES, frac[SHARES] } =e= 1 ;

* Target yield
Eq_2..
 Sum{SHARES, RET[SHARES]*frac[SHARES] } =g=  TARGET ;

* Minimum amount of North-American values
Eq_3..
 Sum{SHARES$Set_NA(SHARES), frac[SHARES] } =g= MINAM ;

* Limit the total number of assets
Eq_4..
 Sum{SHARES, buy[SHARES] } =l= MAXNUM ;

Eq_5(SHARES)..
  frac[SHARES] =l= buy[SHARES] ;

* Objective: mean variance
Def_Obj..
    Variance =e= Sum{(SHARES,SHARES1),Var_1[SHARES,SHARES1]*frac[SHARES]*frac[SHARES1]} ;

* Upper bounds on the investment per share
frac.up[SHARES] = MAXVAL ;
frac.lo[SHARES] = 0      ;

*frac.fx['treasury'] = 0.3 ;
*frac.fx['hardware'] = 0.2 ;
*frac.fx['brewery'] = 0.23 ;
*frac.fx['highways'] = 0.27 ;
* Solve the problem
Model Portfolio_optimization_1_QP_MIQP / Eq_1 , Eq_2 , Eq_3 , Def_Obj  / ;
Solve Portfolio_optimization_1_QP_MIQP using MIQCP minimazing Variance ;

Display    Variance.l ;

Model Portfolio_optimization_2_QP_MIQP / Eq_1 , Eq_2 , Eq_3 ,  Eq_4 ,  Eq_5 , Def_Obj  / ;
Solve Portfolio_optimization_2_QP_MIQP using MIQCP minimazing Variance ;

Display    Variance.l ;
