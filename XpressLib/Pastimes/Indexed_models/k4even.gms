*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file k4even.mos
*   ```````````````
*   Placing a given number of chips on a 4x4 grid
*   such that every row and every column contains
*   an even number of chips.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "K-4 Even"

* Positions in a row/column
Set POS / p1*p4 / ;
Alias(POS,POS1) ;

Scalar NCHIP / 10 / ;
* Number of chips

* 1 if chip at the position, 0 otherwise
Binary Variable place[POS,POS1] ;
* Chips per row/column divided by 2
Integer Variable row[POS]    ,
                 column[POS] ;
Variable
                 Obj         ;

Equation Eq_1      ,
         Eq_2(POS) ,
         Eq_3(POS) ,
         Def_Obj   ;

* Total number of chips
Eq_1..
    Sum{(POS,POS1), place[POS,POS1] } =e= NCHIP ;

* Even number of chips in all rows and columns
Eq_2(POS)..
    Sum{POS1, place[POS,POS1] } =e= 2*row[POS]    ;

Eq_3(POS)..
    Sum{POS1, place[POS1,POS] } =e= 2*column[POS] ;

Def_Obj..
    Obj =e= 0 ;

* XPress solutions:
*row.fx['p1'] = 1 ;
*row.fx['p2'] = 1 ;
*row.fx['p3'] = 1 ;
*row.fx['p4'] = 2 ;

*column.fx['p1'] = 1 ;
*column.fx['p2'] = 1 ;
*column.fx['p3'] = 1 ;
*column.fx['p4'] = 2 ;

row.up[POS]    = 2 ;
column.up[POS] = 2 ;

* Solve the problem: no objective
Model K_4_Even / all / ;
* Solve the MIP-problem
Solve K_4_Even using MIP minimazing Obj ;

Display Obj.l ;

