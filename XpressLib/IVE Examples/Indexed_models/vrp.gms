*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file vrp.mos
*   ````````````
*   TYPE:         Vehicle routing problem (VRP)
*   DIFFICULTY:   4
*   FEATURES:     MIP problem, formulation of constraints to eliminate
*                 inadmissible subtours, definition of model cuts,
*                 selection  with `|', algorithm for printing the tours,
*                 graphical solution representation
*   DESCRIPTION:  A transporter has to deliver heating oil from a refinery
*                 to a certain number of clients. The distances between the
*                 clients and the refinery and the demands in liters for
*                 the different sites are given. The transport company uses
*                 tankers with a capacity of 39000 liters for the deliveries.
*                 Determine the tours for delivering to all clients that
*                 minimize the total number of kilometers driven.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 10.4 `Heating oil delivery'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Heating oil delivery"

$Set NS  7
* Set of locations, 1=refinery
Set SITES / s1*s%NS% / ;
Set CLIENTS(SITES) / s2*s%NS%/ ;
Alias(SITES,SITES1) ;


* Demands
Parameter DEM[SITES] ;
                             DEM['s2'] = 14000 ;
                             DEM['s3'] =  3000 ;
                             DEM['s4'] =  6000 ;
                             DEM['s5'] = 16000 ;
                             DEM['s6'] = 15000 ;
                             DEM['s7'] =  5000 ;
* Distances between locations
Table DIST[SITES,SITES1]
                       s1   s2  s3   s4   s5   s6  s7
                 s1     0  148  55   32   70  140  73
                 s2   148    0  93  180   99   12  72
                 s3    55   93   0   85   20   83  28
                 s4    32  180  85    0  100  174  99
                 s5    70   99  20  100    0   85  49
                 s6   140   12  83  174   85    0  73
                 s7    73   72  28   99   49   73   0 ;

* Lorry capacity
Scalar CAP / 39000 / ;

Binary Variable prec[SITES,SITES1] ;
* 1 if i immediately precedes j,
* 0 otherwise

Variable        quant[SITES]   ,
* Quantity delivered up to i
                Length         ;

Equation EnterOnce(SITES) ,
         LeaveOnce(SITES) ,
         QuantFirst(SITES),
         QuantSucc(SITES,SITES1) ,
         Def_Obj ;

* Enter and leave every city only once (except the depot)
EnterOnce(SITES)$CLIENTS(SITES)..
    Sum{SITES1$(ord(SITES) ne ord(SITES1)), prec[SITES1,SITES]} =e= 1 ;

LeaveOnce(SITES)$CLIENTS(SITES)..
    Sum{SITES1$(ord(SITES) ne ord(SITES1)), prec[SITES,SITES1]} =e= 1 ;

* If i is the first client of a tour, then quant(i)=DEM(i)
QuantFirst(SITES)$CLIENTS(SITES)..
    quant[SITES] =l= CAP + (DEM[SITES]-CAP)*prec['s1',SITES] ;

* If j comes just after i in a tour, then quant(j) is greater than the
* quantity delivered during the tour up to i plus the quantity to be
* delivered at j (to avoid loops and keep capacity limit of the tanker)

QuantSucc(SITES,SITES1)$((CLIENTS(SITES))  and
                         (CLIENTS(SITES1)) and
                         (ord(SITES) ne ord(SITES1)))..
    quant[SITES1] =g= quant[SITES] +
                      DEM[SITES1]  -
                      CAP +
                      CAP*prec[SITES,SITES1] +
                     (CAP-DEM[SITES1]        -
                      DEM[SITES])*prec[SITES1,SITES] ;

* Objective: total distance driven
Def_Obj..
    Length =e= Sum{(SITES,SITES1)$(ord(SITES) ne ord(SITES1)),
                                 DIST[SITES,SITES1]*prec[SITES,SITES1] } ;

quant.up[CLIENTS] = CAP ;
quant.lo[CLIENTS] = DEM[CLIENTS] ;

* Solve the problem
Model Heating_oil_delivery / all / ;

Solve Heating_oil_delivery using MIP minimazing Length ;

Display Length.l ;