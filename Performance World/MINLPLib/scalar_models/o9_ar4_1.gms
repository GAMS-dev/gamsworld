$offlisting
*  MINLP written by GAMS Convert at 12/19/05 12:07:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        436        2        2      432        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        181      109        0       72        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1765     1747       18        0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,i37,i38,i39,i40,i41,i42,i43,i44,i45,i46,i47,i48,i49,i50,i51,i52,i53
          ,i54,i55,i56,i57,i58,i59,i60,i61,i62,i63,i64,i65,i66,i67,i68,i69,i70
          ,i71,i72,objvar,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86
          ,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102
          ,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115
          ,x116,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128
          ,x129,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141
          ,x142,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154
          ,x155,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167
          ,x168,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180
          ,x181;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34
          ,i35,i36,i37,i38,i39,i40,i41,i42,i43,i44,i45,i46,i47,i48,i49,i50,i51
          ,i52,i53,i54,i55,i56,i57,i58,i59,i60,i61,i62,i63,i64,i65,i66,i67,i68
          ,i69,i70,i71,i72;

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
          ,e221,e222,e223,e224,e225,e226,e227,e228,e229,e230,e231,e232,e233
          ,e234,e235,e236,e237,e238,e239,e240,e241,e242,e243,e244,e245,e246
          ,e247,e248,e249,e250,e251,e252,e253,e254,e255,e256,e257,e258,e259
          ,e260,e261,e262,e263,e264,e265,e266,e267,e268,e269,e270,e271,e272
          ,e273,e274,e275,e276,e277,e278,e279,e280,e281,e282,e283,e284,e285
          ,e286,e287,e288,e289,e290,e291,e292,e293,e294,e295,e296,e297,e298
          ,e299,e300,e301,e302,e303,e304,e305,e306,e307,e308,e309,e310,e311
          ,e312,e313,e314,e315,e316,e317,e318,e319,e320,e321,e322,e323,e324
          ,e325,e326,e327,e328,e329,e330,e331,e332,e333,e334,e335,e336,e337
          ,e338,e339,e340,e341,e342,e343,e344,e345,e346,e347,e348,e349,e350
          ,e351,e352,e353,e354,e355,e356,e357,e358,e359,e360,e361,e362,e363
          ,e364,e365,e366,e367,e368,e369,e370,e371,e372,e373,e374,e375,e376
          ,e377,e378,e379,e380,e381,e382,e383,e384,e385,e386,e387,e388,e389
          ,e390,e391,e392,e393,e394,e395,e396,e397,e398,e399,e400,e401,e402
          ,e403,e404,e405,e406,e407,e408,e409,e410,e411,e412,e413,e414,e415
          ,e416,e417,e418,e419,e420,e421,e422,e423,e424,e425,e426,e427,e428
          ,e429,e430,e431,e432,e433,e434,e435,e436;


e1..    objvar - 5*x74 - 5*x75 - 5*x76 - 5*x77 - x78 - x79 - 3*x80 - 3*x81
      - 3*x82 - 3*x83 - x84 - x85 - 2*x86 - 2*x87 - 2*x88 - 2*x89 - x90 - x91
      - 4*x92 - 4*x93 - 4*x94 - 4*x95 - 3*x96 - 3*x97 - 4*x98 - 4*x99 - 2*x100
      - 2*x101 - x102 - x103 =E= 0;

e2..    x104 - x105 =G= 0;

e3..    x106 - x107 =G= 0;

e4..    i1 - i2 =E= 0;

e5..  - 12*i1 + 0.5*x108 + 0.5*x109 - x110 =L= 0;

e6..    13*i1 + 0.5*x111 + 0.5*x112 - x113 =L= 13;

e7..  - 12*i3 + 0.5*x108 + 0.5*x114 - x115 =L= 0;

e8..    13*i3 + 0.5*x111 + 0.5*x116 - x117 =L= 13;

e9..  - 12*i5 - x74 + 0.5*x108 + 0.5*x118 =L= 0;

e10..    13*i5 - x75 + 0.5*x111 + 0.5*x119 =L= 13;

e11..  - 12*i7 - x76 + 0.5*x108 + 0.5*x120 =L= 0;

e12..    13*i7 - x77 + 0.5*x111 + 0.5*x121 =L= 13;

e13..  - 12*i9 + 0.5*x108 + 0.5*x122 - x123 =L= 0;

e14..    13*i9 + 0.5*x111 + 0.5*x124 - x125 =L= 13;

e15..  - 12*i11 + 0.5*x108 + 0.5*x126 - x127 =L= 0;

e16..    13*i11 + 0.5*x111 + 0.5*x128 - x129 =L= 13;

e17..  - 12*i13 + 0.5*x108 + 0.5*x130 - x131 =L= 0;

e18..    13*i13 + 0.5*x111 + 0.5*x132 - x133 =L= 13;

e19..  - 12*i15 - x78 + 0.5*x108 + 0.5*x134 =L= 0;

e20..    13*i15 - x79 + 0.5*x111 + 0.5*x135 =L= 13;

e21..  - 12*i17 + 0.5*x109 + 0.5*x114 - x136 =L= 0;

e22..    13*i17 + 0.5*x112 + 0.5*x116 - x137 =L= 13;

e23..  - 12*i19 - x80 + 0.5*x109 + 0.5*x118 =L= 0;

e24..    13*i19 - x81 + 0.5*x112 + 0.5*x119 =L= 13;

e25..  - 12*i21 - x82 + 0.5*x109 + 0.5*x120 =L= 0;

e26..    13*i21 - x83 + 0.5*x112 + 0.5*x121 =L= 13;

e27..  - 12*i23 + 0.5*x109 + 0.5*x122 - x138 =L= 0;

e28..    13*i23 + 0.5*x112 + 0.5*x124 - x139 =L= 13;

e29..  - 12*i25 + 0.5*x109 + 0.5*x126 - x140 =L= 0;

e30..    13*i25 + 0.5*x112 + 0.5*x128 - x141 =L= 13;

e31..  - 12*i27 + 0.5*x109 + 0.5*x130 - x142 =L= 0;

e32..    13*i27 + 0.5*x112 + 0.5*x132 - x143 =L= 13;

e33..  - 12*i29 - x84 + 0.5*x109 + 0.5*x134 =L= 0;

e34..    13*i29 - x85 + 0.5*x112 + 0.5*x135 =L= 13;

e35..  - 12*i31 - x86 + 0.5*x114 + 0.5*x118 =L= 0;

e36..    13*i31 - x87 + 0.5*x116 + 0.5*x119 =L= 13;

e37..  - 12*i33 - x88 + 0.5*x114 + 0.5*x120 =L= 0;

e38..    13*i33 - x89 + 0.5*x116 + 0.5*x121 =L= 13;

e39..  - 12*i35 + 0.5*x114 + 0.5*x122 - x144 =L= 0;

e40..    13*i35 + 0.5*x116 + 0.5*x124 - x145 =L= 13;

e41..  - 12*i37 + 0.5*x114 + 0.5*x126 - x146 =L= 0;

e42..    13*i37 + 0.5*x116 + 0.5*x128 - x147 =L= 13;

e43..  - 12*i39 + 0.5*x114 + 0.5*x130 - x148 =L= 0;

e44..    13*i39 + 0.5*x116 + 0.5*x132 - x149 =L= 13;

e45..  - 12*i41 - x90 + 0.5*x114 + 0.5*x134 =L= 0;

e46..    13*i41 - x91 + 0.5*x116 + 0.5*x135 =L= 13;

e47..  - 12*i43 + 0.5*x118 + 0.5*x120 - x150 =L= 0;

e48..    13*i43 + 0.5*x119 + 0.5*x121 - x151 =L= 13;

e49..  - 12*i45 - x92 + 0.5*x118 + 0.5*x122 =L= 0;

e50..    13*i45 - x93 + 0.5*x119 + 0.5*x124 =L= 13;

e51..  - 12*i47 - x94 + 0.5*x118 + 0.5*x126 =L= 0;

e52..    13*i47 - x95 + 0.5*x119 + 0.5*x128 =L= 13;

e53..  - 12*i49 + 0.5*x118 + 0.5*x130 - x152 =L= 0;

e54..    13*i49 + 0.5*x119 + 0.5*x132 - x153 =L= 13;

e55..  - 12*i51 + 0.5*x118 + 0.5*x134 - x154 =L= 0;

e56..    13*i51 + 0.5*x119 + 0.5*x135 - x155 =L= 13;

e57..  - 12*i53 - x96 + 0.5*x120 + 0.5*x122 =L= 0;

e58..    13*i53 - x97 + 0.5*x121 + 0.5*x124 =L= 13;

e59..  - 12*i55 + 0.5*x120 + 0.5*x126 - x156 =L= 0;

e60..    13*i55 + 0.5*x121 + 0.5*x128 - x157 =L= 13;

e61..  - 12*i57 + 0.5*x120 + 0.5*x130 - x158 =L= 0;

e62..    13*i57 + 0.5*x121 + 0.5*x132 - x159 =L= 13;

e63..  - 12*i59 - x98 + 0.5*x120 + 0.5*x134 =L= 0;

e64..    13*i59 - x99 + 0.5*x121 + 0.5*x135 =L= 13;

e65..  - 12*i61 + 0.5*x122 + 0.5*x126 - x160 =L= 0;

e66..    13*i61 + 0.5*x124 + 0.5*x128 - x161 =L= 13;

e67..  - 12*i63 + 0.5*x122 + 0.5*x130 - x162 =L= 0;

e68..    13*i63 + 0.5*x124 + 0.5*x132 - x163 =L= 13;

e69..  - 12*i65 - x100 + 0.5*x122 + 0.5*x134 =L= 0;

e70..    13*i65 - x101 + 0.5*x124 + 0.5*x135 =L= 13;

e71..  - 12*i67 + 0.5*x126 + 0.5*x130 - x164 =L= 0;

e72..    13*i67 + 0.5*x128 + 0.5*x132 - x165 =L= 13;

e73..  - 12*i69 - x102 + 0.5*x126 + 0.5*x134 =L= 0;

e74..    13*i69 - x103 + 0.5*x128 + 0.5*x135 =L= 13;

e75..  - 12*i71 + 0.5*x130 + 0.5*x134 - x166 =L= 0;

e76..    13*i71 + 0.5*x132 + 0.5*x135 - x167 =L= 13;

e77..  - 0.5*x108 - 0.125*x111 =L= -2;

e78..  - 0.125*x108 - 0.5*x111 =L= -2;

e79..  - 0.5*x109 - 0.125*x112 =L= -2;

e80..  - 0.125*x109 - 0.5*x112 =L= -2;

e81..  - 0.5*x114 - 0.125*x116 =L= -2;

e82..  - 0.125*x114 - 0.5*x116 =L= -2;

e83..  - 0.333333*x118 - 0.083333*x119 =L= -2;

e84..  - 0.083333*x118 - 0.333333*x119 =L= -2;

e85..  - 0.333333*x120 - 0.083333*x121 =L= -2;

e86..  - 0.083333*x120 - 0.333333*x121 =L= -2;

e87..  - 0.666667*x122 - 0.166667*x124 =L= -2;

e88..  - 0.166667*x122 - 0.666667*x124 =L= -2;

e89..  - 0.666667*x126 - 0.166667*x128 =L= -2;

e90..  - 0.166667*x126 - 0.666667*x128 =L= -2;

e91..  - 0.666667*x130 - 0.166667*x132 =L= -2;

e92..  - 0.166667*x130 - 0.666667*x132 =L= -2;

e93..  - 0.666667*x134 - 0.166667*x135 =L= -2;

e94..  - 0.166667*x134 - 0.666667*x135 =L= -2;

e95..    x104 + 0.5*x108 =L= 12;

e96..  - x104 + 0.5*x108 =L= 0;

e97..    x107 + 0.5*x111 =L= 13;

e98..  - x107 + 0.5*x111 =L= 0;

e99..    x105 + 0.5*x109 =L= 12;

e100..  - x105 + 0.5*x109 =L= 0;

e101..    x106 + 0.5*x112 =L= 13;

e102..  - x106 + 0.5*x112 =L= 0;

e103..    0.5*x114 + x168 =L= 12;

e104..    0.5*x114 - x168 =L= 0;

e105..    0.5*x116 + x169 =L= 13;

e106..    0.5*x116 - x169 =L= 0;

e107..    0.5*x118 + x170 =L= 12;

e108..    0.5*x118 - x170 =L= 0;

e109..    0.5*x119 + x171 =L= 13;

e110..    0.5*x119 - x171 =L= 0;

e111..    0.5*x120 + x172 =L= 12;

e112..    0.5*x120 - x172 =L= 0;

e113..    0.5*x121 + x173 =L= 13;

e114..    0.5*x121 - x173 =L= 0;

e115..    0.5*x122 + x174 =L= 12;

e116..    0.5*x122 - x174 =L= 0;

e117..    0.5*x124 + x175 =L= 13;

e118..    0.5*x124 - x175 =L= 0;

e119..    0.5*x126 + x176 =L= 12;

e120..    0.5*x126 - x176 =L= 0;

e121..    0.5*x128 + x177 =L= 13;

e122..    0.5*x128 - x177 =L= 0;

e123..    0.5*x130 + x178 =L= 12;

e124..    0.5*x130 - x178 =L= 0;

e125..    0.5*x132 + x179 =L= 13;

e126..    0.5*x132 - x179 =L= 0;

e127..    0.5*x134 + x180 =L= 12;

e128..    0.5*x134 - x180 =L= 0;

e129..    0.5*x135 + x181 =L= 13;

e130..    0.5*x135 - x181 =L= 0;

e131..    x104 - x105 - x110 =L= 0;

e132..  - x104 + x105 - x110 =L= 0;

e133..  - x106 + x107 - x113 =L= 0;

e134..    x106 - x107 - x113 =L= 0;

e135..  - 12*i1 - 12*i2 - x104 + x105 + 0.5*x108 + 0.5*x109 =L= 0;

e136..  - 12*i1 + 12*i2 + x104 - x105 + 0.5*x108 + 0.5*x109 =L= 12;

e137..    13*i1 - 13*i2 + x106 - x107 + 0.5*x111 + 0.5*x112 =L= 13;

e138..    13*i1 + 13*i2 - x106 + x107 + 0.5*x111 + 0.5*x112 =L= 26;

e139..    x104 - x115 - x168 =L= 0;

e140..  - x104 - x115 + x168 =L= 0;

e141..    x107 - x117 - x169 =L= 0;

e142..  - x107 - x117 + x169 =L= 0;

e143..  - 12*i3 - 12*i4 - x104 + 0.5*x108 + 0.5*x114 + x168 =L= 0;

e144..  - 12*i3 + 12*i4 + x104 + 0.5*x108 + 0.5*x114 - x168 =L= 12;

e145..    13*i3 - 13*i4 - x107 + 0.5*x111 + 0.5*x116 + x169 =L= 13;

e146..    13*i3 + 13*i4 + x107 + 0.5*x111 + 0.5*x116 - x169 =L= 26;

e147..  - x74 + x104 - x170 =L= 0;

e148..  - x74 - x104 + x170 =L= 0;

e149..  - x75 + x107 - x171 =L= 0;

e150..  - x75 - x107 + x171 =L= 0;

e151..  - 12*i5 - 12*i6 - x104 + 0.5*x108 + 0.5*x118 + x170 =L= 0;

e152..  - 12*i5 + 12*i6 + x104 + 0.5*x108 + 0.5*x118 - x170 =L= 12;

e153..    13*i5 - 13*i6 - x107 + 0.5*x111 + 0.5*x119 + x171 =L= 13;

e154..    13*i5 + 13*i6 + x107 + 0.5*x111 + 0.5*x119 - x171 =L= 26;

e155..  - x76 + x104 - x172 =L= 0;

e156..  - x76 - x104 + x172 =L= 0;

e157..  - x77 + x107 - x173 =L= 0;

e158..  - x77 - x107 + x173 =L= 0;

e159..  - 12*i7 - 12*i8 - x104 + 0.5*x108 + 0.5*x120 + x172 =L= 0;

e160..  - 12*i7 + 12*i8 + x104 + 0.5*x108 + 0.5*x120 - x172 =L= 12;

e161..    13*i7 - 13*i8 - x107 + 0.5*x111 + 0.5*x121 + x173 =L= 13;

e162..    13*i7 + 13*i8 + x107 + 0.5*x111 + 0.5*x121 - x173 =L= 26;

e163..    x104 - x123 - x174 =L= 0;

e164..  - x104 - x123 + x174 =L= 0;

e165..    x107 - x125 - x175 =L= 0;

e166..  - x107 - x125 + x175 =L= 0;

e167..  - 12*i9 - 12*i10 - x104 + 0.5*x108 + 0.5*x122 + x174 =L= 0;

e168..  - 12*i9 + 12*i10 + x104 + 0.5*x108 + 0.5*x122 - x174 =L= 12;

e169..    13*i9 - 13*i10 - x107 + 0.5*x111 + 0.5*x124 + x175 =L= 13;

e170..    13*i9 + 13*i10 + x107 + 0.5*x111 + 0.5*x124 - x175 =L= 26;

e171..    x104 - x127 - x176 =L= 0;

e172..  - x104 - x127 + x176 =L= 0;

e173..    x107 - x129 - x177 =L= 0;

e174..  - x107 - x129 + x177 =L= 0;

e175..  - 12*i11 - 12*i12 - x104 + 0.5*x108 + 0.5*x126 + x176 =L= 0;

e176..  - 12*i11 + 12*i12 + x104 + 0.5*x108 + 0.5*x126 - x176 =L= 12;

e177..    13*i11 - 13*i12 - x107 + 0.5*x111 + 0.5*x128 + x177 =L= 13;

e178..    13*i11 + 13*i12 + x107 + 0.5*x111 + 0.5*x128 - x177 =L= 26;

e179..    x104 - x131 - x178 =L= 0;

e180..  - x104 - x131 + x178 =L= 0;

e181..    x107 - x133 - x179 =L= 0;

e182..  - x107 - x133 + x179 =L= 0;

e183..  - 12*i13 - 12*i14 - x104 + 0.5*x108 + 0.5*x130 + x178 =L= 0;

e184..  - 12*i13 + 12*i14 + x104 + 0.5*x108 + 0.5*x130 - x178 =L= 12;

e185..    13*i13 - 13*i14 - x107 + 0.5*x111 + 0.5*x132 + x179 =L= 13;

e186..    13*i13 + 13*i14 + x107 + 0.5*x111 + 0.5*x132 - x179 =L= 26;

e187..  - x78 + x104 - x180 =L= 0;

e188..  - x78 - x104 + x180 =L= 0;

e189..  - x79 + x107 - x181 =L= 0;

e190..  - x79 - x107 + x181 =L= 0;

e191..  - 12*i15 - 12*i16 - x104 + 0.5*x108 + 0.5*x134 + x180 =L= 0;

e192..  - 12*i15 + 12*i16 + x104 + 0.5*x108 + 0.5*x134 - x180 =L= 12;

e193..    13*i15 - 13*i16 - x107 + 0.5*x111 + 0.5*x135 + x181 =L= 13;

e194..    13*i15 + 13*i16 + x107 + 0.5*x111 + 0.5*x135 - x181 =L= 26;

e195..    x105 - x136 - x168 =L= 0;

e196..  - x105 - x136 + x168 =L= 0;

e197..    x106 - x137 - x169 =L= 0;

e198..  - x106 - x137 + x169 =L= 0;

e199..  - 12*i17 - 12*i18 - x105 + 0.5*x109 + 0.5*x114 + x168 =L= 0;

e200..  - 12*i17 + 12*i18 + x105 + 0.5*x109 + 0.5*x114 - x168 =L= 12;

e201..    13*i17 - 13*i18 - x106 + 0.5*x112 + 0.5*x116 + x169 =L= 13;

e202..    13*i17 + 13*i18 + x106 + 0.5*x112 + 0.5*x116 - x169 =L= 26;

e203..  - x80 + x105 - x170 =L= 0;

e204..  - x80 - x105 + x170 =L= 0;

e205..  - x81 + x106 - x171 =L= 0;

e206..  - x81 - x106 + x171 =L= 0;

e207..  - 12*i19 - 12*i20 - x105 + 0.5*x109 + 0.5*x118 + x170 =L= 0;

e208..  - 12*i19 + 12*i20 + x105 + 0.5*x109 + 0.5*x118 - x170 =L= 12;

e209..    13*i19 - 13*i20 - x106 + 0.5*x112 + 0.5*x119 + x171 =L= 13;

e210..    13*i19 + 13*i20 + x106 + 0.5*x112 + 0.5*x119 - x171 =L= 26;

e211..  - x82 + x105 - x172 =L= 0;

e212..  - x82 - x105 + x172 =L= 0;

e213..  - x83 + x106 - x173 =L= 0;

e214..  - x83 - x106 + x173 =L= 0;

e215..  - 12*i21 - 12*i22 - x105 + 0.5*x109 + 0.5*x120 + x172 =L= 0;

e216..  - 12*i21 + 12*i22 + x105 + 0.5*x109 + 0.5*x120 - x172 =L= 12;

e217..    13*i21 - 13*i22 - x106 + 0.5*x112 + 0.5*x121 + x173 =L= 13;

e218..    13*i21 + 13*i22 + x106 + 0.5*x112 + 0.5*x121 - x173 =L= 26;

e219..    x105 - x138 - x174 =L= 0;

e220..  - x105 - x138 + x174 =L= 0;

e221..    x106 - x139 - x175 =L= 0;

e222..  - x106 - x139 + x175 =L= 0;

e223..  - 12*i23 - 12*i24 - x105 + 0.5*x109 + 0.5*x122 + x174 =L= 0;

e224..  - 12*i23 + 12*i24 + x105 + 0.5*x109 + 0.5*x122 - x174 =L= 12;

e225..    13*i23 - 13*i24 - x106 + 0.5*x112 + 0.5*x124 + x175 =L= 13;

e226..    13*i23 + 13*i24 + x106 + 0.5*x112 + 0.5*x124 - x175 =L= 26;

e227..    x105 - x140 - x176 =L= 0;

e228..  - x105 - x140 + x176 =L= 0;

e229..    x106 - x141 - x177 =L= 0;

e230..  - x106 - x141 + x177 =L= 0;

e231..  - 12*i25 - 12*i26 - x105 + 0.5*x109 + 0.5*x126 + x176 =L= 0;

e232..  - 12*i25 + 12*i26 + x105 + 0.5*x109 + 0.5*x126 - x176 =L= 12;

e233..    13*i25 - 13*i26 - x106 + 0.5*x112 + 0.5*x128 + x177 =L= 13;

e234..    13*i25 + 13*i26 + x106 + 0.5*x112 + 0.5*x128 - x177 =L= 26;

e235..    x105 - x142 - x178 =L= 0;

e236..  - x105 - x142 + x178 =L= 0;

e237..    x106 - x143 - x179 =L= 0;

e238..  - x106 - x143 + x179 =L= 0;

e239..  - 12*i27 - 12*i28 - x105 + 0.5*x109 + 0.5*x130 + x178 =L= 0;

e240..  - 12*i27 + 12*i28 + x105 + 0.5*x109 + 0.5*x130 - x178 =L= 12;

e241..    13*i27 - 13*i28 - x106 + 0.5*x112 + 0.5*x132 + x179 =L= 13;

e242..    13*i27 + 13*i28 + x106 + 0.5*x112 + 0.5*x132 - x179 =L= 26;

e243..  - x84 + x105 - x180 =L= 0;

e244..  - x84 - x105 + x180 =L= 0;

e245..  - x85 + x106 - x181 =L= 0;

e246..  - x85 - x106 + x181 =L= 0;

e247..  - 12*i29 - 12*i30 - x105 + 0.5*x109 + 0.5*x134 + x180 =L= 0;

e248..  - 12*i29 + 12*i30 + x105 + 0.5*x109 + 0.5*x134 - x180 =L= 12;

e249..    13*i29 - 13*i30 - x106 + 0.5*x112 + 0.5*x135 + x181 =L= 13;

e250..    13*i29 + 13*i30 + x106 + 0.5*x112 + 0.5*x135 - x181 =L= 26;

e251..  - x86 + x168 - x170 =L= 0;

e252..  - x86 - x168 + x170 =L= 0;

e253..  - x87 + x169 - x171 =L= 0;

e254..  - x87 - x169 + x171 =L= 0;

e255..  - 12*i31 - 12*i32 + 0.5*x114 + 0.5*x118 - x168 + x170 =L= 0;

e256..  - 12*i31 + 12*i32 + 0.5*x114 + 0.5*x118 + x168 - x170 =L= 12;

e257..    13*i31 - 13*i32 + 0.5*x116 + 0.5*x119 - x169 + x171 =L= 13;

e258..    13*i31 + 13*i32 + 0.5*x116 + 0.5*x119 + x169 - x171 =L= 26;

e259..  - x88 + x168 - x172 =L= 0;

e260..  - x88 - x168 + x172 =L= 0;

e261..  - x89 + x169 - x173 =L= 0;

e262..  - x89 - x169 + x173 =L= 0;

e263..  - 12*i33 - 12*i34 + 0.5*x114 + 0.5*x120 - x168 + x172 =L= 0;

e264..  - 12*i33 + 12*i34 + 0.5*x114 + 0.5*x120 + x168 - x172 =L= 12;

e265..    13*i33 - 13*i34 + 0.5*x116 + 0.5*x121 - x169 + x173 =L= 13;

e266..    13*i33 + 13*i34 + 0.5*x116 + 0.5*x121 + x169 - x173 =L= 26;

e267..  - x144 + x168 - x174 =L= 0;

e268..  - x144 - x168 + x174 =L= 0;

e269..  - x145 + x169 - x175 =L= 0;

e270..  - x145 - x169 + x175 =L= 0;

e271..  - 12*i35 - 12*i36 + 0.5*x114 + 0.5*x122 - x168 + x174 =L= 0;

e272..  - 12*i35 + 12*i36 + 0.5*x114 + 0.5*x122 + x168 - x174 =L= 12;

e273..    13*i35 - 13*i36 + 0.5*x116 + 0.5*x124 - x169 + x175 =L= 13;

e274..    13*i35 + 13*i36 + 0.5*x116 + 0.5*x124 + x169 - x175 =L= 26;

e275..  - x146 + x168 - x176 =L= 0;

e276..  - x146 - x168 + x176 =L= 0;

e277..  - x147 + x169 - x177 =L= 0;

e278..  - x147 - x169 + x177 =L= 0;

e279..  - 12*i37 - 12*i38 + 0.5*x114 + 0.5*x126 - x168 + x176 =L= 0;

e280..  - 12*i37 + 12*i38 + 0.5*x114 + 0.5*x126 + x168 - x176 =L= 12;

e281..    13*i37 - 13*i38 + 0.5*x116 + 0.5*x128 - x169 + x177 =L= 13;

e282..    13*i37 + 13*i38 + 0.5*x116 + 0.5*x128 + x169 - x177 =L= 26;

e283..  - x148 + x168 - x178 =L= 0;

e284..  - x148 - x168 + x178 =L= 0;

e285..  - x149 + x169 - x179 =L= 0;

e286..  - x149 - x169 + x179 =L= 0;

e287..  - 12*i39 - 12*i40 + 0.5*x114 + 0.5*x130 - x168 + x178 =L= 0;

e288..  - 12*i39 + 12*i40 + 0.5*x114 + 0.5*x130 + x168 - x178 =L= 12;

e289..    13*i39 - 13*i40 + 0.5*x116 + 0.5*x132 - x169 + x179 =L= 13;

e290..    13*i39 + 13*i40 + 0.5*x116 + 0.5*x132 + x169 - x179 =L= 26;

e291..  - x90 + x168 - x180 =L= 0;

e292..  - x90 - x168 + x180 =L= 0;

e293..  - x91 + x169 - x181 =L= 0;

e294..  - x91 - x169 + x181 =L= 0;

e295..  - 12*i41 - 12*i42 + 0.5*x114 + 0.5*x134 - x168 + x180 =L= 0;

e296..  - 12*i41 + 12*i42 + 0.5*x114 + 0.5*x134 + x168 - x180 =L= 12;

e297..    13*i41 - 13*i42 + 0.5*x116 + 0.5*x135 - x169 + x181 =L= 13;

e298..    13*i41 + 13*i42 + 0.5*x116 + 0.5*x135 + x169 - x181 =L= 26;

e299..  - x150 + x170 - x172 =L= 0;

e300..  - x150 - x170 + x172 =L= 0;

e301..  - x151 + x171 - x173 =L= 0;

e302..  - x151 - x171 + x173 =L= 0;

e303..  - 12*i43 - 12*i44 + 0.5*x118 + 0.5*x120 - x170 + x172 =L= 0;

e304..  - 12*i43 + 12*i44 + 0.5*x118 + 0.5*x120 + x170 - x172 =L= 12;

e305..    13*i43 - 13*i44 + 0.5*x119 + 0.5*x121 - x171 + x173 =L= 13;

e306..    13*i43 + 13*i44 + 0.5*x119 + 0.5*x121 + x171 - x173 =L= 26;

e307..  - x92 + x170 - x174 =L= 0;

e308..  - x92 - x170 + x174 =L= 0;

e309..  - x93 + x171 - x175 =L= 0;

e310..  - x93 - x171 + x175 =L= 0;

e311..  - 12*i45 - 12*i46 + 0.5*x118 + 0.5*x122 - x170 + x174 =L= 0;

e312..  - 12*i45 + 12*i46 + 0.5*x118 + 0.5*x122 + x170 - x174 =L= 12;

e313..    13*i45 - 13*i46 + 0.5*x119 + 0.5*x124 - x171 + x175 =L= 13;

e314..    13*i45 + 13*i46 + 0.5*x119 + 0.5*x124 + x171 - x175 =L= 26;

e315..  - x94 + x170 - x176 =L= 0;

e316..  - x94 - x170 + x176 =L= 0;

e317..  - x95 + x171 - x177 =L= 0;

e318..  - x95 - x171 + x177 =L= 0;

e319..  - 12*i47 - 12*i48 + 0.5*x118 + 0.5*x126 - x170 + x176 =L= 0;

e320..  - 12*i47 + 12*i48 + 0.5*x118 + 0.5*x126 + x170 - x176 =L= 12;

e321..    13*i47 - 13*i48 + 0.5*x119 + 0.5*x128 - x171 + x177 =L= 13;

e322..    13*i47 + 13*i48 + 0.5*x119 + 0.5*x128 + x171 - x177 =L= 26;

e323..  - x152 + x170 - x178 =L= 0;

e324..  - x152 - x170 + x178 =L= 0;

e325..  - x153 + x171 - x179 =L= 0;

e326..  - x153 - x171 + x179 =L= 0;

e327..  - 12*i49 - 12*i50 + 0.5*x118 + 0.5*x130 - x170 + x178 =L= 0;

e328..  - 12*i49 + 12*i50 + 0.5*x118 + 0.5*x130 + x170 - x178 =L= 12;

e329..    13*i49 - 13*i50 + 0.5*x119 + 0.5*x132 - x171 + x179 =L= 13;

e330..    13*i49 + 13*i50 + 0.5*x119 + 0.5*x132 + x171 - x179 =L= 26;

e331..  - x154 + x170 - x180 =L= 0;

e332..  - x154 - x170 + x180 =L= 0;

e333..  - x155 + x171 - x181 =L= 0;

e334..  - x155 - x171 + x181 =L= 0;

e335..  - 12*i51 - 12*i52 + 0.5*x118 + 0.5*x134 - x170 + x180 =L= 0;

e336..  - 12*i51 + 12*i52 + 0.5*x118 + 0.5*x134 + x170 - x180 =L= 12;

e337..    13*i51 - 13*i52 + 0.5*x119 + 0.5*x135 - x171 + x181 =L= 13;

e338..    13*i51 + 13*i52 + 0.5*x119 + 0.5*x135 + x171 - x181 =L= 26;

e339..  - x96 + x172 - x174 =L= 0;

e340..  - x96 - x172 + x174 =L= 0;

e341..  - x97 + x173 - x175 =L= 0;

e342..  - x97 - x173 + x175 =L= 0;

e343..  - 12*i53 - 12*i54 + 0.5*x120 + 0.5*x122 - x172 + x174 =L= 0;

e344..  - 12*i53 + 12*i54 + 0.5*x120 + 0.5*x122 + x172 - x174 =L= 12;

e345..    13*i53 - 13*i54 + 0.5*x121 + 0.5*x124 - x173 + x175 =L= 13;

e346..    13*i53 + 13*i54 + 0.5*x121 + 0.5*x124 + x173 - x175 =L= 26;

e347..  - x156 + x172 - x176 =L= 0;

e348..  - x156 - x172 + x176 =L= 0;

e349..  - x157 + x173 - x177 =L= 0;

e350..  - x157 - x173 + x177 =L= 0;

e351..  - 12*i55 - 12*i56 + 0.5*x120 + 0.5*x126 - x172 + x176 =L= 0;

e352..  - 12*i55 + 12*i56 + 0.5*x120 + 0.5*x126 + x172 - x176 =L= 12;

e353..    13*i55 - 13*i56 + 0.5*x121 + 0.5*x128 - x173 + x177 =L= 13;

e354..    13*i55 + 13*i56 + 0.5*x121 + 0.5*x128 + x173 - x177 =L= 26;

e355..  - x158 + x172 - x178 =L= 0;

e356..  - x158 - x172 + x178 =L= 0;

e357..  - x159 + x173 - x179 =L= 0;

e358..  - x159 - x173 + x179 =L= 0;

e359..  - 12*i57 - 12*i58 + 0.5*x120 + 0.5*x130 - x172 + x178 =L= 0;

e360..  - 12*i57 + 12*i58 + 0.5*x120 + 0.5*x130 + x172 - x178 =L= 12;

e361..    13*i57 - 13*i58 + 0.5*x121 + 0.5*x132 - x173 + x179 =L= 13;

e362..    13*i57 + 13*i58 + 0.5*x121 + 0.5*x132 + x173 - x179 =L= 26;

e363..  - x98 + x172 - x180 =L= 0;

e364..  - x98 - x172 + x180 =L= 0;

e365..  - x99 + x173 - x181 =L= 0;

e366..  - x99 - x173 + x181 =L= 0;

e367..  - 12*i59 - 12*i60 + 0.5*x120 + 0.5*x134 - x172 + x180 =L= 0;

e368..  - 12*i59 + 12*i60 + 0.5*x120 + 0.5*x134 + x172 - x180 =L= 12;

e369..    13*i59 - 13*i60 + 0.5*x121 + 0.5*x135 - x173 + x181 =L= 13;

e370..    13*i59 + 13*i60 + 0.5*x121 + 0.5*x135 + x173 - x181 =L= 26;

e371..  - x160 + x174 - x176 =L= 0;

e372..  - x160 - x174 + x176 =L= 0;

e373..  - x161 + x175 - x177 =L= 0;

e374..  - x161 - x175 + x177 =L= 0;

e375..  - 12*i61 - 12*i62 + 0.5*x122 + 0.5*x126 - x174 + x176 =L= 0;

e376..  - 12*i61 + 12*i62 + 0.5*x122 + 0.5*x126 + x174 - x176 =L= 12;

e377..    13*i61 - 13*i62 + 0.5*x124 + 0.5*x128 - x175 + x177 =L= 13;

e378..    13*i61 + 13*i62 + 0.5*x124 + 0.5*x128 + x175 - x177 =L= 26;

e379..  - x162 + x174 - x178 =L= 0;

e380..  - x162 - x174 + x178 =L= 0;

e381..  - x163 + x175 - x179 =L= 0;

e382..  - x163 - x175 + x179 =L= 0;

e383..  - 12*i63 - 12*i64 + 0.5*x122 + 0.5*x130 - x174 + x178 =L= 0;

e384..  - 12*i63 + 12*i64 + 0.5*x122 + 0.5*x130 + x174 - x178 =L= 12;

e385..    13*i63 - 13*i64 + 0.5*x124 + 0.5*x132 - x175 + x179 =L= 13;

e386..    13*i63 + 13*i64 + 0.5*x124 + 0.5*x132 + x175 - x179 =L= 26;

e387..  - x100 + x174 - x180 =L= 0;

e388..  - x100 - x174 + x180 =L= 0;

e389..  - x101 + x175 - x181 =L= 0;

e390..  - x101 - x175 + x181 =L= 0;

e391..  - 12*i65 - 12*i66 + 0.5*x122 + 0.5*x134 - x174 + x180 =L= 0;

e392..  - 12*i65 + 12*i66 + 0.5*x122 + 0.5*x134 + x174 - x180 =L= 12;

e393..    13*i65 - 13*i66 + 0.5*x124 + 0.5*x135 - x175 + x181 =L= 13;

e394..    13*i65 + 13*i66 + 0.5*x124 + 0.5*x135 + x175 - x181 =L= 26;

e395..  - x164 + x176 - x178 =L= 0;

e396..  - x164 - x176 + x178 =L= 0;

e397..  - x165 + x177 - x179 =L= 0;

e398..  - x165 - x177 + x179 =L= 0;

e399..  - 12*i67 - 12*i68 + 0.5*x126 + 0.5*x130 - x176 + x178 =L= 0;

e400..  - 12*i67 + 12*i68 + 0.5*x126 + 0.5*x130 + x176 - x178 =L= 12;

e401..    13*i67 - 13*i68 + 0.5*x128 + 0.5*x132 - x177 + x179 =L= 13;

e402..    13*i67 + 13*i68 + 0.5*x128 + 0.5*x132 + x177 - x179 =L= 26;

e403..  - x102 + x176 - x180 =L= 0;

e404..  - x102 - x176 + x180 =L= 0;

e405..  - x103 + x177 - x181 =L= 0;

e406..  - x103 - x177 + x181 =L= 0;

e407..  - 12*i69 - 12*i70 + 0.5*x126 + 0.5*x134 - x176 + x180 =L= 0;

e408..  - 12*i69 + 12*i70 + 0.5*x126 + 0.5*x134 + x176 - x180 =L= 12;

e409..    13*i69 - 13*i70 + 0.5*x128 + 0.5*x135 - x177 + x181 =L= 13;

e410..    13*i69 + 13*i70 + 0.5*x128 + 0.5*x135 + x177 - x181 =L= 26;

e411..  - x166 + x178 - x180 =L= 0;

e412..  - x166 - x178 + x180 =L= 0;

e413..  - x167 + x179 - x181 =L= 0;

e414..  - x167 - x179 + x181 =L= 0;

e415..  - 12*i71 - 12*i72 + 0.5*x130 + 0.5*x134 - x178 + x180 =L= 0;

e416..  - 12*i71 + 12*i72 + 0.5*x130 + 0.5*x134 + x178 - x180 =L= 12;

e417..    13*i71 - 13*i72 + 0.5*x132 + 0.5*x135 - x179 + x181 =L= 13;

e418..    13*i71 + 13*i72 + 0.5*x132 + 0.5*x135 + x179 - x181 =L= 26;

e419.. 16/x108 - x111 =L= 0;

e420.. 16/x111 - x108 =L= 0;

e421.. 16/x109 - x112 =L= 0;

e422.. 16/x112 - x109 =L= 0;

e423.. 16/x114 - x116 =L= 0;

e424.. 16/x116 - x114 =L= 0;

e425.. 36/x118 - x119 =L= 0;

e426.. 36/x119 - x118 =L= 0;

e427.. 36/x120 - x121 =L= 0;

e428.. 36/x121 - x120 =L= 0;

e429.. 9/x122 - x124 =L= 0;

e430.. 9/x124 - x122 =L= 0;

e431.. 9/x126 - x128 =L= 0;

e432.. 9/x128 - x126 =L= 0;

e433.. 9/x130 - x132 =L= 0;

e434.. 9/x132 - x130 =L= 0;

e435.. 9/x134 - x135 =L= 0;

e436.. 9/x135 - x134 =L= 0;

* set non default bounds

i1.up = 100; 
i2.up = 100; 
i3.up = 100; 
i4.up = 100; 
i5.up = 100; 
i6.up = 100; 
i7.up = 100; 
i8.up = 100; 
i9.up = 100; 
i10.up = 100; 
i11.up = 100; 
i12.up = 100; 
i13.up = 100; 
i14.up = 100; 
i15.up = 100; 
i16.up = 100; 
i17.up = 100; 
i18.up = 100; 
i19.up = 100; 
i20.up = 100; 
i21.up = 100; 
i22.up = 100; 
i23.up = 100; 
i24.up = 100; 
i25.up = 100; 
i26.up = 100; 
i27.up = 100; 
i28.up = 100; 
i29.up = 100; 
i30.up = 100; 
i31.up = 100; 
i32.up = 100; 
i33.up = 100; 
i34.up = 100; 
i35.up = 100; 
i36.up = 100; 
i37.up = 100; 
i38.up = 100; 
i39.up = 100; 
i40.up = 100; 
i41.up = 100; 
i42.up = 100; 
i43.up = 100; 
i44.up = 100; 
i45.up = 100; 
i46.up = 100; 
i47.up = 100; 
i48.up = 100; 
i49.up = 100; 
i50.up = 100; 
i51.up = 100; 
i52.up = 100; 
i53.up = 100; 
i54.up = 100; 
i55.up = 100; 
i56.up = 100; 
i57.up = 100; 
i58.up = 100; 
i59.up = 100; 
i60.up = 100; 
i61.up = 100; 
i62.up = 100; 
i63.up = 100; 
i64.up = 100; 
i65.up = 100; 
i66.up = 100; 
i67.up = 100; 
i68.up = 100; 
i69.up = 100; 
i70.up = 100; 
i71.up = 100; 
i72.up = 100; 
x108.lo = 2; x108.up = 8; 
x109.lo = 2; x109.up = 8; 
x111.lo = 2; x111.up = 8; 
x112.lo = 2; x112.up = 8; 
x114.lo = 2; x114.up = 8; 
x116.lo = 2; x116.up = 8; 
x118.lo = 3; x118.up = 12; 
x119.lo = 3; x119.up = 12; 
x120.lo = 3; x120.up = 12; 
x121.lo = 3; x121.up = 12; 
x122.lo = 1.5; x122.up = 6; 
x124.lo = 1.5; x124.up = 6; 
x126.lo = 1.5; x126.up = 6; 
x128.lo = 1.5; x128.up = 6; 
x130.lo = 1.5; x130.up = 6; 
x132.lo = 1.5; x132.up = 6; 
x134.lo = 1.5; x134.up = 6; 
x135.lo = 1.5; x135.up = 6; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;