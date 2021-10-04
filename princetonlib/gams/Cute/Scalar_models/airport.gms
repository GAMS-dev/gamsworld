*  NLP written by GAMS Convert at 10/06/06 11:14:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         43        1        0       42        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         85       85        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        169        1      168        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43;


e1.. sqr(6.3 + x1) + sqr((-8) + x43) =L= 0.09;

e2.. sqr(7.8 + x2) + sqr((-5.1) + x44) =L= 0.3;

e3.. sqr(9 + x3) + sqr((-2) + x45) =L= 0.09;

e4.. sqr(7.2 + x4) + sqr((-2.6) + x46) =L= 0.45;

e5.. sqr(5.7 + x5) + sqr((-5.5) + x47) =L= 0.5;

e6.. sqr(1.9 + x6) + sqr((-7.1) + x48) =L= 0.04;

e7.. sqr(3.5 + x7) + sqr((-5.9) + x49) =L= 0.1;

e8.. sqr(0.5 + x8) + sqr((-6.6) + x50) =L= 0.02;

e9.. sqr((-1.4) + x9) + sqr((-6.1) + x51) =L= 0.02;

e10.. sqr((-4) + x10) + sqr((-5.6) + x52) =L= 0.07;

e11.. sqr((-2.1) + x11) + sqr((-4.9) + x53) =L= 0.4;

e12.. sqr((-5.5) + x12) + sqr((-4.7) + x54) =L= 0.045;

e13.. sqr((-5.7) + x13) + sqr((-4.3) + x55) =L= 0.05;

e14.. sqr((-5.7) + x14) + sqr((-3.6) + x56) =L= 0.056;

e15.. sqr((-3.8) + x15) + sqr((-4.1) + x57) =L= 0.36;

e16.. sqr((-5.3) + x16) + sqr((-3) + x58) =L= 0.08;

e17.. sqr((-4.7) + x17) + sqr((-2.4) + x59) =L= 0.07;

e18.. sqr((-3.3) + x18) + sqr((-3) + x60) =L= 0.36;

e19.. sqr(x19) + sqr((-4.7) + x61) =L= 0.67;

e20.. sqr(1 + x20) + sqr((-3.4) + x62) =L= 0.38;

e21.. sqr(0.4 + x21) + sqr((-2.3) + x63) =L= 0.37;

e22.. sqr((-4.2) + x22) + sqr((-1.5) + x64) =L= 0.05;

e23.. sqr((-3.2) + x23) + sqr((-0.5) + x65) =L= 0.4;

e24.. sqr((-1.7) + x24) + sqr(1.7 + x66) =L= 0.66;

e25.. sqr((-3.3) + x25) + sqr(2 + x67) =L= 0.05;

e26.. sqr((-2) + x26) + sqr(3.1 + x68) =L= 0.07;

e27.. sqr((-0.7) + x27) + sqr(3.5 + x69) =L= 0.08;

e28.. sqr((-0.1) + x28) + sqr(2.4 + x70) =L= 0.3;

e29.. sqr(0.1 + x29) + sqr(1.3 + x71) =L= 0.31;

e30.. sqr(3.5 + x30) + sqr(x72) =L= 0.49;

e31.. sqr(4 + x31) + sqr(1.7 + x73) =L= 0.09;

e32.. sqr(2.7 + x32) + sqr(2.1 + x74) =L= 0.46;

e33.. sqr(0.5 + x33) + sqr(0.4 + x75) =L= 0.12;

e34.. sqr(2.9 + x34) + sqr(2.9 + x76) =L= 0.07;

e35.. sqr(1.2 + x35) + sqr(3.4 + x77) =L= 0.07;

e36.. sqr(0.4 + x36) + sqr(4.3 + x78) =L= 0.09;

e37.. sqr(0.1 + x37) + sqr(5.2 + x79) =L= 0.05;

e38.. sqr(1 + x38) + sqr(6.5 + x80) =L= 0.13;

e39.. sqr(1.7 + x39) + sqr(7.5 + x81) =L= 0.16;

e40.. sqr(2.1 + x40) + sqr(6.4 + x82) =L= 0.46;

e41.. sqr(1.8 + x41) + sqr(5.1 + x83) =L= 0.25;

e42.. sqr(x42) + sqr(x84) =L= 0.1;

e43..  - (sqr(x1 - x2) + sqr(x43 - x44) + sqr(x1 - x3) + sqr(x43 - x45) + sqr(
      x1 - x4) + sqr(x43 - x46) + sqr(x1 - x5) + sqr(x43 - x47) + sqr(x1 - x6)
       + sqr(x43 - x48) + sqr(x1 - x7) + sqr(x43 - x49) + sqr(x1 - x8) + sqr(
      x43 - x50) + sqr(x1 - x9) + sqr(x43 - x51) + sqr(x1 - x10) + sqr(x43 - 
      x52) + sqr(x1 - x11) + sqr(x43 - x53) + sqr(x1 - x12) + sqr(x43 - x54) + 
      sqr(x1 - x13) + sqr(x43 - x55) + sqr(x1 - x14) + sqr(x43 - x56) + sqr(x1
       - x15) + sqr(x43 - x57) + sqr(x1 - x16) + sqr(x43 - x58) + sqr(x1 - x17)
       + sqr(x43 - x59) + sqr(x1 - x18) + sqr(x43 - x60) + sqr(x1 - x19) + sqr(
      x43 - x61) + sqr(x1 - x20) + sqr(x43 - x62) + sqr(x1 - x21) + sqr(x43 - 
      x63) + sqr(x1 - x22) + sqr(x43 - x64) + sqr(x1 - x23) + sqr(x43 - x65) + 
      sqr(x1 - x24) + sqr(x43 - x66) + sqr(x1 - x25) + sqr(x43 - x67) + sqr(x1
       - x26) + sqr(x43 - x68) + sqr(x1 - x27) + sqr(x43 - x69) + sqr(x1 - x28)
       + sqr(x43 - x70) + sqr(x1 - x29) + sqr(x43 - x71) + sqr(x1 - x30) + sqr(
      x43 - x72) + sqr(x1 - x31) + sqr(x43 - x73) + sqr(x1 - x32) + sqr(x43 - 
      x74) + sqr(x1 - x33) + sqr(x43 - x75) + sqr(x1 - x34) + sqr(x43 - x76) + 
      sqr(x1 - x35) + sqr(x43 - x77) + sqr(x1 - x36) + sqr(x43 - x78) + sqr(x1
       - x37) + sqr(x43 - x79) + sqr(x1 - x38) + sqr(x43 - x80) + sqr(x1 - x39)
       + sqr(x43 - x81) + sqr(x1 - x40) + sqr(x43 - x82) + sqr(x1 - x41) + sqr(
      x43 - x83) + sqr(x1 - x42) + sqr(x43 - x84) + sqr(x2 - x3) + sqr(x44 - 
      x45) + sqr(x2 - x4) + sqr(x44 - x46) + sqr(x2 - x5) + sqr(x44 - x47) + 
      sqr(x2 - x6) + sqr(x44 - x48) + sqr(x2 - x7) + sqr(x44 - x49) + sqr(x2 - 
      x8) + sqr(x44 - x50) + sqr(x2 - x9) + sqr(x44 - x51) + sqr(x2 - x10) + 
      sqr(x44 - x52) + sqr(x2 - x11) + sqr(x44 - x53) + sqr(x2 - x12) + sqr(x44
       - x54) + sqr(x2 - x13) + sqr(x44 - x55) + sqr(x2 - x14) + sqr(x44 - x56)
       + sqr(x2 - x15) + sqr(x44 - x57) + sqr(x2 - x16) + sqr(x44 - x58) + sqr(
      x2 - x17) + sqr(x44 - x59) + sqr(x2 - x18) + sqr(x44 - x60) + sqr(x2 - 
      x19) + sqr(x44 - x61) + sqr(x2 - x20) + sqr(x44 - x62) + sqr(x2 - x21) + 
      sqr(x44 - x63) + sqr(x2 - x22) + sqr(x44 - x64) + sqr(x2 - x23) + sqr(x44
       - x65) + sqr(x2 - x24) + sqr(x44 - x66) + sqr(x2 - x25) + sqr(x44 - x67)
       + sqr(x2 - x26) + sqr(x44 - x68) + sqr(x2 - x27) + sqr(x44 - x69) + sqr(
      x2 - x28) + sqr(x44 - x70) + sqr(x2 - x29) + sqr(x44 - x71) + sqr(x2 - 
      x30) + sqr(x44 - x72) + sqr(x2 - x31) + sqr(x44 - x73) + sqr(x2 - x32) + 
      sqr(x44 - x74) + sqr(x2 - x33) + sqr(x44 - x75) + sqr(x2 - x34) + sqr(x44
       - x76) + sqr(x2 - x35) + sqr(x44 - x77) + sqr(x2 - x36) + sqr(x44 - x78)
       + sqr(x2 - x37) + sqr(x44 - x79) + sqr(x2 - x38) + sqr(x44 - x80) + sqr(
      x2 - x39) + sqr(x44 - x81) + sqr(x2 - x40) + sqr(x44 - x82) + sqr(x2 - 
      x41) + sqr(x44 - x83) + sqr(x2 - x42) + sqr(x44 - x84) + sqr(x3 - x4) + 
      sqr(x45 - x46) + sqr(x3 - x5) + sqr(x45 - x47) + sqr(x3 - x6) + sqr(x45
       - x48) + sqr(x3 - x7) + sqr(x45 - x49) + sqr(x3 - x8) + sqr(x45 - x50)
       + sqr(x3 - x9) + sqr(x45 - x51) + sqr(x3 - x10) + sqr(x45 - x52) + sqr(
      x3 - x11) + sqr(x45 - x53) + sqr(x3 - x12) + sqr(x45 - x54) + sqr(x3 - 
      x13) + sqr(x45 - x55) + sqr(x3 - x14) + sqr(x45 - x56) + sqr(x3 - x15) + 
      sqr(x45 - x57) + sqr(x3 - x16) + sqr(x45 - x58) + sqr(x3 - x17) + sqr(x45
       - x59) + sqr(x3 - x18) + sqr(x45 - x60) + sqr(x3 - x19) + sqr(x45 - x61)
       + sqr(x3 - x20) + sqr(x45 - x62) + sqr(x3 - x21) + sqr(x45 - x63) + sqr(
      x3 - x22) + sqr(x45 - x64) + sqr(x3 - x23) + sqr(x45 - x65) + sqr(x3 - 
      x24) + sqr(x45 - x66) + sqr(x3 - x25) + sqr(x45 - x67) + sqr(x3 - x26) + 
      sqr(x45 - x68) + sqr(x3 - x27) + sqr(x45 - x69) + sqr(x3 - x28) + sqr(x45
       - x70) + sqr(x3 - x29) + sqr(x45 - x71) + sqr(x3 - x30) + sqr(x45 - x72)
       + sqr(x3 - x31) + sqr(x45 - x73) + sqr(x3 - x32) + sqr(x45 - x74) + sqr(
      x3 - x33) + sqr(x45 - x75) + sqr(x3 - x34) + sqr(x45 - x76) + sqr(x3 - 
      x35) + sqr(x45 - x77) + sqr(x3 - x36) + sqr(x45 - x78) + sqr(x3 - x37) + 
      sqr(x45 - x79) + sqr(x3 - x38) + sqr(x45 - x80) + sqr(x3 - x39) + sqr(x45
       - x81) + sqr(x3 - x40) + sqr(x45 - x82) + sqr(x3 - x41) + sqr(x45 - x83)
       + sqr(x3 - x42) + sqr(x45 - x84) + sqr(x4 - x5) + sqr(x46 - x47) + sqr(
      x4 - x6) + sqr(x46 - x48) + sqr(x4 - x7) + sqr(x46 - x49) + sqr(x4 - x8)
       + sqr(x46 - x50) + sqr(x4 - x9) + sqr(x46 - x51) + sqr(x4 - x10) + sqr(
      x46 - x52) + sqr(x4 - x11) + sqr(x46 - x53) + sqr(x4 - x12) + sqr(x46 - 
      x54) + sqr(x4 - x13) + sqr(x46 - x55) + sqr(x4 - x14) + sqr(x46 - x56) + 
      sqr(x4 - x15) + sqr(x46 - x57) + sqr(x4 - x16) + sqr(x46 - x58) + sqr(x4
       - x17) + sqr(x46 - x59) + sqr(x4 - x18) + sqr(x46 - x60) + sqr(x4 - x19)
       + sqr(x46 - x61) + sqr(x4 - x20) + sqr(x46 - x62) + sqr(x4 - x21) + sqr(
      x46 - x63) + sqr(x4 - x22) + sqr(x46 - x64) + sqr(x4 - x23) + sqr(x46 - 
      x65) + sqr(x4 - x24) + sqr(x46 - x66) + sqr(x4 - x25) + sqr(x46 - x67) + 
      sqr(x4 - x26) + sqr(x46 - x68) + sqr(x4 - x27) + sqr(x46 - x69) + sqr(x4
       - x28) + sqr(x46 - x70) + sqr(x4 - x29) + sqr(x46 - x71) + sqr(x4 - x30)
       + sqr(x46 - x72) + sqr(x4 - x31) + sqr(x46 - x73) + sqr(x4 - x32) + sqr(
      x46 - x74) + sqr(x4 - x33) + sqr(x46 - x75) + sqr(x4 - x34) + sqr(x46 - 
      x76) + sqr(x4 - x35) + sqr(x46 - x77) + sqr(x4 - x36) + sqr(x46 - x78) + 
      sqr(x4 - x37) + sqr(x46 - x79) + sqr(x4 - x38) + sqr(x46 - x80) + sqr(x4
       - x39) + sqr(x46 - x81) + sqr(x4 - x40) + sqr(x46 - x82) + sqr(x4 - x41)
       + sqr(x46 - x83) + sqr(x4 - x42) + sqr(x46 - x84) + sqr(x5 - x6) + sqr(
      x47 - x48) + sqr(x5 - x7) + sqr(x47 - x49) + sqr(x5 - x8) + sqr(x47 - x50
      ) + sqr(x5 - x9) + sqr(x47 - x51) + sqr(x5 - x10) + sqr(x47 - x52) + sqr(
      x5 - x11) + sqr(x47 - x53) + sqr(x5 - x12) + sqr(x47 - x54) + sqr(x5 - 
      x13) + sqr(x47 - x55) + sqr(x5 - x14) + sqr(x47 - x56) + sqr(x5 - x15) + 
      sqr(x47 - x57) + sqr(x5 - x16) + sqr(x47 - x58) + sqr(x5 - x17) + sqr(x47
       - x59) + sqr(x5 - x18) + sqr(x47 - x60) + sqr(x5 - x19) + sqr(x47 - x61)
       + sqr(x5 - x20) + sqr(x47 - x62) + sqr(x5 - x21) + sqr(x47 - x63) + sqr(
      x5 - x22) + sqr(x47 - x64) + sqr(x5 - x23) + sqr(x47 - x65) + sqr(x5 - 
      x24) + sqr(x47 - x66) + sqr(x5 - x25) + sqr(x47 - x67) + sqr(x5 - x26) + 
      sqr(x47 - x68) + sqr(x5 - x27) + sqr(x47 - x69) + sqr(x5 - x28) + sqr(x47
       - x70) + sqr(x5 - x29) + sqr(x47 - x71) + sqr(x5 - x30) + sqr(x47 - x72)
       + sqr(x5 - x31) + sqr(x47 - x73) + sqr(x5 - x32) + sqr(x47 - x74) + sqr(
      x5 - x33) + sqr(x47 - x75) + sqr(x5 - x34) + sqr(x47 - x76) + sqr(x5 - 
      x35) + sqr(x47 - x77) + sqr(x5 - x36) + sqr(x47 - x78) + sqr(x5 - x37) + 
      sqr(x47 - x79) + sqr(x5 - x38) + sqr(x47 - x80) + sqr(x5 - x39) + sqr(x47
       - x81) + sqr(x5 - x40) + sqr(x47 - x82) + sqr(x5 - x41) + sqr(x47 - x83)
       + sqr(x5 - x42) + sqr(x47 - x84) + sqr(x6 - x7) + sqr(x48 - x49) + sqr(
      x6 - x8) + sqr(x48 - x50) + sqr(x6 - x9) + sqr(x48 - x51) + sqr(x6 - x10)
       + sqr(x48 - x52) + sqr(x6 - x11) + sqr(x48 - x53) + sqr(x6 - x12) + sqr(
      x48 - x54) + sqr(x6 - x13) + sqr(x48 - x55) + sqr(x6 - x14) + sqr(x48 - 
      x56) + sqr(x6 - x15) + sqr(x48 - x57) + sqr(x6 - x16) + sqr(x48 - x58) + 
      sqr(x6 - x17) + sqr(x48 - x59) + sqr(x6 - x18) + sqr(x48 - x60) + sqr(x6
       - x19) + sqr(x48 - x61) + sqr(x6 - x20) + sqr(x48 - x62) + sqr(x6 - x21)
       + sqr(x48 - x63) + sqr(x6 - x22) + sqr(x48 - x64) + sqr(x6 - x23) + sqr(
      x48 - x65) + sqr(x6 - x24) + sqr(x48 - x66) + sqr(x6 - x25) + sqr(x48 - 
      x67) + sqr(x6 - x26) + sqr(x48 - x68) + sqr(x6 - x27) + sqr(x48 - x69) + 
      sqr(x6 - x28) + sqr(x48 - x70) + sqr(x6 - x29) + sqr(x48 - x71) + sqr(x6
       - x30) + sqr(x48 - x72) + sqr(x6 - x31) + sqr(x48 - x73) + sqr(x6 - x32)
       + sqr(x48 - x74) + sqr(x6 - x33) + sqr(x48 - x75) + sqr(x6 - x34) + sqr(
      x48 - x76) + sqr(x6 - x35) + sqr(x48 - x77) + sqr(x6 - x36) + sqr(x48 - 
      x78) + sqr(x6 - x37) + sqr(x48 - x79) + sqr(x6 - x38) + sqr(x48 - x80) + 
      sqr(x6 - x39) + sqr(x48 - x81) + sqr(x6 - x40) + sqr(x48 - x82) + sqr(x6
       - x41) + sqr(x48 - x83) + sqr(x6 - x42) + sqr(x48 - x84) + sqr(x7 - x8)
       + sqr(x49 - x50) + sqr(x7 - x9) + sqr(x49 - x51) + sqr(x7 - x10) + sqr(
      x49 - x52) + sqr(x7 - x11) + sqr(x49 - x53) + sqr(x7 - x12) + sqr(x49 - 
      x54) + sqr(x7 - x13) + sqr(x49 - x55) + sqr(x7 - x14) + sqr(x49 - x56) + 
      sqr(x7 - x15) + sqr(x49 - x57) + sqr(x7 - x16) + sqr(x49 - x58) + sqr(x7
       - x17) + sqr(x49 - x59) + sqr(x7 - x18) + sqr(x49 - x60) + sqr(x7 - x19)
       + sqr(x49 - x61) + sqr(x7 - x20) + sqr(x49 - x62) + sqr(x7 - x21) + sqr(
      x49 - x63) + sqr(x7 - x22) + sqr(x49 - x64) + sqr(x7 - x23) + sqr(x49 - 
      x65) + sqr(x7 - x24) + sqr(x49 - x66) + sqr(x7 - x25) + sqr(x49 - x67) + 
      sqr(x7 - x26) + sqr(x49 - x68) + sqr(x7 - x27) + sqr(x49 - x69) + sqr(x7
       - x28) + sqr(x49 - x70) + sqr(x7 - x29) + sqr(x49 - x71) + sqr(x7 - x30)
       + sqr(x49 - x72) + sqr(x7 - x31) + sqr(x49 - x73) + sqr(x7 - x32) + sqr(
      x49 - x74) + sqr(x7 - x33) + sqr(x49 - x75) + sqr(x7 - x34) + sqr(x49 - 
      x76) + sqr(x7 - x35) + sqr(x49 - x77) + sqr(x7 - x36) + sqr(x49 - x78) + 
      sqr(x7 - x37) + sqr(x49 - x79) + sqr(x7 - x38) + sqr(x49 - x80) + sqr(x7
       - x39) + sqr(x49 - x81) + sqr(x7 - x40) + sqr(x49 - x82) + sqr(x7 - x41)
       + sqr(x49 - x83) + sqr(x7 - x42) + sqr(x49 - x84) + sqr(x8 - x9) + sqr(
      x50 - x51) + sqr(x8 - x10) + sqr(x50 - x52) + sqr(x8 - x11) + sqr(x50 - 
      x53) + sqr(x8 - x12) + sqr(x50 - x54) + sqr(x8 - x13) + sqr(x50 - x55) + 
      sqr(x8 - x14) + sqr(x50 - x56) + sqr(x8 - x15) + sqr(x50 - x57) + sqr(x8
       - x16) + sqr(x50 - x58) + sqr(x8 - x17) + sqr(x50 - x59) + sqr(x8 - x18)
       + sqr(x50 - x60) + sqr(x8 - x19) + sqr(x50 - x61) + sqr(x8 - x20) + sqr(
      x50 - x62) + sqr(x8 - x21) + sqr(x50 - x63) + sqr(x8 - x22) + sqr(x50 - 
      x64) + sqr(x8 - x23) + sqr(x50 - x65) + sqr(x8 - x24) + sqr(x50 - x66) + 
      sqr(x8 - x25) + sqr(x50 - x67) + sqr(x8 - x26) + sqr(x50 - x68) + sqr(x8
       - x27) + sqr(x50 - x69) + sqr(x8 - x28) + sqr(x50 - x70) + sqr(x8 - x29)
       + sqr(x50 - x71) + sqr(x8 - x30) + sqr(x50 - x72) + sqr(x8 - x31) + sqr(
      x50 - x73) + sqr(x8 - x32) + sqr(x50 - x74) + sqr(x8 - x33) + sqr(x50 - 
      x75) + sqr(x8 - x34) + sqr(x50 - x76) + sqr(x8 - x35) + sqr(x50 - x77) + 
      sqr(x8 - x36) + sqr(x50 - x78) + sqr(x8 - x37) + sqr(x50 - x79) + sqr(x8
       - x38) + sqr(x50 - x80) + sqr(x8 - x39) + sqr(x50 - x81) + sqr(x8 - x40)
       + sqr(x50 - x82) + sqr(x8 - x41) + sqr(x50 - x83) + sqr(x8 - x42) + sqr(
      x50 - x84) + sqr(x9 - x10) + sqr(x51 - x52) + sqr(x9 - x11) + sqr(x51 - 
      x53) + sqr(x9 - x12) + sqr(x51 - x54) + sqr(x9 - x13) + sqr(x51 - x55) + 
      sqr(x9 - x14) + sqr(x51 - x56) + sqr(x9 - x15) + sqr(x51 - x57) + sqr(x9
       - x16) + sqr(x51 - x58) + sqr(x9 - x17) + sqr(x51 - x59) + sqr(x9 - x18)
       + sqr(x51 - x60) + sqr(x9 - x19) + sqr(x51 - x61) + sqr(x9 - x20) + sqr(
      x51 - x62) + sqr(x9 - x21) + sqr(x51 - x63) + sqr(x9 - x22) + sqr(x51 - 
      x64) + sqr(x9 - x23) + sqr(x51 - x65) + sqr(x9 - x24) + sqr(x51 - x66) + 
      sqr(x9 - x25) + sqr(x51 - x67) + sqr(x9 - x26) + sqr(x51 - x68) + sqr(x9
       - x27) + sqr(x51 - x69) + sqr(x9 - x28) + sqr(x51 - x70) + sqr(x9 - x29)
       + sqr(x51 - x71) + sqr(x9 - x30) + sqr(x51 - x72) + sqr(x9 - x31) + sqr(
      x51 - x73) + sqr(x9 - x32) + sqr(x51 - x74) + sqr(x9 - x33) + sqr(x51 - 
      x75) + sqr(x9 - x34) + sqr(x51 - x76) + sqr(x9 - x35) + sqr(x51 - x77) + 
      sqr(x9 - x36) + sqr(x51 - x78) + sqr(x9 - x37) + sqr(x51 - x79) + sqr(x9
       - x38) + sqr(x51 - x80) + sqr(x9 - x39) + sqr(x51 - x81) + sqr(x9 - x40)
       + sqr(x51 - x82) + sqr(x9 - x41) + sqr(x51 - x83) + sqr(x9 - x42) + sqr(
      x51 - x84) + sqr(x10 - x11) + sqr(x52 - x53) + sqr(x10 - x12) + sqr(x52
       - x54) + sqr(x10 - x13) + sqr(x52 - x55) + sqr(x10 - x14) + sqr(x52 - 
      x56) + sqr(x10 - x15) + sqr(x52 - x57) + sqr(x10 - x16) + sqr(x52 - x58)
       + sqr(x10 - x17) + sqr(x52 - x59) + sqr(x10 - x18) + sqr(x52 - x60) + 
      sqr(x10 - x19) + sqr(x52 - x61) + sqr(x10 - x20) + sqr(x52 - x62) + sqr(
      x10 - x21) + sqr(x52 - x63) + sqr(x10 - x22) + sqr(x52 - x64) + sqr(x10
       - x23) + sqr(x52 - x65) + sqr(x10 - x24) + sqr(x52 - x66) + sqr(x10 - 
      x25) + sqr(x52 - x67) + sqr(x10 - x26) + sqr(x52 - x68) + sqr(x10 - x27)
       + sqr(x52 - x69) + sqr(x10 - x28) + sqr(x52 - x70) + sqr(x10 - x29) + 
      sqr(x52 - x71) + sqr(x10 - x30) + sqr(x52 - x72) + sqr(x10 - x31) + sqr(
      x52 - x73) + sqr(x10 - x32) + sqr(x52 - x74) + sqr(x10 - x33) + sqr(x52
       - x75) + sqr(x10 - x34) + sqr(x52 - x76) + sqr(x10 - x35) + sqr(x52 - 
      x77) + sqr(x10 - x36) + sqr(x52 - x78) + sqr(x10 - x37) + sqr(x52 - x79)
       + sqr(x10 - x38) + sqr(x52 - x80) + sqr(x10 - x39) + sqr(x52 - x81) + 
      sqr(x10 - x40) + sqr(x52 - x82) + sqr(x10 - x41) + sqr(x52 - x83) + sqr(
      x10 - x42) + sqr(x52 - x84) + sqr(x11 - x12) + sqr(x53 - x54) + sqr(x11
       - x13) + sqr(x53 - x55) + sqr(x11 - x14) + sqr(x53 - x56) + sqr(x11 - 
      x15) + sqr(x53 - x57) + sqr(x11 - x16) + sqr(x53 - x58) + sqr(x11 - x17)
       + sqr(x53 - x59) + sqr(x11 - x18) + sqr(x53 - x60) + sqr(x11 - x19) + 
      sqr(x53 - x61) + sqr(x11 - x20) + sqr(x53 - x62) + sqr(x11 - x21) + sqr(
      x53 - x63) + sqr(x11 - x22) + sqr(x53 - x64) + sqr(x11 - x23) + sqr(x53
       - x65) + sqr(x11 - x24) + sqr(x53 - x66) + sqr(x11 - x25) + sqr(x53 - 
      x67) + sqr(x11 - x26) + sqr(x53 - x68) + sqr(x11 - x27) + sqr(x53 - x69)
       + sqr(x11 - x28) + sqr(x53 - x70) + sqr(x11 - x29) + sqr(x53 - x71) + 
      sqr(x11 - x30) + sqr(x53 - x72) + sqr(x11 - x31) + sqr(x53 - x73) + sqr(
      x11 - x32) + sqr(x53 - x74) + sqr(x11 - x33) + sqr(x53 - x75) + sqr(x11
       - x34) + sqr(x53 - x76) + sqr(x11 - x35) + sqr(x53 - x77) + sqr(x11 - 
      x36) + sqr(x53 - x78) + sqr(x11 - x37) + sqr(x53 - x79) + sqr(x11 - x38)
       + sqr(x53 - x80) + sqr(x11 - x39) + sqr(x53 - x81) + sqr(x11 - x40) + 
      sqr(x53 - x82) + sqr(x11 - x41) + sqr(x53 - x83) + sqr(x11 - x42) + sqr(
      x53 - x84) + sqr(x12 - x13) + sqr(x54 - x55) + sqr(x12 - x14) + sqr(x54
       - x56) + sqr(x12 - x15) + sqr(x54 - x57) + sqr(x12 - x16) + sqr(x54 - 
      x58) + sqr(x12 - x17) + sqr(x54 - x59) + sqr(x12 - x18) + sqr(x54 - x60)
       + sqr(x12 - x19) + sqr(x54 - x61) + sqr(x12 - x20) + sqr(x54 - x62) + 
      sqr(x12 - x21) + sqr(x54 - x63) + sqr(x12 - x22) + sqr(x54 - x64) + sqr(
      x12 - x23) + sqr(x54 - x65) + sqr(x12 - x24) + sqr(x54 - x66) + sqr(x12
       - x25) + sqr(x54 - x67) + sqr(x12 - x26) + sqr(x54 - x68) + sqr(x12 - 
      x27) + sqr(x54 - x69) + sqr(x12 - x28) + sqr(x54 - x70) + sqr(x12 - x29)
       + sqr(x54 - x71) + sqr(x12 - x30) + sqr(x54 - x72) + sqr(x12 - x31) + 
      sqr(x54 - x73) + sqr(x12 - x32) + sqr(x54 - x74) + sqr(x12 - x33) + sqr(
      x54 - x75) + sqr(x12 - x34) + sqr(x54 - x76) + sqr(x12 - x35) + sqr(x54
       - x77) + sqr(x12 - x36) + sqr(x54 - x78) + sqr(x12 - x37) + sqr(x54 - 
      x79) + sqr(x12 - x38) + sqr(x54 - x80) + sqr(x12 - x39) + sqr(x54 - x81)
       + sqr(x12 - x40) + sqr(x54 - x82) + sqr(x12 - x41) + sqr(x54 - x83) + 
      sqr(x12 - x42) + sqr(x54 - x84) + sqr(x13 - x14) + sqr(x55 - x56) + sqr(
      x13 - x15) + sqr(x55 - x57) + sqr(x13 - x16) + sqr(x55 - x58) + sqr(x13
       - x17) + sqr(x55 - x59) + sqr(x13 - x18) + sqr(x55 - x60) + sqr(x13 - 
      x19) + sqr(x55 - x61) + sqr(x13 - x20) + sqr(x55 - x62) + sqr(x13 - x21)
       + sqr(x55 - x63) + sqr(x13 - x22) + sqr(x55 - x64) + sqr(x13 - x23) + 
      sqr(x55 - x65) + sqr(x13 - x24) + sqr(x55 - x66) + sqr(x13 - x25) + sqr(
      x55 - x67) + sqr(x13 - x26) + sqr(x55 - x68) + sqr(x13 - x27) + sqr(x55
       - x69) + sqr(x13 - x28) + sqr(x55 - x70) + sqr(x13 - x29) + sqr(x55 - 
      x71) + sqr(x13 - x30) + sqr(x55 - x72) + sqr(x13 - x31) + sqr(x55 - x73)
       + sqr(x13 - x32) + sqr(x55 - x74) + sqr(x13 - x33) + sqr(x55 - x75) + 
      sqr(x13 - x34) + sqr(x55 - x76) + sqr(x13 - x35) + sqr(x55 - x77) + sqr(
      x13 - x36) + sqr(x55 - x78) + sqr(x13 - x37) + sqr(x55 - x79) + sqr(x13
       - x38) + sqr(x55 - x80) + sqr(x13 - x39) + sqr(x55 - x81) + sqr(x13 - 
      x40) + sqr(x55 - x82) + sqr(x13 - x41) + sqr(x55 - x83) + sqr(x13 - x42)
       + sqr(x55 - x84) + sqr(x14 - x15) + sqr(x56 - x57) + sqr(x14 - x16) + 
      sqr(x56 - x58) + sqr(x14 - x17) + sqr(x56 - x59) + sqr(x14 - x18) + sqr(
      x56 - x60) + sqr(x14 - x19) + sqr(x56 - x61) + sqr(x14 - x20) + sqr(x56
       - x62) + sqr(x14 - x21) + sqr(x56 - x63) + sqr(x14 - x22) + sqr(x56 - 
      x64) + sqr(x14 - x23) + sqr(x56 - x65) + sqr(x14 - x24) + sqr(x56 - x66)
       + sqr(x14 - x25) + sqr(x56 - x67) + sqr(x14 - x26) + sqr(x56 - x68) + 
      sqr(x14 - x27) + sqr(x56 - x69) + sqr(x14 - x28) + sqr(x56 - x70) + sqr(
      x14 - x29) + sqr(x56 - x71) + sqr(x14 - x30) + sqr(x56 - x72) + sqr(x14
       - x31) + sqr(x56 - x73) + sqr(x14 - x32) + sqr(x56 - x74) + sqr(x14 - 
      x33) + sqr(x56 - x75) + sqr(x14 - x34) + sqr(x56 - x76) + sqr(x14 - x35)
       + sqr(x56 - x77) + sqr(x14 - x36) + sqr(x56 - x78) + sqr(x14 - x37) + 
      sqr(x56 - x79) + sqr(x14 - x38) + sqr(x56 - x80) + sqr(x14 - x39) + sqr(
      x56 - x81) + sqr(x14 - x40) + sqr(x56 - x82) + sqr(x14 - x41) + sqr(x56
       - x83) + sqr(x14 - x42) + sqr(x56 - x84) + sqr(x15 - x16) + sqr(x57 - 
      x58) + sqr(x15 - x17) + sqr(x57 - x59) + sqr(x15 - x18) + sqr(x57 - x60)
       + sqr(x15 - x19) + sqr(x57 - x61) + sqr(x15 - x20) + sqr(x57 - x62) + 
      sqr(x15 - x21) + sqr(x57 - x63) + sqr(x15 - x22) + sqr(x57 - x64) + sqr(
      x15 - x23) + sqr(x57 - x65) + sqr(x15 - x24) + sqr(x57 - x66) + sqr(x15
       - x25) + sqr(x57 - x67) + sqr(x15 - x26) + sqr(x57 - x68) + sqr(x15 - 
      x27) + sqr(x57 - x69) + sqr(x15 - x28) + sqr(x57 - x70) + sqr(x15 - x29)
       + sqr(x57 - x71) + sqr(x15 - x30) + sqr(x57 - x72) + sqr(x15 - x31) + 
      sqr(x57 - x73) + sqr(x15 - x32) + sqr(x57 - x74) + sqr(x15 - x33) + sqr(
      x57 - x75) + sqr(x15 - x34) + sqr(x57 - x76) + sqr(x15 - x35) + sqr(x57
       - x77) + sqr(x15 - x36) + sqr(x57 - x78) + sqr(x15 - x37) + sqr(x57 - 
      x79) + sqr(x15 - x38) + sqr(x57 - x80) + sqr(x15 - x39) + sqr(x57 - x81)
       + sqr(x15 - x40) + sqr(x57 - x82) + sqr(x15 - x41) + sqr(x57 - x83) + 
      sqr(x15 - x42) + sqr(x57 - x84) + sqr(x16 - x17) + sqr(x58 - x59) + sqr(
      x16 - x18) + sqr(x58 - x60) + sqr(x16 - x19) + sqr(x58 - x61) + sqr(x16
       - x20) + sqr(x58 - x62) + sqr(x16 - x21) + sqr(x58 - x63) + sqr(x16 - 
      x22) + sqr(x58 - x64) + sqr(x16 - x23) + sqr(x58 - x65) + sqr(x16 - x24)
       + sqr(x58 - x66) + sqr(x16 - x25) + sqr(x58 - x67) + sqr(x16 - x26) + 
      sqr(x58 - x68) + sqr(x16 - x27) + sqr(x58 - x69) + sqr(x16 - x28) + sqr(
      x58 - x70) + sqr(x16 - x29) + sqr(x58 - x71) + sqr(x16 - x30) + sqr(x58
       - x72) + sqr(x16 - x31) + sqr(x58 - x73) + sqr(x16 - x32) + sqr(x58 - 
      x74) + sqr(x16 - x33) + sqr(x58 - x75) + sqr(x16 - x34) + sqr(x58 - x76)
       + sqr(x16 - x35) + sqr(x58 - x77) + sqr(x16 - x36) + sqr(x58 - x78) + 
      sqr(x16 - x37) + sqr(x58 - x79) + sqr(x16 - x38) + sqr(x58 - x80) + sqr(
      x16 - x39) + sqr(x58 - x81) + sqr(x16 - x40) + sqr(x58 - x82) + sqr(x16
       - x41) + sqr(x58 - x83) + sqr(x16 - x42) + sqr(x58 - x84) + sqr(x17 - 
      x18) + sqr(x59 - x60) + sqr(x17 - x19) + sqr(x59 - x61) + sqr(x17 - x20)
       + sqr(x59 - x62) + sqr(x17 - x21) + sqr(x59 - x63) + sqr(x17 - x22) + 
      sqr(x59 - x64) + sqr(x17 - x23) + sqr(x59 - x65) + sqr(x17 - x24) + sqr(
      x59 - x66) + sqr(x17 - x25) + sqr(x59 - x67) + sqr(x17 - x26) + sqr(x59
       - x68) + sqr(x17 - x27) + sqr(x59 - x69) + sqr(x17 - x28) + sqr(x59 - 
      x70) + sqr(x17 - x29) + sqr(x59 - x71) + sqr(x17 - x30) + sqr(x59 - x72)
       + sqr(x17 - x31) + sqr(x59 - x73) + sqr(x17 - x32) + sqr(x59 - x74) + 
      sqr(x17 - x33) + sqr(x59 - x75) + sqr(x17 - x34) + sqr(x59 - x76) + sqr(
      x17 - x35) + sqr(x59 - x77) + sqr(x17 - x36) + sqr(x59 - x78) + sqr(x17
       - x37) + sqr(x59 - x79) + sqr(x17 - x38) + sqr(x59 - x80) + sqr(x17 - 
      x39) + sqr(x59 - x81) + sqr(x17 - x40) + sqr(x59 - x82) + sqr(x17 - x41)
       + sqr(x59 - x83) + sqr(x17 - x42) + sqr(x59 - x84) + sqr(x18 - x19) + 
      sqr(x60 - x61) + sqr(x18 - x20) + sqr(x60 - x62) + sqr(x18 - x21) + sqr(
      x60 - x63) + sqr(x18 - x22) + sqr(x60 - x64) + sqr(x18 - x23) + sqr(x60
       - x65) + sqr(x18 - x24) + sqr(x60 - x66) + sqr(x18 - x25) + sqr(x60 - 
      x67) + sqr(x18 - x26) + sqr(x60 - x68) + sqr(x18 - x27) + sqr(x60 - x69)
       + sqr(x18 - x28) + sqr(x60 - x70) + sqr(x18 - x29) + sqr(x60 - x71) + 
      sqr(x18 - x30) + sqr(x60 - x72) + sqr(x18 - x31) + sqr(x60 - x73) + sqr(
      x18 - x32) + sqr(x60 - x74) + sqr(x18 - x33) + sqr(x60 - x75) + sqr(x18
       - x34) + sqr(x60 - x76) + sqr(x18 - x35) + sqr(x60 - x77) + sqr(x18 - 
      x36) + sqr(x60 - x78) + sqr(x18 - x37) + sqr(x60 - x79) + sqr(x18 - x38)
       + sqr(x60 - x80) + sqr(x18 - x39) + sqr(x60 - x81) + sqr(x18 - x40) + 
      sqr(x60 - x82) + sqr(x18 - x41) + sqr(x60 - x83) + sqr(x18 - x42) + sqr(
      x60 - x84) + sqr(x19 - x20) + sqr(x61 - x62) + sqr(x19 - x21) + sqr(x61
       - x63) + sqr(x19 - x22) + sqr(x61 - x64) + sqr(x19 - x23) + sqr(x61 - 
      x65) + sqr(x19 - x24) + sqr(x61 - x66) + sqr(x19 - x25) + sqr(x61 - x67)
       + sqr(x19 - x26) + sqr(x61 - x68) + sqr(x19 - x27) + sqr(x61 - x69) + 
      sqr(x19 - x28) + sqr(x61 - x70) + sqr(x19 - x29) + sqr(x61 - x71) + sqr(
      x19 - x30) + sqr(x61 - x72) + sqr(x19 - x31) + sqr(x61 - x73) + sqr(x19
       - x32) + sqr(x61 - x74) + sqr(x19 - x33) + sqr(x61 - x75) + sqr(x19 - 
      x34) + sqr(x61 - x76) + sqr(x19 - x35) + sqr(x61 - x77) + sqr(x19 - x36)
       + sqr(x61 - x78) + sqr(x19 - x37) + sqr(x61 - x79) + sqr(x19 - x38) + 
      sqr(x61 - x80) + sqr(x19 - x39) + sqr(x61 - x81) + sqr(x19 - x40) + sqr(
      x61 - x82) + sqr(x19 - x41) + sqr(x61 - x83) + sqr(x19 - x42) + sqr(x61
       - x84) + sqr(x20 - x21) + sqr(x62 - x63) + sqr(x20 - x22) + sqr(x62 - 
      x64) + sqr(x20 - x23) + sqr(x62 - x65) + sqr(x20 - x24) + sqr(x62 - x66)
       + sqr(x20 - x25) + sqr(x62 - x67) + sqr(x20 - x26) + sqr(x62 - x68) + 
      sqr(x20 - x27) + sqr(x62 - x69) + sqr(x20 - x28) + sqr(x62 - x70) + sqr(
      x20 - x29) + sqr(x62 - x71) + sqr(x20 - x30) + sqr(x62 - x72) + sqr(x20
       - x31) + sqr(x62 - x73) + sqr(x20 - x32) + sqr(x62 - x74) + sqr(x20 - 
      x33) + sqr(x62 - x75) + sqr(x20 - x34) + sqr(x62 - x76) + sqr(x20 - x35)
       + sqr(x62 - x77) + sqr(x20 - x36) + sqr(x62 - x78) + sqr(x20 - x37) + 
      sqr(x62 - x79) + sqr(x20 - x38) + sqr(x62 - x80) + sqr(x20 - x39) + sqr(
      x62 - x81) + sqr(x20 - x40) + sqr(x62 - x82) + sqr(x20 - x41) + sqr(x62
       - x83) + sqr(x20 - x42) + sqr(x62 - x84) + sqr(x21 - x22) + sqr(x63 - 
      x64) + sqr(x21 - x23) + sqr(x63 - x65) + sqr(x21 - x24) + sqr(x63 - x66)
       + sqr(x21 - x25) + sqr(x63 - x67) + sqr(x21 - x26) + sqr(x63 - x68) + 
      sqr(x21 - x27) + sqr(x63 - x69) + sqr(x21 - x28) + sqr(x63 - x70) + sqr(
      x21 - x29) + sqr(x63 - x71) + sqr(x21 - x30) + sqr(x63 - x72) + sqr(x21
       - x31) + sqr(x63 - x73) + sqr(x21 - x32) + sqr(x63 - x74) + sqr(x21 - 
      x33) + sqr(x63 - x75) + sqr(x21 - x34) + sqr(x63 - x76) + sqr(x21 - x35)
       + sqr(x63 - x77) + sqr(x21 - x36) + sqr(x63 - x78) + sqr(x21 - x37) + 
      sqr(x63 - x79) + sqr(x21 - x38) + sqr(x63 - x80) + sqr(x21 - x39) + sqr(
      x63 - x81) + sqr(x21 - x40) + sqr(x63 - x82) + sqr(x21 - x41) + sqr(x63
       - x83) + sqr(x21 - x42) + sqr(x63 - x84) + sqr(x22 - x23) + sqr(x64 - 
      x65) + sqr(x22 - x24) + sqr(x64 - x66) + sqr(x22 - x25) + sqr(x64 - x67)
       + sqr(x22 - x26) + sqr(x64 - x68) + sqr(x22 - x27) + sqr(x64 - x69) + 
      sqr(x22 - x28) + sqr(x64 - x70) + sqr(x22 - x29) + sqr(x64 - x71) + sqr(
      x22 - x30) + sqr(x64 - x72) + sqr(x22 - x31) + sqr(x64 - x73) + sqr(x22
       - x32) + sqr(x64 - x74) + sqr(x22 - x33) + sqr(x64 - x75) + sqr(x22 - 
      x34) + sqr(x64 - x76) + sqr(x22 - x35) + sqr(x64 - x77) + sqr(x22 - x36)
       + sqr(x64 - x78) + sqr(x22 - x37) + sqr(x64 - x79) + sqr(x22 - x38) + 
      sqr(x64 - x80) + sqr(x22 - x39) + sqr(x64 - x81) + sqr(x22 - x40) + sqr(
      x64 - x82) + sqr(x22 - x41) + sqr(x64 - x83) + sqr(x22 - x42) + sqr(x64
       - x84) + sqr(x23 - x24) + sqr(x65 - x66) + sqr(x23 - x25) + sqr(x65 - 
      x67) + sqr(x23 - x26) + sqr(x65 - x68) + sqr(x23 - x27) + sqr(x65 - x69)
       + sqr(x23 - x28) + sqr(x65 - x70) + sqr(x23 - x29) + sqr(x65 - x71) + 
      sqr(x23 - x30) + sqr(x65 - x72) + sqr(x23 - x31) + sqr(x65 - x73) + sqr(
      x23 - x32) + sqr(x65 - x74) + sqr(x23 - x33) + sqr(x65 - x75) + sqr(x23
       - x34) + sqr(x65 - x76) + sqr(x23 - x35) + sqr(x65 - x77) + sqr(x23 - 
      x36) + sqr(x65 - x78) + sqr(x23 - x37) + sqr(x65 - x79) + sqr(x23 - x38)
       + sqr(x65 - x80) + sqr(x23 - x39) + sqr(x65 - x81) + sqr(x23 - x40) + 
      sqr(x65 - x82) + sqr(x23 - x41) + sqr(x65 - x83) + sqr(x23 - x42) + sqr(
      x65 - x84) + sqr(x24 - x25) + sqr(x66 - x67) + sqr(x24 - x26) + sqr(x66
       - x68) + sqr(x24 - x27) + sqr(x66 - x69) + sqr(x24 - x28) + sqr(x66 - 
      x70) + sqr(x24 - x29) + sqr(x66 - x71) + sqr(x24 - x30) + sqr(x66 - x72)
       + sqr(x24 - x31) + sqr(x66 - x73) + sqr(x24 - x32) + sqr(x66 - x74) + 
      sqr(x24 - x33) + sqr(x66 - x75) + sqr(x24 - x34) + sqr(x66 - x76) + sqr(
      x24 - x35) + sqr(x66 - x77) + sqr(x24 - x36) + sqr(x66 - x78) + sqr(x24
       - x37) + sqr(x66 - x79) + sqr(x24 - x38) + sqr(x66 - x80) + sqr(x24 - 
      x39) + sqr(x66 - x81) + sqr(x24 - x40) + sqr(x66 - x82) + sqr(x24 - x41)
       + sqr(x66 - x83) + sqr(x24 - x42) + sqr(x66 - x84) + sqr(x25 - x26) + 
      sqr(x67 - x68) + sqr(x25 - x27) + sqr(x67 - x69) + sqr(x25 - x28) + sqr(
      x67 - x70) + sqr(x25 - x29) + sqr(x67 - x71) + sqr(x25 - x30) + sqr(x67
       - x72) + sqr(x25 - x31) + sqr(x67 - x73) + sqr(x25 - x32) + sqr(x67 - 
      x74) + sqr(x25 - x33) + sqr(x67 - x75) + sqr(x25 - x34) + sqr(x67 - x76)
       + sqr(x25 - x35) + sqr(x67 - x77) + sqr(x25 - x36) + sqr(x67 - x78) + 
      sqr(x25 - x37) + sqr(x67 - x79) + sqr(x25 - x38) + sqr(x67 - x80) + sqr(
      x25 - x39) + sqr(x67 - x81) + sqr(x25 - x40) + sqr(x67 - x82) + sqr(x25
       - x41) + sqr(x67 - x83) + sqr(x25 - x42) + sqr(x67 - x84) + sqr(x26 - 
      x27) + sqr(x68 - x69) + sqr(x26 - x28) + sqr(x68 - x70) + sqr(x26 - x29)
       + sqr(x68 - x71) + sqr(x26 - x30) + sqr(x68 - x72) + sqr(x26 - x31) + 
      sqr(x68 - x73) + sqr(x26 - x32) + sqr(x68 - x74) + sqr(x26 - x33) + sqr(
      x68 - x75) + sqr(x26 - x34) + sqr(x68 - x76) + sqr(x26 - x35) + sqr(x68
       - x77) + sqr(x26 - x36) + sqr(x68 - x78) + sqr(x26 - x37) + sqr(x68 - 
      x79) + sqr(x26 - x38) + sqr(x68 - x80) + sqr(x26 - x39) + sqr(x68 - x81)
       + sqr(x26 - x40) + sqr(x68 - x82) + sqr(x26 - x41) + sqr(x68 - x83) + 
      sqr(x26 - x42) + sqr(x68 - x84) + sqr(x27 - x28) + sqr(x69 - x70) + sqr(
      x27 - x29) + sqr(x69 - x71) + sqr(x27 - x30) + sqr(x69 - x72) + sqr(x27
       - x31) + sqr(x69 - x73) + sqr(x27 - x32) + sqr(x69 - x74) + sqr(x27 - 
      x33) + sqr(x69 - x75) + sqr(x27 - x34) + sqr(x69 - x76) + sqr(x27 - x35)
       + sqr(x69 - x77) + sqr(x27 - x36) + sqr(x69 - x78) + sqr(x27 - x37) + 
      sqr(x69 - x79) + sqr(x27 - x38) + sqr(x69 - x80) + sqr(x27 - x39) + sqr(
      x69 - x81) + sqr(x27 - x40) + sqr(x69 - x82) + sqr(x27 - x41) + sqr(x69
       - x83) + sqr(x27 - x42) + sqr(x69 - x84) + sqr(x28 - x29) + sqr(x70 - 
      x71) + sqr(x28 - x30) + sqr(x70 - x72) + sqr(x28 - x31) + sqr(x70 - x73)
       + sqr(x28 - x32) + sqr(x70 - x74) + sqr(x28 - x33) + sqr(x70 - x75) + 
      sqr(x28 - x34) + sqr(x70 - x76) + sqr(x28 - x35) + sqr(x70 - x77) + sqr(
      x28 - x36) + sqr(x70 - x78) + sqr(x28 - x37) + sqr(x70 - x79) + sqr(x28
       - x38) + sqr(x70 - x80) + sqr(x28 - x39) + sqr(x70 - x81) + sqr(x28 - 
      x40) + sqr(x70 - x82) + sqr(x28 - x41) + sqr(x70 - x83) + sqr(x28 - x42)
       + sqr(x70 - x84) + sqr(x29 - x30) + sqr(x71 - x72) + sqr(x29 - x31) + 
      sqr(x71 - x73) + sqr(x29 - x32) + sqr(x71 - x74) + sqr(x29 - x33) + sqr(
      x71 - x75) + sqr(x29 - x34) + sqr(x71 - x76) + sqr(x29 - x35) + sqr(x71
       - x77) + sqr(x29 - x36) + sqr(x71 - x78) + sqr(x29 - x37) + sqr(x71 - 
      x79) + sqr(x29 - x38) + sqr(x71 - x80) + sqr(x29 - x39) + sqr(x71 - x81)
       + sqr(x29 - x40) + sqr(x71 - x82) + sqr(x29 - x41) + sqr(x71 - x83) + 
      sqr(x29 - x42) + sqr(x71 - x84) + sqr(x30 - x31) + sqr(x72 - x73) + sqr(
      x30 - x32) + sqr(x72 - x74) + sqr(x30 - x33) + sqr(x72 - x75) + sqr(x30
       - x34) + sqr(x72 - x76) + sqr(x30 - x35) + sqr(x72 - x77) + sqr(x30 - 
      x36) + sqr(x72 - x78) + sqr(x30 - x37) + sqr(x72 - x79) + sqr(x30 - x38)
       + sqr(x72 - x80) + sqr(x30 - x39) + sqr(x72 - x81) + sqr(x30 - x40) + 
      sqr(x72 - x82) + sqr(x30 - x41) + sqr(x72 - x83) + sqr(x30 - x42) + sqr(
      x72 - x84) + sqr(x31 - x32) + sqr(x73 - x74) + sqr(x31 - x33) + sqr(x73
       - x75) + sqr(x31 - x34) + sqr(x73 - x76) + sqr(x31 - x35) + sqr(x73 - 
      x77) + sqr(x31 - x36) + sqr(x73 - x78) + sqr(x31 - x37) + sqr(x73 - x79)
       + sqr(x31 - x38) + sqr(x73 - x80) + sqr(x31 - x39) + sqr(x73 - x81) + 
      sqr(x31 - x40) + sqr(x73 - x82) + sqr(x31 - x41) + sqr(x73 - x83) + sqr(
      x31 - x42) + sqr(x73 - x84) + sqr(x32 - x33) + sqr(x74 - x75) + sqr(x32
       - x34) + sqr(x74 - x76) + sqr(x32 - x35) + sqr(x74 - x77) + sqr(x32 - 
      x36) + sqr(x74 - x78) + sqr(x32 - x37) + sqr(x74 - x79) + sqr(x32 - x38)
       + sqr(x74 - x80) + sqr(x32 - x39) + sqr(x74 - x81) + sqr(x32 - x40) + 
      sqr(x74 - x82) + sqr(x32 - x41) + sqr(x74 - x83) + sqr(x32 - x42) + sqr(
      x74 - x84) + sqr(x33 - x34) + sqr(x75 - x76) + sqr(x33 - x35) + sqr(x75
       - x77) + sqr(x33 - x36) + sqr(x75 - x78) + sqr(x33 - x37) + sqr(x75 - 
      x79) + sqr(x33 - x38) + sqr(x75 - x80) + sqr(x33 - x39) + sqr(x75 - x81)
       + sqr(x33 - x40) + sqr(x75 - x82) + sqr(x33 - x41) + sqr(x75 - x83) + 
      sqr(x33 - x42) + sqr(x75 - x84) + sqr(x34 - x35) + sqr(x76 - x77) + sqr(
      x34 - x36) + sqr(x76 - x78) + sqr(x34 - x37) + sqr(x76 - x79) + sqr(x34
       - x38) + sqr(x76 - x80) + sqr(x34 - x39) + sqr(x76 - x81) + sqr(x34 - 
      x40) + sqr(x76 - x82) + sqr(x34 - x41) + sqr(x76 - x83) + sqr(x34 - x42)
       + sqr(x76 - x84) + sqr(x35 - x36) + sqr(x77 - x78) + sqr(x35 - x37) + 
      sqr(x77 - x79) + sqr(x35 - x38) + sqr(x77 - x80) + sqr(x35 - x39) + sqr(
      x77 - x81) + sqr(x35 - x40) + sqr(x77 - x82) + sqr(x35 - x41) + sqr(x77
       - x83) + sqr(x35 - x42) + sqr(x77 - x84) + sqr(x36 - x37) + sqr(x78 - 
      x79) + sqr(x36 - x38) + sqr(x78 - x80) + sqr(x36 - x39) + sqr(x78 - x81)
       + sqr(x36 - x40) + sqr(x78 - x82) + sqr(x36 - x41) + sqr(x78 - x83) + 
      sqr(x36 - x42) + sqr(x78 - x84) + sqr(x37 - x38) + sqr(x79 - x80) + sqr(
      x37 - x39) + sqr(x79 - x81) + sqr(x37 - x40) + sqr(x79 - x82) + sqr(x37
       - x41) + sqr(x79 - x83) + sqr(x37 - x42) + sqr(x79 - x84) + sqr(x38 - 
      x39) + sqr(x80 - x81) + sqr(x38 - x40) + sqr(x80 - x82) + sqr(x38 - x41)
       + sqr(x80 - x83) + sqr(x38 - x42) + sqr(x80 - x84) + sqr(x39 - x40) + 
      sqr(x81 - x82) + sqr(x39 - x41) + sqr(x81 - x83) + sqr(x39 - x42) + sqr(
      x81 - x84) + sqr(x40 - x41) + sqr(x82 - x83) + sqr(x40 - x42) + sqr(x82
       - x84) + sqr(x41 - x42) + sqr(x83 - x84)) + objvar =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10; 
x2.lo = -10; x2.up = 10; 
x3.lo = -10; x3.up = 10; 
x4.lo = -10; x4.up = 10; 
x5.lo = -10; x5.up = 10; 
x6.lo = -10; x6.up = 10; 
x7.lo = -10; x7.up = 10; 
x8.lo = -10; x8.up = 10; 
x9.lo = -10; x9.up = 10; 
x10.lo = -10; x10.up = 10; 
x11.lo = -10; x11.up = 10; 
x12.lo = -10; x12.up = 10; 
x13.lo = -10; x13.up = 10; 
x14.lo = -10; x14.up = 10; 
x15.lo = -10; x15.up = 10; 
x16.lo = -10; x16.up = 10; 
x17.lo = -10; x17.up = 10; 
x18.lo = -10; x18.up = 10; 
x19.lo = -10; x19.up = 10; 
x20.lo = -10; x20.up = 10; 
x21.lo = -10; x21.up = 10; 
x22.lo = -10; x22.up = 10; 
x23.lo = -10; x23.up = 10; 
x24.lo = -10; x24.up = 10; 
x25.lo = -10; x25.up = 10; 
x26.lo = -10; x26.up = 10; 
x27.lo = -10; x27.up = 10; 
x28.lo = -10; x28.up = 10; 
x29.lo = -10; x29.up = 10; 
x30.lo = -10; x30.up = 10; 
x31.lo = -10; x31.up = 10; 
x32.lo = -10; x32.up = 10; 
x33.lo = -10; x33.up = 10; 
x34.lo = -10; x34.up = 10; 
x35.lo = -10; x35.up = 10; 
x36.lo = -10; x36.up = 10; 
x37.lo = -10; x37.up = 10; 
x38.lo = -10; x38.up = 10; 
x39.lo = -10; x39.up = 10; 
x40.lo = -10; x40.up = 10; 
x41.lo = -10; x41.up = 10; 
x42.lo = -10; x42.up = 10; 
x43.lo = -10; x43.up = 10; 
x44.lo = -10; x44.up = 10; 
x45.lo = -10; x45.up = 10; 
x46.lo = -10; x46.up = 10; 
x47.lo = -10; x47.up = 10; 
x48.lo = -10; x48.up = 10; 
x49.lo = -10; x49.up = 10; 
x50.lo = -10; x50.up = 10; 
x51.lo = -10; x51.up = 10; 
x52.lo = -10; x52.up = 10; 
x53.lo = -10; x53.up = 10; 
x54.lo = -10; x54.up = 10; 
x55.lo = -10; x55.up = 10; 
x56.lo = -10; x56.up = 10; 
x57.lo = -10; x57.up = 10; 
x58.lo = -10; x58.up = 10; 
x59.lo = -10; x59.up = 10; 
x60.lo = -10; x60.up = 10; 
x61.lo = -10; x61.up = 10; 
x62.lo = -10; x62.up = 10; 
x63.lo = -10; x63.up = 10; 
x64.lo = -10; x64.up = 10; 
x65.lo = -10; x65.up = 10; 
x66.lo = -10; x66.up = 10; 
x67.lo = -10; x67.up = 10; 
x68.lo = -10; x68.up = 10; 
x69.lo = -10; x69.up = 10; 
x70.lo = -10; x70.up = 10; 
x71.lo = -10; x71.up = 10; 
x72.lo = -10; x72.up = 10; 
x73.lo = -10; x73.up = 10; 
x74.lo = -10; x74.up = 10; 
x75.lo = -10; x75.up = 10; 
x76.lo = -10; x76.up = 10; 
x77.lo = -10; x77.up = 10; 
x78.lo = -10; x78.up = 10; 
x79.lo = -10; x79.up = 10; 
x80.lo = -10; x80.up = 10; 
x81.lo = -10; x81.up = 10; 
x82.lo = -10; x82.up = 10; 
x83.lo = -10; x83.up = 10; 
x84.lo = -10; x84.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
