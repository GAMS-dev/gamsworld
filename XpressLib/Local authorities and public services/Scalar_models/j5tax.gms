*  MIP written by GAMS Convert at 10/23/07 22:15:57
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        158       13        0      145        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        157        1      156        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        577      577        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114,b115,b116
          ,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127,b128,b129
          ,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140,b141,b142
          ,b143,b144,b145,b146,b147,b148,b149,b150,b151,b152,b153,b154,b155
          ,b156,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51
          ,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68
          ,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85
          ,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101
          ,b102,b103,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114
          ,b115,b116,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127
          ,b128,b129,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140
          ,b141,b142,b143,b144,b145,b146,b147,b148,b149,b150,b151,b152,b153
          ,b154,b155,b156;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138,e139,e140,e141,e142
          ,e143,e144,e145,e146,e147,e148,e149,e150,e151,e152,e153,e154,e155
          ,e156,e157,e158;


e1..    b13 + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24
      =E= 1;

e2..    b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36
      =E= 1;

e3..    b37 + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48
      =E= 1;

e4..    b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60
      =E= 1;

e5..    b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71 + b72
      =E= 1;

e6..    b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 + b81 + b82 + b83 + b84
      =E= 1;

e7..    b85 + b86 + b87 + b88 + b89 + b90 + b91 + b92 + b93 + b94 + b95 + b96
      =E= 1;

e8..    b97 + b98 + b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106 + b107
      + b108 =E= 1;

e9..    b109 + b110 + b111 + b112 + b113 + b114 + b115 + b116 + b117 + b118
      + b119 + b120 =E= 1;

e10..    b121 + b122 + b123 + b124 + b125 + b126 + b127 + b128 + b129 + b130
       + b131 + b132 =E= 1;

e11..    b133 + b134 + b135 + b136 + b137 + b138 + b139 + b140 + b141 + b142
       + b143 + b144 =E= 1;

e12..    b145 + b146 + b147 + b148 + b149 + b150 + b151 + b152 + b153 + b154
       + b155 + b156 =E= 1;

e13..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 =L= 3;

e14..  - b1 + b13 =L= 0;

e15..  - b2 + b14 =L= 0;

e16..  - b3 + b15 =L= 0;

e17..  - b4 + b16 =L= 0;

e18..  - b5 + b17 =L= 0;

e19..  - b6 + b18 =L= 0;

e20..  - b7 + b19 =L= 0;

e21..  - b8 + b20 =L= 0;

e22..  - b9 + b21 =L= 0;

e23..  - b10 + b22 =L= 0;

e24..  - b11 + b23 =L= 0;

e25..  - b12 + b24 =L= 0;

e26..  - b1 + b25 =L= 0;

e27..  - b2 + b26 =L= 0;

e28..  - b3 + b27 =L= 0;

e29..  - b4 + b28 =L= 0;

e30..  - b5 + b29 =L= 0;

e31..  - b6 + b30 =L= 0;

e32..  - b7 + b31 =L= 0;

e33..  - b8 + b32 =L= 0;

e34..  - b9 + b33 =L= 0;

e35..  - b10 + b34 =L= 0;

e36..  - b11 + b35 =L= 0;

e37..  - b12 + b36 =L= 0;

e38..  - b1 + b37 =L= 0;

e39..  - b2 + b38 =L= 0;

e40..  - b3 + b39 =L= 0;

e41..  - b4 + b40 =L= 0;

e42..  - b5 + b41 =L= 0;

e43..  - b6 + b42 =L= 0;

e44..  - b7 + b43 =L= 0;

e45..  - b8 + b44 =L= 0;

e46..  - b9 + b45 =L= 0;

e47..  - b10 + b46 =L= 0;

e48..  - b11 + b47 =L= 0;

e49..  - b12 + b48 =L= 0;

e50..  - b1 + b49 =L= 0;

e51..  - b2 + b50 =L= 0;

e52..  - b3 + b51 =L= 0;

e53..  - b4 + b52 =L= 0;

e54..  - b5 + b53 =L= 0;

e55..  - b6 + b54 =L= 0;

e56..  - b7 + b55 =L= 0;

e57..  - b8 + b56 =L= 0;

e58..  - b9 + b57 =L= 0;

e59..  - b10 + b58 =L= 0;

e60..  - b11 + b59 =L= 0;

e61..  - b12 + b60 =L= 0;

e62..  - b1 + b61 =L= 0;

e63..  - b2 + b62 =L= 0;

e64..  - b3 + b63 =L= 0;

e65..  - b4 + b64 =L= 0;

e66..  - b5 + b65 =L= 0;

e67..  - b6 + b66 =L= 0;

e68..  - b7 + b67 =L= 0;

e69..  - b8 + b68 =L= 0;

e70..  - b9 + b69 =L= 0;

e71..  - b10 + b70 =L= 0;

e72..  - b11 + b71 =L= 0;

e73..  - b12 + b72 =L= 0;

e74..  - b1 + b73 =L= 0;

e75..  - b2 + b74 =L= 0;

e76..  - b3 + b75 =L= 0;

e77..  - b4 + b76 =L= 0;

e78..  - b5 + b77 =L= 0;

e79..  - b6 + b78 =L= 0;

e80..  - b7 + b79 =L= 0;

e81..  - b8 + b80 =L= 0;

e82..  - b9 + b81 =L= 0;

e83..  - b10 + b82 =L= 0;

e84..  - b11 + b83 =L= 0;

e85..  - b12 + b84 =L= 0;

e86..  - b1 + b85 =L= 0;

e87..  - b2 + b86 =L= 0;

e88..  - b3 + b87 =L= 0;

e89..  - b4 + b88 =L= 0;

e90..  - b5 + b89 =L= 0;

e91..  - b6 + b90 =L= 0;

e92..  - b7 + b91 =L= 0;

e93..  - b8 + b92 =L= 0;

e94..  - b9 + b93 =L= 0;

e95..  - b10 + b94 =L= 0;

e96..  - b11 + b95 =L= 0;

e97..  - b12 + b96 =L= 0;

e98..  - b1 + b97 =L= 0;

e99..  - b2 + b98 =L= 0;

e100..  - b3 + b99 =L= 0;

e101..  - b4 + b100 =L= 0;

e102..  - b5 + b101 =L= 0;

e103..  - b6 + b102 =L= 0;

e104..  - b7 + b103 =L= 0;

e105..  - b8 + b104 =L= 0;

e106..  - b9 + b105 =L= 0;

e107..  - b10 + b106 =L= 0;

e108..  - b11 + b107 =L= 0;

e109..  - b12 + b108 =L= 0;

e110..  - b1 + b109 =L= 0;

e111..  - b2 + b110 =L= 0;

e112..  - b3 + b111 =L= 0;

e113..  - b4 + b112 =L= 0;

e114..  - b5 + b113 =L= 0;

e115..  - b6 + b114 =L= 0;

e116..  - b7 + b115 =L= 0;

e117..  - b8 + b116 =L= 0;

e118..  - b9 + b117 =L= 0;

e119..  - b10 + b118 =L= 0;

e120..  - b11 + b119 =L= 0;

e121..  - b12 + b120 =L= 0;

e122..  - b1 + b121 =L= 0;

e123..  - b2 + b122 =L= 0;

e124..  - b3 + b123 =L= 0;

e125..  - b4 + b124 =L= 0;

e126..  - b5 + b125 =L= 0;

e127..  - b6 + b126 =L= 0;

e128..  - b7 + b127 =L= 0;

e129..  - b8 + b128 =L= 0;

e130..  - b9 + b129 =L= 0;

e131..  - b10 + b130 =L= 0;

e132..  - b11 + b131 =L= 0;

e133..  - b12 + b132 =L= 0;

e134..  - b1 + b133 =L= 0;

e135..  - b2 + b134 =L= 0;

e136..  - b3 + b135 =L= 0;

e137..  - b4 + b136 =L= 0;

e138..  - b5 + b137 =L= 0;

e139..  - b6 + b138 =L= 0;

e140..  - b7 + b139 =L= 0;

e141..  - b8 + b140 =L= 0;

e142..  - b9 + b141 =L= 0;

e143..  - b10 + b142 =L= 0;

e144..  - b11 + b143 =L= 0;

e145..  - b12 + b144 =L= 0;

e146..  - b1 + b145 =L= 0;

e147..  - b2 + b146 =L= 0;

e148..  - b3 + b147 =L= 0;

e149..  - b4 + b148 =L= 0;

e150..  - b5 + b149 =L= 0;

e151..  - b6 + b150 =L= 0;

e152..  - b7 + b151 =L= 0;

e153..  - b8 + b152 =L= 0;

e154..  - b9 + b153 =L= 0;

e155..  - b10 + b154 =L= 0;

e156..  - b11 + b155 =L= 0;

e157..  - b12 + b156 =L= 0;

e158..  - 225*b14 - 555*b15 - 825*b16 - 360*b17 - 900*b18 - 270*b19 - 495*b20
        - 720*b21 - 600*b22 - 870*b23 - 1005*b24 - 150*b25 - 220*b27 - 400*b28
        - 380*b29 - 520*b30 - 330*b31 - 480*b32 - 420*b33 - 550*b34 - 610*b35
        - 610*b36 - 444*b37 - 264*b38 - 216*b40 - 192*b41 - 360*b42 - 516*b43
        - 336*b44 - 240*b45 - 696*b46 - 468*b47 - 468*b48 - 990*b49 - 720*b50
        - 324*b51 - 612*b53 - 216*b54 - 1098*b55 - 828*b56 - 432*b57 - 1116*b58
        - 774*b59 - 612*b60 - 120*b61 - 190*b62 - 80*b63 - 170*b64 - 180*b66
        - 135*b67 - 60*b68 - 120*b69 - 245*b70 - 185*b71 - 215*b72 - 1440*b73
        - 1248*b74 - 720*b75 - 288*b76 - 864*b77 - 1368*b79 - 1008*b80
        - 288*b81 - 1200*b82 - 744*b83 - 528*b84 - 198*b85 - 363*b86 - 473*b87
        - 671*b88 - 297*b89 - 627*b90 - 165*b92 - 495*b93 - 242*b94 - 440*b95
        - 671*b96 - 528*b97 - 768*b98 - 448*b99 - 736*b100 - 192*b101
        - 672*b102 - 240*b103 - 480*b105 - 592*b106 - 400*b107 - 736*b108
        - 624*b109 - 546*b110 - 260*b111 - 312*b112 - 312*b113 - 156*b114
        - 585*b115 - 390*b116 - 494*b118 - 247*b119 - 247*b120 - 880*b121
        - 1210*b122 - 1276*b123 - 1364*b124 - 1078*b125 - 1100*b126 - 484*b127
        - 814*b128 - 836*b129 - 418*b131 - 880*b132 - 1102*b133 - 1159*b134
        - 741*b135 - 817*b136 - 703*b137 - 589*b138 - 760*b139 - 475*b140
        - 361*b141 - 361*b142 - 399*b144 - 1340*b145 - 1220*b146 - 780*b147
        - 680*b148 - 860*b149 - 440*b150 - 1220*b151 - 920*b152 - 380*b153
        - 800*b154 - 420*b155 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
