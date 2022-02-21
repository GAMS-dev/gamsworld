*  NLP written by GAMS Convert at 06/26/06 16:29:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        4        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2;


e1..    x1 + x2 + x3 =E= 1;

e2.. 32.174*(255*log((0.03 + x1 + x2 + x3)/(0.03 + 0.09*x1 + x2 + x3)) + 280*
     log((0.03 + x2 + x3)/(0.03 + 0.07*x2 + x3)) + 290*log((0.03 + x3)/(0.03 + 
     0.13*x3))) + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 

* set non default levels

x1.l = 0.7; 
x2.l = 0.2; 
x3.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
