*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file folioqpgraph.mos
*   `````````````````````
*   Modeling a small QP problem
*   to perform portfolio optimization.
*   Minimize variance subject to different target return.
*   Graphical output.
*
*   (c) 2003 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Portfolio optimization with QP, graphical output"
*  uses "mmxprs", "mmquad", "mmive"    ! Use Xpress-Optimizer with QP solver

* Set of shares
Set SHARES / treasury , hardware , theater  , telecom  ,    brewery  ,
             highways , cars     , bank     , software , electronics / ;
Alias(SHARES,SHARES1);
* Set of high-risk values among shares
Set Set_NA(SHARES) / treasury , hardware , theater , telecom / ;

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

* Variance/covariance matrix of
* estimated returns

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

* Estimated return in investment
Parameter RET[SHARES] /  treasury 5 , hardware 17 , theater 26 , telecom  12 , brewery      8 ,
                         highways 9 , cars      7 , bank     6 , software 31 , electronics 21  / ;
Scalar Target ;

Target = 25  ;

Variable
* Fraction of capital used per share
         frac[SHARES]  ,
         Variance      ;

Equation Eq_1         ,
         Eq_2         ,
         Eq_3         ,
         Def_Obj      ;

* Spend all the capital
Eq_1..
 Sum{SHARES, frac[SHARES] } =e= 1 ;

* Minimum amount of North-American values
Eq_2..
 Sum{SHARES$Set_NA(SHARES), frac[SHARES] } =g= MINAM ;

Eq_3..
 Sum{SHARES,RET[SHARES]*frac[SHARES]} =g= Target;
* Objective: mean variance
Def_Obj..
    Variance =e= Sum{(SHARES,SHARES1),Var_1[SHARES,SHARES1]*frac[SHARES]*frac[SHARES1]} ;



* Upper bounds on the investment per share
frac.up[SHARES] = MAXVAL ;
frac.lo[SHARES] = 0      ;


Model Portfolio_optimization_1_QP_MIQP / All / ;
Solve Portfolio_optimization_1_QP_MIQP using NLP minimazing Variance ;

Display    Variance.l ;

Scalar Return ;
  Return = Sum{SHARES,RET[SHARES]*frac.l[SHARES]}
