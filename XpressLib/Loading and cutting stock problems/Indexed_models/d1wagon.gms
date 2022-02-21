*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file d1wagon.mos
*   ````````````````
*   Load balancing of train wagons
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "D-1 Wagon load balancing"


Set BOXES  / b1*b16 / ;
* Set of boxes
Set WAGONS / w1*w3  / ;
* Set of wagons

Parameter WEIGHT[BOXES]  / b1  34 ,  b2   6 ,  b3   8 ,  b4 17 ,
                           b5  16 ,  b6   5 ,  b7  13 ,  b8 21 ,
                           b9  25 , b10  31 , b11  14 , b12 13 ,
                          b13  33 , b14   9 , b15  25 , b16 25  / ;
* Box weights
Scalar WMAX / 100 / ;
* Weight limit per wagon

Binary Variable load[BOXES,WAGONS] ;
* 1 if box loaded on wagon, 0 otherwise

Variable maxweight ;
* Weight of the heaviest wagon load

Equation Eq_1(BOXES) , Eq_2(WAGONS) ;

* Every box into one wagon
Eq_1(BOXES)..   Sum{WAGONS, load[BOXES,WAGONS] } =e= 1 ;

* Limit the weight loaded into every wagon
Eq_2(WAGONS)..  Sum{BOXES, WEIGHT[BOXES]*load[BOXES,WAGONS]} =l= maxweight ;

* Bounds on maximum weight
 maxweight.up = WMAX                              ; 
 maxweight.lo = ceil(Sum{BOXES, WEIGHT[BOXES]}/3) ;

* Minimize the heaviest load

Model D_1_Wagon_load_balancing / All  / ;

Solve D_1_Wagon_load_balancing using mip minimazing maxweight ;

Display maxweight.l ;


