$offlisting
*  MINLP written by GAMS Convert at 04/19/01 16:58:13
*  
*  Equation counts
*     Total       E       G       L       N       X
*        13       1       0      12       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       1       2       6       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        33      25       8       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,i3,i4,i5,i6,i7,i8,objvar;

Binary Variables b1,b2;

Integer Variables i3,i4,i5,i6,i7,i8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..  - 0.1*b1 - 0.2*b2 - i3 - i4 + objvar =E= 0;

e2..    460*i5 + 570*i7 =L= 1900;

e3..    460*i6 + 570*i8 =L= 1900;

e4..  - 460*i5 - 570*i7 =L= -1700;

e5..  - 460*i6 - 570*i8 =L= -1700;

e6..    i5 + i7 =L= 5;

e7..    i6 + i8 =L= 5;

e8..    b1 - i3 =L= 0;

e9..    b2 - i4 =L= 0;

e10..  - 15*b1 + i3 =L= 0;

e11..  - 15*b2 + i4 =L= 0;

e12..  - (i3*i5 + i4*i6) =L= -8;

e13..  - (i3*i7 + i4*i8) =L= -7;

* set non default bounds

i3.up = 15; 
i4.up = 15; 
i5.up = 5; 
i6.up = 5; 
i7.up = 5; 
i8.up = 5; 

$if set nostart $goto modeldef
* set non default levels

i3.l = 1; 
i4.l = 1; 
i5.l = 1; 
i6.l = 1; 
i7.l = 1; 
i8.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
