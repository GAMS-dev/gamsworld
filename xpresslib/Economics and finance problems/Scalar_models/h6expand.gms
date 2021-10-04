*  MIP written by GAMS Convert at 09/21/07 20:34:18
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        0        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        1        5        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         29       29        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,objvar;

Binary Variables  b1,b2,b3,b4,b5;

Equations  e1,e2,e3,e4,e5,e6;


e1..    1.8*b1 + 1.2*b2 + 1.2*b3 + 1.4*b4 + 1.6*b5 =L= 4.8;

e2..    2.4*b1 + 1.8*b2 + b3 + 1.4*b4 + 2.1*b5 =L= 6;

e3..    2.4*b1 + 2.4*b2 + 1.2*b4 + 2.5*b5 =L= 4.8;

e4..    1.8*b1 + 0.6*b2 + 0.48*b3 + 1.2*b4 + 2*b5 =L= 4.2;

e5..    1.5*b1 + 0.5*b2 + 1.2*b4 + 1.8*b5 =L= 3.5;

e6..  - 10.8*b1 - 4.8*b2 - 3.2*b3 - 4.44*b4 - 12.25*b5 + objvar =E= 0;

* set non default bounds


* set non default levels

b1.l = 0.954166666666667; 
b2.l = 0.00416666666666647; 
b3.l = 1; 
b5.l = 1; 
objvar.l = 25.775; 

* set non default marginals

e3.m = 0.75;
e4.m = 5;
e6.m = 1;
b3.m = 0.8; 
b4.m = -2.46; 
b5.m = 0.374999999999998; 

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
