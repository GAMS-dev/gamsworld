*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file h7qportf.mos
*   `````````````````
*   Mean-variance portfolio selection
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Aug. 2002
*******************************************************

* model "H-7 QP Portfolio"

Set SECS / s1*s4 / ;

Set NAMES / hardware , software , show_biz , T_bills / ;
* Set of securities
Alias(NAMES,NAMES1) ;

Scalar TARGET / 7.0 / ;
* Minimum target yield
Scalar MAXASSETS / 4 / ;
* Maximum number of assets in portfolio

Parameter RET[NAMES] / hardware 8 , software 9 , show_biz 12 , T_bills 7 / ;
* Expected yield of securities
Table VAR[NAMES,NAMES1]
                                    hardware  software  show_biz  T_bills
                     hardware          4         3         -1        0
                     software          3         6          1        0
                     show_biz         -1         1         10        0
                     T_bills           0         0          0        0      ;
* Variance/covariance matrix of
* estimated returns

Binary Variable buy[NAMES] ;
Variable frac[NAMES]       ,
* Fraction of capital used per security
         Variance          ;
* **** First problem: unlimited number of assets ****

Equation Eq_1        ,
         Eq_2        ,
         Eq_3        ,
         Eq_4(NAMES) ,
         Def_Obj       ;

* Spend all the capital
Eq_1..
 Sum{NAMES ,  frac[NAMES] } =e= 1 ;

* Target yield
Eq_2..
 Sum{NAMES , RET[NAMES]*frac[NAMES] }  =g=  TARGET ;

* **** Second problem: limit total number of assets ****

* Limit the total number of assets
Eq_3..
 Sum{NAMES , buy[NAMES] } =l= MAXASSETS ;
Eq_4(NAMES)..
 frac[NAMES] =l= buy[NAMES]  ;

* Objective: mean variance
Def_Obj..
 Variance =e=  Sum{(NAMES,NAMES1), VAR[NAMES,NAMES1]*frac[NAMES]*frac[NAMES1]} ;

frac.lo[NAMES] = 0 ;

* Solve the problem
Model H_7_QP_Portfolio_1 / Eq_1 , Eq_2 , Def_Obj / ;
Model H_7_QP_Portfolio_2 / Eq_1 , Eq_2 , Eq_3 , Eq_4 , Def_Obj / ;

Solve H_7_QP_Portfolio_1 using NLP minimazing Variance ;

Solve H_7_QP_Portfolio_2 using MIQCP minimazing Variance ;

Display Variance.l ;



