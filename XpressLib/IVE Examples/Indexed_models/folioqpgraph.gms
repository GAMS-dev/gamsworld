*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file folioqpgraph.mos
*   `````````````````````
*   TYPE:         Portfolio optimization problem (Quadratic Programming problem)
*   DIFFICULTY:   3
*   FEATURES:     small QP problem, solved repeatedly with modified
*                 constraints, graphical representation of the results,
*                 use of `min' and `max'
*   DESCRIPTION:  An investor is evaluating ten different securities (`shares').
*                 He estimates the return on investment for a period of one
*                 year. To spread the risk he wishes to invest at most
*                 30% of the capital into any share. He further wishes to
*                 invest at least half of his capital in North-American
*                 shares and at most a third in high-risk shares. How should
*                 the capital be divided among the shares to  minimize the
*                 risk whilst obtaining a certain target yield? The investor
*                 adopts the Markowitz idea of getting estimates of the
*                 variance/covariance matrix of estimated returns on the
*                 securities.
*   FURTHER INFO: `Xpress-MP Getting Started', Chapter 7 `Quadratic Programming'.
*                 Similar problem:
*                 `Applications of optimization with Xpress-MP',
*                 Section 13.7 `Mean variance portfolio selection'
*
*   (c) 2003 Dash Associates
*       author: S. Heipcke
*******************************************************

* model "Portfolio optimization with QP"

* Max. investment per share
Scalar MAXVAL / 0.3 / ;
* Max. investment per share
Scalar MINAM  / 0.5 / ;

* Set of shares
Set SHARES / s1 * s10 / ;
* Set of high-risk values among shares
Set RISK(SHARES) / s2 , s3 , s4 , s5 , s10 / ;
* Set of shares issued in N.-America
Set NA_Set(SHARES) / s1 , s2 , s3 , s4 / ;

Alias(SHARES,SHARES1) ;

* Estimated return in investment
Parameter RET[SHARES]  / s1 5 , s2 17 , s3 26 , s4 12 , s5   8 ,
                         s6 9 , s7  7 , s8  6 , s9 31 , s10 21 / ;
* estimated returns
Table VAR[SHARES,SHARES1]
                         s1   s2   s3   s4   s5   s6   s7   s8   s9  s10
                  s1    0.1    0    0    0    0    0    0    0    0    0
                  s2      0   19   -2    4    1    1    1  0.5   10    5
                  s3      0   -2   28    1    2    1    1    0   -2   -1
                  s4      0    4    1   22    0    1    2    0    3    4
                  s5      0    1    2    0    4 -1.5   -2   -1    1    1
                  s6      0    1    1    1 -1.5  3.5    2  0.5    1  1.5
                  s7      0    1    1    2   -2    2    5  0.5    1  2.5
                  s8      0  0.5    0    0   -1  0.5  0.5    1  0.5  0.5
                  s9      0   10   -2    3    1    1    1  0.5   25    8
                 s10      0    5   -1    4    1  1.5  2.5  0.5    8   16  ;

* Fraction of capital used per share
Variable frac[SHARES] ,
         Variance     ;

Equation Eq_MinAm     ,
         SpendAll     ,
         Def_Obj      ;

* Minimum amount of North-American values
Eq_MinAm..
    Sum{SHARES$NA_Set(SHARES), frac[SHARES] } =e= MINAM ;

* Spend all the capital

SpendAll..
    Sum{SHARES, frac[SHARES] } =e= 1 ;

* Objective: mean variance
Def_Obj..
    Variance =e=
          Sum{(SHARES,SHARES1), VAR[SHARES,SHARES1]*frac[SHARES]*frac[SHARES1]};

* Upper bounds on the investment per share
frac.lo[SHARES] = 0 ;
frac.up[SHARES] = MAXVAL ;

* Solve the problem
Model Portfolio_optimization / all / ;

Solve Portfolio_optimization using NLP Minimazing Variance ;

Display Variance.l ;







