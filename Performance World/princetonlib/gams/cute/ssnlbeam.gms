*  NLP written by GAMS Convert at 10/06/06 11:52:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21       21        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         34       34        0        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        103       61       42        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,objvar;

Positive Variables  x12,x22;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1.. (-0.05*sin(x2)) - 0.05*sin(x1) - x12 + x13 =E= 0;

e2..  - x1 + x2 - 0.05*x23 - 0.05*x24 =E= 0;

e3.. (-0.05*sin(x3)) - 0.05*sin(x2) - x13 + x14 =E= 0;

e4..  - x2 + x3 - 0.05*x24 - 0.05*x25 =E= 0;

e5.. (-0.05*sin(x4)) - 0.05*sin(x3) - x14 + x15 =E= 0;

e6..  - x3 + x4 - 0.05*x25 - 0.05*x26 =E= 0;

e7.. (-0.05*sin(x5)) - 0.05*sin(x4) - x15 + x16 =E= 0;

e8..  - x4 + x5 - 0.05*x26 - 0.05*x27 =E= 0;

e9.. (-0.05*sin(x6)) - 0.05*sin(x5) - x16 + x17 =E= 0;

e10..  - x5 + x6 - 0.05*x27 - 0.05*x28 =E= 0;

e11.. (-0.05*sin(x7)) - 0.05*sin(x6) - x17 + x18 =E= 0;

e12..  - x6 + x7 - 0.05*x28 - 0.05*x29 =E= 0;

e13.. (-0.05*sin(x8)) - 0.05*sin(x7) - x18 + x19 =E= 0;

e14..  - x7 + x8 - 0.05*x29 - 0.05*x30 =E= 0;

e15.. (-0.05*sin(x9)) - 0.05*sin(x8) - x19 + x20 =E= 0;

e16..  - x8 + x9 - 0.05*x30 - 0.05*x31 =E= 0;

e17.. (-0.05*sin(x10)) - 0.05*sin(x9) - x20 + x21 =E= 0;

e18..  - x9 + x10 - 0.05*x31 - 0.05*x32 =E= 0;

e19.. (-0.05*sin(x11)) - 0.05*sin(x10) - x21 + x22 =E= 0;

e20..  - x10 + x11 - 0.05*x32 - 0.05*x33 =E= 0;

e21..  - (0.05*x24*x24 + 0.05*x23*x23 + 17.5*cos(x2) + 17.5*cos(x1) + 0.05*x25*
      x25 + 0.05*x24*x24 + 17.5*cos(x3) + 17.5*cos(x2) + 0.05*x26*x26 + 0.05*
      x25*x25 + 17.5*cos(x4) + 17.5*cos(x3) + 0.05*x27*x27 + 0.05*x26*x26 + 
      17.5*cos(x5) + 17.5*cos(x4) + 0.05*x28*x28 + 0.05*x27*x27 + 17.5*cos(x6)
       + 17.5*cos(x5) + 0.05*x29*x29 + 0.05*x28*x28 + 17.5*cos(x7) + 17.5*cos(
      x6) + 0.05*x30*x30 + 0.05*x29*x29 + 17.5*cos(x8) + 17.5*cos(x7) + 0.05*
      x31*x31 + 0.05*x30*x30 + 17.5*cos(x9) + 17.5*cos(x8) + 0.05*x32*x32 + 
      0.05*x31*x31 + 17.5*cos(x10) + 17.5*cos(x9) + 0.05*x33*x33 + 0.05*x32*x32
       + 17.5*cos(x11) + 17.5*cos(x10)) + objvar =E= 0;

* set non default bounds

x1.lo = -1; x1.up = 1; 
x2.lo = -1; x2.up = 1; 
x3.lo = -1; x3.up = 1; 
x4.lo = -1; x4.up = 1; 
x5.lo = -1; x5.up = 1; 
x6.lo = -1; x6.up = 1; 
x7.lo = -1; x7.up = 1; 
x8.lo = -1; x8.up = 1; 
x9.lo = -1; x9.up = 1; 
x10.lo = -1; x10.up = 1; 
x11.lo = -1; x11.up = 1; 
x12.fx = 0; 
x13.lo = -0.05; x13.up = 0.05; 
x14.lo = -0.05; x14.up = 0.05; 
x15.lo = -0.05; x15.up = 0.05; 
x16.lo = -0.05; x16.up = 0.05; 
x17.lo = -0.05; x17.up = 0.05; 
x18.lo = -0.05; x18.up = 0.05; 
x19.lo = -0.05; x19.up = 0.05; 
x20.lo = -0.05; x20.up = 0.05; 
x21.lo = -0.05; x21.up = 0.05; 
x22.fx = 0; 

* set non default levels

x1.l = 0.05; 
x2.l = 0.0497502082639013; 
x3.l = 0.0490033288920621; 
x4.l = 0.0477668244562803; 
x5.l = 0.0460530497001443; 
x6.l = 0.0438791280945186; 
x7.l = 0.0412667807454839; 
x8.l = 0.0382421093642244; 
x9.l = 0.0348353354673583; 
x10.l = 0.0310804984135332; 
x11.l = 0.027015115293407; 
x13.l = 0.0497502082639013; 
x14.l = 0.0490033288920621; 
x15.l = 0.0477668244562803; 
x16.l = 0.0460530497001443; 
x17.l = 0.0438791280945186; 
x18.l = 0.0412667807454839; 
x19.l = 0.0382421093642244; 
x20.l = 0.0348353354673583; 
x21.l = 0.0310804984135332; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
