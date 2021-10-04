*  NLP written by GAMS Convert at 07/02/05 18:32:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        5        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21        8       13        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Equations  e1,e2,e3,e4,e5;


e1..  - (0.87584*(x1*(2.95137*x1 + 4.87407*x2 - 2.0506*x3) + x2*(2.95137*x1 + 
     4.87407*x2 - 2.0506*x3) + x3*(2.95137*x1 + 4.87407*x2 - 2.0506*x3)) - 
     0.564255*x1 + 0.392417*x2 - 0.404979*x3) + x4 =E= 0.14272;

e2..  - (0.927589*x1 - 0.675975*(x1*(4.87407*x1 + 9.39321*x2 - 3.93181*x3) + x2
     *(4.87407*x1 + 9.39321*x2 - 3.93181*x3) + x3*(4.87407*x1 + 9.39321*x2 - 
     3.93181*x3)) - 0.0735084*x2 + 0.535493*x3) + x5 =E= -0.184918;

e3..  - (0.658799*x1 - 0.239524*(x1*(-2.0506*x1 - 3.93189*x2 + 2.64745*x3) + x2
     *(-2.0506*x1 - 3.93189*x2 + 2.64745*x3) + x3*(-2.0506*x1 - 3.93189*x2 + 
     2.64745*x3)) - 0.636666*x2 - 0.681091*x3) + x6 =E= -0.521869;

e4..    0.869487*x1 - 0.586387*x2 - 0.289826*x3 + x7 =E= -0.685306;

e5..  - (sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 
x3.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
