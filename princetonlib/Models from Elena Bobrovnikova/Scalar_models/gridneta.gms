*  NLP written by GAMS Convert at 06/26/06 16:29:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         73       73        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         73        1       72        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72;

Equations  e1;


e1..  - (0.01*(x1*x1 + x2*x2 + x3*x3 + 2*x4*x4 + 2*x5*x5 + x6*x6 + x7*x7 + 4*x8
     *x8 + 4*x9*x9 + x10*x10 + x12*x12 + x13*x13 + 2*x14*x14 + 2*x15*x15 + 2*
     x16*x16 + x17*x17 + 2*x18*x18 + 4*x19*x19 + 4*x20*x20 + x21*x21 + 4*x22*
     x22 + x24*x24 + x25*x25 + x26*x26 + 2*x27*x27 + 2*x28*x28 + 2*x29*x29 + 2*
     x30*x30 + x31*x31 + 4*x32*x32 + 2*x33*x33 + 4*x34*x34 + x36*x36 + 2*x37*
     x37 + 4*x38*x38 + 2*x39*x39 + 2*x40*x40 + 2*x41*x41 + 2*x42*x42 + 2*x43*
     x43 + 4*x44*x44 + 2*x45*x45 + 4*x46*x46 + x48*x48 + x49*x49 + x50*x50 + 4*
     x51*x51 + 2*x52*x52 + 4*x53*x53 + x54*x54 + 4*x55*x55 + 4*x56*x56 + 4*x57*
     x57 + 4*x58*x58 + x60*x60 + x61*x61 + x63*x63 + x65*x65 + x67*x67 + x69*
     x69) + 0.01*(sqrt(1 + sqr(x1) + sqr(x1 - x14)) + sqrt(1 + sqr(x2) + sqr(x2
      - 6*x14)) + sqrt(1 + sqr(x3) + sqr(x3 - x16)) + sqrt(1 + sqr(x4) + sqr(x4
      - 6*x16)) + sqrt(1 + sqr(x5) + sqr(x5 - x18)) + sqrt(1 + sqr(x6) + sqr(x6
      - 6*x18)) + sqrt(1 + sqr(x7) + sqr(x7 - x20)) + sqrt(1 + sqr(x8) + sqr(x8
      - 6*x20)) + sqrt(1 + sqr(x9) + sqr(x9 - x23)) + sqrt(1 + sqr(x10) + sqr(
     x10 - 6*x22)) + sqrt(1 + sqr(x12) + sqr(x12 - 6*x24)) + sqrt(1 + sqr(x13)
      + sqr(x13 - x26)) + sqrt(1 + sqr(x14) + sqr(x14 - 6*x26)) + sqrt(1 + sqr(
     x15) + sqr(x15 - x28)) + sqrt(1 + sqr(x16) + sqr(x16 - 6*x28)) + sqrt(1 + 
     sqr(x17) + sqr(x17 - x30)) + sqrt(1 + sqr(x18) + sqr(x18 - 6*x30)) + sqrt(
     1 + sqr(x19) + sqr(x19 - x32)) + sqrt(1 + sqr(x20) + sqr(x20 - 6*x32)) + 
     sqrt(1 + sqr(x21) + sqr(x21 - x35)) + sqrt(1 + sqr(x22) + sqr(x22 - 6*x34)
     ) + sqrt(1 + sqr(x24) + sqr(x24 - 6*x36)) + sqrt(1 + sqr(x25) + sqr(x25 - 
     x38)) + sqrt(1 + sqr(x26) + sqr(x26 - 6*x38)) + sqrt(1 + sqr(x27) + sqr(
     x27 - x40)) + sqrt(1 + sqr(x28) + sqr(x28 - 6*x40)) + sqrt(1 + sqr(x29) + 
     sqr(x29 - x42)) + sqrt(1 + sqr(x30) + sqr(x30 - 6*x42)) + sqrt(1 + sqr(x31
     ) + sqr(x31 - x44)) + sqrt(1 + sqr(x32) + sqr(x32 - 6*x44)) + sqrt(1 + 
     sqr(x33) + sqr(x33 - x47)) + sqrt(1 + sqr(x34) + sqr(x34 - 6*x46)) + sqrt(
     1 + sqr(x36) + sqr(x36 - 6*x48)) + sqrt(1 + sqr(x37) + sqr(x37 - x50)) + 
     sqrt(1 + sqr(x38) + sqr(x38 - x62)) + sqrt(1 + sqr(x39) + sqr(x39 - x52))
      + sqrt(1 + sqr(x40) + sqr(x40 - x64)) + sqrt(1 + sqr(x41) + sqr(x41 - x54
     )) + sqrt(1 + sqr(x42) + sqr(x42 - x66)) + sqrt(1 + sqr(x43) + sqr(x43 - 
     x56)) + sqrt(1 + sqr(x44) + sqr(x44 - x68)) + sqrt(1 + sqr(x45) + sqr(x45
      - x59)) + sqrt(1 + sqr(x46) + sqr(x46 - x70)) + sqrt(1 + sqr(x48) + sqr(
     x48 - x72)) + sqrt(1 + sqr(x49) + sqr(x49 - x62)) + sqrt(1 + sqr(x50) + 
     sqr(x50 - x3)) + sqrt(1 + sqr(x51) + sqr(x51 - x64)) + sqrt(1 + sqr(x52)
      + sqr(x52 - x5)) + sqrt(1 + sqr(x53) + sqr(x53 - x66)) + sqrt(1 + sqr(x54
     ) + sqr(x54 - x7)) + sqrt(1 + sqr(x55) + sqr(x55 - x68)) + sqrt(1 + sqr(
     x56) + sqr(x56 - x9)) + sqrt(1 + sqr(x57) + sqr(x57 - x71)) + sqrt(1 + 
     sqr(x58) + sqr(x58 - x11)) + sqrt(1 + sqr(x60) + sqr(x60)) + sqrt(1 + sqr(
     x61) + sqr(x61)) + sqrt(1 + sqr(x63) + sqr(x63)) + sqrt(1 + sqr(x65) + 
     sqr(x65)) + sqrt(1 + sqr(x67) + sqr(x67)) + sqrt(1 + sqr(x69) + sqr(x69)))
      + 0.000833333333333333*POWER(10 - x1 + x2 + x3 - x4 - x5 + x6 + x7 - x8
      - x9 + x10 - x13 + x14 + x15 - x16 - x17 + x18 + x19 - x20 - x21 + x22 - 
     x25 + x26 + x27 - x28 - x29 + x30 + x31 - x32 - x33 + x34 - x37 + x38 + 
     x39 - x40 - x41 + x42 + x43 - x44 - x45 + x46 - x49 + x50 + x51 - x52 - 
     x53 + x54 + x55 - x56 - x57 + x58,4)) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
