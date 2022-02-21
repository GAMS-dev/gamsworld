$offlisting
*  MINLP written by GAMS Convert at 05/21/07 09:58:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         23       13        3        7        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         29       14       15        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         78       71        7        0
*
*  Solve m using MINLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,objvar;

Positive Variables  x1,x2,x3,x7,x8,x9,x10,x11,x12,x13;

Binary Variables  b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23;


e1.. (416000*(1 - exp(-0.1*x1/x4))*x4 + 37440*x1 - 100*x4 + 124615.384615385*(1
      - exp(-0.13*x2/x5))*x5 + 9000*x2 - 90*x5 + 278666.666666667*(1 - exp(-
     0.09*x3/x6))*x6 + 15840*x3 - 80*x6)/x13 + objvar =E= 0;

e2..  - 1300*x1 + x7 + 350*x13 =E= 0;

e3..  - 1000*x2 + x8 + 300*x13 =E= 0;

e4..  - 1100*x3 + x9 + 300*x13 =E= 0;

e5..    x7 - 300*x13 =L= 0;

e6..    x8 - 300*x13 =L= 0;

e7..    x9 - 300*x13 =L= 0;

e8..    x4 - 0.01*b14 - b15 - 2*b16 - 3*b17 - 4*b18 =E= 0;

e9..    x5 - 0.01*b19 - b20 - 2*b21 - 3*b22 - 4*b23 =E= 0;

e10..    x6 - 0.01*b24 - b25 - 2*b26 - 3*b27 - 4*b28 =E= 0;

e11..  - b14 - b15 - b16 - b17 - b18 =E= -1;

e12..  - b19 - b20 - b21 - b22 - b23 =E= -1;

e13..  - b24 - b25 - b26 - b27 - b28 =E= -1;

e14..  - x1 - 2*x4 + x10 =E= 0;

e15..  - x2 - 3*x5 + x11 =E= 0;

e16..  - x3 - 3*x6 + x12 =E= 0;

e17..    x10 + x11 + x12 - x13 =L= 0;

e18..    x1 + 150*b14 =L= 150;

e19..    x2 + 150*b19 =L= 150;

e20..    x3 + 150*b24 =L= 150;

e21..    x4 =G= 1;

e22..    x5 =G= 1;

e23..    x6 =G= 1;

* set non default bounds

x4.lo = 0.01; x4.up = 4; 
x5.lo = 0.01; x5.up = 4; 
x6.lo = 0.01; x6.up = 4; 

$if set nostart $goto modeldef
* set non default levels

x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x13.l = 100; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
