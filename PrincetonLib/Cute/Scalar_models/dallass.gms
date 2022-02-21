*  NLP written by GAMS Convert at 10/06/06 11:31:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         37       37        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         52       52        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        149      103       46        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,objvar;

Positive Variables  x1,x2,x3,x19,x21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37;


e1..  - x1 + x41 + x46 =E= 0;

e2..  - x2 + x45 =E= 0;

e3..  - x3 + x44 =E= 0;

e4..  - x4 =E= 0;

e5..  - x5 - x6 - x7 + x16 =E= 2.8;

e6..    x7 - x8 - x9 =E= 0;

e7..    x9 - x10 =E= 0.403;

e8..    x2 + x10 - x11 - x12 =E= 0.592;

e9..    x3 + x12 - x13 =E= 1.156;

e10..    x4 - x14 - x15 - x16 =E= 0.2;

e11..    x5 + x13 + x15 - x17 =E= 0.495;

e12..    x6 + x8 - x18 + x19 + x20 =E= 0;

e13..    x18 - x19 + x42 =E= 0;

e14..  - x20 + x21 =E= 0;

e15..  - x21 + x43 =E= 0;

e16..    x11 + x14 - x22 - x23 =E= 0.313;

e17..    x23 - x24 - x25 =E= 0.844;

e18..    x22 + x25 - x26 + x31 =E= 0.331;

e19..    x17 + x26 - x27 - x28 =E= 0.053;

e20..    x28 =E= 0;

e21..  - x29 - x30 - x31 =E= 0.272;

e22..    x27 + x30 =E= 0.883;

e23..    x24 - x32 =E= 0.571;

e24..    x29 - x33 - x34 + x38 =E= 0.755;

e25..    x32 - x35 =E= 0;

e26..    x35 - x36 - x37 =E= 0.527;

e27..    x34 + x37 =E= 0;

e28..    x36 - x38 - x39 - x40 =E= 0;

e29..    x1 + x33 + x39 =E= 0.001;

e30..    x40 - x41 =E= 0;

e31..  - x42 - x43 - x44 - x45 - x46 =E= -10.196;

e32..  - (sqrt(sqr((-21.1674278078372) + x1)) + x1 - 2*x1) - 2*x47
       =E= -21.1674278078372;

e33..  - (sqrt(sqr((-43.7636835743976) + x2)) + x2 - 2*x2) - 2*x48
       =E= -43.7636835743976;

e34..  - (sqrt(sqr((-32.8255997660363) + x3)) + x3 - 2*x3) - 2*x49
       =E= -32.8255997660363;

e35..  - (sqrt(sqr((-22.0120421587821) + x19)) + x19 - 2*x19) - 2*x50
       =E= -22.0120421587821;

e36..  - (sqrt(sqr((-13.670405992508) + x21)) + x21 - 2*x21) - 2*x51
       =E= -13.670405992508;

e37..  - (0.5*(-sqrt(56276.336 + 0.5*(sqrt(sqr(112552.672 - 251.2*x47*x47)) - 
      251.2*x47*x47))*x47 - 7101.43296921966*arctan(0.0472423956787868*x47/
      sqrt(1 - 0.00223184394947105*x47*x47))) + 0.5*(-sqrt(61891.6269 + 0.5*(
      sqrt(sqr(123783.2538 - 64.63*x48*x48)) - 64.63*x48*x48))*x48 - 
      15397.3086827857*arctan(0.0228499961229272*x48/sqrt(1 - 
      0.00052212232281779*x48*x48))) + 0.5*(-sqrt(25935.9064 + 0.5*(sqrt(sqr(
      51871.8128 - 48.14*x49*x49)) - 48.14*x49*x49))*x49 - 7476.15648099048*
      arctan(0.03046402829278*x49/sqrt(1 - 0.000928057019823298*x49*x49))) + 
      0.000391529078482984*sqr(x4)*exp(0.85*log(sqrt(1e-9 + sqr(x4)))) + 
      0.080326636887483*sqr(x5)*exp(0.85*log(sqrt(1e-9 + sqr(x5)))) + 
      0.000742496872696779*sqr(x6)*exp(0.85*log(sqrt(1e-9 + sqr(x6)))) + 
      0.000289391058009162*sqr(x7)*exp(0.85*log(sqrt(1e-9 + sqr(x7)))) + 
      0.00175530861072595*sqr(x8)*exp(0.85*log(sqrt(1e-9 + sqr(x8)))) + 
      0.000419900750836824*sqr(x9)*exp(0.85*log(sqrt(1e-9 + sqr(x9)))) + 
      0.000450673428252234*sqr(x10)*exp(0.85*log(sqrt(1e-9 + sqr(x10)))) + 
      0.000153755964618276*sqr(x11)*exp(0.85*log(sqrt(1e-9 + sqr(x11)))) + 
      0.00168516191100286*sqr(x12)*exp(0.85*log(sqrt(1e-9 + sqr(x12)))) + 
      0.00194441758961868*sqr(x13)*exp(0.85*log(sqrt(1e-9 + sqr(x13)))) + 
      8.7128846674164e-5*sqr(x14)*exp(0.85*log(sqrt(1e-9 + sqr(x14)))) + 
      7.73100861247498e-5*sqr(x15)*exp(0.85*log(sqrt(1e-9 + sqr(x15)))) + 
      0.000255345051184555*sqr(x16)*exp(0.85*log(sqrt(1e-9 + sqr(x16)))) + 
      0.0483308625250202*sqr(x17)*exp(0.85*log(sqrt(1e-9 + sqr(x17)))) + 
      8.53796361109975e-6*sqr(x18)*exp(0.85*log(sqrt(1e-9 + sqr(x18)))) + 0.5*(
      -sqrt(27368.67705 + 0.5*(sqrt(sqr(54737.3541 - 112.97*x50*x50)) - 112.97*
      x50*x50))*x50 - 5149.94079403569*arctan(0.0454296785726004*x50/sqrt(1 - 
      0.00206385569520979*x50*x50))) + 0.0084258095550143*sqr(x20)*exp(0.85*
      log(sqrt(sqr(x20)))) + 0.5*(-sqrt(15007.3984 + 0.5*(sqrt(sqr(30014.7968
       - 160.61*x51*x51)) - 160.61*x51*x51))*x51 - 2368.36762897655*arctan(
      0.0731507169975816*x51/sqrt(1 - 0.00535102739726027*x51*x51))) + 
      0.000701723580160977*sqr(x22)*exp(0.85*log(sqrt(1e-9 + sqr(x22)))) + 
      0.00110171975250803*sqr(x23)*exp(0.85*log(sqrt(1e-9 + sqr(x23)))) + 
      0.00129332318772682*sqr(x24)*exp(0.85*log(sqrt(1e-9 + sqr(x24)))) + 
      1.55188121270984*sqr(x25)*exp(0.85*log(sqrt(1e-9 + sqr(x25)))) + 
      0.9145014289183*sqr(x26)*exp(0.85*log(sqrt(1e-9 + sqr(x26)))) + 
      0.0167041122772187*sqr(x27)*exp(0.85*log(sqrt(1e-9 + sqr(x27)))) + 
      0.00947663971078827*sqr(x28)*exp(0.85*log(sqrt(1e-9 + sqr(x28)))) + 
      0.0531970719103273*sqr(x29)*exp(0.85*log(sqrt(1e-9 + sqr(x29)))) + 
      0.0252460680252401*sqr(x30)*exp(0.85*log(sqrt(1e-9 + sqr(x30)))) + 
      0.748228441842246*sqr(x31)*exp(0.85*log(sqrt(1e-9 + sqr(x31)))) + 
      0.000742463311472805*sqr(x32)*exp(0.85*log(sqrt(1e-9 + sqr(x32)))) + 
      0.080326636887483*sqr(x33)*exp(0.85*log(sqrt(1e-9 + sqr(x33)))) + 
      0.0387707473244758*sqr(x34)*exp(0.85*log(sqrt(1e-9 + sqr(x34)))) + 
      0.000526909446851668*sqr(x35)*exp(0.85*log(sqrt(1e-9 + sqr(x35)))) + 
      0.00032869871898762*sqr(x36)*exp(0.85*log(sqrt(1e-9 + sqr(x36)))) + 
      0.000947663971078827*sqr(x37)*exp(0.85*log(sqrt(1e-9 + sqr(x37)))) + 
      0.00499517110862296*sqr(x38)*exp(0.85*log(sqrt(1e-9 + sqr(x38)))) + 
      0.000744736682267509*sqr(x39)*exp(0.85*log(sqrt(1e-9 + sqr(x39)))) + 
      0.00123189526390114*sqr(x40)*exp(0.85*log(sqrt(1e-9 + sqr(x40)))) + 
      0.025945503714657*sqr(x41)*exp(0.85*log(sqrt(1e-9 + sqr(x41)))))
       + 638.4*x42 + 633*x43 + 554.5*x44 + 505*x45 + 436.9*x46 + objvar =E= 0;

* set non default bounds

x1.up = 21.1673; 
x2.up = 43.7635; 
x3.up = 32.8255; 
x4.lo = -200; x4.up = 200; 
x5.lo = -200; x5.up = 200; 
x6.lo = -200; x6.up = 200; 
x7.lo = -200; x7.up = 200; 
x8.lo = -200; x8.up = 200; 
x9.lo = -200; x9.up = 200; 
x10.lo = -200; x10.up = 200; 
x11.lo = -200; x11.up = 200; 
x12.lo = -200; x12.up = 200; 
x13.lo = -200; x13.up = 200; 
x14.lo = -200; x14.up = 200; 
x15.lo = -200; x15.up = 200; 
x16.lo = -200; x16.up = 200; 
x17.lo = -200; x17.up = 200; 
x18.lo = -200; x18.up = 200; 
x19.up = 22.012; 
x20.lo = -200; x20.up = 200; 
x21.up = 13.6703; 
x22.lo = -200; x22.up = 200; 
x23.lo = -200; x23.up = 200; 
x24.lo = -200; x24.up = 200; 
x25.lo = -200; x25.up = 200; 
x26.lo = -200; x26.up = 200; 
x27.lo = -200; x27.up = 200; 
x28.lo = -200; x28.up = 200; 
x29.lo = -200; x29.up = 200; 
x30.lo = -200; x30.up = 200; 
x31.lo = -200; x31.up = 200; 
x32.lo = -200; x32.up = 200; 
x33.lo = -200; x33.up = 200; 
x34.lo = -200; x34.up = 200; 
x35.lo = -200; x35.up = 200; 
x36.lo = -200; x36.up = 200; 
x37.lo = -200; x37.up = 200; 
x38.lo = -200; x38.up = 200; 
x39.lo = -200; x39.up = 200; 
x40.lo = -200; x40.up = 200; 
x41.lo = -200; x41.up = 200; 
x42.lo = -200; x42.up = 200; 
x43.lo = -200; x43.up = 200; 
x44.lo = -200; x44.up = 200; 
x45.lo = -200; x45.up = 200; 
x46.lo = -200; x46.up = 200; 

* set non default levels

x1.l = 21.1673; 
x2.l = 43.7635; 
x3.l = 32.8255; 
x4.l = 1.42109E-14; 
x5.l = 168.826; 
x7.l = 28.1745; 
x8.l = 87.5603; 
x9.l = -59.3858; 
x10.l = -59.7888; 
x11.l = 183.383; 
x13.l = -168.331; 
x15.l = 200; 
x16.l = 0.2; 
x17.l = 200; 
x18.l = -76.7574; 
x19.l = 22.012; 
x20.l = 13.6703; 
x21.l = 13.6703; 
x22.l = -198.461; 
x23.l = 181.531; 
x24.l = -19.3133; 
x25.l = 200; 
x26.l = -198.792; 
x27.l = 1.155; 
x28.l = 1; 
x29.l = 200; 
x30.l = 0.272; 
x32.l = -19.8843; 
x33.l = 178.834; 
x34.l = -179.589; 
x35.l = -19.8843; 
x37.l = 179.589; 
x40.l = 200; 
x41.l = 200; 
x42.l = 98.7694; 
x43.l = 13.6703; 
x44.l = 32.8255; 
x45.l = 43.7635; 
x46.l = -178.833; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
