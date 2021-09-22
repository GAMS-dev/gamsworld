$offlisting
*  MINLP written by GAMS Convert at 07/02/03 17:54:12
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         9       1       1       7       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       1       0       6       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        32      22      10       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,objvar;

Integer Variables i1,i2,i3,i4,i5,i6;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - 8000*i1 + 330*i2 + 360*i3 + 370*i4 + 415*i5 + 435*i6 + objvar =E= 0;

e2..    330*i2 + 360*i3 + 370*i4 + 415*i5 + 435*i6 =L= 8000;

e3..    330*i2 + 360*i3 + 370*i4 + 415*i5 + 435*i6 =G= 7700;

e4..    i2 + i3 + i4 + i5 + i6 =L= 20;

e5..  - i1*i2 =L= -60;

e6..  - i1*i3 =L= -30;

e7..  - i1*i4 =L= -75;

e8..  - i1*i5 =L= -30;

e9..  - i1*i6 =L= -100;

* set non default bounds

i1.lo = 1; i1.up = 100; 
i2.lo = 1; i2.up = 100; 
i3.lo = 1; i3.up = 100; 
i4.lo = 1; i4.up = 100; 
i5.lo = 1; i5.up = 100; 
i6.lo = 1; i6.up = 100; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 15; 
i2.l = 4; 
i3.l = 2; 
i4.l = 5; 
i5.l = 2; 
i6.l = 7; 
objvar.l = 112235; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
