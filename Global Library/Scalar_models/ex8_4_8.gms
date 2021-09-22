*  NLP written by GAMS Convert at 07/19/01 13:40:12
*  
*  Equation counts
*     Total       E       G       L       N       X
*        31      31       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        43      43       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       141      11     130       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31;


e1..  - (sqr(200*x1 - 60) + sqr(66.6666666666667*x2 - 39.4) + sqr(3231.5*x3 - 
     3231.5) + sqr(1.33333333333333*x4 - 645.066666666667) + sqr(200*x5 - 80)
      + sqr(66.6666666666667*x6 - 40.1333333333333) + sqr(3231.5*x7 - 3231.5)
      + sqr(1.33333333333333*x8 - 657.6) + sqr(200*x9 - 100) + sqr(
     66.6666666666667*x10 - 40.8) + sqr(3231.5*x11 - 3231.5) + sqr(
     1.33333333333333*x12 - 666.533333333333) + sqr(200*x13 - 140) + sqr(
     66.6666666666667*x14 - 43.8) + sqr(3231.5*x15 - 3231.5) + sqr(
     1.33333333333333*x16 - 668.533333333333) + sqr(200*x17 - 180) + sqr(
     66.6666666666667*x18 - 54.2666666666667) + sqr(3231.5*x19 - 3231.5) + sqr(
     1.33333333333333*x20 - 626.266666666667)) + objvar =E= 0;

e2.. exp(18.5875 - 3626.55/(323.15*x3 - 34.29)) - x33 =E= 0;

e3.. exp(16.1764 - 2927.17/(323.15*x3 - 50.22)) - x34 =E= 0;

e4.. exp(18.5875 - 3626.55/(323.15*x7 - 34.29)) - x35 =E= 0;

e5.. exp(16.1764 - 2927.17/(323.15*x7 - 50.22)) - x36 =E= 0;

e6.. exp(18.5875 - 3626.55/(323.15*x11 - 34.29)) - x37 =E= 0;

e7.. exp(16.1764 - 2927.17/(323.15*x11 - 50.22)) - x38 =E= 0;

e8.. exp(18.5875 - 3626.55/(323.15*x15 - 34.29)) - x39 =E= 0;

e9.. exp(16.1764 - 2927.17/(323.15*x15 - 50.22)) - x40 =E= 0;

e10.. exp(18.5875 - 3626.55/(323.15*x19 - 34.29)) - x41 =E= 0;

e11.. exp(16.1764 - 2927.17/(323.15*x19 - 50.22)) - x42 =E= 0;

e12.. x23*x1*x33 - x2*x4 =E= 0;

e13.. x25*x5*x35 - x6*x8 =E= 0;

e14.. x27*x9*x37 - x10*x12 =E= 0;

e15.. x29*x13*x39 - x14*x16 =E= 0;

e16.. x31*x17*x41 - x18*x20 =E= 0;

e17.. x24*(1 - x1)*x34 - (1 - x2)*x4 =E= 0;

e18.. x26*(1 - x5)*x36 - (1 - x6)*x8 =E= 0;

e19.. x28*(1 - x9)*x38 - (1 - x10)*x12 =E= 0;

e20.. x30*(1 - x13)*x40 - (1 - x14)*x16 =E= 0;

e21.. x32*(1 - x17)*x42 - (1 - x18)*x20 =E= 0;

e22.. x21/x3/sqr(1 + x21/x22*x1/(1 - x1)) - log(x23) =E= 0;

e23.. x21/x7/sqr(1 + x21/x22*x5/(1 - x5)) - log(x25) =E= 0;

e24.. x21/x11/sqr(1 + x21/x22*x9/(1 - x9)) - log(x27) =E= 0;

e25.. x21/x15/sqr(1 + x21/x22*x13/(1 - x13)) - log(x29) =E= 0;

e26.. x21/x19/sqr(1 + x21/x22*x17/(1 - x17)) - log(x31) =E= 0;

e27.. x22/x3/sqr(1 + x22/x21*(1 - x1)/x1) - log(x24) =E= 0;

e28.. x22/x7/sqr(1 + x22/x21*(1 - x5)/x5) - log(x26) =E= 0;

e29.. x22/x11/sqr(1 + x22/x21*(1 - x9)/x9) - log(x28) =E= 0;

e30.. x22/x15/sqr(1 + x22/x21*(1 - x13)/x13) - log(x30) =E= 0;

e31.. x22/x19/sqr(1 + x22/x21*(1 - x17)/x17) - log(x32) =E= 0;

* set non default bounds

x1.lo = 0.285; x1.up = 0.315; 
x2.lo = 0.546; x2.up = 0.636; 
x3.lo = 0.999071638557945; x3.up = 1.00092836144205; 
x4.lo = 481.55; x4.up = 486.05; 
x5.lo = 0.385; x5.up = 0.415; 
x6.lo = 0.557; x6.up = 0.647; 
x7.lo = 0.999071638557945; x7.up = 1.00092836144205; 
x8.lo = 490.95; x8.up = 495.45; 
x9.lo = 0.485; x9.up = 0.515; 
x10.lo = 0.567; x10.up = 0.657; 
x11.lo = 0.999071638557945; x11.up = 1.00092836144205; 
x12.lo = 497.65; x12.up = 502.15; 
x13.lo = 0.685; x13.up = 0.715; 
x14.lo = 0.612; x14.up = 0.702; 
x15.lo = 0.999071638557945; x15.up = 1.00092836144205; 
x16.lo = 499.15; x16.up = 503.65; 
x17.lo = 0.885; x17.up = 0.915; 
x18.lo = 0.769; x18.up = 0.859; 
x19.lo = 0.999071638557945; x19.up = 1.00092836144205; 
x20.lo = 467.45; x20.up = 471.95; 
x21.lo = 1; x21.up = 2; 
x22.lo = 1; x22.up = 2; 

* set non default levels

x1.l = 0.29015241396; 
x2.l = 0.62189400372; 
x3.l = 1.00009353307628; 
x4.l = 482.905120568; 
x5.l = 0.39376636351; 
x6.l = 0.57716475803; 
x7.l = 0.999721176860282; 
x8.l = 494.8032165615; 
x9.l = 0.48701341169; 
x10.l = 0.61201896021; 
x11.l = 1.00092486639703; 
x12.l = 500.254300201; 
x13.l = 0.71473399117; 
x14.l = 0.68060254203; 
x15.l = 0.999314298281912; 
x16.l = 502.0287344155; 
x17.l = 0.88978553592; 
x18.l = 0.79150724797; 
x19.l = 1.00031365361411; 
x20.l = 469.4091037145; 
x21.l = 1.9; 
x22.l = 1.6; 
x23.l = 1; 
x24.l = 1; 
x25.l = 1; 
x26.l = 1; 
x27.l = 1; 
x28.l = 1; 
x29.l = 1; 
x30.l = 1; 
x31.l = 1; 
x32.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;