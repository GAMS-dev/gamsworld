*  MPEC written by GAMS Convert at 11/06/01 17:01:58
*  
*  Equation counts
*     Total       E       G       L       N       X
*        27      21       6       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        34      34       0       0       0       0       0       0
*  FX     6       6       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        90      52      38       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34;

Positive Variables x12,x13,x16,x17,x20,x21,x28,x29,x30,x31,x32,x33,x34;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27;


e1..    objvar - 1400*x28 =E= 0;

e2..    x2 - 40*x28 =E= 0;

e3..    x3 - 50*x28 =E= 0;

e4..    x4 - 40*x28 =E= 0;

e5..    x5 - 50*x28 =E= 0;

e6..    x6 - 50*x28 =E= 0;

e7..    x7 - 50*x28 =E= 0;

e8..    x8 - 50*x28 =E= 0;

e9..    x9 - 50*x28 =E= 0;

e10..    x10 - 50*x28 =E= 0;

e11..    x11 - 5*x28 =E= 0;

e12..    x14 - 5*x28 =E= 0;

e13..    x15 - 6.25*x28 =E= 0;

e14..    x18 - 6.25*x28 =E= 0;

e15..    x19 - 5*x28 =E= 0;

e16..    x22 - 5*x28 =E= 0;

e17.. x2*(0.6*x26 + 0.8*x27) - x2*(x29 - x30) - x23 =E= 0;

e18.. x3*x27 - x3*(x31 - x32) - x24 =E= 0;

e19.. x4*(0.8*x27 - 0.6*x26) - x4*(x33 - x34) - x25 =E= 0;

e20..    0.6*x23 - 0.6*x25 =E= 400;

e21..    0.8*x23 + x24 + 0.8*x25 =E= 600;

e22.. x11*x29 + x12*x30 + x5 - x23 =G= 0;

e23.. x13*x29 + x14*x30 + x6 + x23 =G= 0;

e24.. x15*x31 + x16*x32 + x7 - x24 =G= 0;

e25.. x17*x31 + x18*x32 + x8 + x24 =G= 0;

e26.. x19*x33 + x20*x34 + x9 - x25 =G= 0;

e27.. x21*x33 + x22*x34 + x10 + x25 =G= 0;

* set non default bounds

x12.fx = 0; 
x13.fx = 0; 
x16.fx = 0; 
x17.fx = 0; 
x20.fx = 0; 
x21.fx = 0; 
x26.lo = -4; x26.up = 4; 
x27.lo = -4; x27.up = 4; 

* set non default levels


* set non default marginals


Model m / e1,e2.x2,e3.x3,e4.x4,e5.x5,e6.x6,e7.x7,e8.x8,e9.x9,e10.x10,e11.x11
         ,e12.x14,e13.x15,e14.x18,e15.x19,e16.x22,e17.x23,e18.x24,e19.x25
         ,e20.x26,e21.x27,e22.x29,e23.x30,e24.x31,e25.x32,e26.x33,e27.x34 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
