*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file d2ship.mos
*   ```````````````
*   Choice of wheat load for a ship
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "D-2 Ship loading"



Set CLIENTS / c1*c7 / ;
* Set of clients

Parameter AVAIL[CLIENTS]
           / c1   12 , c2  31 , c3  20 , c4  25 , c5   50 , c6  40 , c7   60 / ;
* Number of lots per client

Parameter SIZE[CLIENTS]
           / c1   10 , c2   8 , c3   6 , c4   9 , c5   15 , c6  10 , c7   12 / ;
* Lot sizes

Parameter PRICE[CLIENTS]
           / c1 1000 , c2 600 , c3 600 , c4 800 , c5 1200 , c6 800 , c7 1100 / ;
* Prices charged to clients

Parameter COST[CLIENTS]
           / c1   80 , c2  70 , c3  85 , c4  80 , c5   73 , c6  70 , c7   80 / ;
* Cost per client


Parameter PROF[CLIENTS] ; PROF[CLIENTS] = PRICE[CLIENTS] -
                                          COST[CLIENTS]*SIZE[CLIENTS] ;
* Profit per client

Scalar CAP / 1500 / ;
* Capacity of the ship

Positive Variable load[CLIENTS] ;
* Lots taken from clients

Integer  Variable load_i[CLIENTS] ;

Variable Profit        ;

Equation Eq_1      ,
         Eq_2      ,
         Def_obj_1 ,
         Def_obj_2 ;

* Limit on the capacity of the ship
Eq_1..
 Sum{CLIENTS, SIZE[CLIENTS]*load[CLIENTS]} =l= CAP ;

Eq_2..
 Sum{CLIENTS, SIZE[CLIENTS]*load_i[CLIENTS]} =l= CAP ;


Def_obj_1..
    Profit =e= Sum{CLIENTS, PROF[CLIENTS]*load[CLIENTS] } ;

Def_obj_2..
    Profit =e= Sum{CLIENTS, PROF[CLIENTS]*load_i[CLIENTS] } ;


* Problem 1: unlimited availability of lots at clients
* Solve the problem

Model D_2_Ship_loading_a / Eq_1 , Def_obj_1 / ;

Solve D_2_Ship_loading_a using lp maximazing Profit ;

Display Profit.l ;

* Problem 2: limits on availability of lots at clients
 load.up[CLIENTS] = AVAIL[CLIENTS] ;

 load_i.lo[CLIENTS] = 0 ;
 load_i.up[CLIENTS] = AVAIL[CLIENTS] ; 
Model D_2_Ship_loading_b / Eq_1 , Def_obj_1  / ;

Solve D_2_Ship_loading_b using lp maximazing Profit ;

Display Profit.l ;


* Problem 3: lots must be integer
Model D_2_Ship_loading_c / Eq_2 , Def_obj_2  / ;

Solve D_2_Ship_loading_c using mip maximazing Profit ;

Display Profit.l ;








