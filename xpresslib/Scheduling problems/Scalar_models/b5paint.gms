*  MIP written by GAMS Convert at 07/27/07 23:02:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         27       11       16        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         26        6       20        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        109      109        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,x21,x22,x23,x24,x25,objvar;

Positive Variables  x21,x22,x23,x24,x25;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27;


e1..    b1 + b2 + b3 + b4 =E= 1;

e2..    b5 + b6 + b7 + b8 =E= 1;

e3..    b9 + b10 + b11 + b12 =E= 1;

e4..    b13 + b14 + b15 + b16 =E= 1;

e5..    b17 + b18 + b19 + b20 =E= 1;

e6..    b5 + b9 + b13 + b17 =E= 1;

e7..    b1 + b10 + b14 + b18 =E= 1;

e8..    b2 + b6 + b15 + b19 =E= 1;

e9..    b3 + b7 + b11 + b20 =E= 1;

e10..    b4 + b8 + b12 + b16 =E= 1;

e11..  - 5*b1 - x21 + x22 =G= -4;

e12..  - 5*b2 - x21 + x23 =G= -4;

e13..  - 5*b3 - x21 + x24 =G= -4;

e14..  - 5*b4 - x21 + x25 =G= -4;

e15..  - 5*b6 - x22 + x23 =G= -4;

e16..  - 5*b7 - x22 + x24 =G= -4;

e17..  - 5*b8 - x22 + x25 =G= -4;

e18..  - 5*b10 + x22 - x23 =G= -4;

e19..  - 5*b11 - x23 + x24 =G= -4;

e20..  - 5*b12 - x23 + x25 =G= -4;

e21..  - 5*b14 + x22 - x24 =G= -4;

e22..  - 5*b15 + x23 - x24 =G= -4;

e23..  - 5*b16 - x24 + x25 =G= -4;

e24..  - 5*b18 + x22 - x25 =G= -4;

e25..  - 5*b19 + x23 - x25 =G= -4;

e26..  - 5*b20 + x24 - x25 =G= -4;

e27..  - 56*b1 - 52*b2 - 58*b3 - 56*b4 - 40*b5 - 48*b6 - 50*b7 - 50*b8 - 58*b9
       - 60*b10 - 68*b11 - 56*b12 - 41*b13 - 45*b14 - 37*b15 - 35*b16 - 53*b17
       - 57*b18 - 57*b19 - 57*b20 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
