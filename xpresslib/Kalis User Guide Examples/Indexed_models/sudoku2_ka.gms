*****************************************************************
*   CP example problems
*   ===================
*
*   file sudoku2_ka.mos
*   ```````````````````
*   Sudoku puzzle.
*   - Choosing the propagation algorithm -
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************

* model "sudoku (CP) - 2"
*  uses "kalis", "mmsystem"




* Columns
Set XS / A , B , C , D , E , F , G , H , I / ;

* Rows
Set YS / y1*y9 / ;

* setparam("default_lb", 1)
* setparam("default_ub", 9)
* Default variable bounds
* This is show that Volume has 9 items
Set Volume / h1 * h9 / ;

Integer Variable
         y[XS,YS,Volume]       ;
Variable
         Obj             ;
Equation
         Eq_1(XS,YS)        ,
         Eq_2(YS,Volume)    ,
         Eq_3(XS,Volume)    ,
         Eq_4_1(XS,YS)      ,
         Eq_5_1(Volume)     ,
         Eq_4_2(XS,YS)      ,
         Eq_5_2(Volume)     ,
         Eq_4_3(XS,YS)      ,
         Eq_5_3(Volume)     ,
         Eq_4_4(XS,YS)      ,
         Eq_5_4(Volume)     ,
         Eq_4_5(XS,YS)      ,
         Eq_5_5(Volume)     ,
         Eq_4_6(XS,YS)      ,
         Eq_5_6(Volume)     ,
         Eq_4_7(XS,YS)      ,
         Eq_5_7(Volume)     ,
         Eq_4_8(XS,YS)      ,
         Eq_5_8(Volume)     ,
         Eq_4_9(XS,YS)      ,
         Eq_5_9(Volume)     ,
         Def_Obj            ;


Eq_1(XS,YS)..
    Sum{Volume,y[XS,YS,Volume] } =e= 1 ;

Eq_2(YS,Volume)..
    Sum{XS,y[XS,YS,Volume]     } =e= 1 ;

Eq_3(XS,Volume)..
    Sum{YS,y[XS,YS,Volume]     } =e= 1 ;
*-------------------------------------------------------------------------
Eq_4_1(XS,YS)$((ord(XS) ge 1) and (ord(XS) le 3) and
               (ord(YS) ge 1) and (ord(YS) le 3)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_1(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 1) and (ord(XS) le 3) and
                 (ord(YS) ge 1) and (ord(YS) le 3)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_2(XS,YS)$((ord(XS) ge 4) and (ord(XS) le 6) and
               (ord(YS) ge 1) and (ord(YS) le 3)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_2(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 4) and (ord(XS) le 6) and
                 (ord(YS) ge 1) and (ord(YS) le 3)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_3(XS,YS)$((ord(XS) ge 7) and (ord(XS) le 9) and
               (ord(YS) ge 1) and (ord(YS) le 3)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_3(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 7) and (ord(XS) le 9) and
                 (ord(YS) ge 1) and (ord(YS) le 3)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_4(XS,YS)$((ord(XS) ge 1) and (ord(XS) le 3) and
               (ord(YS) ge 4) and (ord(YS) le 6)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_4(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 1) and (ord(XS) le 3) and
                 (ord(YS) ge 4) and (ord(YS) le 6)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_5(XS,YS)$((ord(XS) ge 4) and (ord(XS) le 6) and
               (ord(YS) ge 4) and (ord(YS) le 6)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_5(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 4) and (ord(XS) le 6) and
                 (ord(YS) ge 4) and (ord(YS) le 6)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_6(XS,YS)$((ord(XS) ge 7) and (ord(XS) le 9) and
               (ord(YS) ge 4) and (ord(YS) le 6)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_6(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 7) and (ord(XS) le 9) and
                 (ord(YS) ge 4) and (ord(YS) le 6)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_7(XS,YS)$((ord(XS) ge 1) and (ord(XS) le 3) and
               (ord(YS) ge 7) and (ord(YS) le 9)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_7(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 1) and (ord(XS) le 3) and
                 (ord(YS) ge 7) and (ord(YS) le 9)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_8(XS,YS)$((ord(XS) ge 4) and (ord(XS) le 6) and
               (ord(YS) ge 7) and (ord(YS) le 9)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_8(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 4) and (ord(XS) le 6) and
                 (ord(YS) ge 7) and (ord(YS) le 9)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------
Eq_4_9(XS,YS)$((ord(XS) ge 7) and (ord(XS) le 9) and
               (ord(YS) ge 7) and (ord(YS) le 9)     )..
    Sum{Volume, y[XS,YS,Volume] } =e= 1 ;
Eq_5_9(Volume)..
    Sum{(XS,YS)$((ord(XS) ge 7) and (ord(XS) le 9) and
                 (ord(YS) ge 7) and (ord(YS) le 9)     ),y[XS,YS,Volume]}=e=1;
*-------------------------------------------------------------------------


Def_Obj..
    Obj =e= 1 ;

y.lo[XS,YS,Volume] = 0 ;
y.up[XS,YS,Volume] = 1 ;


* Data from "The Guardian", 29 July, 2005. http://www.guardian.co.uk/sudoku
* This is for XPress variables
* v['A','y1'] = 8 ; v['F','y1'] = 3 ;
* v['B','y2'] = 5 ; v['G','y2'] = 4 ;
* v['A','y3'] = 2 ; v['E','y3'] = 7 ; v['H','y3']=6 ;
* v['D','y4'] = 1 ; v['I','y4'] = 5 ;
* v['C','y5'] = 3 ; v['G','y5'] = 9 ;
* v['A','y6'] = 6 ; v['F','y6'] = 4 ;
* v['B','y7'] = 7 ; v['E','y7'] = 2 ; v['I','y7']=3 ;
* v['C','y8'] = 4 ; v['H','y8'] = 1 ;
* v['D','y9'] = 9 ; v['I','y9'] = 8 ;
* This is for GAMS variables

*  y.fx['A','y1','h8'] = 1 ;
*  y.fx['F','y1','h3'] = 1 ;
*  y.fx['B','y2','h5'] = 1 ;
*  y.fx['G','y2','h4'] = 1 ;
*  y.fx['A','y3','h2'] = 1 ;
*  y.fx['E','y3','h7'] = 1 ;
*  y.fx['H','y3','h6'] = 1 ;
*  y.fx['D','y4','h1'] = 1 ;
*  y.fx['I','y4','h5'] = 1 ;
*  y.fx['C','y5','h3'] = 1 ;
*  y.fx['G','y5','h9'] = 1 ;
*  y.fx['A','y6','h6'] = 1 ;
*  y.fx['F','y6','h4'] = 1 ;
*  y.fx['B','y7','h7'] = 1 ;
*  y.fx['E','y7','h2'] = 1 ;
*  y.fx['I','y7','h3'] = 1 ;
*  y.fx['C','y8','h4'] = 1 ;
*  y.fx['H','y8','h1'] = 1 ;
*  y.fx['D','y9','h9'] = 1 ;
*  y.fx['I','y9','h8'] = 1 ;





* Solve the problem
Model sudoku / all / ;
Solve sudoku using MIP minimazing Obj ;

Display y.l ;


Parameter
* Number assigned to cell (x,y)
         v[XS,YS] ;

Loop{(XS,YS),
Loop{Volume,
    If (y.l[XS,YS,Volume] gt 0 , v[XS,YS] = ord(Volume) ) ;
    }
    } ;




* Other data sets:

* "The Times", 26 January, 2005
* v['E',y1] = 4 ; v['F',y1] = 3 ; v['H',y1] = 6 ;
* v['B',y2] = 6 ; v['C',y2] = 5 ; v['G',y2] = 7 ;
* v['A',y3] = 8 ; v['D',y3] = 7 ; v['I',y3] = 3 ;
* v['B',y4] = 5 ; v['F',y4] = 1 ; v['G',y4] = 3 ; v['I',y4] = 7 ;
* v['A',y5] = 1 ; v['B',y5] = 2 ; v['H',y5] = 8 ; v['I',y5] = 4 ;
* v['A',y6] = 9 ; v['C',y6] = 7 ; v['D',y6] = 5 ; v['H',y6] = 2 ;
* v['A',y7] = 4 ; v['F',y7] = 5 ; v['I',y7] = 9 ;
* v['C',y8] = 9 ; v['G',y8] = 4 ; v['H',y8] = 5 ;
* v['B',y9] = 3 ; v['D',y9] = 4 ; v['E',y9] = 6 ;

* "The Guardian", 3 August, 2005
* v['B',y1] = 4 ; v['C',y1] = 9 ; v('D',y1) = 1 ; v['F',y1] = 6 ;
* v['A',y2] = 7 ; v['F',y2] = 3 ;
* v['A',y3] = 1 ; v['F',y3] = 4 ;
* v['A',y4] = 8 ; v['G',y4] = 3 ; v('H',y4) = 1 ; v['I',y4] = 7 ;
* v['A',y6] = 6 ; v['B',y6] = 2 ; v('C',y6) = 7 ; v['I',y6] = 9 ;
* v['D',y7] = 8 ; v['I',y7] = 1 ;
* v['D',y8] = 7 ; v['I',y8] = 2 ;
* v['D',y9] = 5 ; v['F',y9] = 2 ; v('G',y9) = 4 ; v['H',y9] = 9 ;