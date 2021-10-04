*  MIP written by GAMS Convert at 02/22/08 02:59:40
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        1        0        5        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11       11        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,objvar;

Integer Variables  i1,i2,i3,i4,i5;

Equations  e1,e2,e3,e4,e5,e6;


e1..    5*i1 =G= 150;

e2..    4*i2 =G= 96;

e3..    4*i3 =G= 48;

e4..    3*i4 =G= 108;

e5..    3*i5 =G= 227;

e6..  - i1 - i2 - i3 - i4 - i5 + objvar =E= 0;

* set non default bounds

i1.up = 30; 
i2.up = 24; 
i3.up = 12; 
i4.up = 36; 
i5.up = 76; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
