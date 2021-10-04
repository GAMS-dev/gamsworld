*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file k6queens.mos
*   `````````````````
*   Placing N queens on an NxN chess board such that
*   they do not attack each other.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "K-6 Quens"


$Set NQ  8
* Number of rows and columns
Set POS / p1*p%NQ% / ;

Alias(POS,POS1);
Alias(POS,POS2);


Binary Variable queen[POS,POS1] ;
* 1 if queen at a position, 0 otherwise

Variable Total ;

Equation Eq_1(POS) ,
         Eq_2(POS) ,
         Eq_3(POS) ,
         Eq_4(POS) ,
         Eq_5(POS) ,
         Eq_6(POS) ,
         Def_Obj   ;

* Single queen per row and column

Eq_1(POS)..
    Sum{POS1, queen[POS,POS1] } =e= 1 ;
Eq_2(POS)..
    Sum{POS1, queen[POS1,POS] } =e= 1 ;

* Diagonals
Eq_3(POS)..
    Sum{POS1$(ord(POS1) ge ord(POS)),
                     Sum{POS2$(ord(POS2) eq (ord(POS1)-ord(POS)+1)),
                                              queen[POS2,POS1] }} =l= 1 ;

Eq_4(POS)$(ord(POS) gt 1)..
    Sum{POS1$(ord(POS1) ge ord(POS)),
                     Sum{POS2$(ord(POS2) eq (ord(POS1)-ord(POS)+1)),
                                              queen[POS1,POS2] }} =l= 1 ;
Eq_5(POS)..
    Sum{POS1$(ord(POS1) le ord(POS)),
                     Sum{POS2$(ord(POS2) eq (ord(POS)-ord(POS1)+1)),
                                              queen[POS1,POS2] }} =l= 1 ;

Eq_6(POS)$(ord(POS) gt 1)..
    Sum{POS1$(ord(POS1) ge ord(POS)),
                     Sum{POS2$(ord(POS2) eq (card(POS)-ord(POS1)+ord(POS))),
                                              queen[POS1,POS2] }} =l= 1 ;

* Objective: total number of queens
Def_Obj..
    Total =e= Sum{(POS,POS1) , queen[POS,POS1]} ;

* Solve the problem
Model K_6_Quens / all / ;
* Solve the MIP-problem
Solve K_6_Quens using MIP minimazing Total ;

Display Total.l ;


