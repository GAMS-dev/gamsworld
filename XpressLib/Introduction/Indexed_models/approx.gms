*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file approx.mos
*   ```````````````
*   Function approximation with SOS2
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Sep. 2006
********************************************************

* model "Approximation"
$Set NB 5
Set BREAKS / b1*b%NB% / ;

Parameter R_big[BREAKS] / b1 1 , b2 2.2 , b3 3.4 , b4 4.8 , b5 6.5 / ;
Parameter F_big[BREAKS] / b1 2 , b2 3.2 , b3 1.4 , b4 2.5 , b5 0.8 / ;
* Coordinates of break points

Variable x , RefRow , y[BREAKS] , f ;
* y[BREAKS] -> Weight variables

Equation Eq_1   ,
         Eq_2   ,
         Eq_3   ,
         Def_Obj ;
Eq_1..
 RefRow =e= Sum{BREAKS, R_big[BREAKS]*y[BREAKS]} ;
Eq_2..
 x =e= RefRow ;
* Convexity constraint
Eq_3..
 Sum{BREAKS, y[BREAKS] } =e= 1 ;

Def_Obj..
    f =e= Sum{BREAKS, F_big[BREAKS]*y[BREAKS] } ;

* Bounds
y.lo[BREAKS] = 0 ;
x.lo = 1 ;
x.up = 6.5 ;

* Solve the problem
Model Approximation / All / ;

Solve Approximation using LP Minimazing f ;

Display f.l ;