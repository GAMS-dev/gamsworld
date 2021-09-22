*  NLP written by GAMS Convert at 10/06/06 11:14:30
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


e1..  - (sqr((-1) + x1 + 2*x2 + 3*x3 + 4*x4 + 5*x5 + 6*x6 + 7*x7 + 8*x8 + 9*x9
      + 10*x10) + sqr((-1) + 2*x1 + 4*x2 + 6*x3 + 8*x4 + 10*x5 + 12*x6 + 14*x7
      + 16*x8 + 18*x9 + 20*x10) + sqr((-1) + 3*x1 + 6*x2 + 9*x3 + 12*x4 + 15*x5
      + 18*x6 + 21*x7 + 24*x8 + 27*x9 + 30*x10) + sqr((-1) + 4*x1 + 8*x2 + 12*
     x3 + 16*x4 + 20*x5 + 24*x6 + 28*x7 + 32*x8 + 36*x9 + 40*x10) + sqr((-1) + 
     5*x1 + 10*x2 + 15*x3 + 20*x4 + 25*x5 + 30*x6 + 35*x7 + 40*x8 + 45*x9 + 50*
     x10) + sqr((-1) + 6*x1 + 12*x2 + 18*x3 + 24*x4 + 30*x5 + 36*x6 + 42*x7 + 
     48*x8 + 54*x9 + 60*x10) + sqr((-1) + 7*x1 + 14*x2 + 21*x3 + 28*x4 + 35*x5
      + 42*x6 + 49*x7 + 56*x8 + 63*x9 + 70*x10) + sqr((-1) + 8*x1 + 16*x2 + 24*
     x3 + 32*x4 + 40*x5 + 48*x6 + 56*x7 + 64*x8 + 72*x9 + 80*x10) + sqr((-1) + 
     9*x1 + 18*x2 + 27*x3 + 36*x4 + 45*x5 + 54*x6 + 63*x7 + 72*x8 + 81*x9 + 90*
     x10) + sqr((-1) + 10*x1 + 20*x2 + 30*x3 + 40*x4 + 50*x5 + 60*x6 + 70*x7 + 
     80*x8 + 90*x9 + 100*x10) + sqr((-1) + 11*x1 + 22*x2 + 33*x3 + 44*x4 + 55*
     x5 + 66*x6 + 77*x7 + 88*x8 + 99*x9 + 110*x10) + sqr((-1) + 12*x1 + 24*x2
      + 36*x3 + 48*x4 + 60*x5 + 72*x6 + 84*x7 + 96*x8 + 108*x9 + 120*x10) + 
     sqr((-1) + 13*x1 + 26*x2 + 39*x3 + 52*x4 + 65*x5 + 78*x6 + 91*x7 + 104*x8
      + 117*x9 + 130*x10) + sqr((-1) + 14*x1 + 28*x2 + 42*x3 + 56*x4 + 70*x5 + 
     84*x6 + 98*x7 + 112*x8 + 126*x9 + 140*x10) + sqr((-1) + 15*x1 + 30*x2 + 45
     *x3 + 60*x4 + 75*x5 + 90*x6 + 105*x7 + 120*x8 + 135*x9 + 150*x10) + sqr((-
     1) + 16*x1 + 32*x2 + 48*x3 + 64*x4 + 80*x5 + 96*x6 + 112*x7 + 128*x8 + 144
     *x9 + 160*x10) + sqr((-1) + 17*x1 + 34*x2 + 51*x3 + 68*x4 + 85*x5 + 102*x6
      + 119*x7 + 136*x8 + 153*x9 + 170*x10) + sqr((-1) + 18*x1 + 36*x2 + 54*x3
      + 72*x4 + 90*x5 + 108*x6 + 126*x7 + 144*x8 + 162*x9 + 180*x10) + sqr((-1)
      + 19*x1 + 38*x2 + 57*x3 + 76*x4 + 95*x5 + 114*x6 + 133*x7 + 152*x8 + 171*
     x9 + 190*x10) + sqr((-1) + 20*x1 + 40*x2 + 60*x3 + 80*x4 + 100*x5 + 120*x6
      + 140*x7 + 160*x8 + 180*x9 + 200*x10)) + objvar =E= 0;

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
x9.l = 1; 
x10.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
