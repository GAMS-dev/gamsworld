********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file coco.mos
*  `````````````
*  Complete Coco Problem. Specify phase by PHASE parameter.
*  Data input in the model, not via data files.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke, rev. 2007
**********************************************************!)

* model Coco                             ! Start a new model

$Set NT 4
$Set NT_1 5

* Number of time periods
Set RP /RP1,RP2/ ;
* Range of products (p)
Set RF /RF1,RF2/ ;
*          factories (f)
Set RR /RR1,RR2/ ;
*          raw materials (r)
Set RT / RT1*RT%NT_1% / ;
*          time periods (t)

Set RT_short(RT) / RT1*RT%NT% / ;
*          time periods (t)

Table REV[RP,RT]
* Unit selling price of product p
             RT1  RT2  RT3  RT4  RT5
       RP1   400  380  405  350   0
       RP2   410  397  412  397   0   ;

Table CMAKE[RP,RF]
* Unit cost to make product p
* at factory f
             RF1 RF2
       RP1   150 153
       RP2    75  68 ;

Table CBUY[RR,RT]
* Unit cost to buy raw material r
             RT1  RT2  RT3  RT4  RT5
       RR1   100   98   97  100   0
       RR2   200  195  198  200   0  ;

Parameter COPEN[RF] / RF1 50000 , RF2 63000 / ;
* Fixed cost of factory f being
* open for one period
Table REQ[RP,RR]
* Requirement by unit of product p
* for raw material r
                         RR1  RR2
                    RP1  1.0  0.5
                    RP2  1.3  0.4 ;
Table MXSELL[RP,RT]
* Max. amount of p that can be sold
                 RT1  RT2  RT3  RT4 RT5
             RP1 650  600  500  400  0
             RP2 600  500  300  250  0   ;
Parameter MXMAKE[RF] / RF1 400 , RF2 500 / ;
* Max. amount factory f can make
* over all products
Table PSTOCK0[RP,RF]
* Initial product p stock level
* at factory f
                 RF1 RF2
            RP1  50  100
            RP2  50   50  ;

Table RSTOCK0[RR,RF]
* Initial raw material r stock
* level at factory f
                 RF1  RF2
            RR1  100  150
            RR2   50  100 ;

Scalar CPSTOCK  / 2.0 / ;
* Unit cost to store any product p
Scalar CRSTOCK  / 1.0 / ;
* Unit cost to store any raw mat. r
Scalar MXRSTOCK / 300 / ;
* Max. amount of r that can be
* stored each f and t

Binary Variable
          openm[RF,RT]             ;
* 1 if factory f is open in
* period t, else 0

Positive Variable
          make[RP,RF,RT]           ,
*Amount of product p made at
* factory f
          sell[RP,RF,RT]           ,
* Amount of product p sold from
* factory f in period t
          buy[RR,RF,RT]            ,
* Amount of raw material r bought
* for factory f in period t
          pstock[RP,RF,RT]         ,
* Stock level of product p at
* factory f at start of period t
          rstock[RR,RF,RT]         ;
* Stock level of raw material r at
* factory f at start of period t

Variable
          MaxProfit                ;

Equation PBal(RP,RF,RT)    ,
         RBal(RR,RF,RT)    ,
         Eq_MxMake(RF,RT)  ,
         Eq_MxSell(RP,RT)  ,
         Eq_MxRStock(RF,RT),
         Closed(RF,RT)     ,
         Def_obj           ;


* Product stock balance
PBal(RP,RF,RT)$RT_short(RT)..
  pstock(RP,RF,RT+1) =e= pstock(RP,RF,RT) + make(RP,RF,RT) - sell(RP,RF,RT);

* Raw material stock balance
RBal(RR,RF,RT)$RT_short(RT)..
   rstock(RR,RF,RT+1) =e=  rstock[RR,RF,RT] +
                           buy[RR,RF,RT]    -
                           Sum{RP, REQ[RP,RR]*make[RP,RF,RT]} ;

* Capacity limit at factory f
Eq_MxMake(RF,RT)$RT_short(RT)..
   Sum{RP, make[RP,RF,RT] } =l= MXMAKE[RF]*openm[RF,RT] ;

* Limit on the amount of prod. p to be sold
Eq_MxSell(RP,RT)$RT_short(RT)..
   Sum{RF, sell[RP,RF,RT] } =l= MXSELL[RP,RT] ;

*  Raw material stock limit
Eq_MxRStock(RF,RT)$(ord(RT) gt 1)..
   Sum{RR, rstock[RR,RF,RT] } =l= MXRSTOCK ;

Closed(RF,RT)$(ord(RT) lt 4)..
   openm(RF,RT+1) =l= openm(RF,RT) ;

* Objective: maximize total profit
Def_obj..
    MaxProfit =e=
  Sum{(RP,RF,RT)$RT_short(RT), REV[RP,RT] * sell[RP,RF,RT]              } -
* revenue
  Sum{(RP,RF,RT)$RT_short(RT), CMAKE[RP,RF] * make[RP,RF,RT]            } -
* prod. cost
  Sum{(RR,RF,RT)$RT_short(RT), CBUY[RR,RT] * buy[RR,RF,RT]              } -
* raw mat. cost
  Sum{(RP,RF,RT)$(ord(RT) gt 1),CPSTOCK * pstock[RP,RF,RT] } -
* p stor. cost
  Sum{(RR,RF,RT)$(ord(RT) gt 1),CRSTOCK * rstock[RR,RF,RT] } -
  Sum{(RF,RT), COPEN(RF)* openm(RF,RT)} ;
* r stor. cost

* Initial product levels
pstock.fx[RP,RF,'RT1'] = PSTOCK0[RP,RF] ;
* Initial raw material levels
rstock.fx[RR,RF,'RT1'] = RSTOCK0[RR,RF] ;

* XPress results
*openm.l[RF,RT] = 0 ;
*openm.fx['RF1','RT1'] = 1 ;

*Solve the LP
Model Coco / all / ;

Solve Coco using MIP maximazing MaxProfit ;

Display MaxProfit.l ;
