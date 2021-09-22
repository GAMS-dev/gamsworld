*  NLP written by GAMS Convert at 07/31/01 14:39:45
*  
*  Equation counts
*     Total       E       G       L       N       X
*       102     102       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       203     203       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       704     401     303       0
*
*  Solve m using NLP minimizing objvar;


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
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200,x201,x202,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102;


e1..  - 0.005*(x1*sqrt(1 + sqr(x102)) + x2*sqrt(1 + sqr(x103)) + x2*sqrt(1 + 
     sqr(x103)) + x3*sqrt(1 + sqr(x104)) + x3*sqrt(1 + sqr(x104)) + x4*sqrt(1
      + sqr(x105)) + x4*sqrt(1 + sqr(x105)) + x5*sqrt(1 + sqr(x106)) + x5*sqrt(
     1 + sqr(x106)) + x6*sqrt(1 + sqr(x107)) + x6*sqrt(1 + sqr(x107)) + x7*
     sqrt(1 + sqr(x108)) + x7*sqrt(1 + sqr(x108)) + x8*sqrt(1 + sqr(x109)) + x8
     *sqrt(1 + sqr(x109)) + x9*sqrt(1 + sqr(x110)) + x9*sqrt(1 + sqr(x110)) + 
     x10*sqrt(1 + sqr(x111)) + x10*sqrt(1 + sqr(x111)) + x11*sqrt(1 + sqr(x112)
     ) + x11*sqrt(1 + sqr(x112)) + x12*sqrt(1 + sqr(x113)) + x12*sqrt(1 + sqr(
     x113)) + x13*sqrt(1 + sqr(x114)) + x13*sqrt(1 + sqr(x114)) + x14*sqrt(1 + 
     sqr(x115)) + x14*sqrt(1 + sqr(x115)) + x15*sqrt(1 + sqr(x116)) + x15*sqrt(
     1 + sqr(x116)) + x16*sqrt(1 + sqr(x117)) + x16*sqrt(1 + sqr(x117)) + x17*
     sqrt(1 + sqr(x118)) + x17*sqrt(1 + sqr(x118)) + x18*sqrt(1 + sqr(x119)) + 
     x18*sqrt(1 + sqr(x119)) + x19*sqrt(1 + sqr(x120)) + x19*sqrt(1 + sqr(x120)
     ) + x20*sqrt(1 + sqr(x121)) + x20*sqrt(1 + sqr(x121)) + x21*sqrt(1 + sqr(
     x122)) + x21*sqrt(1 + sqr(x122)) + x22*sqrt(1 + sqr(x123)) + x22*sqrt(1 + 
     sqr(x123)) + x23*sqrt(1 + sqr(x124)) + x23*sqrt(1 + sqr(x124)) + x24*sqrt(
     1 + sqr(x125)) + x24*sqrt(1 + sqr(x125)) + x25*sqrt(1 + sqr(x126)) + x25*
     sqrt(1 + sqr(x126)) + x26*sqrt(1 + sqr(x127)) + x26*sqrt(1 + sqr(x127)) + 
     x27*sqrt(1 + sqr(x128)) + x27*sqrt(1 + sqr(x128)) + x28*sqrt(1 + sqr(x129)
     ) + x28*sqrt(1 + sqr(x129)) + x29*sqrt(1 + sqr(x130)) + x29*sqrt(1 + sqr(
     x130)) + x30*sqrt(1 + sqr(x131)) + x30*sqrt(1 + sqr(x131)) + x31*sqrt(1 + 
     sqr(x132)) + x31*sqrt(1 + sqr(x132)) + x32*sqrt(1 + sqr(x133)) + x32*sqrt(
     1 + sqr(x133)) + x33*sqrt(1 + sqr(x134)) + x33*sqrt(1 + sqr(x134)) + x34*
     sqrt(1 + sqr(x135)) + x34*sqrt(1 + sqr(x135)) + x35*sqrt(1 + sqr(x136)) + 
     x35*sqrt(1 + sqr(x136)) + x36*sqrt(1 + sqr(x137)) + x36*sqrt(1 + sqr(x137)
     ) + x37*sqrt(1 + sqr(x138)) + x37*sqrt(1 + sqr(x138)) + x38*sqrt(1 + sqr(
     x139)) + x38*sqrt(1 + sqr(x139)) + x39*sqrt(1 + sqr(x140)) + x39*sqrt(1 + 
     sqr(x140)) + x40*sqrt(1 + sqr(x141)) + x40*sqrt(1 + sqr(x141)) + x41*sqrt(
     1 + sqr(x142)) + x41*sqrt(1 + sqr(x142)) + x42*sqrt(1 + sqr(x143)) + x42*
     sqrt(1 + sqr(x143)) + x43*sqrt(1 + sqr(x144)) + x43*sqrt(1 + sqr(x144)) + 
     x44*sqrt(1 + sqr(x145)) + x44*sqrt(1 + sqr(x145)) + x45*sqrt(1 + sqr(x146)
     ) + x45*sqrt(1 + sqr(x146)) + x46*sqrt(1 + sqr(x147)) + x46*sqrt(1 + sqr(
     x147)) + x47*sqrt(1 + sqr(x148)) + x47*sqrt(1 + sqr(x148)) + x48*sqrt(1 + 
     sqr(x149)) + x48*sqrt(1 + sqr(x149)) + x49*sqrt(1 + sqr(x150)) + x49*sqrt(
     1 + sqr(x150)) + x50*sqrt(1 + sqr(x151)) + x50*sqrt(1 + sqr(x151)) + x51*
     sqrt(1 + sqr(x152)) + x51*sqrt(1 + sqr(x152)) + x52*sqrt(1 + sqr(x153)) + 
     x52*sqrt(1 + sqr(x153)) + x53*sqrt(1 + sqr(x154)) + x53*sqrt(1 + sqr(x154)
     ) + x54*sqrt(1 + sqr(x155)) + x54*sqrt(1 + sqr(x155)) + x55*sqrt(1 + sqr(
     x156)) + x55*sqrt(1 + sqr(x156)) + x56*sqrt(1 + sqr(x157)) + x56*sqrt(1 + 
     sqr(x157)) + x57*sqrt(1 + sqr(x158)) + x57*sqrt(1 + sqr(x158)) + x58*sqrt(
     1 + sqr(x159)) + x58*sqrt(1 + sqr(x159)) + x59*sqrt(1 + sqr(x160)) + x59*
     sqrt(1 + sqr(x160)) + x60*sqrt(1 + sqr(x161)) + x60*sqrt(1 + sqr(x161)) + 
     x61*sqrt(1 + sqr(x162)) + x61*sqrt(1 + sqr(x162)) + x62*sqrt(1 + sqr(x163)
     ) + x62*sqrt(1 + sqr(x163)) + x63*sqrt(1 + sqr(x164)) + x63*sqrt(1 + sqr(
     x164)) + x64*sqrt(1 + sqr(x165)) + x64*sqrt(1 + sqr(x165)) + x65*sqrt(1 + 
     sqr(x166)) + x65*sqrt(1 + sqr(x166)) + x66*sqrt(1 + sqr(x167)) + x66*sqrt(
     1 + sqr(x167)) + x67*sqrt(1 + sqr(x168)) + x67*sqrt(1 + sqr(x168)) + x68*
     sqrt(1 + sqr(x169)) + x68*sqrt(1 + sqr(x169)) + x69*sqrt(1 + sqr(x170)) + 
     x69*sqrt(1 + sqr(x170)) + x70*sqrt(1 + sqr(x171)) + x70*sqrt(1 + sqr(x171)
     ) + x71*sqrt(1 + sqr(x172)) + x71*sqrt(1 + sqr(x172)) + x72*sqrt(1 + sqr(
     x173)) + x72*sqrt(1 + sqr(x173)) + x73*sqrt(1 + sqr(x174)) + x73*sqrt(1 + 
     sqr(x174)) + x74*sqrt(1 + sqr(x175)) + x74*sqrt(1 + sqr(x175)) + x75*sqrt(
     1 + sqr(x176)) + x75*sqrt(1 + sqr(x176)) + x76*sqrt(1 + sqr(x177)) + x76*
     sqrt(1 + sqr(x177)) + x77*sqrt(1 + sqr(x178)) + x77*sqrt(1 + sqr(x178)) + 
     x78*sqrt(1 + sqr(x179)) + x78*sqrt(1 + sqr(x179)) + x79*sqrt(1 + sqr(x180)
     ) + x79*sqrt(1 + sqr(x180)) + x80*sqrt(1 + sqr(x181)) + x80*sqrt(1 + sqr(
     x181)) + x81*sqrt(1 + sqr(x182)) + x81*sqrt(1 + sqr(x182)) + x82*sqrt(1 + 
     sqr(x183)) + x82*sqrt(1 + sqr(x183)) + x83*sqrt(1 + sqr(x184)) + x83*sqrt(
     1 + sqr(x184)) + x84*sqrt(1 + sqr(x185)) + x84*sqrt(1 + sqr(x185)) + x85*
     sqrt(1 + sqr(x186)) + x85*sqrt(1 + sqr(x186)) + x86*sqrt(1 + sqr(x187)) + 
     x86*sqrt(1 + sqr(x187)) + x87*sqrt(1 + sqr(x188)) + x87*sqrt(1 + sqr(x188)
     ) + x88*sqrt(1 + sqr(x189)) + x88*sqrt(1 + sqr(x189)) + x89*sqrt(1 + sqr(
     x190)) + x89*sqrt(1 + sqr(x190)) + x90*sqrt(1 + sqr(x191)) + x90*sqrt(1 + 
     sqr(x191)) + x91*sqrt(1 + sqr(x192)) + x91*sqrt(1 + sqr(x192)) + x92*sqrt(
     1 + sqr(x193)) + x92*sqrt(1 + sqr(x193)) + x93*sqrt(1 + sqr(x194)) + x93*
     sqrt(1 + sqr(x194)) + x94*sqrt(1 + sqr(x195)) + x94*sqrt(1 + sqr(x195)) + 
     x95*sqrt(1 + sqr(x196)) + x95*sqrt(1 + sqr(x196)) + x96*sqrt(1 + sqr(x197)
     ) + x96*sqrt(1 + sqr(x197)) + x97*sqrt(1 + sqr(x198)) + x97*sqrt(1 + sqr(
     x198)) + x98*sqrt(1 + sqr(x199)) + x98*sqrt(1 + sqr(x199)) + x99*sqrt(1 + 
     sqr(x200)) + x99*sqrt(1 + sqr(x200)) + x100*sqrt(1 + sqr(x201)) + x100*
     sqrt(1 + sqr(x201)) + x101*sqrt(1 + sqr(x202))) + objvar =E= 0;

e2..  - x1 + x2 - 0.005*x102 - 0.005*x103 =E= 0;

e3..  - x2 + x3 - 0.005*x103 - 0.005*x104 =E= 0;

e4..  - x3 + x4 - 0.005*x104 - 0.005*x105 =E= 0;

e5..  - x4 + x5 - 0.005*x105 - 0.005*x106 =E= 0;

e6..  - x5 + x6 - 0.005*x106 - 0.005*x107 =E= 0;

e7..  - x6 + x7 - 0.005*x107 - 0.005*x108 =E= 0;

e8..  - x7 + x8 - 0.005*x108 - 0.005*x109 =E= 0;

e9..  - x8 + x9 - 0.005*x109 - 0.005*x110 =E= 0;

e10..  - x9 + x10 - 0.005*x110 - 0.005*x111 =E= 0;

e11..  - x10 + x11 - 0.005*x111 - 0.005*x112 =E= 0;

e12..  - x11 + x12 - 0.005*x112 - 0.005*x113 =E= 0;

e13..  - x12 + x13 - 0.005*x113 - 0.005*x114 =E= 0;

e14..  - x13 + x14 - 0.005*x114 - 0.005*x115 =E= 0;

e15..  - x14 + x15 - 0.005*x115 - 0.005*x116 =E= 0;

e16..  - x15 + x16 - 0.005*x116 - 0.005*x117 =E= 0;

e17..  - x16 + x17 - 0.005*x117 - 0.005*x118 =E= 0;

e18..  - x17 + x18 - 0.005*x118 - 0.005*x119 =E= 0;

e19..  - x18 + x19 - 0.005*x119 - 0.005*x120 =E= 0;

e20..  - x19 + x20 - 0.005*x120 - 0.005*x121 =E= 0;

e21..  - x20 + x21 - 0.005*x121 - 0.005*x122 =E= 0;

e22..  - x21 + x22 - 0.005*x122 - 0.005*x123 =E= 0;

e23..  - x22 + x23 - 0.005*x123 - 0.005*x124 =E= 0;

e24..  - x23 + x24 - 0.005*x124 - 0.005*x125 =E= 0;

e25..  - x24 + x25 - 0.005*x125 - 0.005*x126 =E= 0;

e26..  - x25 + x26 - 0.005*x126 - 0.005*x127 =E= 0;

e27..  - x26 + x27 - 0.005*x127 - 0.005*x128 =E= 0;

e28..  - x27 + x28 - 0.005*x128 - 0.005*x129 =E= 0;

e29..  - x28 + x29 - 0.005*x129 - 0.005*x130 =E= 0;

e30..  - x29 + x30 - 0.005*x130 - 0.005*x131 =E= 0;

e31..  - x30 + x31 - 0.005*x131 - 0.005*x132 =E= 0;

e32..  - x31 + x32 - 0.005*x132 - 0.005*x133 =E= 0;

e33..  - x32 + x33 - 0.005*x133 - 0.005*x134 =E= 0;

e34..  - x33 + x34 - 0.005*x134 - 0.005*x135 =E= 0;

e35..  - x34 + x35 - 0.005*x135 - 0.005*x136 =E= 0;

e36..  - x35 + x36 - 0.005*x136 - 0.005*x137 =E= 0;

e37..  - x36 + x37 - 0.005*x137 - 0.005*x138 =E= 0;

e38..  - x37 + x38 - 0.005*x138 - 0.005*x139 =E= 0;

e39..  - x38 + x39 - 0.005*x139 - 0.005*x140 =E= 0;

e40..  - x39 + x40 - 0.005*x140 - 0.005*x141 =E= 0;

e41..  - x40 + x41 - 0.005*x141 - 0.005*x142 =E= 0;

e42..  - x41 + x42 - 0.005*x142 - 0.005*x143 =E= 0;

e43..  - x42 + x43 - 0.005*x143 - 0.005*x144 =E= 0;

e44..  - x43 + x44 - 0.005*x144 - 0.005*x145 =E= 0;

e45..  - x44 + x45 - 0.005*x145 - 0.005*x146 =E= 0;

e46..  - x45 + x46 - 0.005*x146 - 0.005*x147 =E= 0;

e47..  - x46 + x47 - 0.005*x147 - 0.005*x148 =E= 0;

e48..  - x47 + x48 - 0.005*x148 - 0.005*x149 =E= 0;

e49..  - x48 + x49 - 0.005*x149 - 0.005*x150 =E= 0;

e50..  - x49 + x50 - 0.005*x150 - 0.005*x151 =E= 0;

e51..  - x50 + x51 - 0.005*x151 - 0.005*x152 =E= 0;

e52..  - x51 + x52 - 0.005*x152 - 0.005*x153 =E= 0;

e53..  - x52 + x53 - 0.005*x153 - 0.005*x154 =E= 0;

e54..  - x53 + x54 - 0.005*x154 - 0.005*x155 =E= 0;

e55..  - x54 + x55 - 0.005*x155 - 0.005*x156 =E= 0;

e56..  - x55 + x56 - 0.005*x156 - 0.005*x157 =E= 0;

e57..  - x56 + x57 - 0.005*x157 - 0.005*x158 =E= 0;

e58..  - x57 + x58 - 0.005*x158 - 0.005*x159 =E= 0;

e59..  - x58 + x59 - 0.005*x159 - 0.005*x160 =E= 0;

e60..  - x59 + x60 - 0.005*x160 - 0.005*x161 =E= 0;

e61..  - x60 + x61 - 0.005*x161 - 0.005*x162 =E= 0;

e62..  - x61 + x62 - 0.005*x162 - 0.005*x163 =E= 0;

e63..  - x62 + x63 - 0.005*x163 - 0.005*x164 =E= 0;

e64..  - x63 + x64 - 0.005*x164 - 0.005*x165 =E= 0;

e65..  - x64 + x65 - 0.005*x165 - 0.005*x166 =E= 0;

e66..  - x65 + x66 - 0.005*x166 - 0.005*x167 =E= 0;

e67..  - x66 + x67 - 0.005*x167 - 0.005*x168 =E= 0;

e68..  - x67 + x68 - 0.005*x168 - 0.005*x169 =E= 0;

e69..  - x68 + x69 - 0.005*x169 - 0.005*x170 =E= 0;

e70..  - x69 + x70 - 0.005*x170 - 0.005*x171 =E= 0;

e71..  - x70 + x71 - 0.005*x171 - 0.005*x172 =E= 0;

e72..  - x71 + x72 - 0.005*x172 - 0.005*x173 =E= 0;

e73..  - x72 + x73 - 0.005*x173 - 0.005*x174 =E= 0;

e74..  - x73 + x74 - 0.005*x174 - 0.005*x175 =E= 0;

e75..  - x74 + x75 - 0.005*x175 - 0.005*x176 =E= 0;

e76..  - x75 + x76 - 0.005*x176 - 0.005*x177 =E= 0;

e77..  - x76 + x77 - 0.005*x177 - 0.005*x178 =E= 0;

e78..  - x77 + x78 - 0.005*x178 - 0.005*x179 =E= 0;

e79..  - x78 + x79 - 0.005*x179 - 0.005*x180 =E= 0;

e80..  - x79 + x80 - 0.005*x180 - 0.005*x181 =E= 0;

e81..  - x80 + x81 - 0.005*x181 - 0.005*x182 =E= 0;

e82..  - x81 + x82 - 0.005*x182 - 0.005*x183 =E= 0;

e83..  - x82 + x83 - 0.005*x183 - 0.005*x184 =E= 0;

e84..  - x83 + x84 - 0.005*x184 - 0.005*x185 =E= 0;

e85..  - x84 + x85 - 0.005*x185 - 0.005*x186 =E= 0;

e86..  - x85 + x86 - 0.005*x186 - 0.005*x187 =E= 0;

e87..  - x86 + x87 - 0.005*x187 - 0.005*x188 =E= 0;

e88..  - x87 + x88 - 0.005*x188 - 0.005*x189 =E= 0;

e89..  - x88 + x89 - 0.005*x189 - 0.005*x190 =E= 0;

e90..  - x89 + x90 - 0.005*x190 - 0.005*x191 =E= 0;

e91..  - x90 + x91 - 0.005*x191 - 0.005*x192 =E= 0;

e92..  - x91 + x92 - 0.005*x192 - 0.005*x193 =E= 0;

e93..  - x92 + x93 - 0.005*x193 - 0.005*x194 =E= 0;

e94..  - x93 + x94 - 0.005*x194 - 0.005*x195 =E= 0;

e95..  - x94 + x95 - 0.005*x195 - 0.005*x196 =E= 0;

e96..  - x95 + x96 - 0.005*x196 - 0.005*x197 =E= 0;

e97..  - x96 + x97 - 0.005*x197 - 0.005*x198 =E= 0;

e98..  - x97 + x98 - 0.005*x198 - 0.005*x199 =E= 0;

e99..  - x98 + x99 - 0.005*x199 - 0.005*x200 =E= 0;

e100..  - x99 + x100 - 0.005*x200 - 0.005*x201 =E= 0;

e101..  - x100 + x101 - 0.005*x201 - 0.005*x202 =E= 0;

e102.. 0.005*(sqrt(1 + sqr(x102)) + sqrt(1 + sqr(x103)) + sqrt(1 + sqr(x103))
        + sqrt(1 + sqr(x104)) + sqrt(1 + sqr(x104)) + sqrt(1 + sqr(x105)) + 
       sqrt(1 + sqr(x105)) + sqrt(1 + sqr(x106)) + sqrt(1 + sqr(x106)) + sqrt(1
        + sqr(x107)) + sqrt(1 + sqr(x107)) + sqrt(1 + sqr(x108)) + sqrt(1 + 
       sqr(x108)) + sqrt(1 + sqr(x109)) + sqrt(1 + sqr(x109)) + sqrt(1 + sqr(
       x110)) + sqrt(1 + sqr(x110)) + sqrt(1 + sqr(x111)) + sqrt(1 + sqr(x111))
        + sqrt(1 + sqr(x112)) + sqrt(1 + sqr(x112)) + sqrt(1 + sqr(x113)) + 
       sqrt(1 + sqr(x113)) + sqrt(1 + sqr(x114)) + sqrt(1 + sqr(x114)) + sqrt(1
        + sqr(x115)) + sqrt(1 + sqr(x115)) + sqrt(1 + sqr(x116)) + sqrt(1 + 
       sqr(x116)) + sqrt(1 + sqr(x117)) + sqrt(1 + sqr(x117)) + sqrt(1 + sqr(
       x118)) + sqrt(1 + sqr(x118)) + sqrt(1 + sqr(x119)) + sqrt(1 + sqr(x119))
        + sqrt(1 + sqr(x120)) + sqrt(1 + sqr(x120)) + sqrt(1 + sqr(x121)) + 
       sqrt(1 + sqr(x121)) + sqrt(1 + sqr(x122)) + sqrt(1 + sqr(x122)) + sqrt(1
        + sqr(x123)) + sqrt(1 + sqr(x123)) + sqrt(1 + sqr(x124)) + sqrt(1 + 
       sqr(x124)) + sqrt(1 + sqr(x125)) + sqrt(1 + sqr(x125)) + sqrt(1 + sqr(
       x126)) + sqrt(1 + sqr(x126)) + sqrt(1 + sqr(x127)) + sqrt(1 + sqr(x127))
        + sqrt(1 + sqr(x128)) + sqrt(1 + sqr(x128)) + sqrt(1 + sqr(x129)) + 
       sqrt(1 + sqr(x129)) + sqrt(1 + sqr(x130)) + sqrt(1 + sqr(x130)) + sqrt(1
        + sqr(x131)) + sqrt(1 + sqr(x131)) + sqrt(1 + sqr(x132)) + sqrt(1 + 
       sqr(x132)) + sqrt(1 + sqr(x133)) + sqrt(1 + sqr(x133)) + sqrt(1 + sqr(
       x134)) + sqrt(1 + sqr(x134)) + sqrt(1 + sqr(x135)) + sqrt(1 + sqr(x135))
        + sqrt(1 + sqr(x136)) + sqrt(1 + sqr(x136)) + sqrt(1 + sqr(x137)) + 
       sqrt(1 + sqr(x137)) + sqrt(1 + sqr(x138)) + sqrt(1 + sqr(x138)) + sqrt(1
        + sqr(x139)) + sqrt(1 + sqr(x139)) + sqrt(1 + sqr(x140)) + sqrt(1 + 
       sqr(x140)) + sqrt(1 + sqr(x141)) + sqrt(1 + sqr(x141)) + sqrt(1 + sqr(
       x142)) + sqrt(1 + sqr(x142)) + sqrt(1 + sqr(x143)) + sqrt(1 + sqr(x143))
        + sqrt(1 + sqr(x144)) + sqrt(1 + sqr(x144)) + sqrt(1 + sqr(x145)) + 
       sqrt(1 + sqr(x145)) + sqrt(1 + sqr(x146)) + sqrt(1 + sqr(x146)) + sqrt(1
        + sqr(x147)) + sqrt(1 + sqr(x147)) + sqrt(1 + sqr(x148)) + sqrt(1 + 
       sqr(x148)) + sqrt(1 + sqr(x149)) + sqrt(1 + sqr(x149)) + sqrt(1 + sqr(
       x150)) + sqrt(1 + sqr(x150)) + sqrt(1 + sqr(x151)) + sqrt(1 + sqr(x151))
        + sqrt(1 + sqr(x152)) + sqrt(1 + sqr(x152)) + sqrt(1 + sqr(x153)) + 
       sqrt(1 + sqr(x153)) + sqrt(1 + sqr(x154)) + sqrt(1 + sqr(x154)) + sqrt(1
        + sqr(x155)) + sqrt(1 + sqr(x155)) + sqrt(1 + sqr(x156)) + sqrt(1 + 
       sqr(x156)) + sqrt(1 + sqr(x157)) + sqrt(1 + sqr(x157)) + sqrt(1 + sqr(
       x158)) + sqrt(1 + sqr(x158)) + sqrt(1 + sqr(x159)) + sqrt(1 + sqr(x159))
        + sqrt(1 + sqr(x160)) + sqrt(1 + sqr(x160)) + sqrt(1 + sqr(x161)) + 
       sqrt(1 + sqr(x161)) + sqrt(1 + sqr(x162)) + sqrt(1 + sqr(x162)) + sqrt(1
        + sqr(x163)) + sqrt(1 + sqr(x163)) + sqrt(1 + sqr(x164)) + sqrt(1 + 
       sqr(x164)) + sqrt(1 + sqr(x165)) + sqrt(1 + sqr(x165)) + sqrt(1 + sqr(
       x166)) + sqrt(1 + sqr(x166)) + sqrt(1 + sqr(x167)) + sqrt(1 + sqr(x167))
        + sqrt(1 + sqr(x168)) + sqrt(1 + sqr(x168)) + sqrt(1 + sqr(x169)) + 
       sqrt(1 + sqr(x169)) + sqrt(1 + sqr(x170)) + sqrt(1 + sqr(x170)) + sqrt(1
        + sqr(x171)) + sqrt(1 + sqr(x171)) + sqrt(1 + sqr(x172)) + sqrt(1 + 
       sqr(x172)) + sqrt(1 + sqr(x173)) + sqrt(1 + sqr(x173)) + sqrt(1 + sqr(
       x174)) + sqrt(1 + sqr(x174)) + sqrt(1 + sqr(x175)) + sqrt(1 + sqr(x175))
        + sqrt(1 + sqr(x176)) + sqrt(1 + sqr(x176)) + sqrt(1 + sqr(x177)) + 
       sqrt(1 + sqr(x177)) + sqrt(1 + sqr(x178)) + sqrt(1 + sqr(x178)) + sqrt(1
        + sqr(x179)) + sqrt(1 + sqr(x179)) + sqrt(1 + sqr(x180)) + sqrt(1 + 
       sqr(x180)) + sqrt(1 + sqr(x181)) + sqrt(1 + sqr(x181)) + sqrt(1 + sqr(
       x182)) + sqrt(1 + sqr(x182)) + sqrt(1 + sqr(x183)) + sqrt(1 + sqr(x183))
        + sqrt(1 + sqr(x184)) + sqrt(1 + sqr(x184)) + sqrt(1 + sqr(x185)) + 
       sqrt(1 + sqr(x185)) + sqrt(1 + sqr(x186)) + sqrt(1 + sqr(x186)) + sqrt(1
        + sqr(x187)) + sqrt(1 + sqr(x187)) + sqrt(1 + sqr(x188)) + sqrt(1 + 
       sqr(x188)) + sqrt(1 + sqr(x189)) + sqrt(1 + sqr(x189)) + sqrt(1 + sqr(
       x190)) + sqrt(1 + sqr(x190)) + sqrt(1 + sqr(x191)) + sqrt(1 + sqr(x191))
        + sqrt(1 + sqr(x192)) + sqrt(1 + sqr(x192)) + sqrt(1 + sqr(x193)) + 
       sqrt(1 + sqr(x193)) + sqrt(1 + sqr(x194)) + sqrt(1 + sqr(x194)) + sqrt(1
        + sqr(x195)) + sqrt(1 + sqr(x195)) + sqrt(1 + sqr(x196)) + sqrt(1 + 
       sqr(x196)) + sqrt(1 + sqr(x197)) + sqrt(1 + sqr(x197)) + sqrt(1 + sqr(
       x198)) + sqrt(1 + sqr(x198)) + sqrt(1 + sqr(x199)) + sqrt(1 + sqr(x199))
        + sqrt(1 + sqr(x200)) + sqrt(1 + sqr(x200)) + sqrt(1 + sqr(x201)) + 
       sqrt(1 + sqr(x201)) + sqrt(1 + sqr(x202))) =E= 4;

* set non default bounds

x1.fx = 1; 
x101.fx = 3; 

* set non default levels

x2.l = 0.9804; 
x3.l = 0.9616; 
x4.l = 0.9436; 
x5.l = 0.9264; 
x6.l = 0.91; 
x7.l = 0.8944; 
x8.l = 0.8796; 
x9.l = 0.8656; 
x10.l = 0.8524; 
x11.l = 0.84; 
x12.l = 0.8284; 
x13.l = 0.8176; 
x14.l = 0.8076; 
x15.l = 0.7984; 
x16.l = 0.79; 
x17.l = 0.7824; 
x18.l = 0.7756; 
x19.l = 0.7696; 
x20.l = 0.7644; 
x21.l = 0.76; 
x22.l = 0.7564; 
x23.l = 0.7536; 
x24.l = 0.7516; 
x25.l = 0.7504; 
x26.l = 0.75; 
x27.l = 0.7504; 
x28.l = 0.7516; 
x29.l = 0.7536; 
x30.l = 0.7564; 
x31.l = 0.76; 
x32.l = 0.7644; 
x33.l = 0.7696; 
x34.l = 0.7756; 
x35.l = 0.7824; 
x36.l = 0.79; 
x37.l = 0.7984; 
x38.l = 0.8076; 
x39.l = 0.8176; 
x40.l = 0.8284; 
x41.l = 0.84; 
x42.l = 0.8524; 
x43.l = 0.8656; 
x44.l = 0.8796; 
x45.l = 0.8944; 
x46.l = 0.91; 
x47.l = 0.9264; 
x48.l = 0.9436; 
x49.l = 0.9616; 
x50.l = 0.9804; 
x51.l = 1; 
x52.l = 1.0204; 
x53.l = 1.0416; 
x54.l = 1.0636; 
x55.l = 1.0864; 
x56.l = 1.11; 
x57.l = 1.1344; 
x58.l = 1.1596; 
x59.l = 1.1856; 
x60.l = 1.2124; 
x61.l = 1.24; 
x62.l = 1.2684; 
x63.l = 1.2976; 
x64.l = 1.3276; 
x65.l = 1.3584; 
x66.l = 1.39; 
x67.l = 1.4224; 
x68.l = 1.4556; 
x69.l = 1.4896; 
x70.l = 1.5244; 
x71.l = 1.56; 
x72.l = 1.5964; 
x73.l = 1.6336; 
x74.l = 1.6716; 
x75.l = 1.7104; 
x76.l = 1.75; 
x77.l = 1.7904; 
x78.l = 1.8316; 
x79.l = 1.8736; 
x80.l = 1.9164; 
x81.l = 1.96; 
x82.l = 2.0044; 
x83.l = 2.0496; 
x84.l = 2.0956; 
x85.l = 2.1424; 
x86.l = 2.19; 
x87.l = 2.2384; 
x88.l = 2.2876; 
x89.l = 2.3376; 
x90.l = 2.3884; 
x91.l = 2.44; 
x92.l = 2.4924; 
x93.l = 2.5456; 
x94.l = 2.5996; 
x95.l = 2.6544; 
x96.l = 2.71; 
x97.l = 2.7664; 
x98.l = 2.8236; 
x99.l = 2.8816; 
x100.l = 2.9404; 
x102.l = -2; 
x103.l = -1.92; 
x104.l = -1.84; 
x105.l = -1.76; 
x106.l = -1.68; 
x107.l = -1.6; 
x108.l = -1.52; 
x109.l = -1.44; 
x110.l = -1.36; 
x111.l = -1.28; 
x112.l = -1.2; 
x113.l = -1.12; 
x114.l = -1.04; 
x115.l = -0.96; 
x116.l = -0.88; 
x117.l = -0.8; 
x118.l = -0.72; 
x119.l = -0.64; 
x120.l = -0.56; 
x121.l = -0.48; 
x122.l = -0.4; 
x123.l = -0.32; 
x124.l = -0.24; 
x125.l = -0.16; 
x126.l = -0.0800000000000001; 
x128.l = 0.0800000000000001; 
x129.l = 0.16; 
x130.l = 0.24; 
x131.l = 0.32; 
x132.l = 0.4; 
x133.l = 0.48; 
x134.l = 0.56; 
x135.l = 0.64; 
x136.l = 0.72; 
x137.l = 0.8; 
x138.l = 0.88; 
x139.l = 0.96; 
x140.l = 1.04; 
x141.l = 1.12; 
x142.l = 1.2; 
x143.l = 1.28; 
x144.l = 1.36; 
x145.l = 1.44; 
x146.l = 1.52; 
x147.l = 1.6; 
x148.l = 1.68; 
x149.l = 1.76; 
x150.l = 1.84; 
x151.l = 1.92; 
x152.l = 2; 
x153.l = 2.08; 
x154.l = 2.16; 
x155.l = 2.24; 
x156.l = 2.32; 
x157.l = 2.4; 
x158.l = 2.48; 
x159.l = 2.56; 
x160.l = 2.64; 
x161.l = 2.72; 
x162.l = 2.8; 
x163.l = 2.88; 
x164.l = 2.96; 
x165.l = 3.04; 
x166.l = 3.12; 
x167.l = 3.2; 
x168.l = 3.28; 
x169.l = 3.36; 
x170.l = 3.44; 
x171.l = 3.52; 
x172.l = 3.6; 
x173.l = 3.68; 
x174.l = 3.76; 
x175.l = 3.84; 
x176.l = 3.92; 
x177.l = 4; 
x178.l = 4.08; 
x179.l = 4.16; 
x180.l = 4.24; 
x181.l = 4.32; 
x182.l = 4.4; 
x183.l = 4.48; 
x184.l = 4.56; 
x185.l = 4.64; 
x186.l = 4.72; 
x187.l = 4.8; 
x188.l = 4.88; 
x189.l = 4.96; 
x190.l = 5.04; 
x191.l = 5.12; 
x192.l = 5.2; 
x193.l = 5.28; 
x194.l = 5.36; 
x195.l = 5.44; 
x196.l = 5.52; 
x197.l = 5.6; 
x198.l = 5.68; 
x199.l = 5.76; 
x200.l = 5.84; 
x201.l = 5.92; 
x202.l = 6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
