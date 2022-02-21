*******************************************************
*   Mosel Example Problems
*   ======================
*
*  Origin file j4grit.mos
*   ```````````````
*   Gritting roads in a village
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "J-4 Gritting circuit"

Set ISEC / i1*i12 / ;
* Set of street intersections
Alias(ISEC,ISEC1);

* Length of streets
Parameter LEN[ISEC,ISEC1] ; LEN[ISEC,ISEC1] = 0 ;
LEN['i1','i2']   = 150 ;
LEN['i1','i5']   = 165 ;
LEN['i2','i3']   = 130 ;
LEN['i2','i5']   = 230 ;
LEN['i2','i6']   = 160 ;
LEN['i3','i2']   = 140 ;
LEN['i3','i4']   = 100 ;
LEN['i4','i3']   = 100 ;
LEN['i4','i8']   = 190 ;
LEN['i5','i1']   = 165 ;
LEN['i5','i6']   = 144 ;
LEN['i6','i2']   = 170 ;
LEN['i6','i5']   = 144 ;
LEN['i6','i7']   = 128 ;
LEN['i6','i9']   = 218 ;
LEN['i6','i10']  = 174 ;
LEN['i7','i3']   = 200 ;
LEN['i7','i6']   = 122 ;
LEN['i7','i8']   = 109 ;
LEN['i7','i11']  = 185 ;
LEN['i8','i4']   = 180 ;
LEN['i8','i11']  = 141 ;
LEN['i8','i12']  = 190 ;
LEN['i9','i5']   = 194 ;
LEN['i9','i10']  = 148 ;
LEN['i10','i6']  = 174 ;
LEN['i10','i7']  = 233 ;
LEN['i11','i7']  = 185 ;
LEN['i11','i10'] = 135 ;
LEN['i12','i11'] = 110 ;

Variable use[ISEC,ISEC1] ,
* Frequency of use of streets
         Length          ;

Equation Eq_1(ISEC) ,
         Def_Obj    ;

* Balance traffic flow through intersections
Eq_1(ISEC)..
    Sum{ISEC1, use(ISEC,ISEC1) } =e= Sum{ISEC1, use(ISEC1,ISEC) } ;

* Objective: length of circuit
Def_Obj..
    Length =e= Sum{(ISEC,ISEC1)$(LEN[ISEC,ISEC1] gt 0 ),
                                            LEN[ISEC,ISEC1]*use[ISEC,ISEC1] } ;
* Grit every street
use.lo[ISEC,ISEC1] = 0 ;
use.lo[ISEC,ISEC1]$(LEN[ISEC,ISEC1] gt 0 ) = 1 ;

* Solve the problem
Model J_4_Gritting_circuit / all / ;

Solve J_4_Gritting_circuit using LP minimazing Length ;

Display Length.l ;




