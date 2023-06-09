*  NLP written by GAMS Convert at 07/27/06 09:26:15
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       13       14        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1.. 17.1*x1 - 169*x1*x3 + 204.2*x3 - 3580*x3*x5 + 623.4*x5 - 3810*x4*x5 + 
     212.3*x4 - 18500*x4*x6 + 1495.5*x6 - 24300*x5*x6 + 38.2*x2 =G= 32.97;

e2.. 17.9*x1 - 139*x1*x3 + 113.9*x3 - 2450*x4*x5 + 169.7*x4 + 337.8*x5 - 16600*
     x4*x6 + 1385.2*x6 - 17200*x5*x6 + 36.8*x2 =G= 25.12;

e3.. 26000*x4*x5 - 70*x4 - 819*x5 - 273*x2 =G= -29.08;

e4.. 159.9*x1 - 14000*x1*x6 + 2198*x6 - 311*x2 + 587*x4 + 391*x5 =G= -78.02;

e5..  - 4.3*x1 - 31.8*x2 - 63.3*x3 - 15.8*x4 - 68.5*x5 - 4.7*x6 + objvar =E= 0;

* set non default bounds

x1.up = 0.31; 
x2.up = 0.046; 
x3.up = 0.068; 
x4.up = 0.042; 
x5.up = 0.028; 
x6.up = 0.0134; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
