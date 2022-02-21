$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:40:33
*  
*  Equation counts
*     Total       E       G       L       N       X
*        35      14       0      21       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        25      16       3       6       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        94      58      36       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,i16,i17,i18,i19
          ,i20,i21,b22,b23,b24,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Binary Variables b22,b23,b24;

Integer Variables i16,i17,i18,i19,i20,i21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35;


e1..  - ((6329.03 + 1800*x1)*i16*i19*b22 + (2489.31 + 1800*x2)*i17*i20*b23 + (
     3270.27 + 1800*x3)*i18*i21*b24) + objvar =E= 0;

e2..  - (19.9*POWER(0.000338983050847458*x4,3) + 0.161*sqr(0.000338983050847458
     *x4)*x10 - 1.90169491525424e-7*x4*sqr(x10)) + x1 =E= 0;

e3..  - (1.21*POWER(0.000338983050847458*x5,3) + 0.0644*sqr(
     0.000338983050847458*x5)*x11 - 1.91186440677966e-7*x5*sqr(x11)) + x2
      =E= 0;

e4..  - (6.52*POWER(0.000338983050847458*x6,3) + 0.102*sqr(0.000338983050847458
     *x6)*x12 - 7.86440677966102e-8*x6*sqr(x12)) + x3 =E= 0;

e5..  - (0.00023593220338983*x4*x10 + 629*sqr(0.000338983050847458*x4) - 0.0116
     *sqr(x10)) + x7 =E= 0;

e6..  - (0.001*x5*x11 + 215*sqr(0.000338983050847458*x5) - 0.115*sqr(x11)) + x8
      =E= 0;

e7..  - (0.000179661016949153*x6*x12 + 361*sqr(0.000338983050847458*x6) - 
     0.00946*sqr(x12)) + x9 =E= 0;

e8..    x13 + x14 + x15 =E= 1;

e9..  - 0.00285714285714286*x10*i16 + x13 =E= 0;

e10..  - 0.00285714285714286*x11*i17 + x14 =E= 0;

e11..  - 0.00285714285714286*x12*i18 + x15 =E= 0;

e12..  - 0.0025*x7*i19 + b22 =E= 0;

e13..  - 0.0025*x8*i20 + b23 =E= 0;

e14..  - 0.0025*x9*i21 + b24 =E= 0;

e15..    0.000338983050847458*x4 - b22 =L= 0;

e16..    0.000338983050847458*x5 - b23 =L= 0;

e17..    0.000338983050847458*x6 - b24 =L= 0;

e18..    0.0125*x1 - b22 =L= 0;

e19..    0.04*x2 - b23 =L= 0;

e20..    0.0222222222222222*x3 - b24 =L= 0;

e21..    0.0025*x7 - b22 =L= 0;

e22..    0.0025*x8 - b23 =L= 0;

e23..    0.0025*x9 - b24 =L= 0;

e24..    0.00285714285714286*x10 - b22 =L= 0;

e25..    0.00285714285714286*x11 - b23 =L= 0;

e26..    0.00285714285714286*x12 - b24 =L= 0;

e27..    x13 - b22 =L= 0;

e28..    x14 - b23 =L= 0;

e29..    x15 - b24 =L= 0;

e30..    i16 - 3*b22 =L= 0;

e31..    i17 - 3*b23 =L= 0;

e32..    i18 - 3*b24 =L= 0;

e33..    i19 - 3*b22 =L= 0;

e34..    i20 - 3*b23 =L= 0;

e35..    i21 - 3*b24 =L= 0;

* set non default bounds

x1.up = 80; 
x2.up = 25; 
x3.up = 45; 
x4.up = 2950; 
x5.up = 2950; 
x6.up = 2950; 
x7.up = 400; 
x8.up = 400; 
x9.up = 400; 
x10.up = 350; 
x11.up = 350; 
x12.up = 350; 
x13.up = 1; 
x14.up = 1; 
x15.up = 1; 
i16.up = 3; 
i17.up = 3; 
i18.up = 3; 
i19.up = 3; 
i20.up = 3; 
i21.up = 3; 

$if set nostart $goto modeldef
* set non default levels

x1.l = 30;
x4.l = 3000;
x7.l = 400;
x10.l = 150;
x13.l = 0.33; 
x14.l = 0.33; 
x15.l = 0.33; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;


