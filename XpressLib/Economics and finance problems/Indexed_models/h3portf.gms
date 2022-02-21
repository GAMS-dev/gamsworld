*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file h3portf.mos
*   ````````````````
*   Composition of an investment portfolio
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "H-3 Portfolio"

Set SHARES / s1*s6 / ;
* Set of shares
Set EU(SHARES)         / s2 , s3 , s5 , s6 / ;
* European values among the shares
Set TECHNOLOGY(SHARES) / s1 , s2 , s3 / ;
* Technology values among shares

Scalar MAXTECH /   0.3 / ;
* Maximum investment into tech. values
Scalar MINEU   /   0.5 / ;
* Minimum investment into European shares
Scalar VMIN    /  5000 / ;
* Minimum amount for a single value
Scalar VMAX    / 40000 / ;
* Maximum amount for a single value
Scalar CAPITAL / 100000 / ;
* Capital to invest


Parameter RET[SHARES] /s1 5.3 , s2 6.2 , s3 5.1 , s4 4.9 , s5 6.5 , s6 3.4 / ;
* Estimated return in investment

Variable buy[SHARES] ,
* Amount of values taken into portfolio
         Return       ;
Equation Eq_1 ,
         Eq_2 ,
         Eq_3 ,
         Def_Obj ;

* Requirements concerning portfolio composition
Eq_1..
    Sum{SHARES$TECHNOLOGY(SHARES), buy[SHARES] } =l= MAXTECH*CAPITAL ;
Eq_2..
    Sum{SHARES$EU(SHARES),         buy[SHARES] } =g= MINEU  *CAPITAL ;
* Total capital to invest
Eq_3..
    Sum{SHARES,                    buy[SHARES] } =e=         CAPITAL ;

* Objective: total return
Def_Obj..
    Return =e= Sum{SHARES, RET[SHARES]/100*buy[SHARES] } ;

buy.lo[SHARES] = VMIN ;
*  buy(s) is_semcont(VMIN)
buy.up[SHARES] = VMAX ;

* Solve the problem
Model H_3_Portfolio / All / ;

Solve H_3_Portfolio using LP maximazing Return ;

Display Return.l ;