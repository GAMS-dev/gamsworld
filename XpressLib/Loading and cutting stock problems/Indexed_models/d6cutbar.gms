******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file d6cutbar.mos
*   `````````````````
*   Cutting of steel bars into school desk legs
*   (1-dimensional cutting patterns)
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "D-6 Cutting steel bars"

Set PATTERNS /p1*p12/ ;
* Set of all cutting patterns

* Sets of cutting patterns
Set PAT1(PATTERNS) /p1*p6  / ;
* Bars of 1.5m
Set PAT2(PATTERNS) /p7*p12 / ;
* Bars of 2m

Set SIZES /s1*s3/ ;
* Desk heights
Parameter SIZES_int(SIZES) / s1 40 , s2 60 , s3 70 / ;

Parameter DEM[SIZES] / s1 108 , s2 125 , s3 100 / ;
* Demands for the different heights

Table CUT[PATTERNS,SIZES]
             s1      s2      s3
       p1     0       0       2
       p2     0       1       1
       p3     2       0       1
       p4     0       2       0
       p5     2       1       0
       p6     3       0       0
       p7     0       1       2
       p8     0       2       1
       p9     1       0       2
      p10     3       0       1
      p11     0       3       0
      p12     5       0       0 ;
* Cutting patterns

Set J /j1,j2 / ;
Parameter LEN[J] / j1 150 , j2 200 / ;
* Lengths of original steel bars


Integer Variable  use[PATTERNS] ;
* Use of cutting patterns
Variable Loss ;

Equation  Eq_1(SIZES) ,
          Def_obj     ;


* Satisfy demands
Eq_1(SIZES)..
     Sum{PATTERNS, CUT[PATTERNS,SIZES]*use[PATTERNS]} =g= 4*DEM[SIZES];

* Objective: total loss
Def_obj..
     Loss =e= Sum{PATTERNS$PAT1(PATTERNS), LEN['j1']*use[PATTERNS] } +
              Sum{PATTERNS$PAT2(PATTERNS), LEN['j2']*use[PATTERNS] } -
              Sum{SIZES, 4*DEM[SIZES]*SIZES_int[SIZES] } ;

* XPress solution
*use.fx[PATTERNS] = 0 ;
*use.fx['p1'] = 1 ;
*use.fx['p3'] = 1 ;
*use.fx['p7'] = 196 ;
*use.fx['p8'] = 5 ;
*use.fx['p11'] = 98 ;
*use.fx['p12'] = 86 ;

use.lo[PATTERNS] = 0 ;
use.up[PATTERNS] = 200 ;

* Solve the problem
Model D_6_Cutting_steel_bars / All  / ;

Solve D_6_Cutting_steel_bars using mip minimazing Loss ;

Display Loss.l ;

