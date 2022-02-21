$offlisting
*  MINLP written by GAMS Convert at 12/19/05 12:07:07
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        270        2        2      266        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        113       71        0       42        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1053     1039       14        0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,i37,i38,i39,i40,i41,i42,objvar,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86
          ,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102
          ,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34
          ,i35,i36,i37,i38,i39,i40,i41,i42;

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
          ,e260,e261,e262,e263,e264,e265,e266,e267,e268,e269,e270;


e1..    objvar - 2.4*x44 - 2.4*x45 - 7*x46 - 7*x47 - 12*x48 - 12*x49 - 12*x50
      - 12*x51 - 6*x52 - 6*x53 =E= 0;

e2..    x54 - x55 =G= 0;

e3..    x56 - x57 =G= 0;

e4..    i1 - i2 =E= 0;

e5..  - 20*i1 - x44 + 0.5*x58 + 0.5*x59 =L= 0;

e6..    5*i1 - x45 + 0.5*x60 + 0.5*x61 =L= 5;

e7..  - 20*i3 + 0.5*x58 + 0.5*x62 - x63 =L= 0;

e8..    5*i3 + 0.5*x60 + 0.5*x64 - x65 =L= 5;

e9..  - 20*i5 + 0.5*x58 + 0.5*x66 - x67 =L= 0;

e10..    5*i5 + 0.5*x60 + 0.5*x68 - x69 =L= 5;

e11..  - 20*i7 + 0.5*x58 + 0.5*x70 - x71 =L= 0;

e12..    5*i7 + 0.5*x60 + 0.5*x72 - x73 =L= 5;

e13..  - 20*i9 + 0.5*x58 + 0.5*x74 - x75 =L= 0;

e14..    5*i9 + 0.5*x60 + 0.5*x76 - x77 =L= 5;

e15..  - 20*i11 + 0.5*x58 + 0.5*x78 - x79 =L= 0;

e16..    5*i11 + 0.5*x60 + 0.5*x80 - x81 =L= 5;

e17..  - 20*i13 + 0.5*x59 + 0.5*x62 - x82 =L= 0;

e18..    5*i13 + 0.5*x61 + 0.5*x64 - x83 =L= 5;

e19..  - 20*i15 + 0.5*x59 + 0.5*x66 - x84 =L= 0;

e20..    5*i15 + 0.5*x61 + 0.5*x68 - x85 =L= 5;

e21..  - 20*i17 + 0.5*x59 + 0.5*x70 - x86 =L= 0;

e22..    5*i17 + 0.5*x61 + 0.5*x72 - x87 =L= 5;

e23..  - 20*i19 + 0.5*x59 + 0.5*x74 - x88 =L= 0;

e24..    5*i19 + 0.5*x61 + 0.5*x76 - x89 =L= 5;

e25..  - 20*i21 - x46 + 0.5*x59 + 0.5*x78 =L= 0;

e26..    5*i21 - x47 + 0.5*x61 + 0.5*x80 =L= 5;

e27..  - 20*i23 - x48 + 0.5*x62 + 0.5*x66 =L= 0;

e28..    5*i23 - x49 + 0.5*x64 + 0.5*x68 =L= 5;

e29..  - 20*i25 + 0.5*x62 + 0.5*x70 - x90 =L= 0;

e30..    5*i25 + 0.5*x64 + 0.5*x72 - x91 =L= 5;

e31..  - 20*i27 + 0.5*x62 + 0.5*x74 - x92 =L= 0;

e32..    5*i27 + 0.5*x64 + 0.5*x76 - x93 =L= 5;

e33..  - 20*i29 + 0.5*x62 + 0.5*x78 - x94 =L= 0;

e34..    5*i29 + 0.5*x64 + 0.5*x80 - x95 =L= 5;

e35..  - 20*i31 + 0.5*x66 + 0.5*x70 - x96 =L= 0;

e36..    5*i31 + 0.5*x68 + 0.5*x72 - x97 =L= 5;

e37..  - 20*i33 - x50 + 0.5*x66 + 0.5*x74 =L= 0;

e38..    5*i33 - x51 + 0.5*x68 + 0.5*x76 =L= 5;

e39..  - 20*i35 + 0.5*x66 + 0.5*x78 - x98 =L= 0;

e40..    5*i35 + 0.5*x68 + 0.5*x80 - x99 =L= 5;

e41..  - 20*i37 - x52 + 0.5*x70 + 0.5*x74 =L= 0;

e42..    5*i37 - x53 + 0.5*x72 + 0.5*x76 =L= 5;

e43..  - 20*i39 + 0.5*x70 + 0.5*x78 - x100 =L= 0;

e44..    5*i39 + 0.5*x72 + 0.5*x80 - x101 =L= 5;

e45..  - 20*i41 + 0.5*x74 + 0.5*x78 - x102 =L= 0;

e46..    5*i41 + 0.5*x76 + 0.5*x80 - x103 =L= 5;

e47..  - 0.357143*x58 - 0.2*x60 =L= -2;

e48..  - 0.188982*x58 - 0.377964*x60 =L= -2;

e49..  - 0.447207*x59 - 0.22361*x61 =L= -2;

e50..  - 0.223609*x59 - 0.44721*x61 =L= -2;

e51..  - 0.471409*x62 - 0.2357*x64 =L= -2;

e52..  - 0.235705*x62 - 0.4714*x64 =L= -2;

e53..  - 0.577334*x66 - 0.288683*x68 =L= -2;

e54..  - 0.288675*x66 - 0.57735*x68 =L= -2;

e55..  - 0.447207*x70 - 0.22361*x72 =L= -2;

e56..  - 0.223609*x70 - 0.44721*x72 =L= -2;

e57..  - 0.2*x74 - 0.2*x76 =L= -2;

e58..  - 0.141421*x74 - 0.282844*x76 =L= -2;

e59..  - 0.2*x78 - 0.2*x80 =L= -2;

e60..  - 0.141421*x78 - 0.282844*x80 =L= -2;

e61..    x54 + 0.5*x58 =L= 20;

e62..  - x54 + 0.5*x58 =L= 0;

e63..    x57 + 0.5*x60 =L= 5;

e64..  - x57 + 0.5*x60 =L= 0;

e65..    x55 + 0.5*x59 =L= 20;

e66..  - x55 + 0.5*x59 =L= 0;

e67..    x56 + 0.5*x61 =L= 5;

e68..  - x56 + 0.5*x61 =L= 0;

e69..    0.5*x62 + x104 =L= 20;

e70..    0.5*x62 - x104 =L= 0;

e71..    0.5*x64 + x105 =L= 5;

e72..    0.5*x64 - x105 =L= 0;

e73..    0.5*x66 + x106 =L= 20;

e74..    0.5*x66 - x106 =L= 0;

e75..    0.5*x68 + x107 =L= 5;

e76..    0.5*x68 - x107 =L= 0;

e77..    0.5*x70 + x108 =L= 20;

e78..    0.5*x70 - x108 =L= 0;

e79..    0.5*x72 + x109 =L= 5;

e80..    0.5*x72 - x109 =L= 0;

e81..    0.5*x74 + x110 =L= 20;

e82..    0.5*x74 - x110 =L= 0;

e83..    0.5*x76 + x111 =L= 5;

e84..    0.5*x76 - x111 =L= 0;

e85..    0.5*x78 + x112 =L= 20;

e86..    0.5*x78 - x112 =L= 0;

e87..    0.5*x80 + x113 =L= 5;

e88..    0.5*x80 - x113 =L= 0;

e89..  - x44 + x54 - x55 =L= 0;

e90..  - x44 - x54 + x55 =L= 0;

e91..  - x45 - x56 + x57 =L= 0;

e92..  - x45 + x56 - x57 =L= 0;

e93..  - 20*i1 - 20*i2 - x54 + x55 + 0.5*x58 + 0.5*x59 =L= 0;

e94..  - 20*i1 + 20*i2 + x54 - x55 + 0.5*x58 + 0.5*x59 =L= 20;

e95..    5*i1 - 5*i2 + x56 - x57 + 0.5*x60 + 0.5*x61 =L= 5;

e96..    5*i1 + 5*i2 - x56 + x57 + 0.5*x60 + 0.5*x61 =L= 10;

e97..    x54 - x63 - x104 =L= 0;

e98..  - x54 - x63 + x104 =L= 0;

e99..    x57 - x65 - x105 =L= 0;

e100..  - x57 - x65 + x105 =L= 0;

e101..  - 20*i3 - 20*i4 - x54 + 0.5*x58 + 0.5*x62 + x104 =L= 0;

e102..  - 20*i3 + 20*i4 + x54 + 0.5*x58 + 0.5*x62 - x104 =L= 20;

e103..    5*i3 - 5*i4 - x57 + 0.5*x60 + 0.5*x64 + x105 =L= 5;

e104..    5*i3 + 5*i4 + x57 + 0.5*x60 + 0.5*x64 - x105 =L= 10;

e105..    x54 - x67 - x106 =L= 0;

e106..  - x54 - x67 + x106 =L= 0;

e107..    x57 - x69 - x107 =L= 0;

e108..  - x57 - x69 + x107 =L= 0;

e109..  - 20*i5 - 20*i6 - x54 + 0.5*x58 + 0.5*x66 + x106 =L= 0;

e110..  - 20*i5 + 20*i6 + x54 + 0.5*x58 + 0.5*x66 - x106 =L= 20;

e111..    5*i5 - 5*i6 - x57 + 0.5*x60 + 0.5*x68 + x107 =L= 5;

e112..    5*i5 + 5*i6 + x57 + 0.5*x60 + 0.5*x68 - x107 =L= 10;

e113..    x54 - x71 - x108 =L= 0;

e114..  - x54 - x71 + x108 =L= 0;

e115..    x57 - x73 - x109 =L= 0;

e116..  - x57 - x73 + x109 =L= 0;

e117..  - 20*i7 - 20*i8 - x54 + 0.5*x58 + 0.5*x70 + x108 =L= 0;

e118..  - 20*i7 + 20*i8 + x54 + 0.5*x58 + 0.5*x70 - x108 =L= 20;

e119..    5*i7 - 5*i8 - x57 + 0.5*x60 + 0.5*x72 + x109 =L= 5;

e120..    5*i7 + 5*i8 + x57 + 0.5*x60 + 0.5*x72 - x109 =L= 10;

e121..    x54 - x75 - x110 =L= 0;

e122..  - x54 - x75 + x110 =L= 0;

e123..    x57 - x77 - x111 =L= 0;

e124..  - x57 - x77 + x111 =L= 0;

e125..  - 20*i9 - 20*i10 - x54 + 0.5*x58 + 0.5*x74 + x110 =L= 0;

e126..  - 20*i9 + 20*i10 + x54 + 0.5*x58 + 0.5*x74 - x110 =L= 20;

e127..    5*i9 - 5*i10 - x57 + 0.5*x60 + 0.5*x76 + x111 =L= 5;

e128..    5*i9 + 5*i10 + x57 + 0.5*x60 + 0.5*x76 - x111 =L= 10;

e129..    x54 - x79 - x112 =L= 0;

e130..  - x54 - x79 + x112 =L= 0;

e131..    x57 - x81 - x113 =L= 0;

e132..  - x57 - x81 + x113 =L= 0;

e133..  - 20*i11 - 20*i12 - x54 + 0.5*x58 + 0.5*x78 + x112 =L= 0;

e134..  - 20*i11 + 20*i12 + x54 + 0.5*x58 + 0.5*x78 - x112 =L= 20;

e135..    5*i11 - 5*i12 - x57 + 0.5*x60 + 0.5*x80 + x113 =L= 5;

e136..    5*i11 + 5*i12 + x57 + 0.5*x60 + 0.5*x80 - x113 =L= 10;

e137..    x55 - x82 - x104 =L= 0;

e138..  - x55 - x82 + x104 =L= 0;

e139..    x56 - x83 - x105 =L= 0;

e140..  - x56 - x83 + x105 =L= 0;

e141..  - 20*i13 - 20*i14 - x55 + 0.5*x59 + 0.5*x62 + x104 =L= 0;

e142..  - 20*i13 + 20*i14 + x55 + 0.5*x59 + 0.5*x62 - x104 =L= 20;

e143..    5*i13 - 5*i14 - x56 + 0.5*x61 + 0.5*x64 + x105 =L= 5;

e144..    5*i13 + 5*i14 + x56 + 0.5*x61 + 0.5*x64 - x105 =L= 10;

e145..    x55 - x84 - x106 =L= 0;

e146..  - x55 - x84 + x106 =L= 0;

e147..    x56 - x85 - x107 =L= 0;

e148..  - x56 - x85 + x107 =L= 0;

e149..  - 20*i15 - 20*i16 - x55 + 0.5*x59 + 0.5*x66 + x106 =L= 0;

e150..  - 20*i15 + 20*i16 + x55 + 0.5*x59 + 0.5*x66 - x106 =L= 20;

e151..    5*i15 - 5*i16 - x56 + 0.5*x61 + 0.5*x68 + x107 =L= 5;

e152..    5*i15 + 5*i16 + x56 + 0.5*x61 + 0.5*x68 - x107 =L= 10;

e153..    x55 - x86 - x108 =L= 0;

e154..  - x55 - x86 + x108 =L= 0;

e155..    x56 - x87 - x109 =L= 0;

e156..  - x56 - x87 + x109 =L= 0;

e157..  - 20*i17 - 20*i18 - x55 + 0.5*x59 + 0.5*x70 + x108 =L= 0;

e158..  - 20*i17 + 20*i18 + x55 + 0.5*x59 + 0.5*x70 - x108 =L= 20;

e159..    5*i17 - 5*i18 - x56 + 0.5*x61 + 0.5*x72 + x109 =L= 5;

e160..    5*i17 + 5*i18 + x56 + 0.5*x61 + 0.5*x72 - x109 =L= 10;

e161..    x55 - x88 - x110 =L= 0;

e162..  - x55 - x88 + x110 =L= 0;

e163..    x56 - x89 - x111 =L= 0;

e164..  - x56 - x89 + x111 =L= 0;

e165..  - 20*i19 - 20*i20 - x55 + 0.5*x59 + 0.5*x74 + x110 =L= 0;

e166..  - 20*i19 + 20*i20 + x55 + 0.5*x59 + 0.5*x74 - x110 =L= 20;

e167..    5*i19 - 5*i20 - x56 + 0.5*x61 + 0.5*x76 + x111 =L= 5;

e168..    5*i19 + 5*i20 + x56 + 0.5*x61 + 0.5*x76 - x111 =L= 10;

e169..  - x46 + x55 - x112 =L= 0;

e170..  - x46 - x55 + x112 =L= 0;

e171..  - x47 + x56 - x113 =L= 0;

e172..  - x47 - x56 + x113 =L= 0;

e173..  - 20*i21 - 20*i22 - x55 + 0.5*x59 + 0.5*x78 + x112 =L= 0;

e174..  - 20*i21 + 20*i22 + x55 + 0.5*x59 + 0.5*x78 - x112 =L= 20;

e175..    5*i21 - 5*i22 - x56 + 0.5*x61 + 0.5*x80 + x113 =L= 5;

e176..    5*i21 + 5*i22 + x56 + 0.5*x61 + 0.5*x80 - x113 =L= 10;

e177..  - x48 + x104 - x106 =L= 0;

e178..  - x48 - x104 + x106 =L= 0;

e179..  - x49 + x105 - x107 =L= 0;

e180..  - x49 - x105 + x107 =L= 0;

e181..  - 20*i23 - 20*i24 + 0.5*x62 + 0.5*x66 - x104 + x106 =L= 0;

e182..  - 20*i23 + 20*i24 + 0.5*x62 + 0.5*x66 + x104 - x106 =L= 20;

e183..    5*i23 - 5*i24 + 0.5*x64 + 0.5*x68 - x105 + x107 =L= 5;

e184..    5*i23 + 5*i24 + 0.5*x64 + 0.5*x68 + x105 - x107 =L= 10;

e185..  - x90 + x104 - x108 =L= 0;

e186..  - x90 - x104 + x108 =L= 0;

e187..  - x91 + x105 - x109 =L= 0;

e188..  - x91 - x105 + x109 =L= 0;

e189..  - 20*i25 - 20*i26 + 0.5*x62 + 0.5*x70 - x104 + x108 =L= 0;

e190..  - 20*i25 + 20*i26 + 0.5*x62 + 0.5*x70 + x104 - x108 =L= 20;

e191..    5*i25 - 5*i26 + 0.5*x64 + 0.5*x72 - x105 + x109 =L= 5;

e192..    5*i25 + 5*i26 + 0.5*x64 + 0.5*x72 + x105 - x109 =L= 10;

e193..  - x92 + x104 - x110 =L= 0;

e194..  - x92 - x104 + x110 =L= 0;

e195..  - x93 + x105 - x111 =L= 0;

e196..  - x93 - x105 + x111 =L= 0;

e197..  - 20*i27 - 20*i28 + 0.5*x62 + 0.5*x74 - x104 + x110 =L= 0;

e198..  - 20*i27 + 20*i28 + 0.5*x62 + 0.5*x74 + x104 - x110 =L= 20;

e199..    5*i27 - 5*i28 + 0.5*x64 + 0.5*x76 - x105 + x111 =L= 5;

e200..    5*i27 + 5*i28 + 0.5*x64 + 0.5*x76 + x105 - x111 =L= 10;

e201..  - x94 + x104 - x112 =L= 0;

e202..  - x94 - x104 + x112 =L= 0;

e203..  - x95 + x105 - x113 =L= 0;

e204..  - x95 - x105 + x113 =L= 0;

e205..  - 20*i29 - 20*i30 + 0.5*x62 + 0.5*x78 - x104 + x112 =L= 0;

e206..  - 20*i29 + 20*i30 + 0.5*x62 + 0.5*x78 + x104 - x112 =L= 20;

e207..    5*i29 - 5*i30 + 0.5*x64 + 0.5*x80 - x105 + x113 =L= 5;

e208..    5*i29 + 5*i30 + 0.5*x64 + 0.5*x80 + x105 - x113 =L= 10;

e209..  - x96 + x106 - x108 =L= 0;

e210..  - x96 - x106 + x108 =L= 0;

e211..  - x97 + x107 - x109 =L= 0;

e212..  - x97 - x107 + x109 =L= 0;

e213..  - 20*i31 - 20*i32 + 0.5*x66 + 0.5*x70 - x106 + x108 =L= 0;

e214..  - 20*i31 + 20*i32 + 0.5*x66 + 0.5*x70 + x106 - x108 =L= 20;

e215..    5*i31 - 5*i32 + 0.5*x68 + 0.5*x72 - x107 + x109 =L= 5;

e216..    5*i31 + 5*i32 + 0.5*x68 + 0.5*x72 + x107 - x109 =L= 10;

e217..  - x50 + x106 - x110 =L= 0;

e218..  - x50 - x106 + x110 =L= 0;

e219..  - x51 + x107 - x111 =L= 0;

e220..  - x51 - x107 + x111 =L= 0;

e221..  - 20*i33 - 20*i34 + 0.5*x66 + 0.5*x74 - x106 + x110 =L= 0;

e222..  - 20*i33 + 20*i34 + 0.5*x66 + 0.5*x74 + x106 - x110 =L= 20;

e223..    5*i33 - 5*i34 + 0.5*x68 + 0.5*x76 - x107 + x111 =L= 5;

e224..    5*i33 + 5*i34 + 0.5*x68 + 0.5*x76 + x107 - x111 =L= 10;

e225..  - x98 + x106 - x112 =L= 0;

e226..  - x98 - x106 + x112 =L= 0;

e227..  - x99 + x107 - x113 =L= 0;

e228..  - x99 - x107 + x113 =L= 0;

e229..  - 20*i35 - 20*i36 + 0.5*x66 + 0.5*x78 - x106 + x112 =L= 0;

e230..  - 20*i35 + 20*i36 + 0.5*x66 + 0.5*x78 + x106 - x112 =L= 20;

e231..    5*i35 - 5*i36 + 0.5*x68 + 0.5*x80 - x107 + x113 =L= 5;

e232..    5*i35 + 5*i36 + 0.5*x68 + 0.5*x80 + x107 - x113 =L= 10;

e233..  - x52 + x108 - x110 =L= 0;

e234..  - x52 - x108 + x110 =L= 0;

e235..  - x53 + x109 - x111 =L= 0;

e236..  - x53 - x109 + x111 =L= 0;

e237..  - 20*i37 - 20*i38 + 0.5*x70 + 0.5*x74 - x108 + x110 =L= 0;

e238..  - 20*i37 + 20*i38 + 0.5*x70 + 0.5*x74 + x108 - x110 =L= 20;

e239..    5*i37 - 5*i38 + 0.5*x72 + 0.5*x76 - x109 + x111 =L= 5;

e240..    5*i37 + 5*i38 + 0.5*x72 + 0.5*x76 + x109 - x111 =L= 10;

e241..  - x100 + x108 - x112 =L= 0;

e242..  - x100 - x108 + x112 =L= 0;

e243..  - x101 + x109 - x113 =L= 0;

e244..  - x101 - x109 + x113 =L= 0;

e245..  - 20*i39 - 20*i40 + 0.5*x70 + 0.5*x78 - x108 + x112 =L= 0;

e246..  - 20*i39 + 20*i40 + 0.5*x70 + 0.5*x78 + x108 - x112 =L= 20;

e247..    5*i39 - 5*i40 + 0.5*x72 + 0.5*x80 - x109 + x113 =L= 5;

e248..    5*i39 + 5*i40 + 0.5*x72 + 0.5*x80 + x109 - x113 =L= 10;

e249..  - x102 + x110 - x112 =L= 0;

e250..  - x102 - x110 + x112 =L= 0;

e251..  - x103 + x111 - x113 =L= 0;

e252..  - x103 - x111 + x113 =L= 0;

e253..  - 20*i41 - 20*i42 + 0.5*x74 + 0.5*x78 - x110 + x112 =L= 0;

e254..  - 20*i41 + 20*i42 + 0.5*x74 + 0.5*x78 + x110 - x112 =L= 20;

e255..    5*i41 - 5*i42 + 0.5*x76 + 0.5*x80 - x111 + x113 =L= 5;

e256..    5*i41 + 5*i42 + 0.5*x76 + 0.5*x80 + x111 - x113 =L= 10;

e257.. 14/x58 - x60 =L= 0;

e258.. 14/x60 - x58 =L= 0;

e259.. 10/x59 - x61 =L= 0;

e260.. 10/x61 - x59 =L= 0;

e261.. 9/x62 - x64 =L= 0;

e262.. 9/x64 - x62 =L= 0;

e263.. 6/x66 - x68 =L= 0;

e264.. 6/x68 - x66 =L= 0;

e265.. 10/x70 - x72 =L= 0;

e266.. 10/x72 - x70 =L= 0;

e267.. 25/x74 - x76 =L= 0;

e268.. 25/x76 - x74 =L= 0;

e269.. 25/x78 - x80 =L= 0;

e270.. 25/x80 - x78 =L= 0;

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
x58.lo = 2.8; x58.up = 5.2915; 
x59.lo = 2.2361; x59.up = 4.4721; 
x60.lo = 2.6458; x60.up = 5; 
x61.lo = 2.2361; x61.up = 4.4721; 
x62.lo = 2.1213; x62.up = 4.2426; 
x64.lo = 2.1213; x64.up = 4.2426; 
x66.lo = 1.7321; x66.up = 3.4641; 
x68.lo = 1.7321; x68.up = 3.4641; 
x70.lo = 2.2361; x70.up = 4.4721; 
x72.lo = 2.2361; x72.up = 4.4721; 
x74.lo = 5; x74.up = 7.0711; 
x76.lo = 3.5355; x76.up = 5; 
x78.lo = 5; x78.up = 7.0711; 
x80.lo = 3.5355; x80.up = 5; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
