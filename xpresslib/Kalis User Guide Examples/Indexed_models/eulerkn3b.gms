*****************************************************************
*   CP example problems
*   ===================
*
*   file eulerkn3b.mos
*   ``````````````````
*   Euler knight problem.
*   Finding a tour on a chess-board for a knight figure,
*   such that the knight moves through every cell exactly
*   once and returns to its origin.
*   - Alternative implementation using a 'cycle' constraint
*     with successor and predecessor variables -
*
*   (c) 2007 Artelys S.A. and Dash Optimization
*
******************************************************************!)

* model "Euler Knight Moves"
*  uses "kalis"
* Number of rows/columns
$Set S 8

Set X / x1*x%S% / ;
Set Y / y1*y%S% / ;

Alias(X,XX) ;
Alias(Y,YY) ;

Set Connect(X,Y,XX,YY) ;


Loop{(X,Y)   ,
Loop{(XX,YY) ,
Connect(X,Y,XX,YY)$(SQR(ord(XX) - ord(X)) + SQR (ord(YY) - ord(Y)) eq 5 ) = Yes ;
};
};


* Total number of cells
 Set time / t1 * t64 / ;

Integer Variable
* Cells on the chessboard and time- as set
         PATH[X,Y,time] ;
Variable
         Obj            ;

Equation
         Eq_1(X)         ,
         Eq_2(X,Y,time)  ,
         Eq_3(time)      ,
         Def_obj         ;

Eq_1(X)..
      Sum{(time,Y),PATH[X,Y,time]} =e= 8 ;

*Eq_2(X,Y,time)$(ord(time) lt 64)..
*      PATH[X,Y,time] =l=
*                Sum{(XX,YY)$Connect(X,Y,XX,YY), PATH[XX,YY,time+1]} ;

Eq_2(X,Y,time)..
      PATH[X,Y,time] =l=
                Sum{(XX,YY)$Connect(X,Y,XX,YY), PATH[XX,YY,time++1]} ;

Eq_3(time)..
      Sum{(X,Y),PATH[X,Y,time]} =e= 1 ;

Def_Obj..
      Obj =e= 1 ;

PATH.lo[X,Y,time]  = 0 ;
PATH.up[X,Y,time]  = 1 ;

PATH.fx['x1','y1','t1']  = 1 ;

Model Euler_Knight_Moves / all / ;
Solve Euler_Knight_Moves using MIP maximazing Obj ;

Parameter res[X,Y] ;

res[X,Y] =   Sum{(time),PATH.l[X,Y,time]}  ;