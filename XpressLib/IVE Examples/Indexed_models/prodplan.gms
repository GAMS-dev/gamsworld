********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file prodplan.mos
*   `````````````````
*   TYPE:         Multi-period multi-item production planning
*   DIFFICULTY:   2
*   FEATURES:     LP problem, formulation of resource constraints and
*                 material balance constraints, formatted solution printing
*   DESCRIPTION:  The company Coco has two plants that can produce two types
*                 of cocoa powder. The plant capacities are limited.
*                 It is possible to store raw materials and finished product
*                 from one time period to the next. Raw material prices,
*                 sales revenues, and the maximum amount that may be sold
*                 depend on the time period. Raw material storage capacity
*                 is limited.
*                 Storing product between time periods incurs storage costs.
*                 Some product is held in stock at the beginning of the
*                 planning period.
*                 The objective function of maximizing the total profit is
*                 to maximize the sales revenues, minus the cost of production,
*                 buying raw material, and storing finished products and raw
*                 material.
*   FURTHER INFO: `Applications of optimization with Xpress-MP teaching
*                 material', Section 2.5 `Development of a model'.
*                 Similar problems:
*                 `Applications of optimization with Xpress-MP',
*                 Section 8.2 `Production of drinking glasses',
*                 Section 8.4 `Planning the production of electronic components'
*
*   (c) 2001 Dash Associates
*       authors: Y. Colombani & S. Heipcke
********************************************************

* model "Coco3"

$Set NPROD 2
$Set NFACT 2
$Set NRAW  3
$Set NT    4
$Set Ext_NT    5

* Range of products (p)
Set PRODS / p1*p%NPROD% / ;
*   factories (f)
Set FACT  / f1*f%NFACT% / ;
*   raw materials (r)
Set RAW   / r1*r%NRAW%  / ;
*   time periods (t)
Set TIME  / t1*t%NT%    / ;
Set Ext_TIME  / et1*et%Ext_NT%    / ;

* Unit selling price of products

Table REV[PRODS,TIME]
* Unit cost to make product p
* at factory f
                                 t1    t2    t3    t4
                            p1  400   380   405   350
                            p2  410   397   412   397 ;

Table CMAKE[PRODS,FACT]
                              f1    f2
                          p1 150   153
                          p2  75    68 ;

* Unit cost to buy raw materials
Table CBUY[RAW,TIME]
* Requirement by unit of product p
* for raw material r
                                    t1    t2    t3    t4
                             r1    110   108   107   111
                             r2     60    59    58    58
                             r3    200   195   198   200 ;

Table REQ[PRODS,RAW]
* Max. amount of p that can be sold
                              r1    r2    r3
                          p1 0.8   0.2   0.5
                          p2 1.0   0.3   0.4 ;


Table MXSELL[PRODS,TIME]
* Max. amount factory f can make
* over all products
                        t1    t2    t3    t4
                   p1  650   600   500   400
                   p2  600   500   300   250 ;

Parameter MXMAKE[FACT] / f1 400 , f2  500 / ;
* Initial product stock levels

Table IPSTOCK[PRODS,FACT]
* Initial raw material stock levels
                                  f1    f2
                             p1   50   100
                             p2   50    50 ;

Table IRSTOCK[RAW,FACT]
                                 f1   f2
                             r1 100  150
                             r2  30   20
                             r3  50  100 ;


* Unit cost to store any raw mat. r
Scalar CPSTOCK  / 2.0 / ;
* Unit cost to store any raw mat. r
Scalar CRSTOCK  / 1.0 / ;
* Raw material storage capacity
Scalar MXRSTOCK / 300 / ;



Variable
* Amount of products made at factories
         make[PRODS,FACT,TIME]         ,
* Amount of product sold from factories
         sell[PRODS,FACT,TIME]         ,
* Amount of product sold from factories
         buy[RAW,FACT,TIME]            ,
         pstock[PRODS,FACT,Ext_TIME]   ,
* Product stock levels at start
* of period t
         rstock[RAW,FACT,Ext_TIME]     ,
* Raw material stock levels
* at start of period t
         MaxProfit                     ;

Equation rodBal(PRODS,FACT,TIME) ,
         RawBal(RAW,FACT,TIME)   ,
         Capacity(FACT,TIME)     ,
         Demand(PRODS,TIME)      ,
         RawStock(FACT,Ext_TIME) ,
         Def_Obj                 ;

* Product stock balance
rodBal(PRODS,FACT,TIME)..
      Sum{Ext_TIME$(ord(Ext_TIME) eq ord(TIME) + 1),
      pstock[PRODS,FACT,Ext_TIME] } =e=
      Sum{Ext_TIME$(ord(Ext_TIME) eq ord(TIME)),
      pstock[PRODS,FACT,Ext_TIME] }  +
      make[PRODS,FACT,TIME]          -
      sell[PRODS,FACT,TIME]              ;

* Raw material stock balance
RawBal(RAW,FACT,TIME)..
      Sum{Ext_TIME$(ord(Ext_TIME) eq ord(TIME) + 1),
                   rstock[RAW,FACT,Ext_TIME]         }   =e=
      Sum{Ext_TIME$(ord(Ext_TIME) eq ord(TIME)),
                   rstock[RAW,FACT,Ext_TIME]         } +
      buy[RAW,FACT,TIME]                               -
      Sum{PRODS, REQ[PRODS,RAW]*make[PRODS,FACT,TIME]};

* Capacity limit at factories
Capacity(FACT,TIME)..
      Sum{PRODS, make[PRODS,FACT,TIME] } =l= MXMAKE[FACT] ;

* Limit on the amount of prod. p to be sold
Demand(PRODS,TIME)..
      Sum{FACT, sell[PRODS,FACT,TIME]  } =l= MXSELL[PRODS,TIME] ;

* Raw material stock limit
RawStock(FACT,Ext_TIME)$(ord(Ext_TIME) gt 1 )..
      Sum{RAW, rstock(RAW,FACT,Ext_TIME) } =l= MXRSTOCK ;

* Objective: maximize total profit
Def_Obj..
  MaxProfit =e=
              Sum{(PRODS,FACT,TIME),REV[PRODS,TIME]  *sell[PRODS,FACT,TIME] } -
* revenue
              Sum{(PRODS,FACT,TIME),CMAKE[PRODS,FACT]*make[PRODS,FACT,TIME] } -
* prod. cost
              Sum{(RAW,FACT,TIME),  CBUY[RAW,TIME]   *buy[RAW,FACT,TIME]    } -
* raw mat.
              Sum{(PRODS,FACT,Ext_TIME)$(ord(Ext_TIME) gt 1 ),
                                         CPSTOCK*pstock[PRODS,FACT,Ext_TIME]} -
* p storage
              Sum{(RAW,FACT,Ext_TIME)$(ord(Ext_TIME) gt 1 ),
                                         CRSTOCK*rstock[RAW,FACT,Ext_TIME] }  ;
* r storage

* Initial product and raw material stock levels
pstock.fx[PRODS,FACT,'et1'] = IPSTOCK(PRODS,FACT) ;
rstock.fx[RAW,FACT,'et1']   = IRSTOCK[RAW,FACT]   ;
make.lo[PRODS,FACT,TIME] = 0 ;
buy.lo[RAW,FACT,TIME]    = 0 ;
sell.lo[PRODS,FACT,TIME] = 0 ;
pstock.lo[PRODS,FACT,Ext_TIME] = 0 ;
rstock.lo[RAW,FACT,Ext_TIME]   = 0 ;


* Solve the problem
Model Coco3 / all / ;

Solve Coco3 using LP Maximazing MaxProfit ;

Display MaxProfit.l ;

