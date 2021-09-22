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


e1..  - (sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + 
     sqr(x8) + sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12) + sqr(x13) + sqr(x14)
      + sqr(x15) + sqr(x16) + sqr(x17) + sqr(x18) + sqr(x19) + sqr(x20) + sqr(
     x21) + sqr(x22) + sqr(x23) + sqr(x24) + sqr(x25) + sqr(x26) + sqr(x27) + 
     sqr(x28) + sqr(x29) + sqr(x30) + sqr(x31) + sqr(x32) + sqr(x33) + sqr(x34)
      + sqr(x35) + sqr(x36) + sqr(x37) + sqr(x38) + sqr(x39) + sqr(x40) + sqr(
     x41) + sqr(x42) + sqr(x43) + sqr(x44) + sqr(x45) + sqr(x46) + sqr(x47) + 
     sqr(x48) + sqr(x49) + sqr(x50) + sqr(0.5*x1 + x2 + 1.5*x3 + 2*x4 + 2.5*x5
      + 3*x6 + 3.5*x7 + 4*x8 + 4.5*x9 + 5*x10 + 5.5*x11 + 6*x12 + 6.5*x13 + 7*
     x14 + 7.5*x15 + 8*x16 + 8.5*x17 + 9*x18 + 9.5*x19 + 10*x20 + 10.5*x21 + 11
     *x22 + 11.5*x23 + 12*x24 + 12.5*x25 + 13*x26 + 13.5*x27 + 14*x28 + 14.5*
     x29 + 15*x30 + 15.5*x31 + 16*x32 + 16.5*x33 + 17*x34 + 17.5*x35 + 18*x36
      + 18.5*x37 + 19*x38 + 19.5*x39 + 20*x40 + 20.5*x41 + 21*x42 + 21.5*x43 + 
     22*x44 + 22.5*x45 + 23*x46 + 23.5*x47 + 24*x48 + 24.5*x49 + 25*x50) + 
     POWER(0.5*x1 + x2 + 1.5*x3 + 2*x4 + 2.5*x5 + 3*x6 + 3.5*x7 + 4*x8 + 4.5*x9
      + 5*x10 + 5.5*x11 + 6*x12 + 6.5*x13 + 7*x14 + 7.5*x15 + 8*x16 + 8.5*x17
      + 9*x18 + 9.5*x19 + 10*x20 + 10.5*x21 + 11*x22 + 11.5*x23 + 12*x24 + 12.5
     *x25 + 13*x26 + 13.5*x27 + 14*x28 + 14.5*x29 + 15*x30 + 15.5*x31 + 16*x32
      + 16.5*x33 + 17*x34 + 17.5*x35 + 18*x36 + 18.5*x37 + 19*x38 + 19.5*x39 + 
     20*x40 + 20.5*x41 + 21*x42 + 21.5*x43 + 22*x44 + 22.5*x45 + 23*x46 + 23.5*
     x47 + 24*x48 + 24.5*x49 + 25*x50,4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 
x3.l = 0.1; 
x4.l = 0.1; 
x5.l = 0.1; 
x6.l = 0.1; 
x7.l = 0.1; 
x8.l = 0.1; 
x9.l = 0.1; 
x10.l = 0.1; 
x11.l = 0.1; 
x12.l = 0.1; 
x13.l = 0.1; 
x14.l = 0.1; 
x15.l = 0.1; 
x16.l = 0.1; 
x17.l = 0.1; 
x18.l = 0.1; 
x19.l = 0.1; 
x20.l = 0.1; 
x21.l = 0.1; 
x22.l = 0.1; 
x23.l = 0.1; 
x24.l = 0.1; 
x25.l = 0.1; 
x26.l = 0.1; 
x27.l = 0.1; 
x28.l = 0.1; 
x29.l = 0.1; 
x30.l = 0.1; 
x31.l = 0.1; 
x32.l = 0.1; 
x33.l = 0.1; 
x34.l = 0.1; 
x35.l = 0.1; 
x36.l = 0.1; 
x37.l = 0.1; 
x38.l = 0.1; 
x39.l = 0.1; 
x40.l = 0.1; 
x41.l = 0.1; 
x42.l = 0.1; 
x43.l = 0.1; 
x44.l = 0.1; 
x45.l = 0.1; 
x46.l = 0.1; 
x47.l = 0.1; 
x48.l = 0.1; 
x49.l = 0.1; 
x50.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
