*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file e4deliver.mos
*   ``````````````````
*   Heating oil delivery (Traveling Salesman Problem)
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "E-4 Oil delivery"

$Set NS  7
Set SITES  / S1*S%NS% / ;
* Set of locations, 1=refinery
Alias(SITES,SITES1);

Set CLIENTS(SITES) / S2*S%NS% / ;

Parameter DEM[SITES] / S2 14000 , S3  3000 , S4 6000 ,
                       S5 16000 , S6 15000 , S7 5000  / ;
* Demands
Table  DIST[SITES,SITES1]
                              S1   S2  S3   S4   S5   S6  S7
                          S1   0  148  55   32   70  140  73
                          S2 148    0  93  180   99   12  72
                          S3  55   93   0   85   20   83  28
                          S4  32  180  85    0  100  174  99
                          S5  70   99  20  100    0   85  49
                          S6 140   12  83  174   85    0  73
                          S7  73   72  28   99   49   73   0  ;
* Distances between locations

Scalar CAP / 39000 / ;
* Lorry capacity

Binary Variable  prec[SITES,SITES1] ;
* 1 if i immediately precedes j,
* 0 otherwise

Variable quant[SITES]  ,
* Quantity delivered up to i
         Length          ;

Equation Eq_1(SITES)        ,
         Eq_2(SITES)        ,
         Eq_3(SITES)        ,
         Eq_4(SITES,SITES1) ,
         Def_obj             ;

* Enter and leave every city only once (except the depot)
Eq_1(SITES)$CLIENTS(SITES)..
    Sum{SITES1$(ord(SITES) ne ord(SITES1)), prec[SITES1,SITES]} =e= 1 ;
Eq_2(SITES)$CLIENTS(SITES)..
    Sum{SITES1$(ord(SITES) ne ord(SITES1)), prec[SITES,SITES1]} =e= 1 ;

* If i is the first client of a tour, then quant(i)=DEM(i)
Eq_3(SITES)$CLIENTS(SITES)..
    quant[SITES] =l= CAP + (DEM[SITES]-CAP)* prec['S1',SITES] ;
* If j comes just after i in a tour, then quant(j) is greater than the
* quantity delivered during the tour up to i plus the quantity to be
* delivered at j (to avoid loops and keep capacity limit of the tanker)
Eq_4(SITES,SITES1)$((CLIENTS(SITES) )          and
                    (CLIENTS(SITES1))          and
                    (ord(SITES) ne ord(SITES1)))..
    quant[SITES1]  =g= quant[SITES] +
                       DEM[SITES1]   -
                       CAP          +
                       CAP*prec[SITES,SITES1] +
                      (CAP-DEM[SITES1]-DEM[SITES])*
                       prec[SITES1,SITES] ;
* Objective: total distance driven
Def_obj..
    Length =e= Sum{(SITES,SITES1)$(ord(SITES) ne ord(SITES1) ),
                                 DIST[SITES,SITES1]*prec[SITES,SITES1]} ;

quant.up[CLIENTS]$(ord(CLIENTS) ne 1 ) = CAP          ;
quant.lo[CLIENTS]$(ord(CLIENTS) ne 1 ) = DEM[CLIENTS] ;

* Solve the problem
Model E_4_Oil_delivery / All  / ;

Solve E_4_Oil_delivery using MIP minimazing Length ;

Display Length.l ;



