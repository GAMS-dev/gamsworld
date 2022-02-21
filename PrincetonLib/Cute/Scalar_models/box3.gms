*  NLP written by GAMS Convert at 10/06/06 11:14:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - (sqr(exp(-0.1*x1) - exp(-0.1*x2) - 0.536957976864517*x3) + sqr(exp(-0.2
     *x1) - exp(-0.2*x2) - 0.683395469841369*x3) + sqr(exp(-0.3*x1) - exp(-0.3*
     x2) - 0.691031152313854*x3) + sqr(exp(-0.4*x1) - exp(-0.4*x2) - 
     0.652004407146905*x3) + sqr(exp(-0.5*x1) - exp(-0.5*x2) - 
     0.599792712713548*x3) + sqr(exp(-0.6*x1) - exp(-0.6*x2) - 0.54633288391736
     *x3) + sqr(exp(-0.7*x1) - exp(-0.7*x2) - 0.495673421825855*x3) + sqr(exp(-
     0.8*x1) - exp(-0.8*x2) - 0.448993501489319*x3) + sqr(exp(-0.9*x1) - exp(-
     0.9*x2) - 0.406446249936512*x3) + sqr(exp(-x1) - exp(-x2) - 
     0.36783404124168*x3)) + objvar =E= 0;

* set non default bounds


* set non default levels

x2.l = 10; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
