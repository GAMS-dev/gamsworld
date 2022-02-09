*  NLP written by GAMS Convert at 07/19/01 13:40:11
*  
*  Equation counts
*     Total       E       G       L       N       X
*        13      13       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        18      18       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        61      25      36       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,objvar;

Negative Variables x6;

Positive Variables x13,x14,x16,x17;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..  - (sqr(x1 - 5) + sqr(5 + x2) + sqr(x3 - 3) + sqr(2 + x4) + sqr(x5 - 2) + 
     sqr(1 + x6) + sqr(x7 - 1.5) + sqr(0.5 + x8) + sqr(x9 - 1.2) + sqr(0.2 + 
     x10) + sqr(x11 - 1.1) + sqr(0.1 + x12)) + objvar =E= 0;

e2.. x14/0.1570795**x15 - x1 + x13 =E= 0;

e3.. x14/0.314159**x15 - x3 + x13 =E= 0;

e4.. x14/0.4712385**x15 - x5 + x13 =E= 0;

e5.. x14/0.628318**x15 - x7 + x13 =E= 0;

e6.. x14/0.7853975**x15 - x9 + x13 =E= 0;

e7.. x14/0.942477**x15 - x11 + x13 =E= 0;

e8..  - x17/0.1570795**x15 - x2 + 0.1570795*x16 =E= 0;

e9..  - x17/0.314159**x15 - x4 + 0.314159*x16 =E= 0;

e10..  - x17/0.4712385**x15 - x6 + 0.4712385*x16 =E= 0;

e11..  - x17/0.628318**x15 - x8 + 0.628318*x16 =E= 0;

e12..  - x17/0.7853975**x15 - x10 + 0.7853975*x16 =E= 0;

e13..  - x17/0.942477**x15 - x12 + 0.942477*x16 =E= 0;

* set non default bounds

x1.lo = 4; x1.up = 6; 
x2.lo = -6; x2.up = -4; 
x3.lo = 2; x3.up = 4; 
x4.lo = -3; x4.up = -1; 
x5.lo = 1; x5.up = 3; 
x6.lo = -2; 
x7.lo = 0.5; x7.up = 2.5; 
x8.lo = -1.5; x8.up = 0.5; 
x9.lo = 0.2; x9.up = 2.2; 
x10.lo = -1.2; x10.up = 0.8; 
x11.lo = 0.1; x11.up = 2.1; 
x12.lo = -1.1; x12.up = 0.9; 
x13.up = 1; 
x14.up = 1; 
x15.lo = 1.1; x15.up = 1.3; 
x16.up = 1; 
x17.up = 1; 

* set non default levels

x1.l = 4.343494264; 
x2.l = -4.313466584; 
x3.l = 3.100750712; 
x4.l = -2.397724192; 
x5.l = 1.584424234; 
x6.l = -1.551894266; 
x7.l = 1.199661008; 
x8.l = 0.212540694; 
x9.l = 0.334227446; 
x10.l = -0.199578662; 
x11.l = 2.096235254; 
x12.l = 0.057466756; 
x13.l = 0.991133039; 
x14.l = 0.762250467; 
x15.l = 1.1261384966; 
x16.l = 0.639718759; 
x17.l = 0.159517864; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
