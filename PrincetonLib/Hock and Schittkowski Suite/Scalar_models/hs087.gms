*  DNLP written by GAMS Convert at 07/27/06 09:26:14
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

e5..  - (30*(300 + abs((-300) + x1) - x1)*x1/(300.0000000001 + abs((-300) + x1)
      - x1) + 31*(-300 + abs((-300) + x1) + x1)*x1/(-299.9999999999 + abs((-300
     ) + x1) + x1) + 28*(100 + abs((-100) + x2) - x2)*x2/(100.0000000001 + abs(
     (-100) + x2) - x2) + 29*(-100 + abs((-100) + x2) + x2)/(-99.9999999999 + 
     abs((-100) + x2) + x2)*(200 + abs((-200) + x2) - x2)/(200.0000000001 + 
     abs((-200) + x2) - x2)*x2 + 30*(-200 + abs((-200) + x2) + x2)*x2/(-
     199.9999999999 + abs((-200) + x2) + x2)) + objvar =E= 0;

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
