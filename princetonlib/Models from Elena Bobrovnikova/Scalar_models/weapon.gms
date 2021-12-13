*  NLP written by GAMS Convert at 06/26/06 16:29:40
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        1       12        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        101      101        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        201      136       65        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    x1 + x21 + x41 + x61 + x81 =G= 30;

e2..    x6 + x26 + x46 + x66 + x86 =G= 100;

e3..    x10 + x30 + x50 + x70 + x90 =G= 40;

e4..    x14 + x34 + x54 + x74 + x94 =G= 50;

e5..    x15 + x35 + x55 + x75 + x95 =G= 70;

e6..    x16 + x36 + x56 + x76 + x96 =G= 35;

e7..    x20 + x40 + x60 + x80 + x100 =G= 10;

e8..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 - x11 - x12 - x13
      - x14 - x15 - x16 - x17 - x18 - x19 - x20 =G= -200;

e9..  - x21 - x22 - x23 - x24 - x25 - x26 - x27 - x28 - x29 - x30 - x31 - x32
      - x33 - x34 - x35 - x36 - x37 - x38 - x39 - x40 =G= -100;

e10..  - x41 - x42 - x43 - x44 - x45 - x46 - x47 - x48 - x49 - x50 - x51 - x52
       - x53 - x54 - x55 - x56 - x57 - x58 - x59 - x60 =G= -300;

e11..  - x61 - x62 - x63 - x64 - x65 - x66 - x67 - x68 - x69 - x70 - x71 - x72
       - x73 - x74 - x75 - x76 - x77 - x78 - x79 - x80 =G= -150;

e12..  - x81 - x82 - x83 - x84 - x85 - x86 - x87 - x88 - x89 - x90 - x91 - x92
       - x93 - x94 - x95 - x96 - x97 - x98 - x99 - x100 =G= -250;

e13..  - (60*exp(-0.174353387144778*x21)*exp(-0.0408219945202552*x41)*exp(-
      0.083381608939051*x81) + 50*exp(-0.0512932943875506*x2)*exp(-
      0.186329578191493*x22)*exp(-0.0512932943875506*x42)*exp(-
      0.0618754037180875*x82) + 50*exp(-0.162518929497775*x23)*exp(-
      0.0408219945202552*x43)*exp(-0.083381608939051*x83) + 75*exp(-
      0.174353387144778*x24)*exp(-0.0408219945202552*x44)*exp(-
      0.0512932943875506*x84) + 40*exp(-0.162518929497775*x25)*exp(-
      0.0408219945202552*x45)*exp(-0.0512932943875506*x85) + 60*exp(-
      0.162518929497775*x6)*exp(-0.210721031315653*x26)*exp(-0.105360515657826*
      x46)*exp(-0.0202027073175195*x86) + 35*exp(-0.105360515657826*x7)*exp(-
      0.210721031315653*x27)*exp(-0.083381608939051*x47)*exp(-
      0.0202027073175195*x87) + 30*exp(-0.162518929497775*x8)*exp(-
      0.198450938723838*x28)*exp(-0.0943106794712413*x48) + 25*exp(-
      0.22314355131421*x9)*exp(-0.22314355131421*x29)*exp(-0.083381608939051*
      x49) + 150*exp(-0.150822889734584*x30)*exp(-0.0512932943875506*x50)*exp(-
      0.0408219945202552*x70)*exp(-0.105360515657826*x90) + 30*exp(-
      0.0100503358535015*x51)*exp(-0.0943106794712413*x71)*exp(-
      0.0512932943875506*x91) + 45*exp(-0.0202027073175195*x32)*exp(-
      0.0202027073175195*x52)*exp(-0.083381608939051*x72)*exp(-
      0.0408219945202552*x92) + 125*exp(-0.0100503358535015*x53)*exp(-
      0.0943106794712413*x73)*exp(-0.0943106794712413*x93) + 200*exp(-
      0.127833371509885*x34)*exp(-0.0202027073175195*x54)*exp(-
      0.083381608939051*x74)*exp(-0.0202027073175195*x94) + 200*exp(-
      0.139262067333508*x35)*exp(-0.0304592074847086*x55)*exp(-
      0.0202027073175195*x75)*exp(-0.0100503358535015*x95) + 130*exp(-
      0.127833371509885*x36)*exp(-0.0202027073175195*x56)*exp(-
      0.0725706928348354*x76)*exp(-0.0100503358535015*x96) + 100*exp(-
      0.162518929497775*x37)*exp(-0.0512932943875506*x57) + 100*exp(-
      0.0512932943875506*x18)*exp(-0.174353387144778*x38)*exp(-
      0.083381608939051*x58) + 100*exp(-0.162518929497775*x39)*exp(-
      0.0725706928348354*x59) + 150*exp(-0.162518929497775*x40)*exp(-
      0.083381608939051*x60)) + objvar =E= -1755;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;