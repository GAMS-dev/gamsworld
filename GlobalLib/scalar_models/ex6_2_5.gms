*  NLP written by GAMS Convert at 07/19/01 13:39:45
*  
*  Equation counts
*     Total       E       G       L       N       X
*         4       4       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        10      10       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        19      10       9       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4;


e1..  - (x4*(0.156969560191053 + log(x4/(x4 + x7 + x10))) + x7*(
     0.156969560191053 + log(x7/(x4 + x7 + x10))) + x10*(0.156969560191053 + 
     log(x10/(x4 + x7 + x10))) + (26.9071667605344*x2 + 41.7710875549227*x5 + 
     6.30931398488382*x8)*log(3.9235*x2 + 6.0909*x5 + 0.92*x8) + 
     0.113370955614741*x2 - 2.43897680885457*x5 + 2.8555953099828*x8 + 
     9.58716676053442*x2*log(x2) + 16.9310875549227*x5*log(x5) + 
     0.309313984883821*x8*log(x8) - 9.58716676053442*x2*log(3.9235*x2 + 6.0909*
     x5 + 0.92*x8) - 16.9310875549227*x5*log(3.9235*x2 + 6.0909*x5 + 0.92*x8)
      - 0.309313984883821*x8*log(3.9235*x2 + 6.0909*x5 + 0.92*x8) + 18.32*x2*
     log(x2) + 25.84*x5*log(x5) + 7*x8*log(x8) - 18.32*x2*log(3.664*x2 + 5.168*
     x5 + 1.4*x8) - 25.84*x5*log(3.664*x2 + 5.168*x5 + 1.4*x8) - 7*x8*log(3.664
     *x2 + 5.168*x5 + 1.4*x8) + (4.0643*x2 + 5.7409*x5 + 1.6741*x8)*log(4.0643*
     x2 + 5.7409*x5 + 1.6741*x8) + 4.0643*x2*log(x2) + 5.7409*x5*log(x5) + 
     1.6741*x8*log(x8) - 4.0643*x2*log(4.0643*x2 + 3.22644664511275*x5 + 
     1.44980651607875*x8) - 5.7409*x5*log(5.31147575751424*x2 + 5.7409*x5 + 
     0.00729924451284409*x8) - 1.6741*x8*log(2.25846661774355*x2 + 
     3.70876916588753*x5 + 1.6741*x8) + (26.9071667605344*x3 + 41.7710875549227
     *x6 + 6.30931398488382*x9)*log(3.9235*x3 + 6.0909*x6 + 0.92*x9) + 
     0.113370955614741*x3 - 2.43897680885457*x6 + 2.8555953099828*x9 + 
     9.58716676053442*x3*log(x3) + 16.9310875549227*x6*log(x6) + 
     0.309313984883821*x9*log(x9) - 9.58716676053442*x3*log(3.9235*x3 + 6.0909*
     x6 + 0.92*x9) - 16.9310875549227*x6*log(3.9235*x3 + 6.0909*x6 + 0.92*x9)
      - 0.309313984883821*x9*log(3.9235*x3 + 6.0909*x6 + 0.92*x9) + 18.32*x3*
     log(x3) + 25.84*x6*log(x6) + 7*x9*log(x9) - 18.32*x3*log(3.664*x3 + 5.168*
     x6 + 1.4*x9) - 25.84*x6*log(3.664*x3 + 5.168*x6 + 1.4*x9) - 7*x9*log(3.664
     *x3 + 5.168*x6 + 1.4*x9) + (4.0643*x3 + 5.7409*x6 + 1.6741*x9)*log(4.0643*
     x3 + 5.7409*x6 + 1.6741*x9) + 4.0643*x3*log(x3) + 5.7409*x6*log(x6) + 
     1.6741*x9*log(x9) - 4.0643*x3*log(4.0643*x3 + 3.22644664511275*x6 + 
     1.44980651607875*x9) - 5.7409*x6*log(5.31147575751424*x3 + 5.7409*x6 + 
     0.00729924451284409*x9) - 1.6741*x9*log(2.25846661774355*x3 + 
     3.70876916588753*x6 + 1.6741*x9) - 0.3658348*x2 - 0.3658348*x3 - 0.9825555
     *x5 - 0.9825555*x6 - 0.3663657*x8 - 0.3663657*x9 - 30.9714667605344*x2*
     log(x2) - 47.5119875549227*x5*log(x5) - 7.98341398488382*x8*log(x8) - 
     30.9714667605344*x3*log(x3) - 47.5119875549227*x6*log(x6) - 
     7.98341398488382*x9*log(x9)) + objvar =E= 0;

e2..    x2 + x3 + x4 =E= 40.30707;

e3..    x5 + x6 + x7 =E= 5.14979;

e4..    x8 + x9 + x10 =E= 54.54314;

* set non default bounds

x2.lo = 1E-7; x2.up = 40.30707; 
x3.lo = 1E-7; x3.up = 40.30707; 
x4.lo = 1E-7; x4.up = 40.30707; 
x5.lo = 1E-7; x5.up = 5.14979; 
x6.lo = 1E-7; x6.up = 5.14979; 
x7.lo = 1E-7; x7.up = 5.14979; 
x8.lo = 1E-7; x8.up = 54.54314; 
x9.lo = 1E-7; x9.up = 54.54314; 
x10.lo = 1E-7; x10.up = 54.54314; 

* set non default levels

x2.l = 31.459; 
x3.l = 0.901998; 
x5.l = 3.10348; 
x6.l = 9.6E-6; 
x8.l = 26.1669; 
x9.l = 15.0141; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;