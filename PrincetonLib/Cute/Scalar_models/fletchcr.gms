*  NLP written by GAMS Convert at 10/06/06 11:32:07
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


e1..  - (100*sqr(1 + (-sqr(x1)) - x1 + x2) + 100*sqr(1 + (-sqr(x2)) - x2 + x3)
      + 100*sqr(1 + (-sqr(x3)) - x3 + x4) + 100*sqr(1 + (-sqr(x4)) - x4 + x5)
      + 100*sqr(1 + (-sqr(x5)) - x5 + x6) + 100*sqr(1 + (-sqr(x6)) - x6 + x7)
      + 100*sqr(1 + (-sqr(x7)) - x7 + x8) + 100*sqr(1 + (-sqr(x8)) - x8 + x9)
      + 100*sqr(1 + (-sqr(x9)) - x9 + x10) + 100*sqr(1 + (-sqr(x10)) - x10 + 
     x11) + 100*sqr(1 + (-sqr(x11)) - x11 + x12) + 100*sqr(1 + (-sqr(x12)) - 
     x12 + x13) + 100*sqr(1 + (-sqr(x13)) - x13 + x14) + 100*sqr(1 + (-sqr(x14)
     ) - x14 + x15) + 100*sqr(1 + (-sqr(x15)) - x15 + x16) + 100*sqr(1 + (-sqr(
     x16)) - x16 + x17) + 100*sqr(1 + (-sqr(x17)) - x17 + x18) + 100*sqr(1 + (-
     sqr(x18)) - x18 + x19) + 100*sqr(1 + (-sqr(x19)) - x19 + x20) + 100*sqr(1
      + (-sqr(x20)) - x20 + x21) + 100*sqr(1 + (-sqr(x21)) - x21 + x22) + 100*
     sqr(1 + (-sqr(x22)) - x22 + x23) + 100*sqr(1 + (-sqr(x23)) - x23 + x24) + 
     100*sqr(1 + (-sqr(x24)) - x24 + x25) + 100*sqr(1 + (-sqr(x25)) - x25 + x26
     ) + 100*sqr(1 + (-sqr(x26)) - x26 + x27) + 100*sqr(1 + (-sqr(x27)) - x27
      + x28) + 100*sqr(1 + (-sqr(x28)) - x28 + x29) + 100*sqr(1 + (-sqr(x29))
      - x29 + x30) + 100*sqr(1 + (-sqr(x30)) - x30 + x31) + 100*sqr(1 + (-sqr(
     x31)) - x31 + x32) + 100*sqr(1 + (-sqr(x32)) - x32 + x33) + 100*sqr(1 + (-
     sqr(x33)) - x33 + x34) + 100*sqr(1 + (-sqr(x34)) - x34 + x35) + 100*sqr(1
      + (-sqr(x35)) - x35 + x36) + 100*sqr(1 + (-sqr(x36)) - x36 + x37) + 100*
     sqr(1 + (-sqr(x37)) - x37 + x38) + 100*sqr(1 + (-sqr(x38)) - x38 + x39) + 
     100*sqr(1 + (-sqr(x39)) - x39 + x40) + 100*sqr(1 + (-sqr(x40)) - x40 + x41
     ) + 100*sqr(1 + (-sqr(x41)) - x41 + x42) + 100*sqr(1 + (-sqr(x42)) - x42
      + x43) + 100*sqr(1 + (-sqr(x43)) - x43 + x44) + 100*sqr(1 + (-sqr(x44))
      - x44 + x45) + 100*sqr(1 + (-sqr(x45)) - x45 + x46) + 100*sqr(1 + (-sqr(
     x46)) - x46 + x47) + 100*sqr(1 + (-sqr(x47)) - x47 + x48) + 100*sqr(1 + (-
     sqr(x48)) - x48 + x49) + 100*sqr(1 + (-sqr(x49)) - x49 + x50) + 100*sqr(1
      + (-sqr(x50)) - x50 + x51) + 100*sqr(1 + (-sqr(x51)) - x51 + x52) + 100*
     sqr(1 + (-sqr(x52)) - x52 + x53) + 100*sqr(1 + (-sqr(x53)) - x53 + x54) + 
     100*sqr(1 + (-sqr(x54)) - x54 + x55) + 100*sqr(1 + (-sqr(x55)) - x55 + x56
     ) + 100*sqr(1 + (-sqr(x56)) - x56 + x57) + 100*sqr(1 + (-sqr(x57)) - x57
      + x58) + 100*sqr(1 + (-sqr(x58)) - x58 + x59) + 100*sqr(1 + (-sqr(x59))
      - x59 + x60) + 100*sqr(1 + (-sqr(x60)) - x60 + x61) + 100*sqr(1 + (-sqr(
     x61)) - x61 + x62) + 100*sqr(1 + (-sqr(x62)) - x62 + x63) + 100*sqr(1 + (-
     sqr(x63)) - x63 + x64) + 100*sqr(1 + (-sqr(x64)) - x64 + x65) + 100*sqr(1
      + (-sqr(x65)) - x65 + x66) + 100*sqr(1 + (-sqr(x66)) - x66 + x67) + 100*
     sqr(1 + (-sqr(x67)) - x67 + x68) + 100*sqr(1 + (-sqr(x68)) - x68 + x69) + 
     100*sqr(1 + (-sqr(x69)) - x69 + x70) + 100*sqr(1 + (-sqr(x70)) - x70 + x71
     ) + 100*sqr(1 + (-sqr(x71)) - x71 + x72) + 100*sqr(1 + (-sqr(x72)) - x72
      + x73) + 100*sqr(1 + (-sqr(x73)) - x73 + x74) + 100*sqr(1 + (-sqr(x74))
      - x74 + x75) + 100*sqr(1 + (-sqr(x75)) - x75 + x76) + 100*sqr(1 + (-sqr(
     x76)) - x76 + x77) + 100*sqr(1 + (-sqr(x77)) - x77 + x78) + 100*sqr(1 + (-
     sqr(x78)) - x78 + x79) + 100*sqr(1 + (-sqr(x79)) - x79 + x80) + 100*sqr(1
      + (-sqr(x80)) - x80 + x81) + 100*sqr(1 + (-sqr(x81)) - x81 + x82) + 100*
     sqr(1 + (-sqr(x82)) - x82 + x83) + 100*sqr(1 + (-sqr(x83)) - x83 + x84) + 
     100*sqr(1 + (-sqr(x84)) - x84 + x85) + 100*sqr(1 + (-sqr(x85)) - x85 + x86
     ) + 100*sqr(1 + (-sqr(x86)) - x86 + x87) + 100*sqr(1 + (-sqr(x87)) - x87
      + x88) + 100*sqr(1 + (-sqr(x88)) - x88 + x89) + 100*sqr(1 + (-sqr(x89))
      - x89 + x90) + 100*sqr(1 + (-sqr(x90)) - x90 + x91) + 100*sqr(1 + (-sqr(
     x91)) - x91 + x92) + 100*sqr(1 + (-sqr(x92)) - x92 + x93) + 100*sqr(1 + (-
     sqr(x93)) - x93 + x94) + 100*sqr(1 + (-sqr(x94)) - x94 + x95) + 100*sqr(1
      + (-sqr(x95)) - x95 + x96) + 100*sqr(1 + (-sqr(x96)) - x96 + x97) + 100*
     sqr(1 + (-sqr(x97)) - x97 + x98) + 100*sqr(1 + (-sqr(x98)) - x98 + x99) + 
     100*sqr(1 + (-sqr(x99)) - x99 + x100)) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
