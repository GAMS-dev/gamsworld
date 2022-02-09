*  NLP written by GAMS Convert at 07/30/01 17:04:28
*  
*  Equation counts
*     Total       E       G       L       N       X
*         4       2       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        10      10       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        17       8       9       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4;


e1..  - (log(0.398942448887604*(x1/x7*exp(-0.5*sqr((95 - x4)/x7)) + x2/x8*exp(
     -0.5*sqr((95 - x5)/x8)) + x3/x9*exp(-0.5*sqr((95 - x6)/x9)))) + log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((105 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((105 - x5)/x8)) + x3/x9*exp(-0.5*sqr((105 - x6)/x9)))) + 4*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((110 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((110 - x5)/x8)) + x3/x9*exp(-0.5*sqr((110 - x6)/x9)))) + 4*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((115 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((115 - x5)/x8)) + x3/x9*exp(-0.5*sqr((115 - x6)/x9)))) + 15*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((120 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((120 - x5)/x8)) + x3/x9*exp(-0.5*sqr((120 - x6)/x9)))) + 15*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((125 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((125 - x5)/x8)) + x3/x9*exp(-0.5*sqr((125 - x6)/x9)))) + 15*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((130 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((130 - x5)/x8)) + x3/x9*exp(-0.5*sqr((130 - x6)/x9)))) + 13*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((135 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((135 - x5)/x8)) + x3/x9*exp(-0.5*sqr((135 - x6)/x9)))) + 21*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((140 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((140 - x5)/x8)) + x3/x9*exp(-0.5*sqr((140 - x6)/x9)))) + 12*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((145 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((145 - x5)/x8)) + x3/x9*exp(-0.5*sqr((145 - x6)/x9)))) + 17*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((150 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((150 - x5)/x8)) + x3/x9*exp(-0.5*sqr((150 - x6)/x9)))) + 4*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((155 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((155 - x5)/x8)) + x3/x9*exp(-0.5*sqr((155 - x6)/x9)))) + 20*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((160 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((160 - x5)/x8)) + x3/x9*exp(-0.5*sqr((160 - x6)/x9)))) + 8*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((165 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((165 - x5)/x8)) + x3/x9*exp(-0.5*sqr((165 - x6)/x9)))) + 17*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((170 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((170 - x5)/x8)) + x3/x9*exp(-0.5*sqr((170 - x6)/x9)))) + 8*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((175 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((175 - x5)/x8)) + x3/x9*exp(-0.5*sqr((175 - x6)/x9)))) + 6*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((180 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((180 - x5)/x8)) + x3/x9*exp(-0.5*sqr((180 - x6)/x9)))) + 6*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((185 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((185 - x5)/x8)) + x3/x9*exp(-0.5*sqr((185 - x6)/x9)))) + 7*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((190 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((190 - x5)/x8)) + x3/x9*exp(-0.5*sqr((190 - x6)/x9)))) + 4*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((195 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((195 - x5)/x8)) + x3/x9*exp(-0.5*sqr((195 - x6)/x9)))) + 3*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((200 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((200 - x5)/x8)) + x3/x9*exp(-0.5*sqr((200 - x6)/x9)))) + 3*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((205 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((205 - x5)/x8)) + x3/x9*exp(-0.5*sqr((205 - x6)/x9)))) + 8*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((210 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((210 - x5)/x8)) + x3/x9*exp(-0.5*sqr((210 - x6)/x9)))) + log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((215 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((215 - x5)/x8)) + x3/x9*exp(-0.5*sqr((215 - x6)/x9)))) + 6*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((220 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((220 - x5)/x8)) + x3/x9*exp(-0.5*sqr((220 - x6)/x9)))) + 5*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((230 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((230 - x5)/x8)) + x3/x9*exp(-0.5*sqr((230 - x6)/x9)))) + log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((235 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((235 - x5)/x8)) + x3/x9*exp(-0.5*sqr((235 - x6)/x9)))) + 7*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((240 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((240 - x5)/x8)) + x3/x9*exp(-0.5*sqr((240 - x6)/x9)))) + log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((245 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((245 - x5)/x8)) + x3/x9*exp(-0.5*sqr((245 - x6)/x9)))) + 2*log(
     0.398942448887604*(x1/x7*exp(-0.5*sqr((260 - x4)/x7)) + x2/x8*exp(-0.5*
     sqr((260 - x5)/x8)) + x3/x9*exp(-0.5*sqr((260 - x6)/x9))))) - objvar
      =E= 0;

e2..    x1 + x2 + x3 =E= 1;

e3..  - x4 + x5 =G= 0;

e4..  - x5 + x6 =G= 0;

* set non default bounds

x1.lo = 0.1; 
x2.lo = 0.1; 
x3.lo = 0.1; 

* set non default levels

x1.l = 0.333333333333333; 
x2.l = 0.333333333333333; 
x3.l = 0.333333333333333; 
x4.l = 130; 
x5.l = 160; 
x6.l = 190; 
x7.l = 15; 
x8.l = 15; 
x9.l = 15; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
