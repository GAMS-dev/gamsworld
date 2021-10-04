*  NLP written by GAMS Convert at 07/27/06 09:26:14
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         19        1       18        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3;


e1.. 0.001*x1*x2*x3*x4*x5*x6 =G= 2.07;

e2.. 0.00062*x1*x4*sqr(x5)*(x1 + x2 + x3) + 0.00058*x2*x3*sqr(x6)*(x1 + 1.57*x2
      + x4) =L= 1;

e3..  - (0.0204*x1*x4*(x1 + x2 + x3) + 0.0187*x2*x3*(x1 + 1.57*x2 + x4) + 
     0.0607*x1*x4*sqr(x5)*(x1 + x2 + x3) + 0.0437*x2*x3*sqr(x6)*(x1 + 1.57*x2
      + x4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 5.54; 
x2.l = 4.4; 
x3.l = 12.02; 
x4.l = 11.82; 
x5.l = 0.702; 
x6.l = 0.852; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
