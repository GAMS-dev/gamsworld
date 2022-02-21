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


e1..  - (x1*(x1 - x2) + x2*(2*x2 - x1 - x3) + x3*(2*x3 - x2 - x4) + x4*(2*x4 - 
     x3 - x5) + x5*(2*x5 - x4 - x6) + x6*(2*x6 - x5 - x7) + x7*(2*x7 - x6 - x8)
      + x8*(2*x8 - x7 - x9) + x9*(2*x9 - x8 - x10) + x10*(2*x10 - x9 - x11) + 
     x11*(2*x11 - x10 - x12) + x12*(2*x12 - x11 - x13) + x13*(2*x13 - x12 - x14
     ) + x14*(2*x14 - x13 - x15) + x15*(2*x15 - x14 - x16) + x16*(2*x16 - x15
      - x17) + x17*(2*x17 - x16 - x18) + x18*(2*x18 - x17 - x19) + x19*(2*x19
      - x18 - x20) + x20*(2*x20 - x19 - x21) + x21*(2*x21 - x20 - x22) + x22*(2
     *x22 - x21 - x23) + x23*(2*x23 - x22 - x24) + x24*(2*x24 - x23 - x25) + 
     x25*(2*x25 - x24 - x26) + x26*(2*x26 - x25 - x27) + x27*(2*x27 - x26 - x28
     ) + x28*(2*x28 - x27 - x29) + x29*(2*x29 - x28 - x30) + x30*(2*x30 - x29
      - x31) + x31*(2*x31 - x30 - x32) + x32*(2*x32 - x31 - x33) + x33*(2*x33
      - x32 - x34) + x34*(2*x34 - x33 - x35) + x35*(2*x35 - x34 - x36) + x36*(2
     *x36 - x35 - x37) + x37*(2*x37 - x36 - x38) + x38*(2*x38 - x37 - x39) + 
     x39*(2*x39 - x38 - x40) + x40*(2*x40 - x39 - x41) + x41*(2*x41 - x40 - x42
     ) + x42*(2*x42 - x41 - x43) + x43*(2*x43 - x42 - x44) + x44*(2*x44 - x43
      - x45) + x45*(2*x45 - x44 - x46) + x46*(2*x46 - x45 - x47) + x47*(2*x47
      - x46 - x48) + x48*(2*x48 - x47 - x49) + x49*(2*x49 - x48 - x50) + x50*(2
     *x50 - x49) - 2*x1) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 
x11.l = 1; 
x12.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x16.l = 1; 
x17.l = 1; 
x18.l = 1; 
x19.l = 1; 
x20.l = 1; 
x21.l = 1; 
x22.l = 1; 
x23.l = 1; 
x24.l = 1; 
x25.l = 1; 
x26.l = 1; 
x27.l = 1; 
x28.l = 1; 
x29.l = 1; 
x30.l = 1; 
x31.l = 1; 
x32.l = 1; 
x33.l = 1; 
x34.l = 1; 
x35.l = 1; 
x36.l = 1; 
x37.l = 1; 
x38.l = 1; 
x39.l = 1; 
x40.l = 1; 
x41.l = 1; 
x42.l = 1; 
x43.l = 1; 
x44.l = 1; 
x45.l = 1; 
x46.l = 1; 
x47.l = 1; 
x48.l = 1; 
x49.l = 1; 
x50.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
