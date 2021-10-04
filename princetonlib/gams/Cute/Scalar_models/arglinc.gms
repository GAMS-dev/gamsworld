*  NLP written by GAMS Convert at 10/06/06 11:14:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        1        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Equations  e1;


e1..  - (sqr((-1) + 2*x1 + 3*x2 + 4*x3 + 5*x4 + 6*x5 + 7*x6 + 8*x7 + 9*x8) + 
     sqr((-1) + 4*x1 + 6*x2 + 8*x3 + 10*x4 + 12*x5 + 14*x6 + 16*x7 + 18*x8) + 
     sqr((-1) + 6*x1 + 9*x2 + 12*x3 + 15*x4 + 18*x5 + 21*x6 + 24*x7 + 27*x8) + 
     sqr((-1) + 8*x1 + 12*x2 + 16*x3 + 20*x4 + 24*x5 + 28*x6 + 32*x7 + 36*x8)
      + sqr((-1) + 10*x1 + 15*x2 + 20*x3 + 25*x4 + 30*x5 + 35*x6 + 40*x7 + 45*
     x8) + sqr((-1) + 12*x1 + 18*x2 + 24*x3 + 30*x4 + 36*x5 + 42*x6 + 48*x7 + 
     54*x8) + sqr((-1) + 14*x1 + 21*x2 + 28*x3 + 35*x4 + 42*x5 + 49*x6 + 56*x7
      + 63*x8) + sqr((-1) + 16*x1 + 24*x2 + 32*x3 + 40*x4 + 48*x5 + 56*x6 + 64*
     x7 + 72*x8) + sqr((-1) + 18*x1 + 27*x2 + 36*x3 + 45*x4 + 54*x5 + 63*x6 + 
     72*x7 + 81*x8) + sqr((-1) + 20*x1 + 30*x2 + 40*x3 + 50*x4 + 60*x5 + 70*x6
      + 80*x7 + 90*x8) + sqr((-1) + 22*x1 + 33*x2 + 44*x3 + 55*x4 + 66*x5 + 77*
     x6 + 88*x7 + 99*x8) + sqr((-1) + 24*x1 + 36*x2 + 48*x3 + 60*x4 + 72*x5 + 
     84*x6 + 96*x7 + 108*x8) + sqr((-1) + 26*x1 + 39*x2 + 52*x3 + 65*x4 + 78*x5
      + 91*x6 + 104*x7 + 117*x8) + sqr((-1) + 28*x1 + 42*x2 + 56*x3 + 70*x4 + 
     84*x5 + 98*x6 + 112*x7 + 126*x8) + sqr((-1) + 30*x1 + 45*x2 + 60*x3 + 75*
     x4 + 90*x5 + 105*x6 + 120*x7 + 135*x8) + sqr((-1) + 32*x1 + 48*x2 + 64*x3
      + 80*x4 + 96*x5 + 112*x6 + 128*x7 + 144*x8) + sqr((-1) + 34*x1 + 51*x2 + 
     68*x3 + 85*x4 + 102*x5 + 119*x6 + 136*x7 + 153*x8) + sqr((-1) + 36*x1 + 54
     *x2 + 72*x3 + 90*x4 + 108*x5 + 126*x6 + 144*x7 + 162*x8)) + objvar =E= 2;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
