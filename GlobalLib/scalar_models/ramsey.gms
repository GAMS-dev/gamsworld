*  NLP written by GAMS Convert at 07/30/01 17:04:25
*  
*  Equation counts
*     Total       E       G       L       N       X
*        23      22       0       1       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        34      34       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        77      55      22       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23;


e1.. 0.759835685651593*x1**0.25 - x12 - x23 =E= 0;

e2.. 0.77686866556676*x2**0.25 - x13 - x24 =E= 0;

e3.. 0.794283468039448*x3**0.25 - x14 - x25 =E= 0;

e4.. 0.812088652256959*x4**0.25 - x15 - x26 =E= 0;

e5.. 0.830292969275008*x5**0.25 - x16 - x27 =E= 0;

e6.. 0.848905366318769*x6**0.25 - x17 - x28 =E= 0;

e7.. 0.867934991180342*x7**0.25 - x18 - x29 =E= 0;

e8.. 0.88739119671479*x8**0.25 - x19 - x30 =E= 0;

e9.. 0.907283545436972*x9**0.25 - x20 - x31 =E= 0;

e10.. 0.92762181422141*x10**0.25 - x21 - x32 =E= 0;

e11.. 0.948415999107521*x11**0.25 - x22 - x33 =E= 0;

e12..  - x1 + x2 - x23 =E= 0;

e13..  - x2 + x3 - x24 =E= 0;

e14..  - x3 + x4 - x25 =E= 0;

e15..  - x4 + x5 - x26 =E= 0;

e16..  - x5 + x6 - x27 =E= 0;

e17..  - x6 + x7 - x28 =E= 0;

e18..  - x7 + x8 - x29 =E= 0;

e19..  - x8 + x9 - x30 =E= 0;

e20..  - x9 + x10 - x31 =E= 0;

e21..  - x10 + x11 - x32 =E= 0;

e22..    0.03*x11 - x33 =L= 0;

e23..  - (0.95*log(x12) + 0.9025*log(x13) + 0.857375*log(x14) + 0.81450625*log(
      x15) + 0.7737809375*log(x16) + 0.735091890625*log(x17) + 0.69833729609375
      *log(x18) + 0.663420431289062*log(x19) + 0.630249409724609*log(x20) + 
      0.598736939238379*log(x21) + 11.3760018455292*log(x22)) - objvar =E= 0;

* set non default bounds

x1.fx = 3; 
x2.lo = 3; 
x3.lo = 3; 
x4.lo = 3; 
x5.lo = 3; 
x6.lo = 3; 
x7.lo = 3; 
x8.lo = 3; 
x9.lo = 3; 
x10.lo = 3; 
x11.lo = 3; 
x12.lo = 0.95; 
x13.lo = 0.95; 
x14.lo = 0.95; 
x15.lo = 0.95; 
x16.lo = 0.95; 
x17.lo = 0.95; 
x18.lo = 0.95; 
x19.lo = 0.95; 
x20.lo = 0.95; 
x21.lo = 0.95; 
x22.lo = 0.95; 
x23.fx = 0.05; 
x24.lo = 0.05; x24.up = 0.0575; 
x25.lo = 0.05; x25.up = 0.066125; 
x26.lo = 0.05; x26.up = 0.07604375; 
x27.lo = 0.05; x27.up = 0.0874503125; 
x28.lo = 0.05; x28.up = 0.100567859375; 
x29.lo = 0.05; x29.up = 0.11565303828125; 
x30.lo = 0.05; x30.up = 0.133000994023437; 
x31.lo = 0.05; x31.up = 0.152951143126953; 
x32.lo = 0.05; x32.up = 0.175893814595996; 
x33.lo = 0.05; x33.up = 0.202277886785395; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
