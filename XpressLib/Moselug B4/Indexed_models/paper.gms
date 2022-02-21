********************************************************
*   Mosel User Guide Examples
*   =========================
*
*   file paper.mos
*   ``````````````
*   Column generation algorithm for finding (near-)optimal
*   solutions for a paper cutting example.
*
*   (c) 2001 Dash Associates
*       authors: Bob Daniel, S. Heipcke, J. Tebboth
********************************************************!)

*model Papermill

* Number of different widths
$Set NWIDTHS  5

* Range of widths
Set WIDTHS /w1*w%NWIDTHS%/;
Alias(WIDTHS,WIDTHS1);
Set I /i1*i11/;
* Range of cutting patterns

* Possible widths
Parameter  WIDTH[WIDTHS]  / w1 17 , w2 21 , w3 22.5 , w4 24 , w5 29.5 / ;
* Demand per width
Parameter DEMAND[WIDTHS]  / w1 150 , w2 96 , w3 48 , w4 108 , w5  227 / ;


Parameter RP[I]
* Maximum roll width
Scalar MAXWIDTH / 94 / ;
* Zero tolerance
Scalar  EPSI / 0.000001 / ;

Parameter PATTERNS_1[WIDTHS] ;
Parameter PATTERNS[WIDTHS,WIDTHS1] ;
* Make basic patterns
Loop{(WIDTHS,WIDTHS1)$(ord(WIDTHS) eq ord(WIDTHS1)),
PATTERNS[WIDTHS,WIDTHS1] = floor(MAXWIDTH/WIDTH[WIDTHS]) ;
PATTERNS_1[WIDTHS] = PATTERNS[WIDTHS,WIDTHS1] ;
    };
Integer Variable use[WIDTHS] ;
Variable MinRolls ;

Equation Dem(WIDTHS) ,
         Def_Obj     ;
* Satisfy all demands
Dem(WIDTHS)..
    Sum{WIDTHS1, PATTERNS[WIDTHS,WIDTHS1] * use[WIDTHS1] } =g= DEMAND[WIDTHS] ;

* Objective: minimize no. of rolls
Def_Obj..
 MinRolls =e= Sum{WIDTHS, use[WIDTHS] } ;

* Compute the best integer solution
* for the current problem (including
* the new columns)


use.lo[WIDTHS] = 0 ;
use.up[WIDTHS] = ceil(DEMAND[WIDTHS]/PATTERNS_1[WIDTHS]) ;

* XPress solution
* use.fx['w1'] = 0 ;
* use.fx['w1'] = 0 ;
* use.fx['w1'] = 1 ;
* use.fx['w1'] = 0 ;
* use.fx['w1'] =15 ;

Model Papermill / all / ;

Solve Papermill using MIP minimazing MinRolls ;

Display MinRolls.l ;