*  LP written by GAMS Convert at 09/03/08 03:39:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        3        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         39       39        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables  x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    24*x1 + 14*x2 =L= 7200;

e2..    49*x3 + 29*x4 =L= 7200;

e3..  - 24*x1 + 19*x5 =L= 0;

e4..  - 14*x2 + 29*x6 =L= 0;

e5..  - 49*x3 + 18*x7 =L= 0;

e6..  - 29*x4 + 26*x8 =L= 0;

e7..    50*x1 + 60*x3 - 39.5833333333333*x5 + 50*x6 - 22.0408163265306*x7
      + 60*x8 + x9 - x11 =E= 927.758;

e8..    75*x2 + 40*x4 + 75*x5 - 155.357142857143*x6 + 40*x7
      - 35.8620689655172*x8 + x10 - x12 =E= 1433.63;

e9..  - 7200*x1 - 6000*x2 - 7200*x3 - 4000*x4 - 1300*x5 + 4228.57142857143*x6
      - 2855.10204081633*x7 - 5113.79310344828*x8 - 500*x9 - 250*x10 + objvar
      =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
