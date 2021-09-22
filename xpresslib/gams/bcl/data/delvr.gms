*  LP written by GAMS Convert at 02/22/08 02:22:03
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         18        1        7       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         71       71        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        208      208        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18;


e1..    x1 + x8 + x15 + x22 + x29 + x36 + x43 + x50 + x57 + x64 =G= 192.8;

e2..    x2 + x9 + x16 + x23 + x30 + x37 + x44 + x51 + x58 + x65 =G= 123.3;

e3..    x3 + x10 + x17 + x24 + x31 + x38 + x45 + x52 + x59 + x66 =G= 56.4;

e4..    x4 + x11 + x18 + x25 + x32 + x39 + x46 + x53 + x60 + x67 =G= 17.1;

e5..    x5 + x12 + x19 + x26 + x33 + x40 + x47 + x54 + x61 + x68 =G= 310;

e6..    x6 + x13 + x20 + x27 + x34 + x41 + x48 + x55 + x62 + x69 =G= 47;

e7..    x7 + x14 + x21 + x28 + x35 + x42 + x49 + x56 + x63 + x70 =G= 86;

e8..    x1 + x2 + x3 + x4 + x5 + x6 + x7 =L= 140;

e9..    x8 + x9 + x10 + x11 + x12 + x13 + x14 =L= 600;

e10..    x15 + x16 + x17 + x18 + x19 + x20 + x21 =L= 50;

e11..    x22 + x23 + x24 + x25 + x26 + x27 + x28 =L= 10;

e12..    x29 + x30 + x31 + x32 + x33 + x34 + x35 =L= 400;

e13..    x36 + x37 + x38 + x39 + x40 + x41 + x42 =L= 200;

e14..    x43 + x44 + x45 + x46 + x47 + x48 + x49 =L= 20;

e15..    x50 + x51 + x52 + x53 + x54 + x55 + x56 =L= 90;

e16..    x57 + x58 + x59 + x60 + x61 + x62 + x63 =L= 30;

e17..    x64 + x65 + x66 + x67 + x68 + x69 + x70 =L= 12;

e18..  - 9.4*x1 - 6.3*x3 - 7.1*x4 - 8.2*x5 - 10.2*x6 - 3.1*x7 - 7.9*x8 - 3.4*x9
       - 8.8*x10 - 6.1*x11 - 3.2*x12 - 6.5*x13 - 8.1*x14 - 7.4*x15 - 14.2*x16
       - 13.5*x17 - 16.4*x18 - 8.5*x19 - 5.6*x20 - 9*x21 - 16.5*x22 - 15.6*x23
       - 22.4*x24 - 19.7*x25 - 17.1*x26 - 18.2*x27 - 31.2*x29 - 12.4*x30
       - 18.6*x31 - 26.3*x32 - 15.7*x33 - 21.4*x34 - 12.9*x35 - 16.4*x36
       - 37.3*x37 - 23.4*x38 - 18.6*x39 - 13.2*x40 - 19.1*x41 - 31*x42
       - 18.3*x43 - 14.5*x44 - 19.7*x45 - 21.6*x46 - 23.9*x47 - 28.4*x48
       - 23.7*x49 - 15.2*x50 - 19.6*x51 - 5.6*x52 - 12.9*x53 - 13.6*x55
       - 15.4*x56 - 22.5*x57 - 18.4*x58 - 9.3*x59 - 17.1*x60 - 26.3*x61
       - 28.5*x62 - 31.6*x63 - 17.1*x64 - 9.4*x65 - 18.2*x66 - 15.6*x67
       - 33.9*x68 - 5.3*x69 - 17*x70 + objvar =E= 0;

* set non default bounds

x1.up = 40; 
x2.up = 40; 
x3.up = 40; 
x10.up = 40; 
x11.up = 40; 
x12.up = 40; 
x13.up = 40; 
x64.up = 40; 
x65.up = 40; 
x66.up = 40; 
x67.up = 40; 
x68.up = 40; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
