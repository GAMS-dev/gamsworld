*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file f1connect.mos
*   ``````````````````
*   Planning flight connections at a hub
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************!)

* model "F-1 Flight connections"

Set PLANES / p1*p6 /
* Set of airplanes
Alias(PLANES,PLANES1);

Table  PASS[PLANES,PLANES1]

                        p1    p2    p3    p4   p5   p6
               p1       35    12    16    38    5    2
               p2       25     8     9    24    6    8
               p3       12     8    11    27    3    2
               p4       38    15    14    30    2    9
               p5    -1000     9     8    25   10    5
               p6    -1000 -1000 -1000    14    6    7    ;
* Passengers with flight connections

Binary Variable  cont[PLANES,PLANES1] ;
* 1 if flight i continues to j
Variable Transfer ;
Equation Eq_1(PLANES) ,
         Eq_2(PLANES) ,
         Def_obj      ;


* One incoming and one outgoing flight per plane
Eq_1(PLANES)..
    Sum{PLANES1, cont[PLANES1,PLANES]} =e= 1 ;
Eq_2(PLANES)..
    Sum{PLANES1, cont[PLANES,PLANES1]} =e= 1 ;

* Objective: number of passengers on connecting flights
Def_obj..
    Transfer =e= Sum{(PLANES,PLANES1),PASS[PLANES,PLANES1]*cont[PLANES,PLANES1]};

* Solve the problem: maximize the number of passengers staying on board
Model F_1_Flight_connections / All  / ;

Solve F_1_Flight_connections using MIP maximazing Transfer ;

Display Transfer.l ;