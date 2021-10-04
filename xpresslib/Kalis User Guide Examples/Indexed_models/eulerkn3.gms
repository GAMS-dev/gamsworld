*****************************************************************
*   CP example problems
*   ===================
*
*   file eulerkn2.mos
*   `````````````````
*   Euler knight problem.
*   Finding a tour on a chess-board for a knight figure,
*   such that the knight moves through every cell exactly
*   once and returns to its origin.
*   - Alternative implementation using subtour elimination -
*
*   (c) 2005 Artelys S.A. and Dash Optimization
*
******************************************************************

* model "Euler Knight Moves"
* uses "kalis"

* Number of rows/columns
$Set S 8

Set X / x1*x%S% / ;
Set Y / y1*y%S% / ;

Alias(X,XX) ;
Alias(Y,YY) ;

Set Connect(X,Y,XX,YY) ;

Loop{(X,Y)   ,
Loop{(XX,YY) ,
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) + 2 ) and (ord(YY) eq ord(Y) + 1 )) = Yes ;
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) + 2 ) and (ord(YY) eq ord(Y) - 1 )) = Yes ;
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) - 2 ) and (ord(YY) eq ord(Y) + 1 )) = Yes ;
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) - 2 ) and (ord(YY) eq ord(Y) - 1 )) = Yes ;
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) + 1 ) and (ord(YY) eq ord(Y) + 2 )) = Yes ;
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) + 1 ) and (ord(YY) eq ord(Y) - 2 )) = Yes ;
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) - 1 ) and (ord(YY) eq ord(Y) + 2 )) = Yes ;
Connect(X,Y,XX,YY)$((ord(XX) eq ord(X) - 1 ) and (ord(YY) eq ord(Y) - 2 )) = Yes ;
};
};


* Total number of cells
 Set time / t1 * t64 / ;

Binary Variable
* Cells on the chessboard and time- as set
         PATH[X,Y,time] ;
Variable
         Obj            ;
Equation
         Eq_1(time)      ,
         Eq_2(X,Y,time)  ,
         Def_obj         ;


Eq_1(time)..
      Sum{(X,Y),PATH[X,Y,time]} =e= 1 ;

Eq_2(X,Y,time)..
      PATH[X,Y,time--1] =l=
                Sum{(XX,YY)$Connect(X,Y,XX,YY), PATH[XX,YY,time]} ;

Def_Obj..
      Obj =e= 1 ;

PATH.fx['x1','y1','t1']  = 1 ;

Model Euler_Knight_Moves_3 / all / ;

Solve Euler_Knight_Moves_3 using MIP maximazing Obj ;