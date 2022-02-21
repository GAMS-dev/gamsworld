$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:35:14
*  
*  Equation counts
*     Total       E       G       L       N       X
*        23      13       3       7       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        77      14      63       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       174     166       8       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,objvar;

Positive Variables x1,x2,x3,x7,x8,x9,x10,x11,x12,x13;

Binary Variables b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28
          ,b29,b30,b31,b32,b33,b34,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45
          ,b46,b47,b48,b49,b50,b51,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62
          ,b63,b64,b65,b66,b67,b68,b69,b70,b71,b72,b73,b74,b75,b76;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23;


e1.. (-x13*objvar) - (416000*x4*(1 - exp(-0.1*x1/x4)) + 37440*x1 - 100*x4 + 
     124615.384615385*x5*(1 - exp(-0.13*x2/x5)) + 9000*x2 - 90*x5 + 
     278666.666666667*x6*(1 - exp(-0.09*x3/x6)) + 15840*x3 - 80*x6) =E= 0;

e2..  - 1300*x1 + x7 + 350*x13 =E= 0;

e3..  - 1000*x2 + x8 + 300*x13 =E= 0;

e4..  - 1100*x3 + x9 + 300*x13 =E= 0;

e5..    x7 - 300*x13 =L= 0;

e6..    x8 - 300*x13 =L= 0;

e7..    x9 - 300*x13 =L= 0;

e8..    x4 - 0.01*b14 - b15 - 2*b16 - 3*b17 - 4*b18 - 5*b19 - 6*b20 - 7*b21
      - 8*b22 - 9*b23 - 10*b24 - 11*b25 - 12*b26 - 13*b27 - 14*b28 - 15*b29
      - 16*b30 - 17*b31 - 18*b32 - 19*b33 - 20*b34 =E= 0;

e9..    x5 - 0.01*b35 - b36 - 2*b37 - 3*b38 - 4*b39 - 5*b40 - 6*b41 - 7*b42
      - 8*b43 - 9*b44 - 10*b45 - 11*b46 - 12*b47 - 13*b48 - 14*b49 - 15*b50
      - 16*b51 - 17*b52 - 18*b53 - 19*b54 - 20*b55 =E= 0;

e10..    x6 - 0.01*b56 - b57 - 2*b58 - 3*b59 - 4*b60 - 5*b61 - 6*b62 - 7*b63
       - 8*b64 - 9*b65 - 10*b66 - 11*b67 - 12*b68 - 13*b69 - 14*b70 - 15*b71
       - 16*b72 - 17*b73 - 18*b74 - 19*b75 - 20*b76 =E= 0;

e11..  - b14 - b15 - b16 - b17 - b18 - b19 - b20 - b21 - b22 - b23 - b24 - b25
       - b26 - b27 - b28 - b29 - b30 - b31 - b32 - b33 - b34 =E= -1;

e12..  - b35 - b36 - b37 - b38 - b39 - b40 - b41 - b42 - b43 - b44 - b45 - b46
       - b47 - b48 - b49 - b50 - b51 - b52 - b53 - b54 - b55 =E= -1;

e13..  - b56 - b57 - b58 - b59 - b60 - b61 - b62 - b63 - b64 - b65 - b66 - b67
       - b68 - b69 - b70 - b71 - b72 - b73 - b74 - b75 - b76 =E= -1;

e14..  - x1 - 2*x4 + x10 =E= 0;

e15..  - x2 - 3*x5 + x11 =E= 0;

e16..  - x3 - 3*x6 + x12 =E= 0;

e17..    x10 + x11 + x12 - x13 =L= 0;

e18..    x1 + 150*b14 =L= 150;

e19..    x2 + 150*b35 =L= 150;

e20..    x3 + 150*b56 =L= 150;

e21..    x4 =G= 1;

e22..    x5 =G= 1;

e23..    x6 =G= 1;

* set non default bounds

x4.lo = 0.01; x4.up = 20; 
x5.lo = 0.01; x5.up = 20; 
x6.lo = 0.01; x6.up = 20; 

$if set nostart $goto modeldef
* set non default levels

x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x13.l = 100; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
