*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file i5pplan.mos
*   ````````````````
*   Production planning with personnel assignment
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************!)

* model "I-5 Production planning with personnel"


Set PRODS / p1*p4 /
* Set of products
Set LINES / L1*L5 /
* Set of production lines
Alias(LINES,LINES1);

Set TRANSF(LINES,LINES1) ;
         TRANSF('L1','L2') = Yes ;
         TRANSF('L1','L3') = Yes ;
         TRANSF('L1','L4') = Yes ;
         TRANSF('L2','L3') = Yes ;
         TRANSF('L2','L5') = Yes ;
         TRANSF('L3','L1') = Yes ;
         TRANSF('L3','L2') = Yes ;
         TRANSF('L3','L4') = Yes ;
         TRANSF('L4','L5') = Yes ;
         TRANSF('L5','L1') = Yes ;
         TRANSF('L5','L2') = Yes ;
         TRANSF('L5','L3') = Yes ;
         TRANSF('L5','L4') = Yes ;


Parameter PROFIT[PRODS] / p1 7 , p2 8 , p3 9 , p4 7 / ;
* Profit per product
Parameter CAP[LINES]
             / L1 4500 , L2  5000 , L3  4500 , L4  1500 , L5  2500 / ;
* Working hours available per line
Parameter TMAX[LINES]
        / L1  400 , L2   800 , L3   200 , L4   500 , L5   300 / ;
* Maximum no. of hours to transfer


Table DUR[PRODS,LINES]
        L1   L2   L3   L4   L5
    p1  1.3  0.9  2.0  0.3  0.9
    p2  1.8  1.7  1.4  0.6  1.1
    p3  1.3  1.2  1.3  1.0  1.4
    p4  0.9  1.1  1.0  0.9  1.0  ;
* Duration of production per line

Variable produce[PRODS] ,
         hours[LINES]   ,
* Initial working hours per line
         transfer[LINES,LINES]
* Hours transferred     ,
         Total_Profit   ;
* Quantity produced

Equation Eq_1(LINES) ,
         Eq_2(LINES) ,
         Eq_3(LINES) ,
         Eq_4(LINES) ,
         Def_Obj      ;

**** Allow transfer of working hours between lines ****

* Re-define capacity constraints on lines
Eq_1(LINES)..
   Sum{PRODS,DUR[PRODS,LINES]*
                            produce[PRODS]   } =l= hours[LINES] ;
* Balance constraints
Eq_2(LINES)..
  hours[LINES]  =e= CAP(LINES) + Sum{LINES1, transfer[LINES1,LINES] } -
                                 Sum{LINES1, transfer[LINES,LINES1] }  ;
* Limit on transfer
Eq_3(LINES)..
   Sum{LINES1$(TRANSF(LINES,LINES1)),transfer[LINES,LINES1]} =l= TMAX[LINES] ;

* Capacity constraints on lines
Eq_4(LINES)..
    Sum{PRODS,DUR[PRODS,LINES]*produce[PRODS] } =l= CAP[LINES] ;

* Objective: Total profit
Def_Obj..
  Total_Profit =e= Sum{ PRODS, PROFIT[PRODS]*produce[PRODS] } ;
produce.lo[PRODS] = 0 ;
* Solve the problem
Model I_5_Production_planning / All / ;

Solve I_5_Production_planning using LP maximazing Total_Profit ;

Display Total_Profit.l ;


