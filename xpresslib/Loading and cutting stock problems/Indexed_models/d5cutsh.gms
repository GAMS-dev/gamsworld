*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file d5cutsh.mos
*   ````````````````
*   Cutting of sheet metal
*   (2-dimensional cutting patterns)
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "D-5 Sheet metal cutting"


Set PATTERNS  / p1*p16 / ;
* Set of cutting patterns
Set SIZES / s1*s4 / ;
* Set of sheet sizes

Parameter DEM[SIZES] /s1 8 , s2 13 , s3 5 , s4 15 / ;
* Demands for the different sizes

Table CUT[SIZES,PATTERNS]
             p1  p2  p3  p4  p5  p6  p7  p8  p9  p10 p11 p12 p13 p14 p15 p16
         s1   1   1   1   0   0   0   0   0   0    0   0   0   0   0   0   0
         s2   2   1   0   2   1   0   3   2   1    0   5   4   3   2   1   0
         s3   0   0   0   2   2   2   1   1   1    1   0   0   0   0   0   0
         s4   0   1   3   0   1   3   0   2   3    5   0   1   3   5   6   8  ;
* Cutting patterns

Integer Variable use[PATTERNS] ;
* Use of cutting patterns

Variable  Sheets ;

Equation Eq_1(SIZES) ,
         Def_obj     ;

* Satisfy demands
Eq_1(SIZES)..
    Sum{PATTERNS, CUT[SIZES,PATTERNS]*use[PATTERNS] } =g= DEM[SIZES] ;

* Objective: total number of sheets used
Def_obj..
    Sheets =e= Sum{PATTERNS, use[PATTERNS] } ;


* Solve the problem
Model D_5_Sheet_metal_cutting / All  / ;

Solve D_5_Sheet_metal_cutting using mip minimazing Sheets ;

Display Sheets.l ;

