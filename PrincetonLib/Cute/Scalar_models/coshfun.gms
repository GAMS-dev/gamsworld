*  NLP written by GAMS Convert at 10/06/06 11:16:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21        1       20        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         62       62        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        120       60       60        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,objvar,x62;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..  - (x3*x3 + 0.5*(exp(x2) + exp(-x2)) + 2*x1*x1*x3 - 2*x3) + x6 + objvar
      =G= 0;

e2..  - (x6*x6 + 0.5*(exp(x5) + exp(-x5)) + 2*x4*x4*x6 - 2*x6) - x1 + x9
      + objvar =G= 0;

e3..  - (x9*x9 + 0.5*(exp(x8) + exp(-x8)) + 2*x7*x7*x9 - 2*x9) - x4 + x12
      + objvar =G= 0;

e4..  - (x12*x12 + 0.5*(exp(x11) + exp(-x11)) + 2*x10*x10*x12 - 2*x12) - x7
      + x15 + objvar =G= 0;

e5..  - (x15*x15 + 0.5*(exp(x14) + exp(-x14)) + 2*x13*x13*x15 - 2*x15) - x10
      + x18 + objvar =G= 0;

e6..  - (x18*x18 + 0.5*(exp(x17) + exp(-x17)) + 2*x16*x16*x18 - 2*x18) - x13
      + x21 + objvar =G= 0;

e7..  - (x21*x21 + 0.5*(exp(x20) + exp(-x20)) + 2*x19*x19*x21 - 2*x21) - x16
      + x24 + objvar =G= 0;

e8..  - (x24*x24 + 0.5*(exp(x23) + exp(-x23)) + 2*x22*x22*x24 - 2*x24) - x19
      + x27 + objvar =G= 0;

e9..  - (x27*x27 + 0.5*(exp(x26) + exp(-x26)) + 2*x25*x25*x27 - 2*x27) - x22
      + x30 + objvar =G= 0;

e10..  - (x30*x30 + 0.5*(exp(x29) + exp(-x29)) + 2*x28*x28*x30 - 2*x30) - x25
       + x33 + objvar =G= 0;

e11..  - (x33*x33 + 0.5*(exp(x32) + exp(-x32)) + 2*x31*x31*x33 - 2*x33) - x28
       + x36 + objvar =G= 0;

e12..  - (x36*x36 + 0.5*(exp(x35) + exp(-x35)) + 2*x34*x34*x36 - 2*x36) - x31
       + x39 + objvar =G= 0;

e13..  - (x39*x39 + 0.5*(exp(x38) + exp(-x38)) + 2*x37*x37*x39 - 2*x39) - x34
       + x42 + objvar =G= 0;

e14..  - (x42*x42 + 0.5*(exp(x41) + exp(-x41)) + 2*x40*x40*x42 - 2*x42) - x37
       + x45 + objvar =G= 0;

e15..  - (x45*x45 + 0.5*(exp(x44) + exp(-x44)) + 2*x43*x43*x45 - 2*x45) - x40
       + x48 + objvar =G= 0;

e16..  - (x48*x48 + 0.5*(exp(x47) + exp(-x47)) + 2*x46*x46*x48 - 2*x48) - x43
       + x51 + objvar =G= 0;

e17..  - (x51*x51 + 0.5*(exp(x50) + exp(-x50)) + 2*x49*x49*x51 - 2*x51) - x46
       + x54 + objvar =G= 0;

e18..  - (x54*x54 + 0.5*(exp(x53) + exp(-x53)) + 2*x52*x52*x54 - 2*x54) - x49
       + x57 + objvar =G= 0;

e19..  - (x57*x57 + 0.5*(exp(x56) + exp(-x56)) + 2*x55*x55*x57 - 2*x57) - x52
       + x60 + objvar =G= 0;

e20..  - (x60*x60 + 0.5*(exp(x59) + exp(-x59)) + 2*x58*x58*x60 - 2*x60) - x55
       + objvar =G= 0;

e21..  - objvar + x62 =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
