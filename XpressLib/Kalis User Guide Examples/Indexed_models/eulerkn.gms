*****************************************************************
*   CP example problems
*   ===================
*
*   file eulerkn.mos
*   ````````````````
*   Euler knight problem.
*   Finding a tour on a chess-board for a knight figure,
*   such that the knight moves through every cell exactly
*   once and returns to its origin.
*
*   Model formulation for 8x8 chessboard:
*   We number the cells of the chessboard from 0 to 63 (64 cells)
*
*      A  B  C  D  E  F  G  H
*     +--+--+--+--+--+--+--+--+
*   8 |0 |1 |2 |3 |4 |5 |6 |7 |
*     +--+--+--+--+--+--+--+--+
*   7 |8 |9 |10|11|12|13|14|15|
*     +--+--+--+--+--+--+--+--+
*   6 |16|17|18|19|20|21|22|23|
*     +--+--+--+--+--+--+--+--+
*   5 |24|25|26|27|28|29|30|31|
*     +--+--+--+--+--+--+--+--+
*   4 |32|33|34|35|36|37|38|39|
*     +--+--+--+--+--+--+--+--+
*   3 |40|41|42|43|44|45|46|47|
*     +--+--+--+--+--+--+--+--+
*   2 |48|49|50|51|52|53|54|55|
*     +--+--+--+--+--+--+--+--+
*   1 |56|57|58|59|60|61|62|63|
*     +--+--+--+--+--+--+--+--+

*   The path that the knight will follow is represented by 64 variables "pos"
*   that can take values from 0 to 63.
*   For example, pos[12] = 45 means that the 12th cell visited by the knight
*   is the cell F:3

*   Constraint 1: each cell is visited only once.
*   ---------------------------------------------
*   We simply post an all_different constraint on all the path variables
*
*   Constraint 2: the path of the knight must follow the chess rules.
*   -----------------------------------------------------------------
*
*   The knight (Kn) can move to the crossed cells (xx):
*
*   +--+--+--+--+--+
*   |  |xx|  |xx|  |
*   +--+--+--+--+--+
*   |xx|  |  |  |xx|
*   +--+--+--+--+--+
*   |  |  |Kn|  |  |
*   +--+--+--+--+--+
*   |xx|  |  |  |xx|
*   +--+--+--+--+--+
*   |  |xx|  |xx|  |
*   +--+--+--+--+--+

*  If the knight is in the cell numbered c, it is authorized to move to the
*  following cells:
*   c + 1 - 16  [One cell right, two cells up  ]
*   c - 1 - 16  [One cell left, two cells up   ]
*   c + 1 + 16  [One cell right, two cells down]
*   c - 1 + 16  [One cell left, two cells down ]
*   c + 2 - 8   [Two cells right, one cell up  ]
*   c - 2 - 8   [Two cells left, one cell up   ]
*   c + 2 + 8   [Two cells right, one cell down]
*   c - 2 + 8   [Two cells left, one cell down ]
*
*  This constraint is represented by a generalized binary constraint,
*  the function valid_knight_move defined in the model provides the
*  evaluation for pairs of values.
*
*  (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************!)

* model "Euler Knight Moves"
*  uses "kalis"

* Number of rows/columns
$Set S 8

Set X / a , b , c , d , e , f , g , h / ;
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

PATH.fx['a','y1','t1']  = 1 ;

Model Euler_Knight_Moves_kn / all / ;
Solve Euler_Knight_Moves_kn using MIP maximazing Obj ;



Set Steps[X,Y,time] ;
Loop{ time,
Loop{ (X,Y),
    Steps[X,Y,time]$(PATH.l[X,Y,time] > 0) = Yes ;
    } ;
    } ;
