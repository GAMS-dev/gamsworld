*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file h4retire.mos
*   `````````````````
*   Financing an early retirement scheme
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "H-4 Retirement"

Set BONDS / SNCF , Fujitsu , Treasury / ;
* Set of bonds
$Set NT 7
* Length of planning period
Set YEARS / y1*y%NT% / ;

Parameter DEM[YEARS] / y1 1000 , y2 600 , y3  640 ,
                       y4  480 , y5 760 , y6 1020 , y7 950 / ;
* Annual payments for retirement
Parameter VALUE[BONDS] / SNCF 1.0 , Fujitsu 0.8 , Treasury 0.5 / ;
* Unit price of bonds
Parameter RATE[BONDS]  / SNCF 7.0 , Fujitsu 7.0 , Treasury 6.5 / ;
* Remuneration rates paid by bonds
Parameter RET[BONDS] ;
* Unit annual interest of bonds
Parameter DUR[BONDS]   / SNCF 5.0 , Fujitsu 4.0 , Treasury 6.0 / ;
* Duration of loans
Scalar  INTEREST / 3.2 / ;
* Interest for other secure investment
 Loop(BONDS, RET[BONDS] = VALUE[BONDS] * RATE[BONDS] /100 ; ) ;

Integer Variable
         buy[BONDS]    ;
* Number of bonds acquired
Variable
         invest[YEARS] ,
* Other annual investment
         capital        ;
* Total capital required

Equation Eq_1(YEARS) ,
         Def_obj      ;


Eq_1(YEARS)$(ord(YEARS) ne 1 )..
  Sum{BONDS$(DUR[BONDS]+1 ge ord(YEARS)),
                     ( RET[BONDS]*buy[BONDS]                                  +
                      (VALUE[BONDS]*buy[BONDS])$(DUR[BONDS]+1 eq ord(YEARS)))}+
                        (1+INTEREST/100)*invest[YEARS-1]                      -
                        invest[YEARS]$(ord(YEARS) lt card(YEARS))

       =e= DEM[YEARS] ;

* Annual balances
Def_obj..
 capital - Sum{BONDS, VALUE[BONDS]*buy[BONDS]} - invest['y1'] =e= DEM['y1'] ;

buy.lo[BONDS] = 0 ;


* XPress solutions:
*buy.fx['SNCF'] = 899 ;
*buy.fx['Fujitsu'] = 748 ;
*buy.fx['Treasury'] = 1782 ;

* invest.fx['y1'] = 1160.530 ;
* invest.fx['y2'] =  760.397 ;
* invest.fx['y3'] =  307.463 ;
* invest.fx['y4'] =    0.034 ;
* invest.fx['y5'] =    1.169 ;
* invest.fx['y6'] =    1.051 ;
* invest.fx['y7'] =    0.000 ;

* Solve the problem: minimize invested capital
Model H_4_Retirement / All / ;

Solve H_4_Retirement using MIP minimazing capital ;

Display capital.l ;



