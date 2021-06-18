*  NLP written by GAMS Convert at 10/06/06 11:33:50
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        5        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         41       13       28        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    x2 + x3 + x4 + x5 + x6 + x7 =E= -1;

e2.. sqr(1 + x2 + x3 + x4 + x5 + x6 + x7) =E= 0;

e3.. sqr(6 + x3 + 2*x4 + 3*x5 + 4*x6 + 5*x7) =E= 0;

e4.. sqr(30 + 4*x4 + 9*x5 + 16*x6 + 25*x7) =E= 0;

e5.. 0.001*(POWER(x2,3) - x2) - x1 =L= 0;

e6.. 0.001*(POWER(x3,3) - x3) - x1 =L= 0;

e7.. 0.001*(POWER(x4,3) - x4) - x1 =L= 0;

e8.. 0.001*(POWER(x5,3) - x5) - x1 =L= 0;

e9.. 0.001*(POWER(x6,3) - x6) - x1 =L= 0;

e10.. 0.001*(POWER(x7,3) - x7) - x1 =L= 0;

e11..  - (sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + sqr(x1))
       + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.lo = -1; x2.up = 1; 
x3.lo = -1; x3.up = 1; 
x4.lo = -1; x4.up = 1; 
x5.lo = -1; x5.up = 1; 
x6.lo = -1; x6.up = 1; 
x7.lo = -1; x7.up = 1; 

* set non default levels

x3.l = 1; 
x4.l = 1; 
x6.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
