$offlisting
*  MINLP written by GAMS Convert at 04/27/01 14:52:49
*  
*  Equation counts
*     Total       E       G       L       N       X
*       202     152       0      50       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       384     144     240       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*      1513    1402     111       0
*
*  Solve m using MINLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35
          ,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86
          ,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102
          ,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115
          ,x116,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128
          ,x129,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141
          ,x142,x143,x144,b145,b146,b147,b148,b149,b150,b151,b152,b153,b154
          ,b155,b156,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166,b167
          ,b168,b169,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b180
          ,b181,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192,b193
          ,b194,b195,b196,b197,b198,b199,b200,b201,b202,b203,b204,b205,b206
          ,b207,b208,b209,b210,b211,b212,b213,b214,b215,b216,b217,b218,b219
          ,b220,b221,b222,b223,b224,b225,b226,b227,b228,b229,b230,b231,b232
          ,b233,b234,b235,b236,b237,b238,b239,b240,b241,b242,b243,b244,b245
          ,b246,b247,b248,b249,b250,b251,b252,b253,b254,b255,b256,b257,b258
          ,b259,b260,b261,b262,b263,b264,b265,b266,b267,b268,b269,b270,b271
          ,b272,b273,b274,b275,b276,b277,b278,b279,b280,b281,b282,b283,b284
          ,b285,b286,b287,b288,b289,b290,b291,b292,b293,b294,b295,b296,b297
          ,b298,b299,b300,b301,b302,b303,b304,b305,b306,b307,b308,b309,b310
          ,b311,b312,b313,b314,b315,b316,b317,b318,b319,b320,b321,b322,b323
          ,b324,b325,b326,b327,b328,b329,b330,b331,b332,b333,b334,b335,b336
          ,b337,b338,b339,b340,b341,b342,b343,b344,b345,b346,b347,b348,b349
          ,b350,b351,b352,b353,b354,b355,b356,b357,b358,b359,b360,b361,b362
          ,b363,b364,b365,b366,b367,b368,b369,b370,b371,b372,b373,b374,b375
          ,b376,b377,b378,b379,b380,b381,b382,b383,b384;

Binary Variables b145,b146,b147,b148,b149,b150,b151,b152,b153,b154,b155,b156
          ,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166,b167,b168,b169
          ,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b180,b181,b182
          ,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192,b193,b194,b195
          ,b196,b197,b198,b199,b200,b201,b202,b203,b204,b205,b206,b207,b208
          ,b209,b210,b211,b212,b213,b214,b215,b216,b217,b218,b219,b220,b221
          ,b222,b223,b224,b225,b226,b227,b228,b229,b230,b231,b232,b233,b234
          ,b235,b236,b237,b238,b239,b240,b241,b242,b243,b244,b245,b246,b247
          ,b248,b249,b250,b251,b252,b253,b254,b255,b256,b257,b258,b259,b260
          ,b261,b262,b263,b264,b265,b266,b267,b268,b269,b270,b271,b272,b273
          ,b274,b275,b276,b277,b278,b279,b280,b281,b282,b283,b284,b285,b286
          ,b287,b288,b289,b290,b291,b292,b293,b294,b295,b296,b297,b298,b299
          ,b300,b301,b302,b303,b304,b305,b306,b307,b308,b309,b310,b311,b312
          ,b313,b314,b315,b316,b317,b318,b319,b320,b321,b322,b323,b324,b325
          ,b326,b327,b328,b329,b330,b331,b332,b333,b334,b335,b336,b337,b338
          ,b339,b340,b341,b342,b343,b344,b345,b346,b347,b348,b349,b350,b351
          ,b352,b353,b354,b355,b356,b357,b358,b359,b360,b361,b362,b363,b364
          ,b365,b366,b367,b368,b369,b370,b371,b372,b373,b374,b375,b376,b377
          ,b378,b379,b380,b381,b382,b383,b384;

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
          ,e195,e196,e197,e198,e199,e200,e201,e202;


e1..    objvar - 7.5*x2 - 13.0503831361382*x3 - 13.0503831361382*x4
      - 13.0503831361382*x5 - 13.0503831361382*x6 - 10.6800046816469*x7
      - 10.6800046816469*x8 - 10.6800046816469*x9 - 10.6800046816469*x10
      - 7.5*x11 - 7.5*x12 - 7.5*x13 - 7.5*x14 - 18.1142209327368*x15
      - 18.1142209327368*x16 - 18.1142209327368*x17 - 18.1142209327368*x18
      - 18.1142209327368*x19 - 18.1142209327368*x20 - 18.1142209327368*x21
      - 18.1142209327368*x22 - 13.3463478150391*x23 - 13.3463478150391*x24
      - 13.3463478150391*x25 - 13.3463478150391*x26 =E= 0;

e2..  - 133.333333333333*x2 + x27 =E= 0;

e3..  - 76.6261028176921*x3 + x28 =E= 0;

e4..  - 76.6261028176921*x4 + x29 =E= 0;

e5..  - 76.6261028176921*x5 + x30 =E= 0;

e6..  - 76.6261028176921*x6 + x31 =E= 0;

e7..  - 93.6329177569045*x7 + x32 =E= 0;

e8..  - 93.6329177569045*x8 + x33 =E= 0;

e9..  - 93.6329177569045*x9 + x34 =E= 0;

e10..  - 93.6329177569045*x10 + x35 =E= 0;

e11..  - 133.333333333333*x11 + x36 =E= 0;

e12..  - 133.333333333333*x12 + x37 =E= 0;

e13..  - 133.333333333333*x13 + x38 =E= 0;

e14..  - 133.333333333333*x14 + x39 =E= 0;

e15..  - 55.2052447473883*x15 + x40 =E= 0;

e16..  - 55.2052447473883*x16 + x41 =E= 0;

e17..  - 55.2052447473883*x17 + x42 =E= 0;

e18..  - 55.2052447473883*x18 + x43 =E= 0;

e19..  - 55.2052447473883*x19 + x44 =E= 0;

e20..  - 55.2052447473883*x20 + x45 =E= 0;

e21..  - 55.2052447473883*x21 + x46 =E= 0;

e22..  - 55.2052447473883*x22 + x47 =E= 0;

e23..  - 74.9268649265355*x23 + x48 =E= 0;

e24..  - 74.9268649265355*x24 + x49 =E= 0;

e25..  - 74.9268649265355*x25 + x50 =E= 0;

e26..  - 74.9268649265355*x26 + x51 =E= 0;

e27..  - 40*x2 + x52 =E= 0;

e28..  - 40*x3 + x54 =E= 0;

e29..  - 40*x4 + x56 =E= 0;

e30..  - 40*x5 + x58 =E= 0;

e31..  - 40*x6 + x60 =E= 0;

e32..  - 40*x7 + x62 =E= 0;

e33..  - 40*x8 + x64 =E= 0;

e34..  - 40*x9 + x66 =E= 0;

e35..  - 40*x10 + x68 =E= 0;

e36..  - 40*x11 + x70 =E= 0;

e37..  - 40*x12 + x72 =E= 0;

e38..  - 40*x13 + x74 =E= 0;

e39..  - 40*x14 + x76 =E= 0;

e40..  - 40*x15 + x78 =E= 0;

e41..  - 40*x16 + x80 =E= 0;

e42..  - 40*x17 + x82 =E= 0;

e43..  - 40*x18 + x84 =E= 0;

e44..  - 40*x19 + x86 =E= 0;

e45..  - 40*x20 + x88 =E= 0;

e46..  - 40*x21 + x90 =E= 0;

e47..  - 40*x22 + x92 =E= 0;

e48..  - 40*x23 + x94 =E= 0;

e49..  - 40*x24 + x96 =E= 0;

e50..  - 40*x25 + x98 =E= 0;

e51..  - 40*x26 + x100 =E= 0;

e52..  - 40*x2 + x53 =E= 0;

e53..  - 40*x3 + x55 =E= 0;

e54..  - 40*x4 + x57 =E= 0;

e55..  - 40*x5 + x59 =E= 0;

e56..  - 40*x6 + x61 =E= 0;

e57..  - 40*x7 + x63 =E= 0;

e58..  - 40*x8 + x65 =E= 0;

e59..  - 40*x9 + x67 =E= 0;

e60..  - 40*x10 + x69 =E= 0;

e61..  - 40*x11 + x71 =E= 0;

e62..  - 40*x12 + x73 =E= 0;

e63..  - 40*x13 + x75 =E= 0;

e64..  - 40*x14 + x77 =E= 0;

e65..  - 40*x15 + x79 =E= 0;

e66..  - 40*x16 + x81 =E= 0;

e67..  - 40*x17 + x83 =E= 0;

e68..  - 40*x18 + x85 =E= 0;

e69..  - 40*x19 + x87 =E= 0;

e70..  - 40*x20 + x89 =E= 0;

e71..  - 40*x21 + x91 =E= 0;

e72..  - 40*x22 + x93 =E= 0;

e73..  - 40*x23 + x95 =E= 0;

e74..  - 40*x24 + x97 =E= 0;

e75..  - 40*x25 + x99 =E= 0;

e76..  - 40*x26 + x101 =E= 0;

e77.. x27*(x130 - x127) - x102 =E= 0;

e78.. x28*(-0.574695771132691*x127 - 0.287347885566345*x128 + 0.766261028176921
      *x129 + 0.574695771132691*x136 + 0.287347885566345*x137 - 
      0.766261028176921*x138) - x103 =E= 0;

e79.. x29*(0.574695771132691*x130 - 0.287347885566345*x131 + 0.766261028176921*
      x132 - 0.574695771132691*x133 + 0.287347885566345*x134 - 
      0.766261028176921*x135) - x104 =E= 0;

e80.. x30*(0.287347885566345*x128 - 0.574695771132691*x127 + 0.766261028176921*
      x129 + 0.574695771132691*x139 - 0.287347885566345*x140 - 
      0.766261028176921*x141) - x105 =E= 0;

e81.. x31*(0.574695771132691*x130 + 0.287347885566345*x131 + 0.766261028176921*
      x132 - 0.574695771132691*x142 - 0.287347885566345*x143 - 
      0.766261028176921*x144) - x106 =E= 0;

e82.. x32*(0.936329177569045*x132 - 0.351123441588392*x131 + 0.351123441588392*
      x137 - 0.936329177569045*x138) - x107 =E= 0;

e83.. x33*(0.351123441588392*x131 + 0.936329177569045*x132 - 0.351123441588392*
      x140 - 0.936329177569045*x141) - x108 =E= 0;

e84.. x34*(0.936329177569045*x129 - 0.351123441588392*x128 + 0.351123441588392*
      x134 - 0.936329177569045*x135) - x109 =E= 0;

e85.. x35*(0.351123441588392*x128 + 0.936329177569045*x129 - 0.351123441588392*
      x143 - 0.936329177569045*x144) - x110 =E= 0;

e86.. x36*(x134 - x143) - x111 =E= 0;

e87.. x37*(x137 - x140) - x112 =E= 0;

e88.. x38*(x136 - x133) - x113 =E= 0;

e89.. x39*(x139 - x142) - x114 =E= 0;

e90.. x40*(0.345032779671177*x133 + 0.75907211527659*x134 + 0.552052447473883*
      x135) - x115 =E= 0;

e91.. x41*(0.345032779671177*x142 - 0.75907211527659*x143 + 0.552052447473883*
      x144) - x116 =E= 0;

e92.. x42*(0.75907211527659*x137 - 0.345032779671177*x136 + 0.552052447473883*
      x138) - x117 =E= 0;

e93.. x43*(-0.345032779671177*x139 - 0.75907211527659*x140 + 0.552052447473883*
      x141) - x118 =E= 0;

e94.. x44*(0.75907211527659*x136 - 0.345032779671177*x137 + 0.552052447473883*
      x138) - x119 =E= 0;

e95.. x45*(-0.75907211527659*x133 - 0.345032779671177*x134 + 0.552052447473883*
      x135) - x120 =E= 0;

e96.. x46*(0.75907211527659*x139 + 0.345032779671177*x140 + 0.552052447473883*
      x141) - x121 =E= 0;

e97.. x47*(0.345032779671177*x143 - 0.75907211527659*x142 + 0.552052447473883*
      x144) - x122 =E= 0;

e98.. x48*(0.468292905790847*x142 + 0.468292905790847*x143 + 0.749268649265355*
      x144) - x123 =E= 0;

e99.. x49*(0.468292905790847*x133 - 0.468292905790847*x134 + 0.749268649265355*
      x135) - x124 =E= 0;

e100.. x50*(-0.468292905790847*x136 - 0.468292905790847*x137 + 
       0.749268649265355*x138) - x125 =E= 0;

e101.. x51*(0.468292905790847*x140 - 0.468292905790847*x139 + 0.749268649265355
       *x141) - x126 =E= 0;

e102..  - x102 - 0.574695771132691*x103 - 0.574695771132691*x105 =E= 1;

e103..  - 0.287347885566345*x103 + 0.287347885566345*x105
        - 0.351123441588392*x109 + 0.351123441588392*x110 =E= 10;

e104..    0.766261028176921*x103 + 0.766261028176921*x105
        + 0.936329177569045*x109 + 0.936329177569045*x110 =E= -10;

e105..    x102 + 0.574695771132691*x104 + 0.574695771132691*x106 =E= 0;

e106..  - 0.287347885566345*x104 + 0.287347885566345*x106
        - 0.351123441588392*x107 + 0.351123441588392*x108 =E= 10;

e107..    0.766261028176921*x104 + 0.766261028176921*x106
        + 0.936329177569045*x107 + 0.936329177569045*x108 =E= -10;

e108..  - 0.574695771132691*x104 - x113 + 0.345032779671177*x115
        - 0.75907211527659*x120 + 0.468292905790847*x124 =E= 0.5;

e109..    0.287347885566345*x104 + 0.351123441588392*x109 + x111
        + 0.75907211527659*x115 - 0.345032779671177*x120
        - 0.468292905790847*x124 =E= 0;

e110..  - 0.766261028176921*x104 - 0.936329177569045*x109
        + 0.552052447473883*x115 + 0.552052447473883*x120
        + 0.749268649265355*x124 =E= 0;

e111..    0.574695771132691*x103 + x113 - 0.345032779671177*x117
        + 0.75907211527659*x119 - 0.468292905790847*x125 =E= 0;

e112..    0.287347885566345*x103 + 0.351123441588392*x107 + x112
        + 0.75907211527659*x117 - 0.345032779671177*x119
        - 0.468292905790847*x125 =E= 0;

e113..  - 0.766261028176921*x103 - 0.936329177569045*x107
        + 0.552052447473883*x117 + 0.552052447473883*x119
        + 0.749268649265355*x125 =E= 0;

e114..    0.574695771132691*x105 + x114 - 0.345032779671177*x118
        + 0.75907211527659*x121 - 0.468292905790847*x126 =E= 0;

e115..  - 0.287347885566345*x105 - 0.351123441588392*x108 - x112
        - 0.75907211527659*x118 + 0.345032779671177*x121
        + 0.468292905790847*x126 =E= 0;

e116..  - 0.766261028176921*x105 - 0.936329177569045*x108
        + 0.552052447473883*x118 + 0.552052447473883*x121
        + 0.749268649265355*x126 =E= 0;

e117..  - 0.574695771132691*x106 - x114 + 0.345032779671177*x116
        - 0.75907211527659*x122 + 0.468292905790847*x123 =E= 0.6;

e118..  - 0.287347885566345*x106 - 0.351123441588392*x110 - x111
        - 0.75907211527659*x116 + 0.345032779671177*x122
        + 0.468292905790847*x123 =E= 0;

e119..  - 0.766261028176921*x106 - 0.936329177569045*x110
        + 0.552052447473883*x116 + 0.552052447473883*x122
        + 0.749268649265355*x123 =E= 0;

e120..  - x52 + x102 =L= 0;

e121..  - x53 - x102 =L= 0;

e122..  - x54 + x103 =L= 0;

e123..  - x55 - x103 =L= 0;

e124..  - x56 + x104 =L= 0;

e125..  - x57 - x104 =L= 0;

e126..  - x58 + x105 =L= 0;

e127..  - x59 - x105 =L= 0;

e128..  - x60 + x106 =L= 0;

e129..  - x61 - x106 =L= 0;

e130..  - x62 + x107 =L= 0;

e131..  - x63 - x107 =L= 0;

e132..  - x64 + x108 =L= 0;

e133..  - x65 - x108 =L= 0;

e134..  - x66 + x109 =L= 0;

e135..  - x67 - x109 =L= 0;

e136..  - x68 + x110 =L= 0;

e137..  - x69 - x110 =L= 0;

e138..  - x70 + x111 =L= 0;

e139..  - x71 - x111 =L= 0;

e140..  - x72 + x112 =L= 0;

e141..  - x73 - x112 =L= 0;

e142..  - x74 + x113 =L= 0;

e143..  - x75 - x113 =L= 0;

e144..  - x76 + x114 =L= 0;

e145..  - x77 - x114 =L= 0;

e146..  - x78 + x115 =L= 0;

e147..  - x79 - x115 =L= 0;

e148..  - x80 + x116 =L= 0;

e149..  - x81 - x116 =L= 0;

e150..  - x82 + x117 =L= 0;

e151..  - x83 - x117 =L= 0;

e152..  - x84 + x118 =L= 0;

e153..  - x85 - x118 =L= 0;

e154..  - x86 + x119 =L= 0;

e155..  - x87 - x119 =L= 0;

e156..  - x88 + x120 =L= 0;

e157..  - x89 - x120 =L= 0;

e158..  - x90 + x121 =L= 0;

e159..  - x91 - x121 =L= 0;

e160..  - x92 + x122 =L= 0;

e161..  - x93 - x122 =L= 0;

e162..  - x94 + x123 =L= 0;

e163..  - x95 - x123 =L= 0;

e164..  - x96 + x124 =L= 0;

e165..  - x97 - x124 =L= 0;

e166..  - x98 + x125 =L= 0;

e167..  - x99 - x125 =L= 0;

e168..  - x100 + x126 =L= 0;

e169..  - x101 - x126 =L= 0;

e170..  - x2 + 0.1*b145 + 0.2*b146 + 0.3*b147 + 0.4*b148 + 0.5*b149 + 0.6*b150
        + 0.7*b151 + 0.8*b152 + 0.9*b153 + b154 + 1.1*b155 + 1.2*b156
        + 1.3*b157 + 1.4*b158 + 1.5*b159 + 1.6*b160 + 1.7*b161 + 1.8*b162
        + 1.9*b163 + 2*b164 + 2.1*b165 + 2.2*b166 + 2.3*b167 + 2.4*b168
        + 2.5*b169 + 2.6*b170 + 2.8*b171 + 3*b172 + 3.2*b173 + 3.4*b174 =E= 0;

e171..  - x3 + 0.1*b175 + 0.2*b176 + 0.3*b177 + 0.4*b178 + 0.5*b179 + 0.6*b180
        + 0.7*b181 + 0.8*b182 + 0.9*b183 + b184 + 1.1*b185 + 1.2*b186
        + 1.3*b187 + 1.4*b188 + 1.5*b189 + 1.6*b190 + 1.7*b191 + 1.8*b192
        + 1.9*b193 + 2*b194 + 2.1*b195 + 2.2*b196 + 2.3*b197 + 2.4*b198
        + 2.5*b199 + 2.6*b200 + 2.8*b201 + 3*b202 + 3.2*b203 + 3.4*b204 =E= 0;

e172..  - x4 + 0.1*b175 + 0.2*b176 + 0.3*b177 + 0.4*b178 + 0.5*b179 + 0.6*b180
        + 0.7*b181 + 0.8*b182 + 0.9*b183 + b184 + 1.1*b185 + 1.2*b186
        + 1.3*b187 + 1.4*b188 + 1.5*b189 + 1.6*b190 + 1.7*b191 + 1.8*b192
        + 1.9*b193 + 2*b194 + 2.1*b195 + 2.2*b196 + 2.3*b197 + 2.4*b198
        + 2.5*b199 + 2.6*b200 + 2.8*b201 + 3*b202 + 3.2*b203 + 3.4*b204 =E= 0;

e173..  - x5 + 0.1*b175 + 0.2*b176 + 0.3*b177 + 0.4*b178 + 0.5*b179 + 0.6*b180
        + 0.7*b181 + 0.8*b182 + 0.9*b183 + b184 + 1.1*b185 + 1.2*b186
        + 1.3*b187 + 1.4*b188 + 1.5*b189 + 1.6*b190 + 1.7*b191 + 1.8*b192
        + 1.9*b193 + 2*b194 + 2.1*b195 + 2.2*b196 + 2.3*b197 + 2.4*b198
        + 2.5*b199 + 2.6*b200 + 2.8*b201 + 3*b202 + 3.2*b203 + 3.4*b204 =E= 0;

e174..  - x6 + 0.1*b175 + 0.2*b176 + 0.3*b177 + 0.4*b178 + 0.5*b179 + 0.6*b180
        + 0.7*b181 + 0.8*b182 + 0.9*b183 + b184 + 1.1*b185 + 1.2*b186
        + 1.3*b187 + 1.4*b188 + 1.5*b189 + 1.6*b190 + 1.7*b191 + 1.8*b192
        + 1.9*b193 + 2*b194 + 2.1*b195 + 2.2*b196 + 2.3*b197 + 2.4*b198
        + 2.5*b199 + 2.6*b200 + 2.8*b201 + 3*b202 + 3.2*b203 + 3.4*b204 =E= 0;

e175..  - x7 + 0.1*b205 + 0.2*b206 + 0.3*b207 + 0.4*b208 + 0.5*b209 + 0.6*b210
        + 0.7*b211 + 0.8*b212 + 0.9*b213 + b214 + 1.1*b215 + 1.2*b216
        + 1.3*b217 + 1.4*b218 + 1.5*b219 + 1.6*b220 + 1.7*b221 + 1.8*b222
        + 1.9*b223 + 2*b224 + 2.1*b225 + 2.2*b226 + 2.3*b227 + 2.4*b228
        + 2.5*b229 + 2.6*b230 + 2.8*b231 + 3*b232 + 3.2*b233 + 3.4*b234 =E= 0;

e176..  - x8 + 0.1*b205 + 0.2*b206 + 0.3*b207 + 0.4*b208 + 0.5*b209 + 0.6*b210
        + 0.7*b211 + 0.8*b212 + 0.9*b213 + b214 + 1.1*b215 + 1.2*b216
        + 1.3*b217 + 1.4*b218 + 1.5*b219 + 1.6*b220 + 1.7*b221 + 1.8*b222
        + 1.9*b223 + 2*b224 + 2.1*b225 + 2.2*b226 + 2.3*b227 + 2.4*b228
        + 2.5*b229 + 2.6*b230 + 2.8*b231 + 3*b232 + 3.2*b233 + 3.4*b234 =E= 0;

e177..  - x9 + 0.1*b205 + 0.2*b206 + 0.3*b207 + 0.4*b208 + 0.5*b209 + 0.6*b210
        + 0.7*b211 + 0.8*b212 + 0.9*b213 + b214 + 1.1*b215 + 1.2*b216
        + 1.3*b217 + 1.4*b218 + 1.5*b219 + 1.6*b220 + 1.7*b221 + 1.8*b222
        + 1.9*b223 + 2*b224 + 2.1*b225 + 2.2*b226 + 2.3*b227 + 2.4*b228
        + 2.5*b229 + 2.6*b230 + 2.8*b231 + 3*b232 + 3.2*b233 + 3.4*b234 =E= 0;

e178..  - x10 + 0.1*b205 + 0.2*b206 + 0.3*b207 + 0.4*b208 + 0.5*b209 + 0.6*b210
        + 0.7*b211 + 0.8*b212 + 0.9*b213 + b214 + 1.1*b215 + 1.2*b216
        + 1.3*b217 + 1.4*b218 + 1.5*b219 + 1.6*b220 + 1.7*b221 + 1.8*b222
        + 1.9*b223 + 2*b224 + 2.1*b225 + 2.2*b226 + 2.3*b227 + 2.4*b228
        + 2.5*b229 + 2.6*b230 + 2.8*b231 + 3*b232 + 3.2*b233 + 3.4*b234 =E= 0;

e179..  - x11 + 0.1*b235 + 0.2*b236 + 0.3*b237 + 0.4*b238 + 0.5*b239 + 0.6*b240
        + 0.7*b241 + 0.8*b242 + 0.9*b243 + b244 + 1.1*b245 + 1.2*b246
        + 1.3*b247 + 1.4*b248 + 1.5*b249 + 1.6*b250 + 1.7*b251 + 1.8*b252
        + 1.9*b253 + 2*b254 + 2.1*b255 + 2.2*b256 + 2.3*b257 + 2.4*b258
        + 2.5*b259 + 2.6*b260 + 2.8*b261 + 3*b262 + 3.2*b263 + 3.4*b264 =E= 0;

e180..  - x12 + 0.1*b235 + 0.2*b236 + 0.3*b237 + 0.4*b238 + 0.5*b239 + 0.6*b240
        + 0.7*b241 + 0.8*b242 + 0.9*b243 + b244 + 1.1*b245 + 1.2*b246
        + 1.3*b247 + 1.4*b248 + 1.5*b249 + 1.6*b250 + 1.7*b251 + 1.8*b252
        + 1.9*b253 + 2*b254 + 2.1*b255 + 2.2*b256 + 2.3*b257 + 2.4*b258
        + 2.5*b259 + 2.6*b260 + 2.8*b261 + 3*b262 + 3.2*b263 + 3.4*b264 =E= 0;

e181..  - x13 + 0.1*b265 + 0.2*b266 + 0.3*b267 + 0.4*b268 + 0.5*b269 + 0.6*b270
        + 0.7*b271 + 0.8*b272 + 0.9*b273 + b274 + 1.1*b275 + 1.2*b276
        + 1.3*b277 + 1.4*b278 + 1.5*b279 + 1.6*b280 + 1.7*b281 + 1.8*b282
        + 1.9*b283 + 2*b284 + 2.1*b285 + 2.2*b286 + 2.3*b287 + 2.4*b288
        + 2.5*b289 + 2.6*b290 + 2.8*b291 + 3*b292 + 3.2*b293 + 3.4*b294 =E= 0;

e182..  - x14 + 0.1*b265 + 0.2*b266 + 0.3*b267 + 0.4*b268 + 0.5*b269 + 0.6*b270
        + 0.7*b271 + 0.8*b272 + 0.9*b273 + b274 + 1.1*b275 + 1.2*b276
        + 1.3*b277 + 1.4*b278 + 1.5*b279 + 1.6*b280 + 1.7*b281 + 1.8*b282
        + 1.9*b283 + 2*b284 + 2.1*b285 + 2.2*b286 + 2.3*b287 + 2.4*b288
        + 2.5*b289 + 2.6*b290 + 2.8*b291 + 3*b292 + 3.2*b293 + 3.4*b294 =E= 0;

e183..  - x15 + 0.1*b295 + 0.2*b296 + 0.3*b297 + 0.4*b298 + 0.5*b299 + 0.6*b300
        + 0.7*b301 + 0.8*b302 + 0.9*b303 + b304 + 1.1*b305 + 1.2*b306
        + 1.3*b307 + 1.4*b308 + 1.5*b309 + 1.6*b310 + 1.7*b311 + 1.8*b312
        + 1.9*b313 + 2*b314 + 2.1*b315 + 2.2*b316 + 2.3*b317 + 2.4*b318
        + 2.5*b319 + 2.6*b320 + 2.8*b321 + 3*b322 + 3.2*b323 + 3.4*b324 =E= 0;

e184..  - x16 + 0.1*b295 + 0.2*b296 + 0.3*b297 + 0.4*b298 + 0.5*b299 + 0.6*b300
        + 0.7*b301 + 0.8*b302 + 0.9*b303 + b304 + 1.1*b305 + 1.2*b306
        + 1.3*b307 + 1.4*b308 + 1.5*b309 + 1.6*b310 + 1.7*b311 + 1.8*b312
        + 1.9*b313 + 2*b314 + 2.1*b315 + 2.2*b316 + 2.3*b317 + 2.4*b318
        + 2.5*b319 + 2.6*b320 + 2.8*b321 + 3*b322 + 3.2*b323 + 3.4*b324 =E= 0;

e185..  - x17 + 0.1*b295 + 0.2*b296 + 0.3*b297 + 0.4*b298 + 0.5*b299 + 0.6*b300
        + 0.7*b301 + 0.8*b302 + 0.9*b303 + b304 + 1.1*b305 + 1.2*b306
        + 1.3*b307 + 1.4*b308 + 1.5*b309 + 1.6*b310 + 1.7*b311 + 1.8*b312
        + 1.9*b313 + 2*b314 + 2.1*b315 + 2.2*b316 + 2.3*b317 + 2.4*b318
        + 2.5*b319 + 2.6*b320 + 2.8*b321 + 3*b322 + 3.2*b323 + 3.4*b324 =E= 0;

e186..  - x18 + 0.1*b295 + 0.2*b296 + 0.3*b297 + 0.4*b298 + 0.5*b299 + 0.6*b300
        + 0.7*b301 + 0.8*b302 + 0.9*b303 + b304 + 1.1*b305 + 1.2*b306
        + 1.3*b307 + 1.4*b308 + 1.5*b309 + 1.6*b310 + 1.7*b311 + 1.8*b312
        + 1.9*b313 + 2*b314 + 2.1*b315 + 2.2*b316 + 2.3*b317 + 2.4*b318
        + 2.5*b319 + 2.6*b320 + 2.8*b321 + 3*b322 + 3.2*b323 + 3.4*b324 =E= 0;

e187..  - x19 + 0.1*b325 + 0.2*b326 + 0.3*b327 + 0.4*b328 + 0.5*b329 + 0.6*b330
        + 0.7*b331 + 0.8*b332 + 0.9*b333 + b334 + 1.1*b335 + 1.2*b336
        + 1.3*b337 + 1.4*b338 + 1.5*b339 + 1.6*b340 + 1.7*b341 + 1.8*b342
        + 1.9*b343 + 2*b344 + 2.1*b345 + 2.2*b346 + 2.3*b347 + 2.4*b348
        + 2.5*b349 + 2.6*b350 + 2.8*b351 + 3*b352 + 3.2*b353 + 3.4*b354 =E= 0;

e188..  - x20 + 0.1*b325 + 0.2*b326 + 0.3*b327 + 0.4*b328 + 0.5*b329 + 0.6*b330
        + 0.7*b331 + 0.8*b332 + 0.9*b333 + b334 + 1.1*b335 + 1.2*b336
        + 1.3*b337 + 1.4*b338 + 1.5*b339 + 1.6*b340 + 1.7*b341 + 1.8*b342
        + 1.9*b343 + 2*b344 + 2.1*b345 + 2.2*b346 + 2.3*b347 + 2.4*b348
        + 2.5*b349 + 2.6*b350 + 2.8*b351 + 3*b352 + 3.2*b353 + 3.4*b354 =E= 0;

e189..  - x21 + 0.1*b325 + 0.2*b326 + 0.3*b327 + 0.4*b328 + 0.5*b329 + 0.6*b330
        + 0.7*b331 + 0.8*b332 + 0.9*b333 + b334 + 1.1*b335 + 1.2*b336
        + 1.3*b337 + 1.4*b338 + 1.5*b339 + 1.6*b340 + 1.7*b341 + 1.8*b342
        + 1.9*b343 + 2*b344 + 2.1*b345 + 2.2*b346 + 2.3*b347 + 2.4*b348
        + 2.5*b349 + 2.6*b350 + 2.8*b351 + 3*b352 + 3.2*b353 + 3.4*b354 =E= 0;

e190..  - x22 + 0.1*b325 + 0.2*b326 + 0.3*b327 + 0.4*b328 + 0.5*b329 + 0.6*b330
        + 0.7*b331 + 0.8*b332 + 0.9*b333 + b334 + 1.1*b335 + 1.2*b336
        + 1.3*b337 + 1.4*b338 + 1.5*b339 + 1.6*b340 + 1.7*b341 + 1.8*b342
        + 1.9*b343 + 2*b344 + 2.1*b345 + 2.2*b346 + 2.3*b347 + 2.4*b348
        + 2.5*b349 + 2.6*b350 + 2.8*b351 + 3*b352 + 3.2*b353 + 3.4*b354 =E= 0;

e191..  - x23 + 0.1*b355 + 0.2*b356 + 0.3*b357 + 0.4*b358 + 0.5*b359 + 0.6*b360
        + 0.7*b361 + 0.8*b362 + 0.9*b363 + b364 + 1.1*b365 + 1.2*b366
        + 1.3*b367 + 1.4*b368 + 1.5*b369 + 1.6*b370 + 1.7*b371 + 1.8*b372
        + 1.9*b373 + 2*b374 + 2.1*b375 + 2.2*b376 + 2.3*b377 + 2.4*b378
        + 2.5*b379 + 2.6*b380 + 2.8*b381 + 3*b382 + 3.2*b383 + 3.4*b384 =E= 0;

e192..  - x24 + 0.1*b355 + 0.2*b356 + 0.3*b357 + 0.4*b358 + 0.5*b359 + 0.6*b360
        + 0.7*b361 + 0.8*b362 + 0.9*b363 + b364 + 1.1*b365 + 1.2*b366
        + 1.3*b367 + 1.4*b368 + 1.5*b369 + 1.6*b370 + 1.7*b371 + 1.8*b372
        + 1.9*b373 + 2*b374 + 2.1*b375 + 2.2*b376 + 2.3*b377 + 2.4*b378
        + 2.5*b379 + 2.6*b380 + 2.8*b381 + 3*b382 + 3.2*b383 + 3.4*b384 =E= 0;

e193..  - x25 + 0.1*b355 + 0.2*b356 + 0.3*b357 + 0.4*b358 + 0.5*b359 + 0.6*b360
        + 0.7*b361 + 0.8*b362 + 0.9*b363 + b364 + 1.1*b365 + 1.2*b366
        + 1.3*b367 + 1.4*b368 + 1.5*b369 + 1.6*b370 + 1.7*b371 + 1.8*b372
        + 1.9*b373 + 2*b374 + 2.1*b375 + 2.2*b376 + 2.3*b377 + 2.4*b378
        + 2.5*b379 + 2.6*b380 + 2.8*b381 + 3*b382 + 3.2*b383 + 3.4*b384 =E= 0;

e194..  - x26 + 0.1*b355 + 0.2*b356 + 0.3*b357 + 0.4*b358 + 0.5*b359 + 0.6*b360
        + 0.7*b361 + 0.8*b362 + 0.9*b363 + b364 + 1.1*b365 + 1.2*b366
        + 1.3*b367 + 1.4*b368 + 1.5*b369 + 1.6*b370 + 1.7*b371 + 1.8*b372
        + 1.9*b373 + 2*b374 + 2.1*b375 + 2.2*b376 + 2.3*b377 + 2.4*b378
        + 2.5*b379 + 2.6*b380 + 2.8*b381 + 3*b382 + 3.2*b383 + 3.4*b384 =E= 0;

e195..    b145 + b146 + b147 + b148 + b149 + b150 + b151 + b152 + b153 + b154
        + b155 + b156 + b157 + b158 + b159 + b160 + b161 + b162 + b163 + b164
        + b165 + b166 + b167 + b168 + b169 + b170 + b171 + b172 + b173 + b174
        =E= 1;

e196..    b175 + b176 + b177 + b178 + b179 + b180 + b181 + b182 + b183 + b184
        + b185 + b186 + b187 + b188 + b189 + b190 + b191 + b192 + b193 + b194
        + b195 + b196 + b197 + b198 + b199 + b200 + b201 + b202 + b203 + b204
        =E= 1;

e197..    b205 + b206 + b207 + b208 + b209 + b210 + b211 + b212 + b213 + b214
        + b215 + b216 + b217 + b218 + b219 + b220 + b221 + b222 + b223 + b224
        + b225 + b226 + b227 + b228 + b229 + b230 + b231 + b232 + b233 + b234
        =E= 1;

e198..    b235 + b236 + b237 + b238 + b239 + b240 + b241 + b242 + b243 + b244
        + b245 + b246 + b247 + b248 + b249 + b250 + b251 + b252 + b253 + b254
        + b255 + b256 + b257 + b258 + b259 + b260 + b261 + b262 + b263 + b264
        =E= 1;

e199..    b265 + b266 + b267 + b268 + b269 + b270 + b271 + b272 + b273 + b274
        + b275 + b276 + b277 + b278 + b279 + b280 + b281 + b282 + b283 + b284
        + b285 + b286 + b287 + b288 + b289 + b290 + b291 + b292 + b293 + b294
        =E= 1;

e200..    b295 + b296 + b297 + b298 + b299 + b300 + b301 + b302 + b303 + b304
        + b305 + b306 + b307 + b308 + b309 + b310 + b311 + b312 + b313 + b314
        + b315 + b316 + b317 + b318 + b319 + b320 + b321 + b322 + b323 + b324
        =E= 1;

e201..    b325 + b326 + b327 + b328 + b329 + b330 + b331 + b332 + b333 + b334
        + b335 + b336 + b337 + b338 + b339 + b340 + b341 + b342 + b343 + b344
        + b345 + b346 + b347 + b348 + b349 + b350 + b351 + b352 + b353 + b354
        =E= 1;

e202..    b355 + b356 + b357 + b358 + b359 + b360 + b361 + b362 + b363 + b364
        + b365 + b366 + b367 + b368 + b369 + b370 + b371 + b372 + b373 + b374
        + b375 + b376 + b377 + b378 + b379 + b380 + b381 + b382 + b383 + b384
        =E= 1;

* set non default bounds

x2.lo = 0.1; x2.up = 3.4; 
x3.lo = 0.1; x3.up = 3.4; 
x4.lo = 0.1; x4.up = 3.4; 
x5.lo = 0.1; x5.up = 3.4; 
x6.lo = 0.1; x6.up = 3.4; 
x7.lo = 0.1; x7.up = 3.4; 
x8.lo = 0.1; x8.up = 3.4; 
x9.lo = 0.1; x9.up = 3.4; 
x10.lo = 0.1; x10.up = 3.4; 
x11.lo = 0.1; x11.up = 3.4; 
x12.lo = 0.1; x12.up = 3.4; 
x13.lo = 0.1; x13.up = 3.4; 
x14.lo = 0.1; x14.up = 3.4; 
x15.lo = 0.1; x15.up = 3.4; 
x16.lo = 0.1; x16.up = 3.4; 
x17.lo = 0.1; x17.up = 3.4; 
x18.lo = 0.1; x18.up = 3.4; 
x19.lo = 0.1; x19.up = 3.4; 
x20.lo = 0.1; x20.up = 3.4; 
x21.lo = 0.1; x21.up = 3.4; 
x22.lo = 0.1; x22.up = 3.4; 
x23.lo = 0.1; x23.up = 3.4; 
x24.lo = 0.1; x24.up = 3.4; 
x25.lo = 0.1; x25.up = 3.4; 
x26.lo = 0.1; x26.up = 3.4; 
x127.lo = -0.35; x127.up = 0.35; 
x128.lo = -0.35; x128.up = 0.35; 
x130.lo = -0.35; x130.up = 0.35; 
x131.lo = -0.35; x131.up = 0.35; 

$if set nostart $goto modeldef
* set non default levels

x27.l = 13.3333333333333; 
x28.l = 7.66261028176921; 
x29.l = 7.66261028176921; 
x30.l = 7.66261028176921; 
x31.l = 7.66261028176921; 
x32.l = 9.36329177569045; 
x33.l = 9.36329177569045; 
x34.l = 9.36329177569045; 
x35.l = 9.36329177569045; 
x36.l = 13.3333333333333; 
x37.l = 13.3333333333333; 
x38.l = 13.3333333333333; 
x39.l = 13.3333333333333; 
x40.l = 5.52052447473883; 
x41.l = 5.52052447473883; 
x42.l = 5.52052447473883; 
x43.l = 5.52052447473883; 
x44.l = 5.52052447473883; 
x45.l = 5.52052447473883; 
x46.l = 5.52052447473883; 
x47.l = 5.52052447473883; 
x48.l = 7.49268649265355; 
x49.l = 7.49268649265355; 
x50.l = 7.49268649265355; 
x51.l = 7.49268649265355; 
x52.l = 4; 
x53.l = 4; 
x54.l = 4; 
x55.l = 4; 
x56.l = 4; 
x57.l = 4; 
x58.l = 4; 
x59.l = 4; 
x60.l = 4; 
x61.l = 4; 
x62.l = 4; 
x63.l = 4; 
x64.l = 4; 
x65.l = 4; 
x66.l = 4; 
x67.l = 4; 
x68.l = 4; 
x69.l = 4; 
x70.l = 4; 
x71.l = 4; 
x72.l = 4; 
x73.l = 4; 
x74.l = 4; 
x75.l = 4; 
x76.l = 4; 
x77.l = 4; 
x78.l = 4; 
x79.l = 4; 
x80.l = 4; 
x81.l = 4; 
x82.l = 4; 
x83.l = 4; 
x84.l = 4; 
x85.l = 4; 
x86.l = 4; 
x87.l = 4; 
x88.l = 4; 
x89.l = 4; 
x90.l = 4; 
x91.l = 4; 
x92.l = 4; 
x93.l = 4; 
x94.l = 4; 
x95.l = 4; 
x96.l = 4; 
x97.l = 4; 
x98.l = 4; 
x99.l = 4; 
x100.l = 4; 
x101.l = 4; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;