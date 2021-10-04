*  MIP written by GAMS Convert at 01/17/08 23:45:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        7        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22        4       18        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         96       96        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,x19
          ,x20,x21,objvar;

Negative Variables  x19,x20,x21;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    3*b1 + 4*b7 + 3*b13 =L= 5;

e2..    4*b1 + 3*b2 + b7 + 4*b8 + 2*b13 + 3*b14 =L= 6;

e3..    2*b1 + 4*b2 + 3*b3 + 5*b7 + b8 + 4*b9 + b13 + 2*b14 + 3*b15 =L= 7;

e4..    2*b2 + 4*b3 + 3*b4 + 5*b8 + b9 + 4*b10 + 2*b13 + b14 + 2*b15 + 3*b16
      =L= 7;

e5..    2*b3 + 4*b4 + 3*b5 + 5*b9 + b10 + 4*b11 + 2*b14 + b15 + 2*b16 + 3*b17
      =L= 6;

e6..    2*b4 + 4*b5 + 3*b6 + 5*b10 + b11 + 4*b12 + 2*b15 + b16 + 2*b17 + 3*b18
      =L= 6;

e7..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e8..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e9..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e10..    b1 + 2*b2 + 3*b3 + 4*b4 + 5*b5 + 6*b6 - x19 =E= 0;

e11..    b7 + 2*b8 + 3*b9 + 4*b10 + 5*b11 + 6*b12 - x20 =E= 0;

e12..    b13 + 2*b14 + 3*b15 + 4*b16 + 5*b17 + 6*b18 - x21 =E= 0;

e13..  - 30.6*b1 - 20.4*b2 - 10.2*b3 - 36.9*b7 - 24.6*b8 - 12.3*b9 - 22.4*b13
       - 11.2*b14 + objvar =E= 0;

* set non default bounds

x19.up = 4; 
x20.up = 4; 
x21.up = 3; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
