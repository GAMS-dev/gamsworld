*  NLP written by GAMS Convert at 10/06/06 11:14:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      3        3        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31       17       14        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x7,x8;

Equations  e1,e2,e3,e4,e5,e6;


e1.. 0.107*x2 - 0.727*x2*x3 + 0.126*x3 + 8.39*x3*x4 - 684.4*x4*x5 - 9.99*x5 + 
     63.5*x2*x4 - 3.933*x1 - 45.83*x7 - 7.64*x8 =E= 0;

e2.. 0.949*x1*x3 + 0.173*x1*x5 - 0.987*x2 - 22.95*x4 - 28.37*x6 =E= 0;

e3.. 0.002*x1 - 0.716*x1*x2 - 1.578*x1*x4 + 1.132*x2*x4 - 0.235*x3 + 5.67*x5
      - 0.921*x7 - 6.51*x8 =E= 0;

e4..  - x1*x5 + x2 - x4 - 1.168*x6 =E= 0;

e5.. x1*x4 - x3 - 0.196*x5 - 0.0071*x7 =E= 0;

e6..    objvar =E= 0;

* set non default bounds

x6.fx = 0.1; 
x7.fx = 0; 
x8.fx = 0; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
