*  NLP written by GAMS Convert at 07/02/05 18:32:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         41        1       40        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Equations  e1,e2;


e1.. sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + sqr(
     x8) + sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12) + sqr(x13) + sqr(x14) + 
     sqr(x15) + sqr(x16) + sqr(x17) + sqr(x18) + sqr(x19) + sqr(x20) =E= 1;

e2..  - (sqr(x1) + POWER(x1,4) + 2*(sqr(x2) + POWER(x2,4)) + 3*(sqr(x3) + 
     POWER(x3,4)) + 4*(sqr(x4) + POWER(x4,4)) + 5*(sqr(x5) + POWER(x5,4)) + 6*(
     sqr(x6) + POWER(x6,4)) + 7*(sqr(x7) + POWER(x7,4)) + 8*(sqr(x8) + POWER(x8
     ,4)) + 9*(sqr(x9) + POWER(x9,4)) + 10*(sqr(x10) + POWER(x10,4)) + 11*(sqr(
     x11) + POWER(x11,4)) + 12*(sqr(x12) + POWER(x12,4)) + 13*(sqr(x13) + 
     POWER(x13,4)) + 14*(sqr(x14) + POWER(x14,4)) + 15*(sqr(x15) + POWER(x15,4)
     ) + 16*(sqr(x16) + POWER(x16,4)) + 17*(sqr(x17) + POWER(x17,4)) + 18*(sqr(
     x18) + POWER(x18,4)) + 19*(sqr(x19) + POWER(x19,4)) + 20*(sqr(x20) + 
     POWER(x20,4))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 2; 
x2.l = 2; 
x3.l = 2; 
x4.l = 2; 
x5.l = 2; 
x6.l = 2; 
x7.l = 2; 
x8.l = 2; 
x9.l = 2; 
x10.l = 2; 
x11.l = 2; 
x12.l = 2; 
x13.l = 2; 
x14.l = 2; 
x15.l = 2; 
x16.l = 2; 
x17.l = 2; 
x18.l = 2; 
x19.l = 2; 
x20.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
