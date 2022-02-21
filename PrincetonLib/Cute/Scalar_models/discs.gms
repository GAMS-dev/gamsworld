*  NLP written by GAMS Convert at 10/06/06 11:31:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         67        1        0       66        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37       37        0        0        0        0        0        0
*  FX      3        3        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        409       13      396        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,objvar;

Positive Variables  x1,x13,x14;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67;


e1.. sqr(x25 + x26) - sqr(x2 - x1) - sqr(x14 - x13) =L= -0.0001;

e2.. sqr(x25 + x27) - sqr(x3 - x1) - sqr(x15 - x13) =L= -0.0001;

e3.. sqr(x26 + x27) - sqr(x3 - x2) - sqr(x15 - x14) =L= -0.0001;

e4.. sqr(x25 + x28) - sqr(x4 - x1) - sqr(x16 - x13) =L= -0.0001;

e5.. sqr(x26 + x28) - sqr(x4 - x2) - sqr(x16 - x14) =L= -0.0001;

e6.. sqr(x27 + x28) - sqr(x4 - x3) - sqr(x16 - x15) =L= -0.0001;

e7.. sqr(x25 + x29) - sqr(x5 - x1) - sqr(x17 - x13) =L= -0.0001;

e8.. sqr(x26 + x29) - sqr(x5 - x2) - sqr(x17 - x14) =L= -0.0001;

e9.. sqr(x27 + x29) - sqr(x5 - x3) - sqr(x17 - x15) =L= -0.0001;

e10.. sqr(x28 + x29) - sqr(x5 - x4) - sqr(x17 - x16) =L= -0.0001;

e11.. sqr(x25 + x30) - sqr(x6 - x1) - sqr(x18 - x13) =L= -0.0001;

e12.. sqr(x26 + x30) - sqr(x6 - x2) - sqr(x18 - x14) =L= -0.0001;

e13.. sqr(x27 + x30) - sqr(x6 - x3) - sqr(x18 - x15) =L= -0.0001;

e14.. sqr(x28 + x30) - sqr(x6 - x4) - sqr(x18 - x16) =L= -0.0001;

e15.. sqr(x29 + x30) - sqr(x6 - x5) - sqr(x18 - x17) =L= -0.0001;

e16.. sqr(x25 + x31) - sqr(x7 - x1) - sqr(x19 - x13) =L= -0.0001;

e17.. sqr(x26 + x31) - sqr(x7 - x2) - sqr(x19 - x14) =L= -0.0001;

e18.. sqr(x27 + x31) - sqr(x7 - x3) - sqr(x19 - x15) =L= -0.0001;

e19.. sqr(x28 + x31) - sqr(x7 - x4) - sqr(x19 - x16) =L= -0.0001;

e20.. sqr(x29 + x31) - sqr(x7 - x5) - sqr(x19 - x17) =L= -0.0001;

e21.. sqr(x30 + x31) - sqr(x7 - x6) - sqr(x19 - x18) =L= -0.0001;

e22.. sqr(x25 + x32) - sqr(x8 - x1) - sqr(x20 - x13) =L= -0.0001;

e23.. sqr(x26 + x32) - sqr(x8 - x2) - sqr(x20 - x14) =L= -0.0001;

e24.. sqr(x27 + x32) - sqr(x8 - x3) - sqr(x20 - x15) =L= -0.0001;

e25.. sqr(x28 + x32) - sqr(x8 - x4) - sqr(x20 - x16) =L= -0.0001;

e26.. sqr(x29 + x32) - sqr(x8 - x5) - sqr(x20 - x17) =L= -0.0001;

e27.. sqr(x30 + x32) - sqr(x8 - x6) - sqr(x20 - x18) =L= -0.0001;

e28.. sqr(x31 + x32) - sqr(x8 - x7) - sqr(x20 - x19) =L= -0.0001;

e29.. sqr(x25 + x33) - sqr(x9 - x1) - sqr(x21 - x13) =L= -0.0001;

e30.. sqr(x26 + x33) - sqr(x9 - x2) - sqr(x21 - x14) =L= -0.0001;

e31.. sqr(x27 + x33) - sqr(x9 - x3) - sqr(x21 - x15) =L= -0.0001;

e32.. sqr(x28 + x33) - sqr(x9 - x4) - sqr(x21 - x16) =L= -0.0001;

e33.. sqr(x29 + x33) - sqr(x9 - x5) - sqr(x21 - x17) =L= -0.0001;

e34.. sqr(x30 + x33) - sqr(x9 - x6) - sqr(x21 - x18) =L= -0.0001;

e35.. sqr(x31 + x33) - sqr(x9 - x7) - sqr(x21 - x19) =L= -0.0001;

e36.. sqr(x32 + x33) - sqr(x9 - x8) - sqr(x21 - x20) =L= -0.0001;

e37.. sqr(x25 + x34) - sqr(x10 - x1) - sqr(x22 - x13) =L= -0.0001;

e38.. sqr(x26 + x34) - sqr(x10 - x2) - sqr(x22 - x14) =L= -0.0001;

e39.. sqr(x27 + x34) - sqr(x10 - x3) - sqr(x22 - x15) =L= -0.0001;

e40.. sqr(x28 + x34) - sqr(x10 - x4) - sqr(x22 - x16) =L= -0.0001;

e41.. sqr(x29 + x34) - sqr(x10 - x5) - sqr(x22 - x17) =L= -0.0001;

e42.. sqr(x30 + x34) - sqr(x10 - x6) - sqr(x22 - x18) =L= -0.0001;

e43.. sqr(x31 + x34) - sqr(x10 - x7) - sqr(x22 - x19) =L= -0.0001;

e44.. sqr(x32 + x34) - sqr(x10 - x8) - sqr(x22 - x20) =L= -0.0001;

e45.. sqr(x33 + x34) - sqr(x10 - x9) - sqr(x22 - x21) =L= -0.0001;

e46.. sqr(x25 + x35) - sqr(x11 - x1) - sqr(x23 - x13) =L= -0.0001;

e47.. sqr(x26 + x35) - sqr(x11 - x2) - sqr(x23 - x14) =L= -0.0001;

e48.. sqr(x27 + x35) - sqr(x11 - x3) - sqr(x23 - x15) =L= -0.0001;

e49.. sqr(x28 + x35) - sqr(x11 - x4) - sqr(x23 - x16) =L= -0.0001;

e50.. sqr(x29 + x35) - sqr(x11 - x5) - sqr(x23 - x17) =L= -0.0001;

e51.. sqr(x30 + x35) - sqr(x11 - x6) - sqr(x23 - x18) =L= -0.0001;

e52.. sqr(x31 + x35) - sqr(x11 - x7) - sqr(x23 - x19) =L= -0.0001;

e53.. sqr(x32 + x35) - sqr(x11 - x8) - sqr(x23 - x20) =L= -0.0001;

e54.. sqr(x33 + x35) - sqr(x11 - x9) - sqr(x23 - x21) =L= -0.0001;

e55.. sqr(x34 + x35) - sqr(x11 - x10) - sqr(x23 - x22) =L= -0.0001;

e56.. sqr(x25 + x36) - sqr(x12 - x1) - sqr(x24 - x13) =L= -0.0001;

e57.. sqr(x26 + x36) - sqr(x12 - x2) - sqr(x24 - x14) =L= -0.0001;

e58.. sqr(x27 + x36) - sqr(x12 - x3) - sqr(x24 - x15) =L= -0.0001;

e59.. sqr(x28 + x36) - sqr(x12 - x4) - sqr(x24 - x16) =L= -0.0001;

e60.. sqr(x29 + x36) - sqr(x12 - x5) - sqr(x24 - x17) =L= -0.0001;

e61.. sqr(x30 + x36) - sqr(x12 - x6) - sqr(x24 - x18) =L= -0.0001;

e62.. sqr(x31 + x36) - sqr(x12 - x7) - sqr(x24 - x19) =L= -0.0001;

e63.. sqr(x32 + x36) - sqr(x12 - x8) - sqr(x24 - x20) =L= -0.0001;

e64.. sqr(x33 + x36) - sqr(x12 - x9) - sqr(x24 - x21) =L= -0.0001;

e65.. sqr(x34 + x36) - sqr(x12 - x10) - sqr(x24 - x22) =L= -0.0001;

e66.. sqr(x35 + x36) - sqr(x12 - x11) - sqr(x24 - x23) =L= -0.0001;

e67..  - x25 - x26 - x27 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x36
       + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x13.fx = 0; 
x14.fx = 0; 
x25.lo = 1; 
x26.lo = 1; 
x27.lo = 1; 
x28.lo = 1; 
x29.lo = 1; 
x30.lo = 1; 
x31.lo = 1; 
x32.lo = 1; 
x33.lo = 1; 
x34.lo = 1; 
x35.lo = 1; 
x36.lo = 1; 

* set non default levels

x2.l = 0.06; 
x3.l = 0.09; 
x4.l = 0.12; 
x5.l = 0.15; 
x6.l = 0.18; 
x7.l = 0.21; 
x8.l = 0.24; 
x9.l = 0.27; 
x10.l = 0.3; 
x11.l = 0.33; 
x12.l = 0.36; 
x15.l = 0.0166665; 
x16.l = 0.022222; 
x17.l = 0.0277775; 
x18.l = 0.033333; 
x19.l = 0.0388885; 
x20.l = 0.044444; 
x21.l = 0.0499995; 
x22.l = 0.055555; 
x23.l = 0.0611105; 
x24.l = 0.066666; 
x26.l = 2; 
x27.l = 3; 
x28.l = 4; 
x29.l = 5; 
x30.l = 6; 
x31.l = 7; 
x32.l = 8; 
x33.l = 9; 
x34.l = 10; 
x35.l = 11; 
x36.l = 12; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
