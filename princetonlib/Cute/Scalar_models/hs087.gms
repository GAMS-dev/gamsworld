*  DNLP written by GAMS Convert at 10/06/06 11:33:43
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        5        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         18        4       14        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x6;

Equations  e1,e2,e3,e4,e5;


e1..  - (0.000656500561892293*sqr(x3) - 0.007629045301271*x3*x4*cos(1.48477 - 
     x6)) + x1 =E= 300;

e2..  - (0.000656500561892293*sqr(x4) - 0.007629045301271*x3*x4*cos(1.48477 + 
     x6)) + x2 =E= 0;

e3..  - (0.00689584082973523*sqr(x4) - 0.007629045301271*x3*x4*sin(1.48477 + x6
     )) + x5 =E= 0;

e4..  - (0.00689584082973523*sqr(x3) - 0.007629045301271*x3*x4*sin(1.48477 - x6
     )) =E= 200;

e5..  - (9000*x1/(-300 + x1)*(-1 + 0.00333333333333333*min(x1,300)) + 9300*x1/(
     -300 + x1)*(-1 + 0.00333333333333333*max(x1,300)) + 2800*x2/(-100 + x2)*(-
     1 + 0.01*min(x2,100)) + 580000*x2/(-100 + x2)*(-1 + 0.01*max(x2,100))/(-
     200 + x2)*(-1 + 0.005*min(x2,200)) + 6000*x2/(-200 + x2)*(-1 + 0.005*max(
     x2,200))) + objvar =E= 0;

* set non default bounds

x1.up = 400; 
x2.up = 1000; 
x3.lo = 340; x3.up = 420; 
x4.lo = 340; x4.up = 420; 
x5.lo = -1000; x5.up = 1000; 
x6.up = 0.5236; 

* set non default levels

x1.l = 390; 
x2.l = 1000; 
x3.l = 419.5; 
x4.l = 340.5; 
x5.l = 198.175; 
x6.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
