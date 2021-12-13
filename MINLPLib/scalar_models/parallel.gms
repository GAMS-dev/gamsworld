$offlisting
*  MINLP written by GAMS Convert at 05/14/01 17:28:57
*  
*  Equation counts
*     Total       E       G       L       N       X
*       116      82       5      29       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       206     181      25       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       752     597     155       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
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
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,objvar;

Positive Variables x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40
          ,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x52,x53,x54,x55,x56,x57,x58
          ,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70,x71,x72,x73,x74,x75
          ,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87,x88,x89,x90,x91,x92
          ,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103,x104,x105,x106,x107
          ,x108,x109,x110,x111,x112,x113,x114,x115,x116,x117,x118,x119,x120
          ,x121,x122,x123,x124,x125,x126,x127,x128,x129,x130,x131,x132,x133
          ,x134,x135,x136,x137,x138,x139,x140,x141,x142,x143,x144,x145,x146
          ,x147,x148,x149,x150,x151,x152,x153,x154,x155,x156,x157,x158,x159
          ,x160,x161,x162,x163,x164,x165,x166,x167,x168,x169,x170,x171,x172
          ,x173,x174,x175,x176,x177,x178,x179,x180,x181,x182,x183,x184,x185
          ,x186,x187,x188,x189,x190,x191,x192,x193,x194,x195,x196,x197,x198
          ,x199,x200,x201,x202,x203,x204,x205;

Binary Variables b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116;


e1..  - x26 - x27 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x36 - x37
      - x38 - x39 - x40 - x41 - x42 - x43 - x44 - x45 - x46 - x47 - x48 - x49
      - x50 + x51 =E= 0;

e2..  - (x52/x51 + x53/x51 + x54/x51 + x55/x51 + x56/x51) - x202
      =L= -0.483091787439614;

e3..  - (x57/x51 + x58/x51 + x59/x51 + x60/x51 + x61/x51) - x203
      =L= -0.193236714975845;

e4..  - (x62/x51 + x63/x51 + x64/x51 + x65/x51 + x66/x51) - x204
      =L= -0.144927536231884;

e5..  - (x67/x51 + x68/x51 + x69/x51 + x70/x51 + x71/x51) - x205
      =L= -0.144927536231884;

e6..  - 1.33333333333333*x26 + x52 + 2.66666666666667*x102
      + 6.66666666666667*x127 + 5.33333333333333*x152 + 6.66666666666667*x177
      =E= 0;

e7..  - 1.33333333333333*x27 + x53 + 2.66666666666667*x103
      + 6.66666666666667*x128 + 5.33333333333333*x153 + 6.66666666666667*x178
      =E= 0;

e8..  - 1.33333333333333*x28 + x54 + 2.66666666666667*x104
      + 6.66666666666667*x129 + 5.33333333333333*x154 + 6.66666666666667*x179
      =E= 0;

e9..  - 1.33333333333333*x29 + x55 + 2.66666666666667*x105
      + 6.66666666666667*x130 + 5.33333333333333*x155 + 6.66666666666667*x180
      =E= 0;

e10..  - 1.33333333333333*x30 + x56 + 2.66666666666667*x106
       + 6.66666666666667*x131 + 5.33333333333333*x156 + 6.66666666666667*x181
       =E= 0;

e11..  - 1.04166666666667*x31 + x57 + 2.08333333333333*x82 + 3.125*x132
       + 2.08333333333333*x157 + 3.125*x182 =E= 0;

e12..  - 1.04166666666667*x32 + x58 + 2.08333333333333*x83 + 3.125*x133
       + 2.08333333333333*x158 + 3.125*x183 =E= 0;

e13..  - 1.04166666666667*x33 + x59 + 2.08333333333333*x84 + 3.125*x134
       + 2.08333333333333*x159 + 3.125*x184 =E= 0;

e14..  - 1.04166666666667*x34 + x60 + 2.08333333333333*x85 + 3.125*x135
       + 2.08333333333333*x160 + 3.125*x185 =E= 0;

e15..  - 1.04166666666667*x35 + x61 + 2.08333333333333*x86 + 3.125*x136
       + 2.08333333333333*x161 + 3.125*x186 =E= 0;

e16..  - 1.25*x36 + x62 + 6.25*x87 + 3.75*x112 + 2.5*x162 + 7.5*x187 =E= 0;

e17..  - 1.25*x37 + x63 + 6.25*x88 + 3.75*x113 + 2.5*x163 + 7.5*x188 =E= 0;

e18..  - 1.25*x38 + x64 + 6.25*x89 + 3.75*x114 + 2.5*x164 + 7.5*x189 =E= 0;

e19..  - 1.25*x39 + x65 + 6.25*x90 + 3.75*x115 + 2.5*x165 + 7.5*x190 =E= 0;

e20..  - 1.25*x40 + x66 + 6.25*x91 + 3.75*x116 + 2.5*x166 + 7.5*x191 =E= 0;

e21..  - 1.25*x41 + x67 + 5*x92 + 2.5*x117 + 2.5*x142 + 6.25*x192 =E= 0;

e22..  - 1.25*x42 + x68 + 5*x93 + 2.5*x118 + 2.5*x143 + 6.25*x193 =E= 0;

e23..  - 1.25*x43 + x69 + 5*x94 + 2.5*x119 + 2.5*x144 + 6.25*x194 =E= 0;

e24..  - 1.25*x44 + x70 + 5*x95 + 2.5*x120 + 2.5*x145 + 6.25*x195 =E= 0;

e25..  - 1.25*x45 + x71 + 5*x96 + 2.5*x121 + 2.5*x146 + 6.25*x196 =E= 0;

e26..  - 1.21875*x46 + x72 + 6.09375*x97 + 3.65625*x122 + 7.3125*x147
       + 6.09375*x172 =E= 0;

e27..  - 1.21875*x47 + x73 + 6.09375*x98 + 3.65625*x123 + 7.3125*x148
       + 6.09375*x173 =E= 0;

e28..  - 1.21875*x48 + x74 + 6.09375*x99 + 3.65625*x124 + 7.3125*x149
       + 6.09375*x174 =E= 0;

e29..  - 1.21875*x49 + x75 + 6.09375*x100 + 3.65625*x125 + 7.3125*x150
       + 6.09375*x175 =E= 0;

e30..  - 1.21875*x50 + x76 + 6.09375*x101 + 3.65625*x126 + 7.3125*x151
       + 6.09375*x176 =E= 0;

e31..    b1 + b6 + b11 + b16 =G= 1;

e32..    b2 + b7 + b12 + b17 =G= 1;

e33..    b3 + b8 + b13 + b18 =G= 1;

e34..    b4 + b9 + b14 + b19 =G= 1;

e35..    b1 + b2 + b3 + b4 + b5 =E= 1;

e36..    b6 + b7 + b8 + b9 + b10 =E= 1;

e37..    b11 + b12 + b13 + b14 + b15 =E= 1;

e38..    b16 + b17 + b18 + b19 + b20 =E= 1;

e39..    b21 + b22 + b23 + b24 + b25 =E= 1;

e40..    b25 =G= 1;

e41..  - 256*b1 + x26 =L= 0;

e42..  - 256*b6 + x27 =L= 0;

e43..  - 256*b11 + x28 =L= 0;

e44..  - 256*b16 + x29 =L= 0;

e45..  - 256*b21 + x30 =L= 0;

e46..  - 131*b2 + x31 =L= 0;

e47..  - 131*b7 + x32 =L= 0;

e48..  - 131*b12 + x33 =L= 0;

e49..  - 131*b17 + x34 =L= 0;

e50..  - 131*b22 + x35 =L= 0;

e51..  - 86*b3 + x36 =L= 0;

e52..  - 86*b8 + x37 =L= 0;

e53..  - 86*b13 + x38 =L= 0;

e54..  - 86*b18 + x39 =L= 0;

e55..  - 86*b23 + x40 =L= 0;

e56..  - 85*b4 + x41 =L= 0;

e57..  - 85*b9 + x42 =L= 0;

e58..  - 85*b14 + x43 =L= 0;

e59..  - 85*b19 + x44 =L= 0;

e60..  - 85*b24 + x45 =L= 0;

e61..  - 690*b5 + x46 =L= 0;

e62..  - 690*b10 + x47 =L= 0;

e63..  - 690*b15 + x48 =L= 0;

e64..  - 690*b20 + x49 =L= 0;

e65..  - 690*b25 + x50 =L= 0;

e66..  - b1 + x77 + x102 + x127 + x152 + x177 =E= 0;

e67..  - b6 + x78 + x103 + x128 + x153 + x178 =E= 0;

e68..  - b11 + x79 + x104 + x129 + x154 + x179 =E= 0;

e69..  - b16 + x80 + x105 + x130 + x155 + x180 =E= 0;

e70..  - b21 + x81 + x106 + x131 + x156 + x181 =E= 0;

e71..  - b2 + x82 + x107 + x132 + x157 + x182 =E= 0;

e72..  - b7 + x83 + x108 + x133 + x158 + x183 =E= 0;

e73..  - b12 + x84 + x109 + x134 + x159 + x184 =E= 0;

e74..  - b17 + x85 + x110 + x135 + x160 + x185 =E= 0;

e75..  - b22 + x86 + x111 + x136 + x161 + x186 =E= 0;

e76..  - b3 + x87 + x112 + x137 + x162 + x187 =E= 0;

e77..  - b8 + x88 + x113 + x138 + x163 + x188 =E= 0;

e78..  - b13 + x89 + x114 + x139 + x164 + x189 =E= 0;

e79..  - b18 + x90 + x115 + x140 + x165 + x190 =E= 0;

e80..  - b23 + x91 + x116 + x141 + x166 + x191 =E= 0;

e81..  - b4 + x92 + x117 + x142 + x167 + x192 =E= 0;

e82..  - b9 + x93 + x118 + x143 + x168 + x193 =E= 0;

e83..  - b14 + x94 + x119 + x144 + x169 + x194 =E= 0;

e84..  - b19 + x95 + x120 + x145 + x170 + x195 =E= 0;

e85..  - b24 + x96 + x121 + x146 + x171 + x196 =E= 0;

e86..  - b5 + x97 + x122 + x147 + x172 + x197 =E= 0;

e87..  - b10 + x98 + x123 + x148 + x173 + x198 =E= 0;

e88..  - b15 + x99 + x124 + x149 + x174 + x199 =E= 0;

e89..  - b20 + x100 + x125 + x150 + x175 + x200 =E= 0;

e90..  - b25 + x101 + x126 + x151 + x176 + x201 =E= 0;

e91..  - b21 + x77 + x82 + x87 + x92 + x97 =E= 0;

e92..  - b1 + x78 + x83 + x88 + x93 + x98 =E= 0;

e93..  - b6 + x79 + x84 + x89 + x94 + x99 =E= 0;

e94..  - b11 + x80 + x85 + x90 + x95 + x100 =E= 0;

e95..  - b16 + x81 + x86 + x91 + x96 + x101 =E= 0;

e96..  - b22 + x102 + x107 + x112 + x117 + x122 =E= 0;

e97..  - b2 + x103 + x108 + x113 + x118 + x123 =E= 0;

e98..  - b7 + x104 + x109 + x114 + x119 + x124 =E= 0;

e99..  - b12 + x105 + x110 + x115 + x120 + x125 =E= 0;

e100..  - b17 + x106 + x111 + x116 + x121 + x126 =E= 0;

e101..  - b23 + x127 + x132 + x137 + x142 + x147 =E= 0;

e102..  - b3 + x128 + x133 + x138 + x143 + x148 =E= 0;

e103..  - b8 + x129 + x134 + x139 + x144 + x149 =E= 0;

e104..  - b13 + x130 + x135 + x140 + x145 + x150 =E= 0;

e105..  - b18 + x131 + x136 + x141 + x146 + x151 =E= 0;

e106..  - b24 + x152 + x157 + x162 + x167 + x172 =E= 0;

e107..  - b4 + x153 + x158 + x163 + x168 + x173 =E= 0;

e108..  - b9 + x154 + x159 + x164 + x169 + x174 =E= 0;

e109..  - b14 + x155 + x160 + x165 + x170 + x175 =E= 0;

e110..  - b19 + x156 + x161 + x166 + x171 + x176 =E= 0;

e111..  - b25 + x177 + x182 + x187 + x192 + x197 =E= 0;

e112..  - b5 + x178 + x183 + x188 + x193 + x198 =E= 0;

e113..  - b10 + x179 + x184 + x189 + x194 + x199 =E= 0;

e114..  - b15 + x180 + x185 + x190 + x195 + x200 =E= 0;

e115..  - b20 + x181 + x186 + x191 + x196 + x201 =E= 0;

e116..  - (1013.33333333333*x26/x51 + 1013.33333333333*x27/x51 + 
       1013.33333333333*x28/x51 + 1013.33333333333*x29/x51 + 1013.33333333333*
       x30/x51 + 781.25*x31/x51 + 781.25*x32/x51 + 781.25*x33/x51 + 781.25*x34/
       x51 + 781.25*x35/x51 + 962.5*x36/x51 + 962.5*x37/x51 + 962.5*x38/x51 + 
       962.5*x39/x51 + 962.5*x40/x51 + 937.5*x41/x51 + 937.5*x42/x51 + 937.5*
       x43/x51 + 937.5*x44/x51 + 937.5*x45/x51 + 923.203125*x46/x51 + 
       923.203125*x47/x51 + 923.203125*x48/x51 + 923.203125*x49/x51 + 
       923.203125*x50/x51 - 1406.25*x82/x51 - 1406.25*x83/x51 - 1406.25*x84/x51
        - 1406.25*x85/x51 - 1406.25*x86/x51 - 4331.25*x87/x51 - 4331.25*x88/x51
        - 4331.25*x89/x51 - 4331.25*x90/x51 - 4331.25*x91/x51 - 3375*x92/x51 - 
       3375*x93/x51 - 3375*x94/x51 - 3375*x95/x51 - 3375*x96/x51 - 4154.4140625
       *x97/x51 - 4154.4140625*x98/x51 - 4154.4140625*x99/x51 - 4154.4140625*
       x100/x51 - 4154.4140625*x101/x51 - 1824*x102/x51 - 1824*x103/x51 - 1824*
       x104/x51 - 1824*x105/x51 - 1824*x106/x51 - 2598.75*x112/x51 - 2598.75*
       x113/x51 - 2598.75*x114/x51 - 2598.75*x115/x51 - 2598.75*x116/x51 - 
       1687.5*x117/x51 - 1687.5*x118/x51 - 1687.5*x119/x51 - 1687.5*x120/x51 - 
       1687.5*x121/x51 - 2492.6484375*x122/x51 - 2492.6484375*x123/x51 - 
       2492.6484375*x124/x51 - 2492.6484375*x125/x51 - 2492.6484375*x126/x51 - 
       4560*x127/x51 - 4560*x128/x51 - 4560*x129/x51 - 4560*x130/x51 - 4560*
       x131/x51 - 2109.375*x132/x51 - 2109.375*x133/x51 - 2109.375*x134/x51 - 
       2109.375*x135/x51 - 2109.375*x136/x51 - 1687.5*x142/x51 - 1687.5*x143/
       x51 - 1687.5*x144/x51 - 1687.5*x145/x51 - 1687.5*x146/x51 - 4985.296875*
       x147/x51 - 4985.296875*x148/x51 - 4985.296875*x149/x51 - 4985.296875*
       x150/x51 - 4985.296875*x151/x51 - 3648*x152/x51 - 3648*x153/x51 - 3648*
       x154/x51 - 3648*x155/x51 - 3648*x156/x51 - 1406.25*x157/x51 - 1406.25*
       x158/x51 - 1406.25*x159/x51 - 1406.25*x160/x51 - 1406.25*x161/x51 - 
       1732.5*x162/x51 - 1732.5*x163/x51 - 1732.5*x164/x51 - 1732.5*x165/x51 - 
       1732.5*x166/x51 - 4154.4140625*x172/x51 - 4154.4140625*x173/x51 - 
       4154.4140625*x174/x51 - 4154.4140625*x175/x51 - 4154.4140625*x176/x51 - 
       4560*x177/x51 - 4560*x178/x51 - 4560*x179/x51 - 4560*x180/x51 - 4560*
       x181/x51 - 2109.375*x182/x51 - 2109.375*x183/x51 - 2109.375*x184/x51 - 
       2109.375*x185/x51 - 2109.375*x186/x51 - 5197.5*x187/x51 - 5197.5*x188/
       x51 - 5197.5*x189/x51 - 5197.5*x190/x51 - 5197.5*x191/x51 - 4218.75*x192
       /x51 - 4218.75*x193/x51 - 4218.75*x194/x51 - 4218.75*x195/x51 - 4218.75*
       x196/x51 - (2500*x72/x51 + 2500*x73/x51 + 2500*x74/x51 + 2500*x75/x51 + 
       2500*x76/x51) + 3*x72 + 3*x73 + 3*x74 + 3*x75 + 3*x76)
        - 2.63768115942029*x52 - 2.63768115942029*x53 - 2.63768115942029*x54
        - 2.63768115942029*x55 - 2.63768115942029*x56 - 2.81449275362319*x57
        - 2.81449275362319*x58 - 2.81449275362319*x59 - 2.81449275362319*x60
        - 2.81449275362319*x61 - 2.88405797101449*x62 - 2.88405797101449*x63
        - 2.88405797101449*x64 - 2.88405797101449*x65 - 2.88405797101449*x66
        - 2.88405797101449*x67 - 2.88405797101449*x68 - 2.88405797101449*x69
        - 2.88405797101449*x70 - 2.88405797101449*x71 - 100000*x202
        - 100000*x203 - 100000*x204 - 100000*x205 + objvar =E= 0;

* set non default bounds

x51.lo = 1; x51.up = 690; 

$if set nostart $goto modeldef
* set non default levels

b1.l = 1; 
b7.l = 1; 
b13.l = 1; 
b19.l = 1; 
b25.l = 1; 
x51.l = 690; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;