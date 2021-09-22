*  NLP written by GAMS Convert at 07/02/05 18:32:29
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


e1..  - (100*sqr(x2 - sqr(x1)) + sqr(1 - x1) + 100*sqr(x3 - sqr(x2)) + sqr(1 - 
     x2) + 100*sqr(x4 - sqr(x3)) + sqr(1 - x3) + 100*sqr(x5 - sqr(x4)) + sqr(1
      - x4) + 100*sqr(x6 - sqr(x5)) + sqr(1 - x5) + 100*sqr(x7 - sqr(x6)) + 
     sqr(1 - x6) + 100*sqr(x8 - sqr(x7)) + sqr(1 - x7) + 100*sqr(x9 - sqr(x8))
      + sqr(1 - x8) + 100*sqr(x10 - sqr(x9)) + sqr(1 - x9) + 100*sqr(x11 - sqr(
     x10)) + sqr(1 - x10) + 100*sqr(x12 - sqr(x11)) + sqr(1 - x11) + 100*sqr(
     x13 - sqr(x12)) + sqr(1 - x12) + 100*sqr(x14 - sqr(x13)) + sqr(1 - x13) + 
     100*sqr(x15 - sqr(x14)) + sqr(1 - x14) + 100*sqr(x16 - sqr(x15)) + sqr(1
      - x15) + 100*sqr(x17 - sqr(x16)) + sqr(1 - x16) + 100*sqr(x18 - sqr(x17))
      + sqr(1 - x17) + 100*sqr(x19 - sqr(x18)) + sqr(1 - x18) + 100*sqr(x20 - 
     sqr(x19)) + sqr(1 - x19) + 100*sqr(x21 - sqr(x20)) + sqr(1 - x20) + 100*
     sqr(x22 - sqr(x21)) + sqr(1 - x21) + 100*sqr(x23 - sqr(x22)) + sqr(1 - x22
     ) + 100*sqr(x24 - sqr(x23)) + sqr(1 - x23) + 100*sqr(x25 - sqr(x24)) + 
     sqr(1 - x24) + 100*sqr(x26 - sqr(x25)) + sqr(1 - x25) + 100*sqr(x27 - sqr(
     x26)) + sqr(1 - x26) + 100*sqr(x28 - sqr(x27)) + sqr(1 - x27) + 100*sqr(
     x29 - sqr(x28)) + sqr(1 - x28) + 100*sqr(x30 - sqr(x29)) + sqr(1 - x29) + 
     100*sqr(x31 - sqr(x30)) + sqr(1 - x30) + 100*sqr(x32 - sqr(x31)) + sqr(1
      - x31) + 100*sqr(x33 - sqr(x32)) + sqr(1 - x32) + 100*sqr(x34 - sqr(x33))
      + sqr(1 - x33) + 100*sqr(x35 - sqr(x34)) + sqr(1 - x34) + 100*sqr(x36 - 
     sqr(x35)) + sqr(1 - x35) + 100*sqr(x37 - sqr(x36)) + sqr(1 - x36) + 100*
     sqr(x38 - sqr(x37)) + sqr(1 - x37) + 100*sqr(x39 - sqr(x38)) + sqr(1 - x38
     ) + 100*sqr(x40 - sqr(x39)) + sqr(1 - x39) + 100*sqr(x41 - sqr(x40)) + 
     sqr(1 - x40) + 100*sqr(x42 - sqr(x41)) + sqr(1 - x41) + 100*sqr(x43 - sqr(
     x42)) + sqr(1 - x42) + 100*sqr(x44 - sqr(x43)) + sqr(1 - x43) + 100*sqr(
     x45 - sqr(x44)) + sqr(1 - x44) + 100*sqr(x46 - sqr(x45)) + sqr(1 - x45) + 
     100*sqr(x47 - sqr(x46)) + sqr(1 - x46) + 100*sqr(x48 - sqr(x47)) + sqr(1
      - x47) + 100*sqr(x49 - sqr(x48)) + sqr(1 - x48) + 100*sqr(x50 - sqr(x49))
      + sqr(1 - x49)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1.2; 
x2.l = -1.2; 
x3.l = -1.2; 
x4.l = -1.2; 
x5.l = -1.2; 
x6.l = -1.2; 
x7.l = -1.2; 
x8.l = -1.2; 
x9.l = -1.2; 
x10.l = -1.2; 
x11.l = -1.2; 
x12.l = -1.2; 
x13.l = -1.2; 
x14.l = -1.2; 
x15.l = -1.2; 
x16.l = -1.2; 
x17.l = -1.2; 
x18.l = -1.2; 
x19.l = -1.2; 
x20.l = -1.2; 
x21.l = -1.2; 
x22.l = -1.2; 
x23.l = -1.2; 
x24.l = -1.2; 
x25.l = -1.2; 
x26.l = -1.2; 
x27.l = -1.2; 
x28.l = -1.2; 
x29.l = -1.2; 
x30.l = -1.2; 
x31.l = -1.2; 
x32.l = -1.2; 
x33.l = -1.2; 
x34.l = -1.2; 
x35.l = -1.2; 
x36.l = -1.2; 
x37.l = -1.2; 
x38.l = -1.2; 
x39.l = -1.2; 
x40.l = -1.2; 
x41.l = -1.2; 
x42.l = -1.2; 
x43.l = -1.2; 
x44.l = -1.2; 
x45.l = -1.2; 
x46.l = -1.2; 
x47.l = -1.2; 
x48.l = -1.2; 
x49.l = -1.2; 
x50.l = -1.2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
