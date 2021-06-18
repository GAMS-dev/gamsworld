$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:17
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         4       4       0       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       4       0       5       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        20       4      16       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,x6,x7,x8,objvar;

Positive Variables x6;

Integer Variables i1,i2,i3,i4,i5;

Equations  e1,e2,e3,e4;


e1..  - (0.0056858*i2*i5 + 0.0006262*i1*i4 - 0.0022053*i3*i5) + x6
      =E= 85.334407;

e2..  - (0.0071317*i2*i5 + 0.0029955*i1*i2 + 0.0021813*sqr(i3)) + x7
      =E= 80.51249;

e3..  - (0.0047026*i3*i5 + 0.0012547*i1*i3 + 0.0019085*i3*i4) + x8
      =E= 9.300961;

e4..  - (5.3578547*sqr(i3) + 0.8356891*i1*i5 + 37.293239*i1) + objvar
      =E= -40792.141;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
i3.up = 200; 
i4.up = 200; 
i5.up = 200; 
x6.up = 92; 
x7.lo = 90; x7.up = 110; 
x8.lo = 20; x8.up = 25; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 100; 
i2.l = 100; 
i3.l = 100; 
i4.l = 100; 
i5.l = 100; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
