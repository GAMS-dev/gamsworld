*  NLP written by GAMS Convert at 10/06/06 11:31:19
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1..  - (sqr((-1) + x1) + sqr(x2 - x3) + sqr(x3 - x4) + sqr(x4 - x5) + sqr(x5
      - x6) + sqr(x6 - x7) + sqr(x7 - x8) + sqr(x8 - x9) + sqr(x9 - x10) + sqr(
     (-1) + x10)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1; 
x2.l = -1; 
x3.l = -1; 
x4.l = -1; 
x5.l = -1; 
x6.l = -1; 
x7.l = -1; 
x8.l = -1; 
x9.l = -1; 
x10.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
