$offlisting
*  MINLP written by GAMS Convert at 04/18/01 12:08:00
*  
*  Equation counts
*     Total       E       G       L       N       X
*         8       1       0       7       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        17       1      16       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       123       1     122       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,objvar;

Binary Variables b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - (10*b5*b7*b9*b10*b14*b15*b16 + 7*b1*b2*b3*b4*b8*b11 + b3*b4*b6*b7*b8 + 
     12*b3*b4*b8*b11 + 8*b6*b7*b8*b12 + 3*b6*b7*b9*b14*b16 + b9*b10*b14*b16 + 5
     *b5*b10*b14*b15*b16 + 3*b1*b2*b11*b12) + objvar =E= 0;

e2.. 3*b5*b7*b9*b10*b14*b15*b16 - 12*b1*b2*b3*b4*b8*b11 - 8*b3*b4*b6*b7*b8 + b3
     *b4*b8*b11 - 7*b1*b2*b11*b12 + 2*b13*b14*b15*b16 =L= -2;

e3.. b1*b2*b3*b4*b8*b11 - 10*b3*b4*b6*b7*b8 - 5*b6*b7*b8*b12 + b6*b7*b9*b14*b16
      + 7*b9*b10*b14*b16 + b5*b10*b14*b15*b16 =L= -1;

e4.. 5*b5*b7*b9*b10*b14*b15*b16 - 3*b1*b2*b3*b4*b8*b11 - b3*b4*b6*b7*b8 - 2*b5*
     b10*b14*b15*b16 + b13*b14*b15*b16 =L= -1;

e5.. 3*b1*b2*b3*b4*b8*b11 - 5*b5*b7*b9*b10*b14*b15*b16 + b3*b4*b6*b7*b8 + 2*b5*
     b10*b14*b15*b16 - b13*b14*b15*b16 =L= 1;

e6.. (-4*b3*b4*b6*b7*b8) - 2*b3*b4*b8*b11 - 5*b6*b7*b9*b14*b16 + b9*b10*b14*b16
      - 9*b5*b10*b14*b15*b16 - 2*b1*b2*b11*b12 =L= -3;

e7.. 9*b1*b2*b3*b4*b8*b11 - 12*b3*b4*b8*b11 - 7*b6*b7*b8*b12 + 6*b6*b7*b9*b14*
     b16 + 2*b5*b10*b14*b15*b16 - 15*b1*b2*b11*b12 + 3*b13*b14*b15*b16 =L= -7;

e8.. 5*b1*b2*b3*b4*b8*b11 - 8*b5*b7*b9*b10*b14*b15*b16 + 2*b3*b4*b6*b7*b8 - 7*
     b3*b4*b8*b11 - b6*b7*b8*b12 - 5*b9*b10*b14*b16 - 10*b1*b2*b11*b12 =L= -1;

* set non default bounds


$if set nostart $goto modeldef
* set non default levels

b1.l = 0.171747132; 
b2.l = 0.843266708; 
b3.l = 0.550375356; 
b4.l = 0.301137904; 
b5.l = 0.292212117; 
b6.l = 0.224052867; 
b7.l = 0.349830504; 
b8.l = 0.998117627; 
b9.l = 0.578733378; 
b10.l = 0.991133039; 
b11.l = 0.130692483; 
b12.l = 0.639718759; 
b13.l = 0.159517864; 
b14.l = 0.250080533; 
b15.l = 0.668928609; 
b16.l = 0.435356381; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
