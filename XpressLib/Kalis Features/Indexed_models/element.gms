*****************************************************************
*   CP example problems
*   ===================
*
*   file element.mos
*   ````````````````
*   Element constraints.
*
*   (c) 2005 Artelys SA and Dash Associates, rev. 2007
*
******************************************************************
* model "Element"
*  uses "kalis"

Set RY / y43*y52 / ;
Set RX / x1 , x2 / ;

Parameter D[RY]  / y43 0 ,
                   y44 1 ,
                   y45 2 ,
                   y46 3 ,
                   y47 4 ,
                   y48 5 ,
                   y49 6 ,
                   y50 7 ,
                   y51 8 ,
                   y52 9 / ;
Table D2[RX,RY]
                       y43 y44 y45 y46 y47 y48 y49 y50 y51 y52
                   x1   10  11  12  13  14  15  16  17  18  19
                   x2   20  21  22  23  24  25  26  27  28  29  ;

Variable
         x               ,
         y               ,
         d_of_y[RY]      ,
         d_of_x_y[RX,RY] ,
         Obj             ;


Equation
         Eq_1(RY)    ,
         Eq_2(RX,RY) ,
         Def_Obj ;
Eq_1(RY)..
    d_of_y[RY] =e= D[RY] ;

Eq_2(RX,RY)..
    d_of_x_y[RX,RY] =e= D2[RX,RY] ;

Def_Obj..
    Obj =e= 1 ;

Model Element / all / ;
Solve Element using LP minimazing Obj ;

Display Obj.l ;