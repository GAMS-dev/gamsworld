*  NLP written by GAMS Convert at 07/02/05 18:32:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1;


e1..  - 10000*(sqr((-1) + 0.135299688810716*sqr(x1)) + sqr((-1) + 
     0.0894454382826476*(sqr(x1) + 0.000428*sqr(x2) + 1.83184e-7*sqr(x3))/(1 + 
     0.000428*sqr(x4))) + sqr((-1) + 0.0608272506082725*(sqr(x1) + 0.001*sqr(x2
     ) + 1e-6*sqr(x3))/(1 + 0.001*sqr(x4))) + sqr((-1) + 0.0617283950617284*(
     sqr(x1) + 0.00161*sqr(x2) + 2.5921e-6*sqr(x3))/(1 + 0.00161*sqr(x4))) + 
     sqr((-1) + 0.045045045045045*(sqr(x1) + 0.00209*sqr(x2) + 4.3681e-6*sqr(x3
     ))/(1 + 0.00209*sqr(x4))) + sqr((-1) + 0.0416319733555371*(sqr(x1) + 
     0.00348*sqr(x2) + 1.21104e-5*sqr(x3))/(1 + 0.00348*sqr(x4))) + sqr((-1) + 
     0.0319284802043423*(sqr(x1) + 0.00525*sqr(x2) + 2.75625e-5*sqr(x3))/(1 + 
     0.00525*sqr(x4)))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 2.7; 
x2.l = 90; 
x3.l = 1500; 
x4.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
