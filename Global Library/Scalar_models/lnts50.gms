*  NLP written by GAMS Convert at 07/24/01 13:16:26
*  
*  Equation counts
*     Total       E       G       L       N       X
*       201     201       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       257     257       0       0       0       0       0       0
*  FX     7       7       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*      1002     402     600       0
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
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207
          ,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219,x220
          ,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232,x233
          ,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245,x246
          ,x247,x248,x249,x250,x251,x252,x253,x254,x255,objvar,x257;

Positive Variables x52,x103,x154,x205,x255,x257;

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
          ,e195,e196,e197,e198,e199,e200,e201;


e1..    objvar - 50*x257 =E= 0;

e2..  - 0.5*x257*(x154 + x155) - x52 + x53 =E= 0;

e3..  - 0.5*x257*(x155 + x156) - x53 + x54 =E= 0;

e4..  - 0.5*x257*(x156 + x157) - x54 + x55 =E= 0;

e5..  - 0.5*x257*(x157 + x158) - x55 + x56 =E= 0;

e6..  - 0.5*x257*(x158 + x159) - x56 + x57 =E= 0;

e7..  - 0.5*x257*(x159 + x160) - x57 + x58 =E= 0;

e8..  - 0.5*x257*(x160 + x161) - x58 + x59 =E= 0;

e9..  - 0.5*x257*(x161 + x162) - x59 + x60 =E= 0;

e10..  - 0.5*x257*(x162 + x163) - x60 + x61 =E= 0;

e11..  - 0.5*x257*(x163 + x164) - x61 + x62 =E= 0;

e12..  - 0.5*x257*(x164 + x165) - x62 + x63 =E= 0;

e13..  - 0.5*x257*(x165 + x166) - x63 + x64 =E= 0;

e14..  - 0.5*x257*(x166 + x167) - x64 + x65 =E= 0;

e15..  - 0.5*x257*(x167 + x168) - x65 + x66 =E= 0;

e16..  - 0.5*x257*(x168 + x169) - x66 + x67 =E= 0;

e17..  - 0.5*x257*(x169 + x170) - x67 + x68 =E= 0;

e18..  - 0.5*x257*(x170 + x171) - x68 + x69 =E= 0;

e19..  - 0.5*x257*(x171 + x172) - x69 + x70 =E= 0;

e20..  - 0.5*x257*(x172 + x173) - x70 + x71 =E= 0;

e21..  - 0.5*x257*(x173 + x174) - x71 + x72 =E= 0;

e22..  - 0.5*x257*(x174 + x175) - x72 + x73 =E= 0;

e23..  - 0.5*x257*(x175 + x176) - x73 + x74 =E= 0;

e24..  - 0.5*x257*(x176 + x177) - x74 + x75 =E= 0;

e25..  - 0.5*x257*(x177 + x178) - x75 + x76 =E= 0;

e26..  - 0.5*x257*(x178 + x179) - x76 + x77 =E= 0;

e27..  - 0.5*x257*(x179 + x180) - x77 + x78 =E= 0;

e28..  - 0.5*x257*(x180 + x181) - x78 + x79 =E= 0;

e29..  - 0.5*x257*(x181 + x182) - x79 + x80 =E= 0;

e30..  - 0.5*x257*(x182 + x183) - x80 + x81 =E= 0;

e31..  - 0.5*x257*(x183 + x184) - x81 + x82 =E= 0;

e32..  - 0.5*x257*(x184 + x185) - x82 + x83 =E= 0;

e33..  - 0.5*x257*(x185 + x186) - x83 + x84 =E= 0;

e34..  - 0.5*x257*(x186 + x187) - x84 + x85 =E= 0;

e35..  - 0.5*x257*(x187 + x188) - x85 + x86 =E= 0;

e36..  - 0.5*x257*(x188 + x189) - x86 + x87 =E= 0;

e37..  - 0.5*x257*(x189 + x190) - x87 + x88 =E= 0;

e38..  - 0.5*x257*(x190 + x191) - x88 + x89 =E= 0;

e39..  - 0.5*x257*(x191 + x192) - x89 + x90 =E= 0;

e40..  - 0.5*x257*(x192 + x193) - x90 + x91 =E= 0;

e41..  - 0.5*x257*(x193 + x194) - x91 + x92 =E= 0;

e42..  - 0.5*x257*(x194 + x195) - x92 + x93 =E= 0;

e43..  - 0.5*x257*(x195 + x196) - x93 + x94 =E= 0;

e44..  - 0.5*x257*(x196 + x197) - x94 + x95 =E= 0;

e45..  - 0.5*x257*(x197 + x198) - x95 + x96 =E= 0;

e46..  - 0.5*x257*(x198 + x199) - x96 + x97 =E= 0;

e47..  - 0.5*x257*(x199 + x200) - x97 + x98 =E= 0;

e48..  - 0.5*x257*(x200 + x201) - x98 + x99 =E= 0;

e49..  - 0.5*x257*(x201 + x202) - x99 + x100 =E= 0;

e50..  - 0.5*x257*(x202 + x203) - x100 + x101 =E= 0;

e51..  - 0.5*x257*(x203 + x204) - x101 + x102 =E= 0;

e52..  - 0.5*x257*(x205 + x206) - x103 + x104 =E= 0;

e53..  - 0.5*x257*(x206 + x207) - x104 + x105 =E= 0;

e54..  - 0.5*x257*(x207 + x208) - x105 + x106 =E= 0;

e55..  - 0.5*x257*(x208 + x209) - x106 + x107 =E= 0;

e56..  - 0.5*x257*(x209 + x210) - x107 + x108 =E= 0;

e57..  - 0.5*x257*(x210 + x211) - x108 + x109 =E= 0;

e58..  - 0.5*x257*(x211 + x212) - x109 + x110 =E= 0;

e59..  - 0.5*x257*(x212 + x213) - x110 + x111 =E= 0;

e60..  - 0.5*x257*(x213 + x214) - x111 + x112 =E= 0;

e61..  - 0.5*x257*(x214 + x215) - x112 + x113 =E= 0;

e62..  - 0.5*x257*(x215 + x216) - x113 + x114 =E= 0;

e63..  - 0.5*x257*(x216 + x217) - x114 + x115 =E= 0;

e64..  - 0.5*x257*(x217 + x218) - x115 + x116 =E= 0;

e65..  - 0.5*x257*(x218 + x219) - x116 + x117 =E= 0;

e66..  - 0.5*x257*(x219 + x220) - x117 + x118 =E= 0;

e67..  - 0.5*x257*(x220 + x221) - x118 + x119 =E= 0;

e68..  - 0.5*x257*(x221 + x222) - x119 + x120 =E= 0;

e69..  - 0.5*x257*(x222 + x223) - x120 + x121 =E= 0;

e70..  - 0.5*x257*(x223 + x224) - x121 + x122 =E= 0;

e71..  - 0.5*x257*(x224 + x225) - x122 + x123 =E= 0;

e72..  - 0.5*x257*(x225 + x226) - x123 + x124 =E= 0;

e73..  - 0.5*x257*(x226 + x227) - x124 + x125 =E= 0;

e74..  - 0.5*x257*(x227 + x228) - x125 + x126 =E= 0;

e75..  - 0.5*x257*(x228 + x229) - x126 + x127 =E= 0;

e76..  - 0.5*x257*(x229 + x230) - x127 + x128 =E= 0;

e77..  - 0.5*x257*(x230 + x231) - x128 + x129 =E= 0;

e78..  - 0.5*x257*(x231 + x232) - x129 + x130 =E= 0;

e79..  - 0.5*x257*(x232 + x233) - x130 + x131 =E= 0;

e80..  - 0.5*x257*(x233 + x234) - x131 + x132 =E= 0;

e81..  - 0.5*x257*(x234 + x235) - x132 + x133 =E= 0;

e82..  - 0.5*x257*(x235 + x236) - x133 + x134 =E= 0;

e83..  - 0.5*x257*(x236 + x237) - x134 + x135 =E= 0;

e84..  - 0.5*x257*(x237 + x238) - x135 + x136 =E= 0;

e85..  - 0.5*x257*(x238 + x239) - x136 + x137 =E= 0;

e86..  - 0.5*x257*(x239 + x240) - x137 + x138 =E= 0;

e87..  - 0.5*x257*(x240 + x241) - x138 + x139 =E= 0;

e88..  - 0.5*x257*(x241 + x242) - x139 + x140 =E= 0;

e89..  - 0.5*x257*(x242 + x243) - x140 + x141 =E= 0;

e90..  - 0.5*x257*(x243 + x244) - x141 + x142 =E= 0;

e91..  - 0.5*x257*(x244 + x245) - x142 + x143 =E= 0;

e92..  - 0.5*x257*(x245 + x246) - x143 + x144 =E= 0;

e93..  - 0.5*x257*(x246 + x247) - x144 + x145 =E= 0;

e94..  - 0.5*x257*(x247 + x248) - x145 + x146 =E= 0;

e95..  - 0.5*x257*(x248 + x249) - x146 + x147 =E= 0;

e96..  - 0.5*x257*(x249 + x250) - x147 + x148 =E= 0;

e97..  - 0.5*x257*(x250 + x251) - x148 + x149 =E= 0;

e98..  - 0.5*x257*(x251 + x252) - x149 + x150 =E= 0;

e99..  - 0.5*x257*(x252 + x253) - x150 + x151 =E= 0;

e100..  - 0.5*x257*(x253 + x254) - x151 + x152 =E= 0;

e101..  - 0.5*x257*(x254 + x255) - x152 + x153 =E= 0;

e102..  - 0.5*x257*(100*cos(x1) + 100*cos(x2)) - x154 + x155 =E= 0;

e103..  - 0.5*x257*(100*cos(x2) + 100*cos(x3)) - x155 + x156 =E= 0;

e104..  - 0.5*x257*(100*cos(x3) + 100*cos(x4)) - x156 + x157 =E= 0;

e105..  - 0.5*x257*(100*cos(x4) + 100*cos(x5)) - x157 + x158 =E= 0;

e106..  - 0.5*x257*(100*cos(x5) + 100*cos(x6)) - x158 + x159 =E= 0;

e107..  - 0.5*x257*(100*cos(x6) + 100*cos(x7)) - x159 + x160 =E= 0;

e108..  - 0.5*x257*(100*cos(x7) + 100*cos(x8)) - x160 + x161 =E= 0;

e109..  - 0.5*x257*(100*cos(x8) + 100*cos(x9)) - x161 + x162 =E= 0;

e110..  - 0.5*x257*(100*cos(x9) + 100*cos(x10)) - x162 + x163 =E= 0;

e111..  - 0.5*x257*(100*cos(x10) + 100*cos(x11)) - x163 + x164 =E= 0;

e112..  - 0.5*x257*(100*cos(x11) + 100*cos(x12)) - x164 + x165 =E= 0;

e113..  - 0.5*x257*(100*cos(x12) + 100*cos(x13)) - x165 + x166 =E= 0;

e114..  - 0.5*x257*(100*cos(x13) + 100*cos(x14)) - x166 + x167 =E= 0;

e115..  - 0.5*x257*(100*cos(x14) + 100*cos(x15)) - x167 + x168 =E= 0;

e116..  - 0.5*x257*(100*cos(x15) + 100*cos(x16)) - x168 + x169 =E= 0;

e117..  - 0.5*x257*(100*cos(x16) + 100*cos(x17)) - x169 + x170 =E= 0;

e118..  - 0.5*x257*(100*cos(x17) + 100*cos(x18)) - x170 + x171 =E= 0;

e119..  - 0.5*x257*(100*cos(x18) + 100*cos(x19)) - x171 + x172 =E= 0;

e120..  - 0.5*x257*(100*cos(x19) + 100*cos(x20)) - x172 + x173 =E= 0;

e121..  - 0.5*x257*(100*cos(x20) + 100*cos(x21)) - x173 + x174 =E= 0;

e122..  - 0.5*x257*(100*cos(x21) + 100*cos(x22)) - x174 + x175 =E= 0;

e123..  - 0.5*x257*(100*cos(x22) + 100*cos(x23)) - x175 + x176 =E= 0;

e124..  - 0.5*x257*(100*cos(x23) + 100*cos(x24)) - x176 + x177 =E= 0;

e125..  - 0.5*x257*(100*cos(x24) + 100*cos(x25)) - x177 + x178 =E= 0;

e126..  - 0.5*x257*(100*cos(x25) + 100*cos(x26)) - x178 + x179 =E= 0;

e127..  - 0.5*x257*(100*cos(x26) + 100*cos(x27)) - x179 + x180 =E= 0;

e128..  - 0.5*x257*(100*cos(x27) + 100*cos(x28)) - x180 + x181 =E= 0;

e129..  - 0.5*x257*(100*cos(x28) + 100*cos(x29)) - x181 + x182 =E= 0;

e130..  - 0.5*x257*(100*cos(x29) + 100*cos(x30)) - x182 + x183 =E= 0;

e131..  - 0.5*x257*(100*cos(x30) + 100*cos(x31)) - x183 + x184 =E= 0;

e132..  - 0.5*x257*(100*cos(x31) + 100*cos(x32)) - x184 + x185 =E= 0;

e133..  - 0.5*x257*(100*cos(x32) + 100*cos(x33)) - x185 + x186 =E= 0;

e134..  - 0.5*x257*(100*cos(x33) + 100*cos(x34)) - x186 + x187 =E= 0;

e135..  - 0.5*x257*(100*cos(x34) + 100*cos(x35)) - x187 + x188 =E= 0;

e136..  - 0.5*x257*(100*cos(x35) + 100*cos(x36)) - x188 + x189 =E= 0;

e137..  - 0.5*x257*(100*cos(x36) + 100*cos(x37)) - x189 + x190 =E= 0;

e138..  - 0.5*x257*(100*cos(x37) + 100*cos(x38)) - x190 + x191 =E= 0;

e139..  - 0.5*x257*(100*cos(x38) + 100*cos(x39)) - x191 + x192 =E= 0;

e140..  - 0.5*x257*(100*cos(x39) + 100*cos(x40)) - x192 + x193 =E= 0;

e141..  - 0.5*x257*(100*cos(x40) + 100*cos(x41)) - x193 + x194 =E= 0;

e142..  - 0.5*x257*(100*cos(x41) + 100*cos(x42)) - x194 + x195 =E= 0;

e143..  - 0.5*x257*(100*cos(x42) + 100*cos(x43)) - x195 + x196 =E= 0;

e144..  - 0.5*x257*(100*cos(x43) + 100*cos(x44)) - x196 + x197 =E= 0;

e145..  - 0.5*x257*(100*cos(x44) + 100*cos(x45)) - x197 + x198 =E= 0;

e146..  - 0.5*x257*(100*cos(x45) + 100*cos(x46)) - x198 + x199 =E= 0;

e147..  - 0.5*x257*(100*cos(x46) + 100*cos(x47)) - x199 + x200 =E= 0;

e148..  - 0.5*x257*(100*cos(x47) + 100*cos(x48)) - x200 + x201 =E= 0;

e149..  - 0.5*x257*(100*cos(x48) + 100*cos(x49)) - x201 + x202 =E= 0;

e150..  - 0.5*x257*(100*cos(x49) + 100*cos(x50)) - x202 + x203 =E= 0;

e151..  - 0.5*x257*(100*cos(x50) + 100*cos(x51)) - x203 + x204 =E= 0;

e152..  - 0.5*x257*(100*sin(x1) + 100*sin(x2)) - x205 + x206 =E= 0;

e153..  - 0.5*x257*(100*sin(x2) + 100*sin(x3)) - x206 + x207 =E= 0;

e154..  - 0.5*x257*(100*sin(x3) + 100*sin(x4)) - x207 + x208 =E= 0;

e155..  - 0.5*x257*(100*sin(x4) + 100*sin(x5)) - x208 + x209 =E= 0;

e156..  - 0.5*x257*(100*sin(x5) + 100*sin(x6)) - x209 + x210 =E= 0;

e157..  - 0.5*x257*(100*sin(x6) + 100*sin(x7)) - x210 + x211 =E= 0;

e158..  - 0.5*x257*(100*sin(x7) + 100*sin(x8)) - x211 + x212 =E= 0;

e159..  - 0.5*x257*(100*sin(x8) + 100*sin(x9)) - x212 + x213 =E= 0;

e160..  - 0.5*x257*(100*sin(x9) + 100*sin(x10)) - x213 + x214 =E= 0;

e161..  - 0.5*x257*(100*sin(x10) + 100*sin(x11)) - x214 + x215 =E= 0;

e162..  - 0.5*x257*(100*sin(x11) + 100*sin(x12)) - x215 + x216 =E= 0;

e163..  - 0.5*x257*(100*sin(x12) + 100*sin(x13)) - x216 + x217 =E= 0;

e164..  - 0.5*x257*(100*sin(x13) + 100*sin(x14)) - x217 + x218 =E= 0;

e165..  - 0.5*x257*(100*sin(x14) + 100*sin(x15)) - x218 + x219 =E= 0;

e166..  - 0.5*x257*(100*sin(x15) + 100*sin(x16)) - x219 + x220 =E= 0;

e167..  - 0.5*x257*(100*sin(x16) + 100*sin(x17)) - x220 + x221 =E= 0;

e168..  - 0.5*x257*(100*sin(x17) + 100*sin(x18)) - x221 + x222 =E= 0;

e169..  - 0.5*x257*(100*sin(x18) + 100*sin(x19)) - x222 + x223 =E= 0;

e170..  - 0.5*x257*(100*sin(x19) + 100*sin(x20)) - x223 + x224 =E= 0;

e171..  - 0.5*x257*(100*sin(x20) + 100*sin(x21)) - x224 + x225 =E= 0;

e172..  - 0.5*x257*(100*sin(x21) + 100*sin(x22)) - x225 + x226 =E= 0;

e173..  - 0.5*x257*(100*sin(x22) + 100*sin(x23)) - x226 + x227 =E= 0;

e174..  - 0.5*x257*(100*sin(x23) + 100*sin(x24)) - x227 + x228 =E= 0;

e175..  - 0.5*x257*(100*sin(x24) + 100*sin(x25)) - x228 + x229 =E= 0;

e176..  - 0.5*x257*(100*sin(x25) + 100*sin(x26)) - x229 + x230 =E= 0;

e177..  - 0.5*x257*(100*sin(x26) + 100*sin(x27)) - x230 + x231 =E= 0;

e178..  - 0.5*x257*(100*sin(x27) + 100*sin(x28)) - x231 + x232 =E= 0;

e179..  - 0.5*x257*(100*sin(x28) + 100*sin(x29)) - x232 + x233 =E= 0;

e180..  - 0.5*x257*(100*sin(x29) + 100*sin(x30)) - x233 + x234 =E= 0;

e181..  - 0.5*x257*(100*sin(x30) + 100*sin(x31)) - x234 + x235 =E= 0;

e182..  - 0.5*x257*(100*sin(x31) + 100*sin(x32)) - x235 + x236 =E= 0;

e183..  - 0.5*x257*(100*sin(x32) + 100*sin(x33)) - x236 + x237 =E= 0;

e184..  - 0.5*x257*(100*sin(x33) + 100*sin(x34)) - x237 + x238 =E= 0;

e185..  - 0.5*x257*(100*sin(x34) + 100*sin(x35)) - x238 + x239 =E= 0;

e186..  - 0.5*x257*(100*sin(x35) + 100*sin(x36)) - x239 + x240 =E= 0;

e187..  - 0.5*x257*(100*sin(x36) + 100*sin(x37)) - x240 + x241 =E= 0;

e188..  - 0.5*x257*(100*sin(x37) + 100*sin(x38)) - x241 + x242 =E= 0;

e189..  - 0.5*x257*(100*sin(x38) + 100*sin(x39)) - x242 + x243 =E= 0;

e190..  - 0.5*x257*(100*sin(x39) + 100*sin(x40)) - x243 + x244 =E= 0;

e191..  - 0.5*x257*(100*sin(x40) + 100*sin(x41)) - x244 + x245 =E= 0;

e192..  - 0.5*x257*(100*sin(x41) + 100*sin(x42)) - x245 + x246 =E= 0;

e193..  - 0.5*x257*(100*sin(x42) + 100*sin(x43)) - x246 + x247 =E= 0;

e194..  - 0.5*x257*(100*sin(x43) + 100*sin(x44)) - x247 + x248 =E= 0;

e195..  - 0.5*x257*(100*sin(x44) + 100*sin(x45)) - x248 + x249 =E= 0;

e196..  - 0.5*x257*(100*sin(x45) + 100*sin(x46)) - x249 + x250 =E= 0;

e197..  - 0.5*x257*(100*sin(x46) + 100*sin(x47)) - x250 + x251 =E= 0;

e198..  - 0.5*x257*(100*sin(x47) + 100*sin(x48)) - x251 + x252 =E= 0;

e199..  - 0.5*x257*(100*sin(x48) + 100*sin(x49)) - x252 + x253 =E= 0;

e200..  - 0.5*x257*(100*sin(x49) + 100*sin(x50)) - x253 + x254 =E= 0;

e201..  - 0.5*x257*(100*sin(x50) + 100*sin(x51)) - x254 + x255 =E= 0;

* set non default bounds

x1.lo = -1.5707963267949; x1.up = 1.5707963267949; 
x2.lo = -1.5707963267949; x2.up = 1.5707963267949; 
x3.lo = -1.5707963267949; x3.up = 1.5707963267949; 
x4.lo = -1.5707963267949; x4.up = 1.5707963267949; 
x5.lo = -1.5707963267949; x5.up = 1.5707963267949; 
x6.lo = -1.5707963267949; x6.up = 1.5707963267949; 
x7.lo = -1.5707963267949; x7.up = 1.5707963267949; 
x8.lo = -1.5707963267949; x8.up = 1.5707963267949; 
x9.lo = -1.5707963267949; x9.up = 1.5707963267949; 
x10.lo = -1.5707963267949; x10.up = 1.5707963267949; 
x11.lo = -1.5707963267949; x11.up = 1.5707963267949; 
x12.lo = -1.5707963267949; x12.up = 1.5707963267949; 
x13.lo = -1.5707963267949; x13.up = 1.5707963267949; 
x14.lo = -1.5707963267949; x14.up = 1.5707963267949; 
x15.lo = -1.5707963267949; x15.up = 1.5707963267949; 
x16.lo = -1.5707963267949; x16.up = 1.5707963267949; 
x17.lo = -1.5707963267949; x17.up = 1.5707963267949; 
x18.lo = -1.5707963267949; x18.up = 1.5707963267949; 
x19.lo = -1.5707963267949; x19.up = 1.5707963267949; 
x20.lo = -1.5707963267949; x20.up = 1.5707963267949; 
x21.lo = -1.5707963267949; x21.up = 1.5707963267949; 
x22.lo = -1.5707963267949; x22.up = 1.5707963267949; 
x23.lo = -1.5707963267949; x23.up = 1.5707963267949; 
x24.lo = -1.5707963267949; x24.up = 1.5707963267949; 
x25.lo = -1.5707963267949; x25.up = 1.5707963267949; 
x26.lo = -1.5707963267949; x26.up = 1.5707963267949; 
x27.lo = -1.5707963267949; x27.up = 1.5707963267949; 
x28.lo = -1.5707963267949; x28.up = 1.5707963267949; 
x29.lo = -1.5707963267949; x29.up = 1.5707963267949; 
x30.lo = -1.5707963267949; x30.up = 1.5707963267949; 
x31.lo = -1.5707963267949; x31.up = 1.5707963267949; 
x32.lo = -1.5707963267949; x32.up = 1.5707963267949; 
x33.lo = -1.5707963267949; x33.up = 1.5707963267949; 
x34.lo = -1.5707963267949; x34.up = 1.5707963267949; 
x35.lo = -1.5707963267949; x35.up = 1.5707963267949; 
x36.lo = -1.5707963267949; x36.up = 1.5707963267949; 
x37.lo = -1.5707963267949; x37.up = 1.5707963267949; 
x38.lo = -1.5707963267949; x38.up = 1.5707963267949; 
x39.lo = -1.5707963267949; x39.up = 1.5707963267949; 
x40.lo = -1.5707963267949; x40.up = 1.5707963267949; 
x41.lo = -1.5707963267949; x41.up = 1.5707963267949; 
x42.lo = -1.5707963267949; x42.up = 1.5707963267949; 
x43.lo = -1.5707963267949; x43.up = 1.5707963267949; 
x44.lo = -1.5707963267949; x44.up = 1.5707963267949; 
x45.lo = -1.5707963267949; x45.up = 1.5707963267949; 
x46.lo = -1.5707963267949; x46.up = 1.5707963267949; 
x47.lo = -1.5707963267949; x47.up = 1.5707963267949; 
x48.lo = -1.5707963267949; x48.up = 1.5707963267949; 
x49.lo = -1.5707963267949; x49.up = 1.5707963267949; 
x50.lo = -1.5707963267949; x50.up = 1.5707963267949; 
x51.lo = -1.5707963267949; x51.up = 1.5707963267949; 
x52.fx = 0; 
x103.fx = 0; 
x153.fx = 5; 
x154.fx = 0; 
x204.fx = 45; 
x205.fx = 0; 
x255.fx = 0; 

* set non default levels

x104.l = 0.2; 
x105.l = 0.3; 
x106.l = 0.4; 
x107.l = 0.5; 
x108.l = 0.6; 
x109.l = 0.7; 
x110.l = 0.8; 
x111.l = 0.9; 
x112.l = 1; 
x113.l = 1.1; 
x114.l = 1.2; 
x115.l = 1.3; 
x116.l = 1.4; 
x117.l = 1.5; 
x118.l = 1.6; 
x119.l = 1.7; 
x120.l = 1.8; 
x121.l = 1.9; 
x122.l = 2; 
x123.l = 2.1; 
x124.l = 2.2; 
x125.l = 2.3; 
x126.l = 2.4; 
x127.l = 2.5; 
x128.l = 2.6; 
x129.l = 2.7; 
x130.l = 2.8; 
x131.l = 2.9; 
x132.l = 3; 
x133.l = 3.1; 
x134.l = 3.2; 
x135.l = 3.3; 
x136.l = 3.4; 
x137.l = 3.5; 
x138.l = 3.6; 
x139.l = 3.7; 
x140.l = 3.8; 
x141.l = 3.9; 
x142.l = 4; 
x143.l = 4.1; 
x144.l = 4.2; 
x145.l = 4.3; 
x146.l = 4.4; 
x147.l = 4.5; 
x148.l = 4.6; 
x149.l = 4.7; 
x150.l = 4.8; 
x151.l = 4.9; 
x152.l = 5; 
x155.l = 1.8; 
x156.l = 2.7; 
x157.l = 3.6; 
x158.l = 4.5; 
x159.l = 5.4; 
x160.l = 6.3; 
x161.l = 7.2; 
x162.l = 8.1; 
x163.l = 9; 
x164.l = 9.9; 
x165.l = 10.8; 
x166.l = 11.7; 
x167.l = 12.6; 
x168.l = 13.5; 
x169.l = 14.4; 
x170.l = 15.3; 
x171.l = 16.2; 
x172.l = 17.1; 
x173.l = 18; 
x174.l = 18.9; 
x175.l = 19.8; 
x176.l = 20.7; 
x177.l = 21.6; 
x178.l = 22.5; 
x179.l = 23.4; 
x180.l = 24.3; 
x181.l = 25.2; 
x182.l = 26.1; 
x183.l = 27; 
x184.l = 27.9; 
x185.l = 28.8; 
x186.l = 29.7; 
x187.l = 30.6; 
x188.l = 31.5; 
x189.l = 32.4; 
x190.l = 33.3; 
x191.l = 34.2; 
x192.l = 35.1; 
x193.l = 36; 
x194.l = 36.9; 
x195.l = 37.8; 
x196.l = 38.7; 
x197.l = 39.6; 
x198.l = 40.5; 
x199.l = 41.4; 
x200.l = 42.3; 
x201.l = 43.2; 
x202.l = 44.1; 
x203.l = 45; 
x257.l = 0.02; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
