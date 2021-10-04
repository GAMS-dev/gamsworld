********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file debug.mos
*   `````````````
*   Example of the use of `exit'.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "debug"


Set R / r1*r10 / ;
Parameter a[R] / r1 2 , r2 4 , r3 6 , r4 8 , r5  10 ,
                 r6 9 , r7 7 , r8 5 , r9 3 , r10  1 / ;

Parameter b[R] / r1 9 , r2 7 , r3 5 , r4 3 , r5   1 ,
                 r6 2 , r7 4 , r8 6 , r9 8 , r10 10 / ;

Binary Variable x[R] ;
Variable Obj ;

Equation Ctr     ,
         Def_Obj ;
Ctr..
    Sum{R, b[R]*x[R] } =l= 100 ;
Def_Obj..
    Obj =e= Sum{R, a[R]*x[R] } ;

* Solve the LP and test whether there is a solution
Model debug / all / ;

Solve debug using MIP maximazing Obj ;

Display Obj.l ;