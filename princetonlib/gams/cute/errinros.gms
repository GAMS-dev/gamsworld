*  NLP written by GAMS Convert at 10/06/06 11:32:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         51       51        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         51        1       50        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,objvar;

Equations  e1;


e1..  - (sqr(x1 - 31.36*sqr(x2)) + sqr(x2 - 92.16*sqr(x3)) + sqr(x3 - 31.36*
     sqr(x4)) + sqr(x4 - 49*sqr(x5)) + sqr(x5 - 23.04*sqr(x6)) + sqr(x6 - 81*
     sqr(x7)) + sqr(x7 - 23.04*sqr(x8)) + sqr(x8 - 16*sqr(x9)) + sqr(x9 - 19.36
     *sqr(x10)) + sqr(x10 - 36*sqr(x11)) + sqr(x11 - 40.96*sqr(x12)) + sqr(x12
      - 25*sqr(x13)) + sqr(x13 - 25*sqr(x14)) + sqr(x14 - 23.04*sqr(x15)) + 
     sqr(x15 - 23.04*sqr(x16)) + sqr(x16 - 31.36*sqr(x17)) + sqr(x17 - 4*sqr(
     x18)) + sqr(x18 - 4*sqr(x19)) + sqr(x19 - 25*sqr(x20)) + sqr(x20 - 51.84*
     sqr(x21)) + sqr(x21 - 9*sqr(x22)) + sqr(x22 - 25*sqr(x23)) + sqr(x23 - 
     31.36*sqr(x24)) + sqr(x24 - 40.96*sqr(x25)) + sqr(x25 - 64*sqr(x26)) + 
     sqr(x26 - 16*sqr(x27)) + sqr(x27 - 40.96*sqr(x28)) + sqr(x28 - 25*sqr(x29)
     ) + sqr(x29 - 121*sqr(x30)) + sqr(x30 - 25*sqr(x31)) + sqr(x31 - 25*sqr(
     x32)) + sqr(x32 - 25*sqr(x33)) + sqr(x33 - 144*sqr(x34)) + sqr(x34 - 36*
     sqr(x35)) + sqr(x35 - 64*sqr(x36)) + sqr(x36 - 25*sqr(x37)) + sqr(x37 - 
     31.36*sqr(x38)) + sqr(x38 - 51.84*sqr(x39)) + sqr(x39 - 36*sqr(x40)) + 
     sqr(x40 - 77.44*sqr(x41)) + sqr(x41 - 31.36*sqr(x42)) + sqr(x42 - 36*sqr(
     x43)) + sqr(x43 - 25*sqr(x44)) + sqr(x44 - 64*sqr(x45)) + sqr(x45 - 36*
     sqr(x46)) + sqr(x46 - 25*sqr(x47)) + sqr(x47 - 31.36*sqr(x48)) + sqr(x48
      - 5.76*sqr(x49)) + sqr(x49 - 36*sqr(x50)) + sqr((-1) + x2) + sqr((-1) + 
     x3) + sqr((-1) + x4) + sqr((-1) + x5) + sqr((-1) + x6) + sqr((-1) + x7) + 
     sqr((-1) + x8) + sqr((-1) + x9) + sqr((-1) + x10) + sqr((-1) + x11) + sqr(
     (-1) + x12) + sqr((-1) + x13) + sqr((-1) + x14) + sqr((-1) + x15) + sqr((-
     1) + x16) + sqr((-1) + x17) + sqr((-1) + x18) + sqr((-1) + x19) + sqr((-1)
      + x20) + sqr((-1) + x21) + sqr((-1) + x22) + sqr((-1) + x23) + sqr((-1)
      + x24) + sqr((-1) + x25) + sqr((-1) + x26) + sqr((-1) + x27) + sqr((-1)
      + x28) + sqr((-1) + x29) + sqr((-1) + x30) + sqr((-1) + x31) + sqr((-1)
      + x32) + sqr((-1) + x33) + sqr((-1) + x34) + sqr((-1) + x35) + sqr((-1)
      + x36) + sqr((-1) + x37) + sqr((-1) + x38) + sqr((-1) + x39) + sqr((-1)
      + x40) + sqr((-1) + x41) + sqr((-1) + x42) + sqr((-1) + x43) + sqr((-1)
      + x44) + sqr((-1) + x45) + sqr((-1) + x46) + sqr((-1) + x47) + sqr((-1)
      + x48) + sqr((-1) + x49) + sqr((-1) + x50)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1; 
x2.l = -1; 
x3.l = -1; 
x4.l = -1; 
x5.l = -1; 
x6.l = -1; 
x7.l = -1; 
x8.l = -1; 
x9.l = -1; 
x10.l = -1; 
x11.l = -1; 
x12.l = -1; 
x13.l = -1; 
x14.l = -1; 
x15.l = -1; 
x16.l = -1; 
x17.l = -1; 
x18.l = -1; 
x19.l = -1; 
x20.l = -1; 
x21.l = -1; 
x22.l = -1; 
x23.l = -1; 
x24.l = -1; 
x25.l = -1; 
x26.l = -1; 
x27.l = -1; 
x28.l = -1; 
x29.l = -1; 
x30.l = -1; 
x31.l = -1; 
x32.l = -1; 
x33.l = -1; 
x34.l = -1; 
x35.l = -1; 
x36.l = -1; 
x37.l = -1; 
x38.l = -1; 
x39.l = -1; 
x40.l = -1; 
x41.l = -1; 
x42.l = -1; 
x43.l = -1; 
x44.l = -1; 
x45.l = -1; 
x46.l = -1; 
x47.l = -1; 
x48.l = -1; 
x49.l = -1; 
x50.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
