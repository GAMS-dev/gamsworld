*  MIP written by GAMS Convert at 09/07/07 23:02:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        121       11       20       90        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         76       31       45        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        361      361        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,objvar;

Negative Variables  x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,x70,x71,x72,x73,x74,x75;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121;


e1..  - 618*b1 - x46 + x47 =L= -3;

e2..  - 396*b2 - x46 + x48 =L= -15;

e3..  - 330*b10 - x47 + x48 =L= -15;

e4..  - 407*b3 - x46 + x49 =L= -15;

e5..  - 341*b11 - x47 + x49 =L= -15;

e6..  - 440*b18 - x48 + x49 =L= -8;

e7..  - 441*b4 - x46 + x50 =L= -15;

e8..  - 375*b12 - x47 + x50 =L= -15;

e9..  - 474*b19 - x48 + x50 =L= -8;

e10..  - 467*b25 - x49 + x50 =L= -8;

e11..  - 462*b5 - x46 + x51 =L= -15;

e12..  - 396*b13 - x47 + x51 =L= -15;

e13..  - 495*b20 - x48 + x51 =L= -8;

e14..  - 488*b26 - x49 + x51 =L= -8;

e15..  - 474*b31 - x50 + x51 =L= -8;

e16..  - 463*b6 - x46 + x52 =L= -15;

e17..  - 397*b14 - x47 + x52 =L= -15;

e18..  - 496*b21 - x48 + x52 =L= -8;

e19..  - 489*b27 - x49 + x52 =L= -8;

e20..  - 475*b32 - x50 + x52 =L= -8;

e21..  - 465*b36 - x51 + x52 =L= -8;

e22..  - 459*b7 - x46 + x53 =L= -15;

e23..  - 393*b15 - x47 + x53 =L= -15;

e24..  - 492*b22 - x48 + x53 =L= -8;

e25..  - 485*b28 - x49 + x53 =L= -8;

e26..  - 471*b33 - x50 + x53 =L= -8;

e27..  - 461*b37 - x51 + x53 =L= -8;

e28..  - 457*b40 - x52 + x53 =L= -8;

e29..  - 477*b8 - x46 + x54 =L= -15;

e30..  - 411*b16 - x47 + x54 =L= -15;

e31..  - 510*b23 - x48 + x54 =L= -8;

e32..  - 503*b29 - x49 + x54 =L= -8;

e33..  - 489*b34 - x50 + x54 =L= -8;

e34..  - 479*b38 - x51 + x54 =L= -8;

e35..  - 475*b41 - x52 + x54 =L= -8;

e36..  - 473*b43 - x53 + x54 =L= -8;

e37..  - 543*b9 - x46 + x55 =L= -15;

e38..  - 477*b17 - x47 + x55 =L= -15;

e39..  - 576*b24 - x48 + x55 =L= -8;

e40..  - 569*b30 - x49 + x55 =L= -8;

e41..  - 555*b35 - x50 + x55 =L= -8;

e42..  - 545*b39 - x51 + x55 =L= -8;

e43..  - 541*b42 - x52 + x55 =L= -8;

e44..  - 539*b44 - x53 + x55 =L= -8;

e45..  - 530*b45 - x54 + x55 =L= -8;

e46..    367*b1 + x46 - x47 =L= 364;

e47..    485*b2 + x46 - x48 =L= 470;

e48..    478*b3 + x46 - x49 =L= 463;

e49..    464*b4 + x46 - x50 =L= 449;

e50..    454*b5 + x46 - x51 =L= 439;

e51..    450*b6 + x46 - x52 =L= 435;

e52..    448*b7 + x46 - x53 =L= 433;

e53..    439*b8 + x46 - x54 =L= 424;

e54..    414*b9 + x46 - x55 =L= 399;

e55..    670*b10 + x47 - x48 =L= 655;

e56..    663*b11 + x47 - x49 =L= 648;

e57..    649*b12 + x47 - x50 =L= 634;

e58..    639*b13 + x47 - x51 =L= 624;

e59..    635*b14 + x47 - x52 =L= 620;

e60..    633*b15 + x47 - x53 =L= 618;

e61..    624*b16 + x47 - x54 =L= 609;

e62..    599*b17 + x47 - x55 =L= 584;

e63..    422*b18 + x48 - x49 =L= 414;

e64..    408*b19 + x48 - x50 =L= 400;

e65..    398*b20 + x48 - x51 =L= 390;

e66..    394*b21 + x48 - x52 =L= 386;

e67..    392*b22 + x48 - x53 =L= 384;

e68..    383*b23 + x48 - x54 =L= 375;

e69..    358*b24 + x48 - x55 =L= 350;

e70..    419*b25 + x49 - x50 =L= 411;

e71..    409*b26 + x49 - x51 =L= 401;

e72..    405*b27 + x49 - x52 =L= 397;

e73..    403*b28 + x49 - x53 =L= 395;

e74..    394*b29 + x49 - x54 =L= 386;

e75..    369*b30 + x49 - x55 =L= 361;

e76..    443*b31 + x50 - x51 =L= 435;

e77..    439*b32 + x50 - x52 =L= 431;

e78..    437*b33 + x50 - x53 =L= 429;

e79..    428*b34 + x50 - x54 =L= 420;

e80..    403*b35 + x50 - x55 =L= 395;

e81..    460*b36 + x51 - x52 =L= 452;

e82..    458*b37 + x51 - x53 =L= 450;

e83..    449*b38 + x51 - x54 =L= 441;

e84..    424*b39 + x51 - x55 =L= 416;

e85..    459*b40 + x52 - x53 =L= 451;

e86..    450*b41 + x52 - x54 =L= 442;

e87..    425*b42 + x52 - x55 =L= 417;

e88..    446*b43 + x53 - x54 =L= 438;

e89..    421*b44 + x53 - x55 =L= 413;

e90..    439*b45 + x54 - x55 =L= 431;

e91..    x46 + x56 =G= 155;

e92..    x47 + x57 =G= 258;

e93..    x48 + x58 =G= 98;

e94..    x49 + x59 =G= 106;

e95..    x50 + x60 =G= 123;

e96..    x51 + x61 =G= 135;

e97..    x52 + x62 =G= 138;

e98..    x53 + x63 =G= 140;

e99..    x54 + x64 =G= 150;

e100..    x55 + x65 =G= 180;

e101..  - x46 + x66 =G= -155;

e102..  - x47 + x67 =G= -258;

e103..  - x48 + x68 =G= -98;

e104..  - x49 + x69 =G= -106;

e105..  - x50 + x70 =G= -123;

e106..  - x51 + x71 =G= -135;

e107..  - x52 + x72 =G= -138;

e108..  - x53 + x73 =G= -140;

e109..  - x54 + x74 =G= -150;

e110..  - x55 + x75 =G= -180;

e111..    x46 + x56 - x66 =E= 155;

e112..    x47 + x57 - x67 =E= 258;

e113..    x48 + x58 - x68 =E= 98;

e114..    x49 + x59 - x69 =E= 106;

e115..    x50 + x60 - x70 =E= 123;

e116..    x51 + x61 - x71 =E= 135;

e117..    x52 + x62 - x72 =E= 138;

e118..    x53 + x63 - x73 =E= 140;

e119..    x54 + x64 - x74 =E= 150;

e120..    x55 + x65 - x75 =E= 180;

e121..  - 10*x56 - 10*x57 - 30*x58 - 30*x59 - 30*x60 - 30*x61 - 30*x62 - 30*x63
        - 30*x64 - 30*x65 - 10*x66 - 10*x67 - 30*x68 - 30*x69 - 30*x70 - 30*x71
        - 30*x72 - 30*x73 - 30*x74 - 30*x75 + objvar =E= 0;

* set non default bounds

x46.lo = 129; x46.up = 559; 
x47.lo = 195; x47.up = 744; 
x48.lo = 89; x48.up = 510; 
x49.lo = 96; x49.up = 521; 
x50.lo = 110; x50.up = 555; 
x51.lo = 120; x51.up = 576; 
x52.lo = 124; x52.up = 577; 
x53.lo = 126; x53.up = 573; 
x54.lo = 135; x54.up = 591; 
x55.lo = 160; x55.up = 657; 
x56.up = 26; 
x57.up = 63; 
x58.up = 9; 
x59.up = 10; 
x60.up = 13; 
x61.up = 15; 
x62.up = 14; 
x63.up = 14; 
x64.up = 15; 
x65.up = 20; 
x66.up = 404; 
x67.up = 486; 
x68.up = 412; 
x69.up = 415; 
x70.up = 432; 
x71.up = 441; 
x72.up = 439; 
x73.up = 433; 
x74.up = 441; 
x75.up = 477; 

* set non default levels

x46.l = 129; 
x47.l = 195; 
x48.l = 89; 
x49.l = 96; 
x50.l = 110; 
x51.l = 120; 
x52.l = 124; 
x53.l = 126; 
x54.l = 135; 
x55.l = 160; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
