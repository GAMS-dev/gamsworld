********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file sosquad.mos
*   ````````````````
*   Approximation of a nonlinear function in two variables
*   by two SOS-2.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "sosquad"

$Set NX 10
$Set NY 10

Set RX /x1*x%NX%/;
Set RY /y1*y%NY%/;

Parameter DX[RX]     ;
Parameter DY[RY]     ;
Parameter FXY[RX,RY] ;

* Sample data: a 10x10 grid to interpolate a quadratic function.
Loop{RX, DX[RX] = ord(RX) };
Loop{RY, DY[RY] = ord(RY) } ;

Loop{(RX,RY), FXY[RX,RY] = (ord(RX)-5)*(ord(RY)-5) } ;

Variable
* Weight on x co-ordinate
  lx[RX]    ,
* Weight on y co-ordinate
  ly[RY]    ,
* Weight on (x,y) co-ordinates
  lxy[RX,RY],
  x         ,
  y         ,
  f         ,
  Obj       ;

Equation Eq_1(RX) ,
         Eq_2(RY) ,
         Eq_3     ,
         Eq_4     ,
         Eq_5     ,
         Eq_6     ,
         Eq_7     ,
         Def_Obj  ;

* Constraints
Eq_1(RX)..
   Sum{RY, lxy[RX,RY] } =e= lx[RX]     ;
Eq_2(RY)..
   Sum{RX, lxy[RX,RY] } =e= ly[RY]     ;
Eq_3..
   Sum{RX, lx[RX]     } =e= 1          ;
Eq_4..
   Sum{RY, ly[RY]     } =e= 1          ;

* Then x, y and f can be calculated using
Eq_5..
 x =e= Sum{ RX ,  DX[RX]*lx[RX]     }  ;
Eq_6..
 y =e= Sum{ RY ,  DY[RY]*ly[RY]     }  ;
Eq_7..
 f =e= Sum{(RX,RY),FXY[RX,RY]*lxy[RX,RY]};
* But of course there is a fair amount of degeneracy in the
* representation of P=(x,y) by the four points Q
Def_Obj..
    Obj =e= 0 ;

Model sosquad /all / ;
Solve sosquad using lp minimazing Obj ;
Display Obj.l ;