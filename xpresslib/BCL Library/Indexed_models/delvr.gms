********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file delvr.mos
*  ``````````````
*  Transportation problem.
*
*  (c) 2001 Dash Associates
*      authors: Y. Colombani & S.Heipcke, rev. 2007
**********************************************************

* model Delivery                    ! Start a new model

* Range of suppliers
Set RSupp / London_1  , Luton  , B_ham , Bristl  ,
            Derby_1 , Stckpt , York  , Derby_2 ,
            Soton   , Scnthp / ;


* Range of customers
Set RCust / London_2 , Livpol , Doncst , York , Hull , Manchr , Shffld / ;

* Capacity on routes that use vans
Scalar VANCAP / 40 / ;

* Unit delivery cost on route supplier
* -> customer
*Unit transportation cost
Table COST[RSupp,RCust]
             London_2 Livpol Doncst   York   Hull Manchr  Shffld
London_1      0.0      6.3    7.1      9.4    8.2   10.2    3.1
Luton         3.4      8.8    6.1      7.9    3.2    6.5    8.1
B_ham        14.2     13.5   16.4      7.4    8.5    5.6    9.0
Bristl       15.6     22.4   19.7     16.5   17.1   18.2    0.0
Derby_1      12.4     18.6   26.3     31.2   15.7   21.4   12.9
Stckpt       37.3     23.4   18.6     16.4   13.2   19.1   31.0
York         14.5     19.7   21.6     18.3   23.9   28.4   23.7
Derby_2      19.6      5.6   12.9     15.2    0.0   13.6   15.4
Soton        18.4      9.3   17.1     22.5   26.3   28.5   31.6
Scnthp        9.4     18.2   15.6     17.1   33.9    5.3   17.0 ;


* Non-zero if route uses vans
* instead of lorries

* Contains non-zero if route requires vans
  Table IFVAN[RSupp,RCust]

          London_2 Livpol Doncst  York   Hull  Manchr Shffld
London_1      1      1      0      1      0      0      0
Luton         0      1      1      0      1      1      0
B_ham         0      0      0      0      0      0      0
Bristl        0      0      0      0      0      0      0
Derby_1       0      0      0      0      0      0      0
Stckpt        0      0      0      0      0      0      0
York          0      0      0      0      0      0      0
Derby_2       0      0      0      0      0      0      0
Soton         0      0      0      0      0      0      0
Scnthp        1      1      1      1      1      0      0        ;


Parameter SUPPLY[RSupp] ;
* Amount available from each supplier
      SUPPLY['London_1'] = 140.0 ;
      SUPPLY['Luton']    = 600.0 ;
      SUPPLY['B_ham']    =  50.0 ;
      SUPPLY['Bristl']   =  10.0 ;
      SUPPLY['Derby_1']  = 400.0 ;
      SUPPLY['Stckpt']   = 200.0 ;
      SUPPLY['York']     = 20.0  ;
      SUPPLY['Derby_2']  =  90.0 ;
      SUPPLY['Soton']    =  30.0 ;
      SUPPLY['Scnthp']   =  12.0 ;

Parameter DEMAND[RCust] ;
* Amount required by each customer
      DEMAND['London_2'] = 123.3 ;
      DEMAND['Livpol']   =  56.4 ;
      DEMAND['Doncst']   =  17.1 ;
      DEMAND['York']     = 192.8 ;
      DEMAND['Hull']     = 310.0 ;
      DEMAND['Manchr']   =  47.0 ;
      DEMAND['Shffld']   =  86.0 ;


Variable x[RSupp,RCust],
* Amount delivered from each
* supplier s to each customer c
         MinCost       ;

Equation Eq_Demand(RCust) ,
         Eq_Supply(RSupp) ,
         Def_Obj          ;


* Satisfy demand of each customer
Eq_Demand(RCust)..
    Sum{RSupp, x[RSupp,RCust] } =g= DEMAND[RCust] ;


* Keep within supply at each supplier
Eq_Supply(RSupp)..
    Sum{RCust, x[RSupp,RCust] } =l= SUPPLY[RSupp] ;

* Objective: Minimise total cost
Def_Obj..
    MinCost =e= Sum{(RSupp,RCust), COST[RSupp,RCust]*x[RSupp,RCust] } ;

x.up[RSupp,RCust]$(IFVAN[RSupp,RCust] gt 0) = VANCAP ;
x.lo[RSupp,RCust] = 0 ;

* Solve the LP-problem

Model Delivery / all / ;

Solve Delivery using LP minimazing MinCost ;

Display MinCost.l ;
