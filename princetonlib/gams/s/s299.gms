*  NLP written by GAMS Convert at 07/02/05 18:32:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        101      101        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        101        1      100        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,objvar;

Equations  e1;


e1..  - (100*sqr(x2 - sqr(x1)) + sqr(1 - x1) + 100*sqr(x3 - sqr(x2)) + sqr(1 - 
     x2) + 100*sqr(x4 - sqr(x3)) + sqr(1 - x3) + 100*sqr(x5 - sqr(x4)) + sqr(1
      - x4) + 100*sqr(x6 - sqr(x5)) + sqr(1 - x5) + 100*sqr(x7 - sqr(x6)) + 
     sqr(1 - x6) + 100*sqr(x8 - sqr(x7)) + sqr(1 - x7) + 100*sqr(x9 - sqr(x8))
      + sqr(1 - x8) + 100*sqr(x10 - sqr(x9)) + sqr(1 - x9) + 100*sqr(x11 - sqr(
     x10)) + sqr(1 - x10) + 100*sqr(x12 - sqr(x11)) + sqr(1 - x11) + 100*sqr(
     x13 - sqr(x12)) + sqr(1 - x12) + 100*sqr(x14 - sqr(x13)) + sqr(1 - x13) + 
     100*sqr(x15 - sqr(x14)) + sqr(1 - x14) + 100*sqr(x16 - sqr(x15)) + sqr(1
      - x15) + 100*sqr(x17 - sqr(x16)) + sqr(1 - x16) + 100*sqr(x18 - sqr(x17))
      + sqr(1 - x17) + 100*sqr(x19 - sqr(x18)) + sqr(1 - x18) + 100*sqr(x20 - 
     sqr(x19)) + sqr(1 - x19) + 100*sqr(x21 - sqr(x20)) + sqr(1 - x20) + 100*
     sqr(x22 - sqr(x21)) + sqr(1 - x21) + 100*sqr(x23 - sqr(x22)) + sqr(1 - x22
     ) + 100*sqr(x24 - sqr(x23)) + sqr(1 - x23) + 100*sqr(x25 - sqr(x24)) + 
     sqr(1 - x24) + 100*sqr(x26 - sqr(x25)) + sqr(1 - x25) + 100*sqr(x27 - sqr(
     x26)) + sqr(1 - x26) + 100*sqr(x28 - sqr(x27)) + sqr(1 - x27) + 100*sqr(
     x29 - sqr(x28)) + sqr(1 - x28) + 100*sqr(x30 - sqr(x29)) + sqr(1 - x29) + 
     100*sqr(x31 - sqr(x30)) + sqr(1 - x30) + 100*sqr(x32 - sqr(x31)) + sqr(1
      - x31) + 100*sqr(x33 - sqr(x32)) + sqr(1 - x32) + 100*sqr(x34 - sqr(x33))
      + sqr(1 - x33) + 100*sqr(x35 - sqr(x34)) + sqr(1 - x34) + 100*sqr(x36 - 
     sqr(x35)) + sqr(1 - x35) + 100*sqr(x37 - sqr(x36)) + sqr(1 - x36) + 100*
     sqr(x38 - sqr(x37)) + sqr(1 - x37) + 100*sqr(x39 - sqr(x38)) + sqr(1 - x38
     ) + 100*sqr(x40 - sqr(x39)) + sqr(1 - x39) + 100*sqr(x41 - sqr(x40)) + 
     sqr(1 - x40) + 100*sqr(x42 - sqr(x41)) + sqr(1 - x41) + 100*sqr(x43 - sqr(
     x42)) + sqr(1 - x42) + 100*sqr(x44 - sqr(x43)) + sqr(1 - x43) + 100*sqr(
     x45 - sqr(x44)) + sqr(1 - x44) + 100*sqr(x46 - sqr(x45)) + sqr(1 - x45) + 
     100*sqr(x47 - sqr(x46)) + sqr(1 - x46) + 100*sqr(x48 - sqr(x47)) + sqr(1
      - x47) + 100*sqr(x49 - sqr(x48)) + sqr(1 - x48) + 100*sqr(x50 - sqr(x49))
      + sqr(1 - x49) + 100*sqr(x51 - sqr(x50)) + sqr(1 - x50) + 100*sqr(x52 - 
     sqr(x51)) + sqr(1 - x51) + 100*sqr(x53 - sqr(x52)) + sqr(1 - x52) + 100*
     sqr(x54 - sqr(x53)) + sqr(1 - x53) + 100*sqr(x55 - sqr(x54)) + sqr(1 - x54
     ) + 100*sqr(x56 - sqr(x55)) + sqr(1 - x55) + 100*sqr(x57 - sqr(x56)) + 
     sqr(1 - x56) + 100*sqr(x58 - sqr(x57)) + sqr(1 - x57) + 100*sqr(x59 - sqr(
     x58)) + sqr(1 - x58) + 100*sqr(x60 - sqr(x59)) + sqr(1 - x59) + 100*sqr(
     x61 - sqr(x60)) + sqr(1 - x60) + 100*sqr(x62 - sqr(x61)) + sqr(1 - x61) + 
     100*sqr(x63 - sqr(x62)) + sqr(1 - x62) + 100*sqr(x64 - sqr(x63)) + sqr(1
      - x63) + 100*sqr(x65 - sqr(x64)) + sqr(1 - x64) + 100*sqr(x66 - sqr(x65))
      + sqr(1 - x65) + 100*sqr(x67 - sqr(x66)) + sqr(1 - x66) + 100*sqr(x68 - 
     sqr(x67)) + sqr(1 - x67) + 100*sqr(x69 - sqr(x68)) + sqr(1 - x68) + 100*
     sqr(x70 - sqr(x69)) + sqr(1 - x69) + 100*sqr(x71 - sqr(x70)) + sqr(1 - x70
     ) + 100*sqr(x72 - sqr(x71)) + sqr(1 - x71) + 100*sqr(x73 - sqr(x72)) + 
     sqr(1 - x72) + 100*sqr(x74 - sqr(x73)) + sqr(1 - x73) + 100*sqr(x75 - sqr(
     x74)) + sqr(1 - x74) + 100*sqr(x76 - sqr(x75)) + sqr(1 - x75) + 100*sqr(
     x77 - sqr(x76)) + sqr(1 - x76) + 100*sqr(x78 - sqr(x77)) + sqr(1 - x77) + 
     100*sqr(x79 - sqr(x78)) + sqr(1 - x78) + 100*sqr(x80 - sqr(x79)) + sqr(1
      - x79) + 100*sqr(x81 - sqr(x80)) + sqr(1 - x80) + 100*sqr(x82 - sqr(x81))
      + sqr(1 - x81) + 100*sqr(x83 - sqr(x82)) + sqr(1 - x82) + 100*sqr(x84 - 
     sqr(x83)) + sqr(1 - x83) + 100*sqr(x85 - sqr(x84)) + sqr(1 - x84) + 100*
     sqr(x86 - sqr(x85)) + sqr(1 - x85) + 100*sqr(x87 - sqr(x86)) + sqr(1 - x86
     ) + 100*sqr(x88 - sqr(x87)) + sqr(1 - x87) + 100*sqr(x89 - sqr(x88)) + 
     sqr(1 - x88) + 100*sqr(x90 - sqr(x89)) + sqr(1 - x89) + 100*sqr(x91 - sqr(
     x90)) + sqr(1 - x90) + 100*sqr(x92 - sqr(x91)) + sqr(1 - x91) + 100*sqr(
     x93 - sqr(x92)) + sqr(1 - x92) + 100*sqr(x94 - sqr(x93)) + sqr(1 - x93) + 
     100*sqr(x95 - sqr(x94)) + sqr(1 - x94) + 100*sqr(x96 - sqr(x95)) + sqr(1
      - x95) + 100*sqr(x97 - sqr(x96)) + sqr(1 - x96) + 100*sqr(x98 - sqr(x97))
      + sqr(1 - x97) + 100*sqr(x99 - sqr(x98)) + sqr(1 - x98) + 100*sqr(x100 - 
     sqr(x99)) + sqr(1 - x99)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1.2; 
x2.l = -1.2; 
x3.l = -1.2; 
x4.l = -1.2; 
x5.l = -1.2; 
x6.l = -1.2; 
x7.l = -1.2; 
x8.l = -1.2; 
x9.l = -1.2; 
x10.l = -1.2; 
x11.l = -1.2; 
x12.l = -1.2; 
x13.l = -1.2; 
x14.l = -1.2; 
x15.l = -1.2; 
x16.l = -1.2; 
x17.l = -1.2; 
x18.l = -1.2; 
x19.l = -1.2; 
x20.l = -1.2; 
x21.l = -1.2; 
x22.l = -1.2; 
x23.l = -1.2; 
x24.l = -1.2; 
x25.l = -1.2; 
x26.l = -1.2; 
x27.l = -1.2; 
x28.l = -1.2; 
x29.l = -1.2; 
x30.l = -1.2; 
x31.l = -1.2; 
x32.l = -1.2; 
x33.l = -1.2; 
x34.l = -1.2; 
x35.l = -1.2; 
x36.l = -1.2; 
x37.l = -1.2; 
x38.l = -1.2; 
x39.l = -1.2; 
x40.l = -1.2; 
x41.l = -1.2; 
x42.l = -1.2; 
x43.l = -1.2; 
x44.l = -1.2; 
x45.l = -1.2; 
x46.l = -1.2; 
x47.l = -1.2; 
x48.l = -1.2; 
x49.l = -1.2; 
x50.l = -1.2; 
x51.l = -1.2; 
x52.l = -1.2; 
x53.l = -1.2; 
x54.l = -1.2; 
x55.l = -1.2; 
x56.l = -1.2; 
x57.l = -1.2; 
x58.l = -1.2; 
x59.l = -1.2; 
x60.l = -1.2; 
x61.l = -1.2; 
x62.l = -1.2; 
x63.l = -1.2; 
x64.l = -1.2; 
x65.l = -1.2; 
x66.l = -1.2; 
x67.l = -1.2; 
x68.l = -1.2; 
x69.l = -1.2; 
x70.l = -1.2; 
x71.l = -1.2; 
x72.l = -1.2; 
x73.l = -1.2; 
x74.l = -1.2; 
x75.l = -1.2; 
x76.l = -1.2; 
x77.l = -1.2; 
x78.l = -1.2; 
x79.l = -1.2; 
x80.l = -1.2; 
x81.l = -1.2; 
x82.l = -1.2; 
x83.l = -1.2; 
x84.l = -1.2; 
x85.l = -1.2; 
x86.l = -1.2; 
x87.l = -1.2; 
x88.l = -1.2; 
x89.l = -1.2; 
x90.l = -1.2; 
x91.l = -1.2; 
x92.l = -1.2; 
x93.l = -1.2; 
x94.l = -1.2; 
x95.l = -1.2; 
x96.l = -1.2; 
x97.l = -1.2; 
x98.l = -1.2; 
x99.l = -1.2; 
x100.l = -1.2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
