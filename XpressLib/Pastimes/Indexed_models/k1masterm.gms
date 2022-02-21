*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file k1mastm.mos
*   ````````````````
*   Playing Mastermind
*
*   Given information:
*   Round  Pos.1   Pos.2   Pos.3   Pos.4   Judgement
*    1     red     yellow  white   green   1 color well positioned,
*                                          1 color on wrong position
*    2     blue    green   white   blue    1 color well positioned
*    3     yellow  black   white   black   1 color well positioned,
*                                          1 color on wrong position
*    4     blue    yellow  red     black   all colors on wrong position
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "K-1 Mastermind"

* Positions in a row
Set POS / p1*p4 / ;
Set COLORS / White , Blue , Yellow , Black , Red , Green / ;

Binary Variable place[POS,COLORS]
* 1 if color at the position, 0 otherwise

Variable Obj ;

Equation Eq_1(POS) ,
         Eq_2      ,
         Eq_3      ,
         Eq_4      ,
         Eq_5      ,
         Eq_6      ,
         Eq_7      ,
         Eq_8      ,
         Eq_9      ,
         Def_Obj    ;


* Assign one color per position
Eq_1(POS)..
    Sum{COLORS, place[POS,COLORS] } =e= 1 ;

* Round 1: 1 color well positioned, 1 color on wrong position
Eq_2..
    place['p1','Red']   + place['p2','Yellow']   +
    place['p3','White'] + place['p4','Green']     =e= 1 ;
Eq_3..
    Sum{POS$(ord(POS) ne 1), place[POS,'Red']   } +
    Sum{POS$(ord(POS) ne 2), place[POS,'Yellow']} +
    Sum{POS$(ord(POS) ne 3), place[POS,'White'] } +
    Sum{POS$(ord(POS) ne 4), place[POS,'Green'] }  =e= 1 ;

* Round 2: 1 color well positioned
Eq_4..
    place['p1','Blue']  + place['p2','Green'] +
    place['p3','White'] + place['p4','Blue']    =e= 1 ;
Eq_5..
    Sum{POS$((ord(POS) ne 1) and
             (ord(POS) ne 4))   , place[POS,'Blue'] } +
    Sum{POS$( ord(POS) ne 2)    , place[POS,'Green']} +
    Sum{POS$( ord(POS) ne 3)    , place[POS,'White']}  =e= 0 ;

* Round 3: 1 color well positioned, 1 color on wrong position
Eq_6..
    place['p1','Yellow'] + place['p2','Black'] +
    place['p3','White']  + place['p4','Black']  =e= 1 ;
Eq_7..
    Sum{POS$( ord(POS) ne 1)         , place[POS,'Yellow']} +
    Sum{POS$((ord(POS) ne 2) and
             (ord(POS) ne 4))        , place[POS,'Black']}  +
    Sum{POS$( ord(POS) ne 3)         , place[POS,'White']}   =e= 1 ;

* Round 4: 4 colors on wrong position
Eq_8..
    place['p1','Blue']  + place['p2','Yellow'] +
    place['p3','Red']   + place['p4','Black']    =e= 0 ;
Eq_9..
    Sum{POS$(ord(POS) ne 1) , place[POS,'Blue']  } +
    Sum{POS$(ord(POS) ne 2) , place[POS,'Yellow']} +
    Sum{POS$(ord(POS) ne 3) , place[POS,'Red']   } +
    Sum{POS$(ord(POS) ne 4) , place[POS,'Black'] }   =e= 4 ;


Def_Obj..
    Obj =e= 0 ;

* Solve the problem: no objective
Model K_1_Mastermind / all / ;
* Solve the MIP-problem
Solve K_1_Mastermind using MIP minimazing Obj ;

Display Obj.l ;
Display place.l ;