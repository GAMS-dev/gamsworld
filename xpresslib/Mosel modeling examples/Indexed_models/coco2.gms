********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file coco2.mos
*  ``````````````
*  Coco Problem Phase 2.
*  Use parameters, data tables and subscripted variables
*  to separate the model structure from the data.
*  Read data tables in from text data files.
*
*  (c) 2001 Dash Associates
*      authors: Y. Colombani & S.Heipcke
**********************************************************

* model Coco2                    ! Start a new model

Set RP / RP1*RP2 / ;
* Range of products (p)
Set RF / RF1*RF2 / ;
*          factories (f)
Set RR / RR1*RR2 / ;
*          raw materials (r)
Parameter REV[RP]
* Unit selling price of product p
                 / RP1 400 , RP2 410 / ;

Table CMAKE[RP,RF]
* Unit cost to make product p at factory f
                    RF1 RF2
                RP1 150 153
                RP2  75  68 ;
Parameter  CBUY[RR]
* Unit cost to buy raw material r
                / RR1 100 , RR2 200 / ;

Table REQ[RP,RR]
* Requirement by unit of product p
* for raw material r
                    RR1   RR2
              RP1   1.0   0.5
              RP2   1.3   0.4 ;
Parameter MXSELL[RP]
* Maximum amount of p that can be sold
               / RP1 650 , RP2 600 / ;
Parameter MXMAKE[RF]
* Maximum amount factory f can make
* over all products
               / RF1 400 , RF2 500 / ;

Parameter PROFIT[RP,RF] ;
* Profit contribution of product p
* at factory f

* Calculate the profit

PROFIT(RP,RF) =  REV[RP] - Sum{RR, REQ[RP,RR]*CBUY[RR] } - CMAKE(RP,RF) ;


Positive Variable make[RP,RF]
* Amount of product p made at factory f

Variable MaxProfit     ;

Equation Eq_MxSell(RP)    ,
         Eq_MxMake(RF)    ,
         Def_Obj       ;


* Limit on the amount of product p to be sold
Eq_MxSell(RP)..
    Sum{ RF , make[RP,RF] } =l= MXSELL[RP] ;

* Capacity limit at factory f
Eq_MxMake(RF)..
    Sum{ RP , make[RP,RF] } =l= MXMAKE[RF] ;

* Objective: maximize total profit
Def_Obj..
    MaxProfit =e= Sum{(RP,RF), PROFIT[RP,RF] * make[RP,RF] } ;

*Solve the LP
Model Coco2 / all / ;

Solve Coco2 using LP maximazing MaxProfit ;

Display MaxProfit.l ;