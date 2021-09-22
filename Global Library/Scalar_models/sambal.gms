*  NLP written by GAMS Convert at 07/26/01 12:08:41
*  
*  Equation counts
*     Total       E       G       L       N       X
*        11      11       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        18      18       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        48      35      13       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - x1 - x2 - x3 - x4 + x13 =E= 0;

e2..  - x5 + x14 =E= 0;

e3..  - x6 + x15 =E= 0;

e4..  - x7 - x8 - x9 + x16 =E= 0;

e5..  - x10 - x11 - x12 + x17 =E= 0;

e6..  - x5 - x6 + x13 =E= 0;

e7..  - x1 - x7 - x10 + x14 =E= 0;

e8..  - x2 - x8 - x11 + x15 =E= 0;

e9..  - x3 - x12 + x16 =E= 0;

e10..  - x4 - x9 + x17 =E= 0;

e11..  - (0.0666666666666667*sqr(15 - x1) + 0.333333333333333*sqr(3 - x2) + 
      0.00769230769230769*sqr(130 - x3) + 0.0125*sqr(80 - x4) + 
      0.0666666666666667*sqr(15 - x7) + 0.00769230769230769*sqr(130 - x8) + 
      0.05*sqr(20 - x9) + 0.04*sqr(25 - x10) + 0.025*sqr(40 - x11) + 
      0.0181818181818182*sqr(55 - x12) + 0.00454545454545455*sqr(220 - x13) + 
      0.00526315789473684*sqr(190 - x16) + 0.00952380952380952*sqr(105 - x17))
       + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 15; 
x2.l = 3; 
x3.l = 130; 
x4.l = 80; 
x7.l = 15; 
x8.l = 130; 
x9.l = 20; 
x10.l = 25; 
x11.l = 40; 
x12.l = 55; 
x13.l = 220; 
x16.l = 190; 
x17.l = 105; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
