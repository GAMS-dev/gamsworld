*  NLP written by GAMS Convert at 04/20/04 14:50:37
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        36       1       8      27       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        15      15       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       110      47      63       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36;


e1..    x1 - 1.2*x4 =G= 0;

e2..    x1 - 1.5*x5 =G= 0;

e3..    x1 - 1.1*x6 =G= 0;

e4..    x2 - 1.4*x4 =G= 0;

e5..    x2 - 1.2*x6 =G= 0;

e6..    x3 - x4 =G= 0;

e7..    x3 - x5 =G= 0;

e8..    x3 - x6 =G= 0;

e9..    x8 - x9 =L= 0;

e10..    x10 - x11 =L= 0;

e11..    x8 - x11 =L= 0;

e12..  - x8 + x9 =E= 0;

e13.. 592*x1**0.65 + 582*x2**0.39 + 1200*x3**0.52 + 370*x7**0.22 + 250*x8**0.4
       + 210*x9**0.62 + 250*x10**0.4 + 200*x11**0.83 - objvar =L= 0;

e14.. 400000*x12/x4 + 300000*x13/x5 + 100000*x14/x6 =L= 8000;

e15.. 1.2*x4/x7 - x12 =L= 0;

e16.. 1.2*x4/x8 - x12 =L= 0;

e17.. 1.2*x4/x9 - x12 =L= 0;

e18.. 1.4*x4/x10 - x12 =L= 0;

e19.. 1.4*x4/x11 - x12 =L= 0;

e20.. 1.5*x5/x7 - x13 =L= 0;

e21.. 1.5*x5/x8 - x13 =L= 0;

e22.. 1.5*x5/x9 - x13 =L= 0;

e23.. 1.5*x5/x11 - x13 =L= 0;

e24.. 1.1*x6/x7 - x14 =L= 0;

e25.. 1.1*x6/x8 - x14 =L= 0;

e26.. 1.1*x6/x9 - x14 =L= 0;

e27.. 1.2*x6/x10 - x14 =L= 0;

e28.. 1.2*x6/x11 - x14 =L= 0;

e29.. 1.2*x4/x7 + 1.2*x4/x8 - x12 =L= -3;

e30.. 1.2*x4/x9 + 1.4*x4/x10 - x12 =L= -1;

e31.. 1.4*x4/x11 - x12 =L= -4;

e32.. 1.5*x5/x7 + 1.5*x5/x8 - x13 =L= -6;

e33.. 1.5*x5/x11 - x13 =L= -8;

e34.. 1.1*x6/x7 + 1.1*x6/x8 - x14 =L= -2;

e35.. 1.1*x6/x9 + 1.2*x6/x10 - x14 =L= -2;

e36.. 1.2*x6/x11 - x14 =L= -4;

* set non default bounds

x4.lo = 100; 
x5.lo = 100; 
x6.lo = 100; 
x7.lo = 300; 
x8.lo = 300; 
x9.lo = 300; 
x10.lo = 300; 
x11.lo = 300; 
x12.lo = 5; 
x13.lo = 5; 
x14.lo = 5; 

* set non default levels

x1.l = 1100.53862181846; 
x2.l = 1279.53722102267; 
x3.l = 913.955157873337; 
x4.l = 913.955157873337; 
x5.l = 733.692414545642; 
x6.l = 913.955157873337; 
x7.l = 1399.16837300491; 
x8.l = 365.579732331283; 
x9.l = 365.579732331283; 
x10.l = 459.625873931453; 
x11.l = 459.625873931453; 
x12.l = 6.78386433964926; 
x13.l = 10.3944267123785; 
x14.l = 7.13617632404846; 
objvar.l = 155153.543657587; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
