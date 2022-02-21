*  NLP written by GAMS Convert at 07/02/05 18:32:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         51       51        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        101        1      100        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,objvar;

Equations  e1,e2;


e1.. sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + sqr(
     x8) + sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12) + sqr(x13) + sqr(x14) + 
     sqr(x15) + sqr(x16) + sqr(x17) + sqr(x18) + sqr(x19) + sqr(x20) + sqr(x21)
      + sqr(x22) + sqr(x23) + sqr(x24) + sqr(x25) + sqr(x26) + sqr(x27) + sqr(
     x28) + sqr(x29) + sqr(x30) + sqr(x31) + sqr(x32) + sqr(x33) + sqr(x34) + 
     sqr(x35) + sqr(x36) + sqr(x37) + sqr(x38) + sqr(x39) + sqr(x40) + sqr(x41)
      + sqr(x42) + sqr(x43) + sqr(x44) + sqr(x45) + sqr(x46) + sqr(x47) + sqr(
     x48) + sqr(x49) + sqr(x50) =E= 1;

e2..  - (sqr(x1) + POWER(x1,4) + 2*(sqr(x2) + POWER(x2,4)) + 3*(sqr(x3) + 
     POWER(x3,4)) + 4*(sqr(x4) + POWER(x4,4)) + 5*(sqr(x5) + POWER(x5,4)) + 6*(
     sqr(x6) + POWER(x6,4)) + 7*(sqr(x7) + POWER(x7,4)) + 8*(sqr(x8) + POWER(x8
     ,4)) + 9*(sqr(x9) + POWER(x9,4)) + 10*(sqr(x10) + POWER(x10,4)) + 11*(sqr(
     x11) + POWER(x11,4)) + 12*(sqr(x12) + POWER(x12,4)) + 13*(sqr(x13) + 
     POWER(x13,4)) + 14*(sqr(x14) + POWER(x14,4)) + 15*(sqr(x15) + POWER(x15,4)
     ) + 16*(sqr(x16) + POWER(x16,4)) + 17*(sqr(x17) + POWER(x17,4)) + 18*(sqr(
     x18) + POWER(x18,4)) + 19*(sqr(x19) + POWER(x19,4)) + 20*(sqr(x20) + 
     POWER(x20,4)) + 21*(sqr(x21) + POWER(x21,4)) + 22*(sqr(x22) + POWER(x22,4)
     ) + 23*(sqr(x23) + POWER(x23,4)) + 24*(sqr(x24) + POWER(x24,4)) + 25*(sqr(
     x25) + POWER(x25,4)) + 26*(sqr(x26) + POWER(x26,4)) + 27*(sqr(x27) + 
     POWER(x27,4)) + 28*(sqr(x28) + POWER(x28,4)) + 29*(sqr(x29) + POWER(x29,4)
     ) + 30*(sqr(x30) + POWER(x30,4)) + 31*(sqr(x31) + POWER(x31,4)) + 32*(sqr(
     x32) + POWER(x32,4)) + 33*(sqr(x33) + POWER(x33,4)) + 34*(sqr(x34) + 
     POWER(x34,4)) + 35*(sqr(x35) + POWER(x35,4)) + 36*(sqr(x36) + POWER(x36,4)
     ) + 37*(sqr(x37) + POWER(x37,4)) + 38*(sqr(x38) + POWER(x38,4)) + 39*(sqr(
     x39) + POWER(x39,4)) + 40*(sqr(x40) + POWER(x40,4)) + 41*(sqr(x41) + 
     POWER(x41,4)) + 42*(sqr(x42) + POWER(x42,4)) + 43*(sqr(x43) + POWER(x43,4)
     ) + 44*(sqr(x44) + POWER(x44,4)) + 45*(sqr(x45) + POWER(x45,4)) + 46*(sqr(
     x46) + POWER(x46,4)) + 47*(sqr(x47) + POWER(x47,4)) + 48*(sqr(x48) + 
     POWER(x48,4)) + 49*(sqr(x49) + POWER(x49,4)) + 50*(sqr(x50) + POWER(x50,4)
     )) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 2; 
x2.l = 2; 
x3.l = 2; 
x4.l = 2; 
x5.l = 2; 
x6.l = 2; 
x7.l = 2; 
x8.l = 2; 
x9.l = 2; 
x10.l = 2; 
x11.l = 2; 
x12.l = 2; 
x13.l = 2; 
x14.l = 2; 
x15.l = 2; 
x16.l = 2; 
x17.l = 2; 
x18.l = 2; 
x19.l = 2; 
x20.l = 2; 
x21.l = 2; 
x22.l = 2; 
x23.l = 2; 
x24.l = 2; 
x25.l = 2; 
x26.l = 2; 
x27.l = 2; 
x28.l = 2; 
x29.l = 2; 
x30.l = 2; 
x31.l = 2; 
x32.l = 2; 
x33.l = 2; 
x34.l = 2; 
x35.l = 2; 
x36.l = 2; 
x37.l = 2; 
x38.l = 2; 
x39.l = 2; 
x40.l = 2; 
x41.l = 2; 
x42.l = 2; 
x43.l = 2; 
x44.l = 2; 
x45.l = 2; 
x46.l = 2; 
x47.l = 2; 
x48.l = 2; 
x49.l = 2; 
x50.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
