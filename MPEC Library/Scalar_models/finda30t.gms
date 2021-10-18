*  MPEC written by GAMS Convert at 11/14/01 10:42:16
*  
*  Equation counts
*     Total       E       G       L       N       X
*       229      77     126      26       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       211     211       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       877     677     200       0
*
*  Solve m using MPEC minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,objvar,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207
          ,x208,x209,x210,x211;

Positive Variables x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87,x88,x89,x90,x91
          ,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103,x104,x105,x106
          ,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116,x117,x118,x119
          ,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129,x130,x131,x132
          ,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142,x143,x144,x145
          ,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155,x156,x157,x158
          ,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168,x169,x170,x171
          ,x172,x173,x174,x175,x176,x180,x182,x184,x186,x187,x188,x189,x190
          ,x191,x192,x193,x194,x195,x196,x197,x198,x199,x200,x201,x202,x203
          ,x204,x205,x206,x207,x208,x209,x210,x211;

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
          ,e156,e157,e158,e159,e160,e161,e162,e163,e164,e165,e166,e167,e168
          ,e169,e170,e171,e172,e173,e174,e175,e176,e177,e178,e179,e180,e181
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191,e192,e193,e194
          ,e195,e196,e197,e198,e199,e200,e201,e202,e203,e204,e205,e206,e207
          ,e208,e209,e210,e211,e212,e213,e214,e215,e216,e217,e218,e219,e220
          ,e221,e222,e223,e224,e225,e226,e227,e228,e229;


e1..  - 0.03125*x27 + x51 =E= 0;

e2..    0.0625*x27 - 0.03125*x28 + x52 =E= 0;

e3..  - 0.03125*x27 + 0.0625*x28 - 0.03125*x29 + x53 =E= 0;

e4..  - 0.03125*x28 + 0.0625*x29 - 0.03125*x30 + x54 =E= 0;

e5..  - 0.03125*x29 + 0.0625*x30 - 0.03125*x31 + x55 =E= 0;

e6..  - 0.03125*x30 + 0.0625*x31 - 0.03125*x32 + x56 =E= 19.17;

e7..  - 0.03125*x31 + 0.0625*x32 - 0.03125*x33 + x57 =E= 0;

e8..  - 0.03125*x32 + 0.0625*x33 - 0.03125*x34 + x58 =E= 0;

e9..  - 0.03125*x33 + 0.0625*x34 - 0.03125*x35 + x59 =E= 0;

e10..  - 0.03125*x34 + 0.0625*x35 - 0.03125*x36 + x60 =E= 0;

e11..  - 0.03125*x35 + 0.0625*x36 - 0.03125*x37 + x61 =E= 19.17;

e12..  - 0.03125*x36 + 0.0625*x37 - 0.03125*x38 + x62 =E= 0;

e13..  - 0.03125*x37 + 0.0625*x38 - 0.03125*x39 + x63 =E= 0;

e14..  - 0.03125*x38 + 0.0625*x39 - 0.03125*x40 + x64 =E= 0;

e15..  - 0.03125*x39 + 0.0625*x40 - 0.03125*x41 + x65 =E= 0;

e16..  - 0.03125*x40 + 0.0625*x41 - 0.03125*x42 + x66 =E= 0;

e17..  - 0.03125*x41 + 0.0625*x42 - 0.03125*x43 + x67 =E= 0;

e18..  - 0.03125*x42 + 0.0625*x43 - 0.03125*x44 + x68 =E= 0;

e19..  - 0.03125*x43 + 0.0625*x44 - 0.03125*x45 + x69 =E= 0;

e20..  - 0.03125*x44 + 0.0625*x45 - 0.03125*x46 + x70 =E= 0;

e21..  - 0.03125*x45 + 0.0625*x46 - 0.03125*x47 + x71 =E= 25.56;

e22..  - 0.03125*x46 + 0.0625*x47 - 0.03125*x48 + x72 =E= 0;

e23..  - 0.03125*x47 + 0.0625*x48 - 0.03125*x49 + x73 =E= 0;

e24..  - 0.03125*x48 + 0.0625*x49 - 0.03125*x50 + x74 =E= 0;

e25..  - 0.03125*x49 + 0.0625*x50 + x75 =E= 0;

e26..  - 0.03125*x50 + x76 =E= 0;

e27..    0.03125*x1 - 0.0625*x2 + 0.03125*x3 + 0.000291545189504373*x27 + x77
       - x127 =E= 0;

e28..    0.03125*x2 - 0.0625*x3 + 0.03125*x4 + 0.000291545189504373*x28 + x78
       - x128 =E= 0;

e29..    0.03125*x3 - 0.0625*x4 + 0.03125*x5 + 0.000291545189504373*x29 + x79
       - x129 =E= 0;

e30..    0.03125*x4 - 0.0625*x5 + 0.03125*x6 + 0.000291545189504373*x30 + x80
       - x130 =E= 0;

e31..    0.03125*x5 - 0.0625*x6 + 0.03125*x7 + 0.000291545189504373*x31 + x81
       - x131 =E= 0;

e32..    0.03125*x6 - 0.0625*x7 + 0.03125*x8 + 0.000291545189504373*x32 + x82
       - x132 =E= 0;

e33..    0.03125*x7 - 0.0625*x8 + 0.03125*x9 + 0.000291545189504373*x33 + x83
       - x133 =E= 0;

e34..    0.03125*x8 - 0.0625*x9 + 0.03125*x10 + 0.000291545189504373*x34 + x84
       - x134 =E= 0;

e35..    0.03125*x9 - 0.0625*x10 + 0.03125*x11 + 0.000291545189504373*x35 + x85
       - x135 =E= 0;

e36..    0.03125*x10 - 0.0625*x11 + 0.03125*x12 + 0.000291545189504373*x36
       + x86 - x136 =E= 0;

e37..    0.03125*x11 - 0.0625*x12 + 0.03125*x13 + 0.000291545189504373*x37
       + x87 - x137 =E= 0;

e38..    0.03125*x12 - 0.0625*x13 + 0.03125*x14 + 0.000291545189504373*x38
       + x88 - x138 =E= 0;

e39..    0.03125*x13 - 0.0625*x14 + 0.03125*x15 + 0.000291545189504373*x39
       + x89 - x139 =E= 0;

e40..    0.03125*x14 - 0.0625*x15 + 0.03125*x16 + 0.000291545189504373*x40
       + x90 - x140 =E= 0;

e41..    0.03125*x15 - 0.0625*x16 + 0.03125*x17 + 0.000291545189504373*x41
       + x91 - x141 =E= 0;

e42..    0.03125*x16 - 0.0625*x17 + 0.03125*x18 + 0.000291545189504373*x42
       + x92 - x142 =E= 0;

e43..    0.03125*x17 - 0.0625*x18 + 0.03125*x19 + 0.000291545189504373*x43
       + x93 - x143 =E= 0;

e44..    0.03125*x18 - 0.0625*x19 + 0.03125*x20 + 0.000291545189504373*x44
       + x94 - x144 =E= 0;

e45..    0.03125*x19 - 0.0625*x20 + 0.03125*x21 + 0.000291545189504373*x45
       + x95 - x145 =E= 0;

e46..    0.03125*x20 - 0.0625*x21 + 0.03125*x22 + 0.000291545189504373*x46
       + x96 - x146 =E= 0;

e47..    0.03125*x21 - 0.0625*x22 + 0.03125*x23 + 0.000291545189504373*x47
       + x97 - x147 =E= 0;

e48..    0.03125*x22 - 0.0625*x23 + 0.03125*x24 + 0.000291545189504373*x48
       + x98 - x148 =E= 0;

e49..    0.03125*x23 - 0.0625*x24 + 0.03125*x25 + 0.000291545189504373*x49
       + x99 - x149 =E= 0;

e50..    0.03125*x24 - 0.0625*x25 + 0.03125*x26 + 0.000291545189504373*x50
       + x100 - x150 =E= 0;

e51..  - x1 + 0.625*x51 + x101 - x151 =E= 0;

e52..  - x2 + 0.625*x52 + x102 - x152 =E= 0;

e53..  - x3 + 0.625*x53 + x103 - x153 =E= 0;

e54..  - x4 + 0.625*x54 + x104 - x154 =E= 0;

e55..  - x5 + 0.625*x55 + x105 - x155 =E= 0;

e56..  - x6 + 0.625*x56 + x106 - x156 =E= 0;

e57..  - x7 + 0.625*x57 + x107 - x157 =E= 0;

e58..  - x8 + 0.625*x58 + x108 - x158 =E= 0;

e59..  - x9 + 0.625*x59 + x109 - x159 =E= 0;

e60..  - x10 + 0.625*x60 + x110 - x160 =E= 0;

e61..  - x11 + 0.625*x61 + x111 - x161 =E= 0;

e62..  - x12 + 0.625*x62 + x112 - x162 =E= 0;

e63..  - x13 + 0.625*x63 + x113 - x163 =E= 0;

e64..  - x14 + 0.625*x64 + x114 - x164 =E= 0;

e65..  - x15 + 0.625*x65 + x115 - x165 =E= 0;

e66..  - x16 + 0.625*x66 + x116 - x166 =E= 0;

e67..  - x17 + 0.625*x67 + x117 - x167 =E= 0;

e68..  - x18 + 0.625*x68 + x118 - x168 =E= 0;

e69..  - x19 + 0.625*x69 + x119 - x169 =E= 0;

e70..  - x20 + 0.625*x70 + x120 - x170 =E= 0;

e71..  - x21 + 0.625*x71 + x121 - x171 =E= 0;

e72..  - x22 + 0.625*x72 + x122 - x172 =E= 0;

e73..  - x23 + 0.625*x73 + x123 - x173 =E= 0;

e74..  - x24 + 0.625*x74 + x124 - x174 =E= 0;

e75..  - x25 + 0.625*x75 + x125 - x175 =E= 0;

e76..  - x26 + 0.625*x76 + x126 - x176 =E= 0;

e77.. x181*x77 - x27 + x177 =G= 0;

e78.. x181*x78 - x28 + x177 =G= 0;

e79.. x181*x79 - x29 + x177 =G= 0;

e80.. x181*x80 - x30 + x177 =G= 0;

e81.. x181*x81 - x31 + x177 =G= 0;

e82.. x181*x82 - x32 + x177 =G= 0;

e83.. x181*x83 - x33 + x177 =G= 0;

e84.. x181*x84 - x34 + x177 =G= 0;

e85.. x181*x85 - x35 + x177 =G= 0;

e86.. x181*x86 - x36 + x177 =G= 0;

e87.. x181*x87 - x37 + x177 =G= 0;

e88.. x181*x88 - x38 + x177 =G= 0;

e89.. x181*x89 - x39 + x177 =G= 0;

e90.. x181*x90 - x40 + x177 =G= 0;

e91.. x181*x91 - x41 + x177 =G= 0;

e92.. x181*x92 - x42 + x177 =G= 0;

e93.. x181*x93 - x43 + x177 =G= 0;

e94.. x181*x94 - x44 + x177 =G= 0;

e95.. x181*x95 - x45 + x177 =G= 0;

e96.. x181*x96 - x46 + x177 =G= 0;

e97.. x181*x97 - x47 + x177 =G= 0;

e98.. x181*x98 - x48 + x177 =G= 0;

e99.. x181*x99 - x49 + x177 =G= 0;

e100.. x181*x100 - x50 + x177 =G= 0;

e101.. x182*x101 - x51 + x178 =G= 0;

e102.. x182*x102 - x52 + x178 =G= 0;

e103.. x182*x103 - x53 + x178 =G= 0;

e104.. x182*x104 - x54 + x178 =G= 0;

e105.. x182*x105 - x55 + x178 =G= 0;

e106.. x182*x106 - x56 + x178 =G= 0;

e107.. x182*x107 - x57 + x178 =G= 0;

e108.. x182*x108 - x58 + x178 =G= 0;

e109.. x182*x109 - x59 + x178 =G= 0;

e110.. x182*x110 - x60 + x178 =G= 0;

e111.. x182*x111 - x61 + x178 =G= 0;

e112.. x182*x112 - x62 + x178 =G= 0;

e113.. x182*x113 - x63 + x178 =G= 0;

e114.. x182*x114 - x64 + x178 =G= 0;

e115.. x182*x115 - x65 + x178 =G= 0;

e116.. x182*x116 - x66 + x178 =G= 0;

e117.. x182*x117 - x67 + x178 =G= 0;

e118.. x182*x118 - x68 + x178 =G= 0;

e119.. x182*x119 - x69 + x178 =G= 0;

e120.. x182*x120 - x70 + x178 =G= 0;

e121.. x182*x121 - x71 + x178 =G= 0;

e122.. x182*x122 - x72 + x178 =G= 0;

e123.. x182*x123 - x73 + x178 =G= 0;

e124.. x182*x124 - x74 + x178 =G= 0;

e125.. x182*x125 - x75 + x178 =G= 0;

e126.. x182*x126 - x76 + x178 =G= 0;

e127.. x183*x127 + x27 + x179 =G= 0;

e128.. x183*x128 + x28 + x179 =G= 0;

e129.. x183*x129 + x29 + x179 =G= 0;

e130.. x183*x130 + x30 + x179 =G= 0;

e131.. x183*x131 + x31 + x179 =G= 0;

e132.. x183*x132 + x32 + x179 =G= 0;

e133.. x183*x133 + x33 + x179 =G= 0;

e134.. x183*x134 + x34 + x179 =G= 0;

e135.. x183*x135 + x35 + x179 =G= 0;

e136.. x183*x136 + x36 + x179 =G= 0;

e137.. x183*x137 + x37 + x179 =G= 0;

e138.. x183*x138 + x38 + x179 =G= 0;

e139.. x183*x139 + x39 + x179 =G= 0;

e140.. x183*x140 + x40 + x179 =G= 0;

e141.. x183*x141 + x41 + x179 =G= 0;

e142.. x183*x142 + x42 + x179 =G= 0;

e143.. x183*x143 + x43 + x179 =G= 0;

e144.. x183*x144 + x44 + x179 =G= 0;

e145.. x183*x145 + x45 + x179 =G= 0;

e146.. x183*x146 + x46 + x179 =G= 0;

e147.. x183*x147 + x47 + x179 =G= 0;

e148.. x183*x148 + x48 + x179 =G= 0;

e149.. x183*x149 + x49 + x179 =G= 0;

e150.. x183*x150 + x50 + x179 =G= 0;

e151.. x184*x151 + x51 + x180 =G= 0;

e152.. x184*x152 + x52 + x180 =G= 0;

e153.. x184*x153 + x53 + x180 =G= 0;

e154.. x184*x154 + x54 + x180 =G= 0;

e155.. x184*x155 + x55 + x180 =G= 0;

e156.. x184*x156 + x56 + x180 =G= 0;

e157.. x184*x157 + x57 + x180 =G= 0;

e158.. x184*x158 + x58 + x180 =G= 0;

e159.. x184*x159 + x59 + x180 =G= 0;

e160.. x184*x160 + x60 + x180 =G= 0;

e161.. x184*x161 + x61 + x180 =G= 0;

e162.. x184*x162 + x62 + x180 =G= 0;

e163.. x184*x163 + x63 + x180 =G= 0;

e164.. x184*x164 + x64 + x180 =G= 0;

e165.. x184*x165 + x65 + x180 =G= 0;

e166.. x184*x166 + x66 + x180 =G= 0;

e167.. x184*x167 + x67 + x180 =G= 0;

e168.. x184*x168 + x68 + x180 =G= 0;

e169.. x184*x169 + x69 + x180 =G= 0;

e170.. x184*x170 + x70 + x180 =G= 0;

e171.. x184*x171 + x71 + x180 =G= 0;

e172.. x184*x172 + x72 + x180 =G= 0;

e173.. x184*x173 + x73 + x180 =G= 0;

e174.. x184*x174 + x74 + x180 =G= 0;

e175.. x184*x175 + x75 + x180 =G= 0;

e176.. x184*x176 + x76 + x180 =G= 0;

e177..    x1 + x186 =G= -49.4924783349304;

e178..    x2 + x187 =G= -30.3444164457159;

e179..    x3 + x188 =G= -11.1963545565015;

e180..    x4 + x189 =G= 7.95170733271298;

e181..    x5 + x190 =G= 27.0997692219274;

e182..    x6 + x191 =G= 45.6120393952746;

e183..    x7 + x192 =G= 38.2466371251699;

e184..    x8 + x193 =G= 31.0618284825345;

e185..    x9 + x194 =G= 29.5170910318524;

e186..    x10 + x195 =G= 34.3930619206442;

e187..    x11 + x196 =G= 39.5962827479868;

e188..    x12 + x197 =G= 26.1414872174374;

e189..    x13 + x198 =G= 12.728664823869;

e190..    x14 + x199 =G= 0.349376146308907;

e191..    x15 + x200 =G= -8.45997153303673;

e192..    x16 + x201 =G= -12.0146293455135;

e193..    x17 + x202 =G= -8.62984842246698;

e194..    x18 + x203 =G= 3.379120104757;

e195..    x19 + x204 =G= 25.6970251048127;

e196..    x20 + x205 =G= 49.1649230292286;

e197..    x21 + x206 =G= 72.2918286261392;

e198..    x22 + x207 =G= 47.2329747673138;

e199..    x23 + x208 =G= 21.236159995852;

e200..    x24 + x209 =G= -4.76065477560999;

e201..    x25 + x210 =G= -30.757469547072;

e202..    x26 + x211 =G= -56.7542843185339;

e203..    x1 - x186 =L= -49.4924783349304;

e204..    x2 - x187 =L= -30.3444164457159;

e205..    x3 - x188 =L= -11.1963545565015;

e206..    x4 - x189 =L= 7.95170733271298;

e207..    x5 - x190 =L= 27.0997692219274;

e208..    x6 - x191 =L= 45.6120393952746;

e209..    x7 - x192 =L= 38.2466371251699;

e210..    x8 - x193 =L= 31.0618284825345;

e211..    x9 - x194 =L= 29.5170910318524;

e212..    x10 - x195 =L= 34.3930619206442;

e213..    x11 - x196 =L= 39.5962827479868;

e214..    x12 - x197 =L= 26.1414872174374;

e215..    x13 - x198 =L= 12.728664823869;

e216..    x14 - x199 =L= 0.349376146308907;

e217..    x15 - x200 =L= -8.45997153303673;

e218..    x16 - x201 =L= -12.0146293455135;

e219..    x17 - x202 =L= -8.62984842246698;

e220..    x18 - x203 =L= 3.379120104757;

e221..    x19 - x204 =L= 25.6970251048127;

e222..    x20 - x205 =L= 49.1649230292286;

e223..    x21 - x206 =L= 72.2918286261392;

e224..    x22 - x207 =L= 47.2329747673138;

e225..    x23 - x208 =L= 21.236159995852;

e226..    x24 - x209 =L= -4.76065477560999;

e227..    x25 - x210 =L= -30.757469547072;

e228..    x26 - x211 =L= -56.7542843185339;

e229..    objvar - x186 - x187 - x188 - x189 - x190 - x191 - x192 - x193 - x194
        - x195 - x196 - x197 - x198 - x199 - x200 - x201 - x202 - x203 - x204
        - x205 - x206 - x207 - x208 - x209 - x210 - x211 =E= 0;

* set non default bounds

x177.lo = 100; x177.up = 150; 
x178.lo = 1.3; x178.up = 2; 
x179.lo = 100; x179.up = 150; 
x180.fx = 0; 
x181.lo = 150; x181.up = 200; 
x182.up = 0.1; 
x183.lo = 150; x183.up = 200; 
x184.fx = 0; 

* set non default levels

x1.l = -49.4924783349304; 
x2.l = -30.3444164457159; 
x3.l = -11.1963545565015; 
x4.l = 7.95170733271298; 
x5.l = 27.0997692219274; 
x6.l = 45.6120393952746; 
x7.l = 38.2466371251699; 
x8.l = 31.0618284825345; 
x9.l = 29.5170910318524; 
x10.l = 34.3930619206442; 
x11.l = 39.5962827479868; 
x12.l = 26.1414872174374; 
x13.l = 12.728664823869; 
x14.l = 0.349376146308907; 
x15.l = -8.45997153303673; 
x16.l = -12.0146293455135; 
x17.l = -8.62984842246698; 
x18.l = 3.379120104757; 
x19.l = 25.6970251048127; 
x20.l = 49.1649230292286; 
x21.l = 72.2918286261392; 
x22.l = 47.2329747673138; 
x23.l = 21.236159995852; 
x24.l = -4.76065477560999; 
x25.l = -30.757469547072; 
x26.l = -56.7542843185339; 
x27.l = 1; 
x28.l = 1; 
x29.l = 1; 
x30.l = 1; 
x31.l = 1; 
x32.l = 1; 
x33.l = 1; 
x34.l = 1; 
x35.l = 1; 
x36.l = 1; 
x37.l = 1; 
x38.l = 1; 
x39.l = 1; 
x40.l = 1; 
x41.l = 1; 
x42.l = 1; 
x43.l = 1; 
x44.l = 1; 
x45.l = 1; 
x46.l = 1; 
x47.l = 1; 
x48.l = 1; 
x49.l = 1; 
x50.l = 1; 
x51.l = 1; 
x52.l = 1; 
x53.l = 1; 
x54.l = 1; 
x55.l = 1; 
x56.l = 1; 
x57.l = 1; 
x58.l = 1; 
x59.l = 1; 
x60.l = 1; 
x61.l = 1; 
x62.l = 1; 
x63.l = 1; 
x64.l = 1; 
x65.l = 1; 
x66.l = 1; 
x67.l = 1; 
x68.l = 1; 
x69.l = 1; 
x70.l = 1; 
x71.l = 1; 
x72.l = 1; 
x73.l = 1; 
x74.l = 1; 
x75.l = 1; 
x76.l = 1; 
x77.l = 1; 
x78.l = 1; 
x79.l = 1; 
x80.l = 1; 
x81.l = 1; 
x82.l = 1; 
x83.l = 1; 
x84.l = 1; 
x85.l = 1; 
x86.l = 1; 
x87.l = 1; 
x88.l = 1; 
x89.l = 1; 
x90.l = 1; 
x91.l = 1; 
x92.l = 1; 
x93.l = 1; 
x94.l = 1; 
x95.l = 1; 
x96.l = 1; 
x97.l = 1; 
x98.l = 1; 
x99.l = 1; 
x100.l = 1; 
x101.l = 1; 
x102.l = 1; 
x103.l = 1; 
x104.l = 1; 
x105.l = 1; 
x106.l = 1; 
x107.l = 1; 
x108.l = 1; 
x109.l = 1; 
x110.l = 1; 
x111.l = 1; 
x112.l = 1; 
x113.l = 1; 
x114.l = 1; 
x115.l = 1; 
x116.l = 1; 
x117.l = 1; 
x118.l = 1; 
x119.l = 1; 
x120.l = 1; 
x121.l = 1; 
x122.l = 1; 
x123.l = 1; 
x124.l = 1; 
x125.l = 1; 
x126.l = 1; 
x127.l = 1; 
x128.l = 1; 
x129.l = 1; 
x130.l = 1; 
x131.l = 1; 
x132.l = 1; 
x133.l = 1; 
x134.l = 1; 
x135.l = 1; 
x136.l = 1; 
x137.l = 1; 
x138.l = 1; 
x139.l = 1; 
x140.l = 1; 
x141.l = 1; 
x142.l = 1; 
x143.l = 1; 
x144.l = 1; 
x145.l = 1; 
x146.l = 1; 
x147.l = 1; 
x148.l = 1; 
x149.l = 1; 
x150.l = 1; 
x151.l = 1; 
x152.l = 1; 
x153.l = 1; 
x154.l = 1; 
x155.l = 1; 
x156.l = 1; 
x157.l = 1; 
x158.l = 1; 
x159.l = 1; 
x160.l = 1; 
x161.l = 1; 
x162.l = 1; 
x163.l = 1; 
x164.l = 1; 
x165.l = 1; 
x166.l = 1; 
x167.l = 1; 
x168.l = 1; 
x169.l = 1; 
x170.l = 1; 
x171.l = 1; 
x172.l = 1; 
x173.l = 1; 
x174.l = 1; 
x175.l = 1; 
x176.l = 1; 
x182.l = 0.1; 
x186.l = 0.1; 
x187.l = 0.1; 
x188.l = 0.1; 
x189.l = 0.1; 
x190.l = 0.1; 
x191.l = 0.1; 
x192.l = 0.1; 
x193.l = 0.1; 
x194.l = 0.1; 
x195.l = 0.1; 
x196.l = 0.1; 
x197.l = 0.1; 
x198.l = 0.1; 
x199.l = 0.1; 
x200.l = 0.1; 
x201.l = 0.1; 
x202.l = 0.1; 
x203.l = 0.1; 
x204.l = 0.1; 
x205.l = 0.1; 
x206.l = 0.1; 
x207.l = 0.1; 
x208.l = 0.1; 
x209.l = 0.1; 
x210.l = 0.1; 
x211.l = 0.1; 

* set non default marginals

e1.m = 1;
e2.m = 1;
e3.m = 1;
e4.m = 1;
e5.m = 1;
e6.m = 1;
e7.m = 1;
e8.m = 1;
e9.m = 1;
e10.m = 1;
e11.m = 1;
e12.m = 1;
e13.m = 1;
e14.m = 1;
e15.m = 1;
e16.m = 1;
e17.m = 1;
e18.m = 1;
e19.m = 1;
e20.m = 1;
e21.m = 1;
e22.m = 1;
e23.m = 1;
e24.m = 1;
e25.m = 1;
e26.m = 1;
e30.m = 1;
e31.m = 1;
e32.m = 1;
e33.m = 1;
e34.m = 1;
e35.m = 1;
e36.m = 1;
e37.m = 1;
e38.m = 1;
e39.m = 1;
e40.m = 1;
e41.m = 1;
e42.m = 1;
e43.m = 1;
e44.m = 1;
e45.m = 1;
e46.m = 1;
e47.m = 1;
e54.m = 1;
e55.m = 1;
e56.m = 1;
e57.m = 1;
e58.m = 1;
e59.m = 1;
e60.m = 1;
e61.m = 1;
e62.m = 1;
e63.m = 1;
e64.m = 1;
e68.m = 1;
e69.m = 1;
e70.m = 1;
e71.m = 1;
e72.m = 1;
e73.m = 1;
e81.m = 1;
e86.m = 1;
e96.m = 1;
e104.m = 1;
e105.m = 1;
e106.m = 1;
e107.m = 1;
e108.m = 1;
e109.m = 1;
e110.m = 1;
e111.m = 1;
e112.m = 1;
e113.m = 1;
e118.m = 1;
e119.m = 1;
e120.m = 1;
e121.m = 1;
e122.m = 1;
e123.m = 1;
e133.m = 1;
e134.m = 1;
e139.m = 1;
e140.m = 1;
e141.m = 1;
e142.m = 1;
e143.m = 1;
e151.m = 1;
e152.m = 1;
e153.m = 1;
e165.m = 1;
e166.m = 1;
e167.m = 1;
e174.m = 1;
e175.m = 1;
e176.m = 1;
x77.m = 1; 
x78.m = 1; 
x79.m = 1; 
x80.m = 1; 
x82.m = 1; 
x83.m = 1; 
x84.m = 1; 
x85.m = 1; 
x87.m = 1; 
x88.m = 1; 
x89.m = 1; 
x90.m = 1; 
x91.m = 1; 
x92.m = 1; 
x93.m = 1; 
x94.m = 1; 
x95.m = 1; 
x97.m = 1; 
x98.m = 1; 
x99.m = 1; 
x100.m = 1; 
x101.m = 1; 
x102.m = 1; 
x103.m = 1; 
x114.m = 1; 
x115.m = 1; 
x116.m = 1; 
x117.m = 1; 
x124.m = 1; 
x125.m = 1; 
x126.m = 1; 
x127.m = 1; 
x128.m = 1; 
x129.m = 1; 
x130.m = 1; 
x131.m = 1; 
x132.m = 1; 
x135.m = 1; 
x136.m = 1; 
x137.m = 1; 
x138.m = 1; 
x144.m = 1; 
x145.m = 1; 
x146.m = 1; 
x147.m = 1; 
x148.m = 1; 
x149.m = 1; 
x150.m = 1; 
x154.m = 1; 
x155.m = 1; 
x156.m = 1; 
x157.m = 1; 
x158.m = 1; 
x159.m = 1; 
x160.m = 1; 
x161.m = 1; 
x162.m = 1; 
x163.m = 1; 
x164.m = 1; 
x168.m = 1; 
x169.m = 1; 
x170.m = 1; 
x171.m = 1; 
x172.m = 1; 
x173.m = 1; 

Model m / e1.x1,e2.x2,e3.x3,e4.x4,e5.x5,e6.x6,e7.x7,e8.x8,e9.x9,e10.x10
         ,e11.x11,e12.x12,e13.x13,e14.x14,e15.x15,e16.x16,e17.x17,e18.x18
         ,e19.x19,e20.x20,e21.x21,e22.x22,e23.x23,e24.x24,e25.x25,e26.x26
         ,e27.x27,e28.x28,e29.x29,e30.x30,e31.x31,e32.x32,e33.x33,e34.x34
         ,e35.x35,e36.x36,e37.x37,e38.x38,e39.x39,e40.x40,e41.x41,e42.x42
         ,e43.x43,e44.x44,e45.x45,e46.x46,e47.x47,e48.x48,e49.x49,e50.x50
         ,e51.x51,e52.x52,e53.x53,e54.x54,e55.x55,e56.x56,e57.x57,e58.x58
         ,e59.x59,e60.x60,e61.x61,e62.x62,e63.x63,e64.x64,e65.x65,e66.x66
         ,e67.x67,e68.x68,e69.x69,e70.x70,e71.x71,e72.x72,e73.x73,e74.x74
         ,e75.x75,e76.x76,e77.x77,e78.x78,e79.x79,e80.x80,e81.x81,e82.x82
         ,e83.x83,e84.x84,e85.x85,e86.x86,e87.x87,e88.x88,e89.x89,e90.x90
         ,e91.x91,e92.x92,e93.x93,e94.x94,e95.x95,e96.x96,e97.x97,e98.x98
         ,e99.x99,e100.x100,e101.x101,e102.x102,e103.x103,e104.x104
         ,e105.x105,e106.x106,e107.x107,e108.x108,e109.x109,e110.x110
         ,e111.x111,e112.x112,e113.x113,e114.x114,e115.x115,e116.x116
         ,e117.x117,e118.x118,e119.x119,e120.x120,e121.x121,e122.x122
         ,e123.x123,e124.x124,e125.x125,e126.x126,e127.x127,e128.x128
         ,e129.x129,e130.x130,e131.x131,e132.x132,e133.x133,e134.x134
         ,e135.x135,e136.x136,e137.x137,e138.x138,e139.x139,e140.x140
         ,e141.x141,e142.x142,e143.x143,e144.x144,e145.x145,e146.x146
         ,e147.x147,e148.x148,e149.x149,e150.x150,e151.x151,e152.x152
         ,e153.x153,e154.x154,e155.x155,e156.x156,e157.x157,e158.x158
         ,e159.x159,e160.x160,e161.x161,e162.x162,e163.x163,e164.x164
         ,e165.x165,e166.x166,e167.x167,e168.x168,e169.x169,e170.x170
         ,e171.x171,e172.x172,e173.x173,e174.x174,e175.x175,e176.x176,e177
         ,e178,e179,e180,e181,e182,e183,e184,e185,e186,e187,e188,e189,e190
         ,e191,e192,e193,e194,e195,e196,e197,e198,e199,e200,e201,e202,e203
         ,e204,e205,e206,e207,e208,e209,e210,e211,e212,e213,e214,e215,e216
         ,e217,e218,e219,e220,e221,e222,e223,e224,e225,e226,e227,e228,e229 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
