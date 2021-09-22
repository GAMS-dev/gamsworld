*  NLP written by GAMS Convert at 06/27/07 15:16:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        8        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         46       46        0        0        0        0        0        0
*  FX     31       31        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         78       78        0        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x1 - x2 - x3 - x4 - x5 - x6 - x7 + x8 + x14 + x20 + x26 + x32 + x44
      =E= 0;

e2..    x2 - x9 - x10 - x11 - x12 - x13 + x15 + x21 + x27 + x33 =E= 0;

e3..    x3 + x9 - x15 - x16 - x17 - x18 - x19 + x22 + x28 + x34 =E= 0;

e4..    x4 + x10 + x16 - x21 - x22 - x23 - x24 - x25 + x29 + x35 =E= 0;

e5..    x5 + x11 + x17 + x23 - x27 - x28 - x29 - x30 - x31 + x36 =E= 0;

e6..    x6 + x12 + x18 + x24 + x30 - x33 - x34 - x35 - x36 - x37 =E= 0;

e7..    x7 + x13 + x19 + x25 + x31 + x37 - x38 - x39 - x40 - x41 - x42 - x43
      - x45 =E= 0;

e8..  - x44 + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x2.up = 5; 
x3.up = 7; 
x4.up = 4; 
x5.fx = 0; 
x6.fx = 0; 
x7.fx = 0; 
x8.fx = 0; 
x9.up = 1; 
x10.fx = 0; 
x11.up = 3; 
x12.fx = 0; 
x13.fx = 0; 
x14.fx = 0; 
x15.fx = 0; 
x16.up = 2; 
x17.up = 4; 
x18.up = 5; 
x19.fx = 0; 
x20.fx = 0; 
x21.fx = 0; 
x22.fx = 0; 
x23.fx = 0; 
x24.up = 4; 
x25.fx = 0; 
x26.fx = 0; 
x27.fx = 0; 
x28.fx = 0; 
x29.fx = 0; 
x30.fx = 0; 
x31.up = 9; 
x32.fx = 0; 
x33.fx = 0; 
x34.fx = 0; 
x35.fx = 0; 
x36.up = 1; 
x37.up = 6; 
x38.fx = 0; 
x39.fx = 0; 
x40.fx = 0; 
x41.fx = 0; 
x42.fx = 0; 
x43.fx = 0; 

* set non default levels

x2.l = 5; 
x3.l = 7; 
x4.l = 4; 
x9.l = 1; 
x11.l = 3; 
x16.l = 2; 
x17.l = 4; 
x18.l = 5; 
x24.l = 4; 
x31.l = 9; 
x36.l = 1; 
x37.l = 6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP maximizing objvar;
