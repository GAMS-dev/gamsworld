*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file h1loan.mos
*   ```````````````
*   Choice of loans
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "H-1 Loan choice"

Set BANKS / b1*b3 / ;
* Set of banks
Set SHOPS / London , Munich , Rome  /
* Set of shops
Scalar DUR / 8 / ;
* Duration of loans

Parameter PRICE[SHOPS] / London 2500000 , Munich 1000000 , Rome 1700000 / ;
* Price of shops
Table RATE[BANKS,SHOPS]
                             London          Munich          Rome
                         b1  0.050           0.065           0.061
                         b2  0.052           0.062           0.062
                         b3  0.055           0.058           0.065  ;

* Interest rates offered by banks
Scalar VMAX / 3000000 / ;
* Maximum loan volume per bank

Variable borrow[BANKS,SHOPS] ,
* Loan taken from banks per project
         Interest             ;
Equation Eq_1(SHOPS) ,
         Eq_2(BANKS) ,
         Def_Obj     ;

* Finance all projects
Eq_1(SHOPS)..
    Sum{BANKS, borrow[BANKS,SHOPS] } =e= PRICE[SHOPS] ;

* Keep within maximum loan volume per bank
Eq_2(BANKS)..
    Sum{SHOPS, borrow[BANKS,SHOPS] } =l= VMAX ;

* Objective: interest payments
Def_Obj..
    Interest =e= Sum{(BANKS,SHOPS), borrow[BANKS,SHOPS]*RATE[BANKS,SHOPS]/
                                   (1-(1+RATE[BANKS,SHOPS])**(-DUR)) } ;

 borrow.lo[BANKS,SHOPS] = 0 ; 

* Solve the problem
Model H_1_Loan_choice / All / ;

Solve H_1_Loan_choice using LP minimazing Interest ;

Display Interest.l ;



