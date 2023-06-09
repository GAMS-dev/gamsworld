*  NLP written by GAMS Convert at 10/06/06 11:33:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         37       37        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         62       62        0        0        0        0        0        0
*  FX     14       14        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        182      121       61        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,objvar;

Positive Variables  x6,x12,x15,x18,x21,x27,x30,x36,x39,x42,x45,x48,x51,x54;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37;


e1..    x1 + x2 =E= 10;

e2..  - x1 + x3 + x4 =E= 0;

e3..  - x3 + x5 + x6 =E= 0;

e4..  - x5 + x7 + x8 =E= 0;

e5..  - x7 + x9 + x10 =E= 0;

e6..  - x9 + x11 =E= 0;

e7..  - x2 + x12 + x13 =E= 0;

e8..  - x4 - x12 + x14 + x15 =E= 0;

e9..  - x6 - x14 + x16 + x17 =E= 0;

e10..  - x8 - x16 + x18 + x19 =E= 0;

e11..  - x10 - x18 + x20 + x21 =E= 0;

e12..  - x11 - x20 + x22 =E= 0;

e13..  - x13 + x23 + x24 =E= 0;

e14..  - x15 - x23 + x25 + x26 =E= 0;

e15..  - x17 - x25 + x27 + x28 =E= 0;

e16..  - x19 - x27 + x29 + x30 =E= 0;

e17..  - x21 - x29 + x31 + x32 =E= 0;

e18..  - x22 - x31 + x33 =E= 0;

e19..  - x24 + x34 + x35 =E= 0;

e20..  - x26 - x34 + x36 + x37 =E= 0;

e21..  - x28 - x36 + x38 + x39 =E= 0;

e22..  - x30 - x38 + x40 + x41 =E= 0;

e23..  - x32 - x40 + x42 + x43 =E= 0;

e24..  - x33 - x42 + x44 =E= 0;

e25..  - x35 + x45 + x46 =E= 0;

e26..  - x37 - x45 + x47 + x48 =E= 0;

e27..  - x39 - x47 + x49 + x50 =E= 0;

e28..  - x41 - x49 + x51 + x52 =E= 0;

e29..  - x43 - x51 + x53 + x54 =E= 0;

e30..  - x44 - x53 + x55 =E= 0;

e31..  - x46 + x56 =E= 0;

e32..  - x48 - x56 + x57 =E= 0;

e33..  - x50 - x57 + x58 =E= 0;

e34..  - x52 - x58 + x59 =E= 0;

e35..  - x54 - x59 + x60 =E= 0;

e36..  - x55 - x60 =E= -10;

e37..  - (0.01*x1*x1 + 0.01*x5*x5 + 0.01*x9*x9 + 0.01*x11*x11 + 0.01*x2*x2 + 
      0.01*x33*x33 + 0.01*x24*x24 + 0.01*x55*x55 + 0.01*x46*x46 + 0.01*x56*x56
       + 0.01*x58*x58 + 0.01*x60*x60 + 0.01*x4*x4 + 0.01*x6*x6 + 0.01*x12*x12
       + 0.01*x23*x23 + 0.01*x15*x15 + 0.01*x17*x17 + 0.01*x14*x14 + 0.01*x25*
      x25 + 0.01*x26*x26 + 0.01*x28*x28 + 0.01*x16*x16 + 0.01*x27*x27 + 0.01*
      x37*x37 + 0.01*x39*x39 + 0.01*x18*x18 + 0.01*x29*x29 + 0.01*x48*x48 + 
      0.01*x50*x50 + 0.01*x20*x20 + 0.01*x31*x31 + 0.01*x3*x3 + 0.01*x57*x57 + 
      0.01*x13*x13 + 0.01*x22*x22 + 1.00000000001191*x8*x8 + 1.00000000001191*
      x10*x10 + 1.00000000001191*x34*x34 + 1.00000000001191*x45*x45 + 
      1.00000000001191*x19*x19 + 1.00000000001191*x21*x21 + 1.00000000001191*
      x36*x36 + 1.00000000001191*x47*x47 + 1.00000000001191*x30*x30 + 
      1.00000000001191*x32*x32 + 1.00000000001191*x38*x38 + 1.00000000001191*
      x49*x49 + 1.00000000001191*x41*x41 + 1.00000000001191*x43*x43 + 
      1.00000000001191*x40*x40 + 1.00000000001191*x51*x51 + 1.00000000001191*
      x52*x52 + 1.00000000001191*x54*x54 + 1.00000000001191*x42*x42 + 
      1.00000000001191*x53*x53 + 1.00000000001191*x7*x7 + 1.00000000001191*x59*
      x59 + 1.00000000001191*x35*x35 + 1.00000000001191*x44*x44 + 0.01*sqrt(1
       + 2*x1*(x1 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x2*(x2 - x61) + x61*x61)
       + 0.01*sqrt(1 + 2*x3*(x3 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x4*(x4 - 
      x61) + x61*x61) + 0.01*sqrt(1 + 2*x5*(x5 - x61) + x61*x61) + 0.01*sqrt(1
       + 2*x6*(x6 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x7*(x7 - x61) + x61*x61)
       + 0.01*sqrt(1 + 2*x8*(x8 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x9*(x9 - 
      x61) + x61*x61) + 0.01*sqrt(1 + 2*x10*(x10 - x61) + x61*x61) + 0.01*sqrt(
      1 + 2*x11*(x11 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x12*(x12 - x61) + x61*
      x61) + 0.01*sqrt(1 + 2*x13*(x13 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x14*(
      x14 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x15*(x15 - x61) + x61*x61) + 0.01
      *sqrt(1 + 2*x16*(x16 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x17*(x17 - x61)
       + x61*x61) + 0.01*sqrt(1 + 2*x18*(x18 - x61) + x61*x61) + 0.01*sqrt(1 + 
      2*x19*(x19 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x20*(x20 - x61) + x61*x61)
       + 0.01*sqrt(1 + 2*x21*(x21 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x22*(x22
       - x61) + x61*x61) + 0.01*sqrt(1 + 2*x23*(x23 - x61) + x61*x61) + 0.01*
      sqrt(1 + 2*x24*(x24 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x25*(x25 - x61)
       + x61*x61) + 0.01*sqrt(1 + 2*x26*(x26 - x61) + x61*x61) + 0.01*sqrt(1 + 
      2*x27*(x27 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x28*(x28 - x61) + x61*x61)
       + 0.01*sqrt(1 + 2*x29*(x29 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x30*(x30
       - x61) + x61*x61) + 0.01*sqrt(1 + 2*x31*(x31 - x61) + x61*x61) + 0.01*
      sqrt(1 + 2*x32*(x32 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x33*(x33 - x61)
       + x61*x61) + 0.01*sqrt(1 + 2*x34*(x34 - x61) + x61*x61) + 0.01*sqrt(1 + 
      2*x35*(x35 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x36*(x36 - x61) + x61*x61)
       + 0.01*sqrt(1 + 2*x37*(x37 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x38*(x38
       - x61) + x61*x61) + 0.01*sqrt(1 + 2*x39*(x39 - x61) + x61*x61) + 0.01*
      sqrt(1 + 2*x40*(x40 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x41*(x41 - x61)
       + x61*x61) + 0.01*sqrt(1 + 2*x42*(x42 - x61) + x61*x61) + 0.01*sqrt(1 + 
      2*x43*(x43 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x44*(x44 - x61) + x61*x61)
       + 0.01*sqrt(1 + 2*x45*(x45 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x46*(x46
       - x61) + x61*x61) + 0.01*sqrt(1 + 2*x47*(x47 - x61) + x61*x61) + 0.01*
      sqrt(1 + 2*x48*(x48 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x49*(x49 - x61)
       + x61*x61) + 0.01*sqrt(1 + 2*x50*(x50 - x61) + x61*x61) + 0.01*sqrt(1 + 
      2*x51*(x51 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x52*(x52 - x61) + x61*x61)
       + 0.01*sqrt(1 + 2*x53*(x53 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x54*(x54
       - x61) + x61*x61) + 0.01*sqrt(1 + 2*x55*(x55 - x61) + x61*x61) + 0.01*
      sqrt(1 + 2*x56*(x56 - x61) + x61*x61) + 0.01*sqrt(1 + 2*x57*(x57 - x61)
       + x61*x61) + 0.01*sqrt(1 + 2*x58*(x58 - x61) + x61*x61) + 0.01*sqrt(1 + 
      2*x59*(x59 - x61) + x61*x61) + 8.333333e-6*POWER(10 - x59 + x60,4))
       + objvar =E= 0;

* set non default bounds

x1.lo = 0.1; 
x2.lo = 0.1; 
x3.lo = 0.1; 
x5.lo = 0.1; 
x6.fx = 0; 
x7.lo = 0.1; 
x9.lo = 0.1; 
x11.lo = 0.1; 
x12.fx = 0; 
x13.lo = 0.1; 
x15.fx = 0; 
x18.fx = 0; 
x21.fx = 0; 
x22.lo = 0.1; 
x24.lo = 0.1; 
x27.fx = 0; 
x30.fx = 0; 
x33.lo = 0.1; 
x35.lo = 0.1; 
x36.fx = 0; 
x39.fx = 0; 
x42.fx = 0; 
x44.lo = 0.1; 
x45.fx = 0; 
x46.lo = 4; x46.up = 5; 
x48.fx = 0; 
x51.fx = 0; 
x54.fx = 0; 
x55.lo = 4; x55.up = 5; 
x59.lo = 4; x59.up = 5; 
x60.lo = 4; x60.up = 5; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
