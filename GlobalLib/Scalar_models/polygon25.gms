*  NLP written by GAMS Convert at 07/30/01 17:04:15
*  
*  Equation counts
*     Total       E       G       L       N       X
*       325       1       0     324       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        51      51       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*      1299      49    1250       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49;

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
          ,e325;


e1..  - 0.5*(x2*x1*sin(x27 - x26) + x3*x2*sin(x28 - x27) + x4*x3*sin(x29 - x28)
      + x5*x4*sin(x30 - x29) + x6*x5*sin(x31 - x30) + x7*x6*sin(x32 - x31) + x8
     *x7*sin(x33 - x32) + x9*x8*sin(x34 - x33) + x10*x9*sin(x35 - x34) + x11*
     x10*sin(x36 - x35) + x12*x11*sin(x37 - x36) + x13*x12*sin(x38 - x37) + x14
     *x13*sin(x39 - x38) + x15*x14*sin(x40 - x39) + x16*x15*sin(x41 - x40) + 
     x17*x16*sin(x42 - x41) + x18*x17*sin(x43 - x42) + x19*x18*sin(x44 - x43)
      + x20*x19*sin(x45 - x44) + x21*x20*sin(x46 - x45) + x22*x21*sin(x47 - x46
     ) + x23*x22*sin(x48 - x47) + x24*x23*sin(x49 - x48) + x25*x24*sin(x50 - 
     x49)) - objvar =E= 0;

e2.. sqr(x1) + sqr(x2) - 2*x1*x2*cos(x27 - x26) =L= 1;

e3.. sqr(x1) + sqr(x3) - 2*x1*x3*cos(x28 - x26) =L= 1;

e4.. sqr(x1) + sqr(x4) - 2*x1*x4*cos(x29 - x26) =L= 1;

e5.. sqr(x1) + sqr(x5) - 2*x1*x5*cos(x30 - x26) =L= 1;

e6.. sqr(x1) + sqr(x6) - 2*x1*x6*cos(x31 - x26) =L= 1;

e7.. sqr(x1) + sqr(x7) - 2*x1*x7*cos(x32 - x26) =L= 1;

e8.. sqr(x1) + sqr(x8) - 2*x1*x8*cos(x33 - x26) =L= 1;

e9.. sqr(x1) + sqr(x9) - 2*x1*x9*cos(x34 - x26) =L= 1;

e10.. sqr(x1) + sqr(x10) - 2*x1*x10*cos(x35 - x26) =L= 1;

e11.. sqr(x1) + sqr(x11) - 2*x1*x11*cos(x36 - x26) =L= 1;

e12.. sqr(x1) + sqr(x12) - 2*x1*x12*cos(x37 - x26) =L= 1;

e13.. sqr(x1) + sqr(x13) - 2*x1*x13*cos(x38 - x26) =L= 1;

e14.. sqr(x1) + sqr(x14) - 2*x1*x14*cos(x39 - x26) =L= 1;

e15.. sqr(x1) + sqr(x15) - 2*x1*x15*cos(x40 - x26) =L= 1;

e16.. sqr(x1) + sqr(x16) - 2*x1*x16*cos(x41 - x26) =L= 1;

e17.. sqr(x1) + sqr(x17) - 2*x1*x17*cos(x42 - x26) =L= 1;

e18.. sqr(x1) + sqr(x18) - 2*x1*x18*cos(x43 - x26) =L= 1;

e19.. sqr(x1) + sqr(x19) - 2*x1*x19*cos(x44 - x26) =L= 1;

e20.. sqr(x1) + sqr(x20) - 2*x1*x20*cos(x45 - x26) =L= 1;

e21.. sqr(x1) + sqr(x21) - 2*x1*x21*cos(x46 - x26) =L= 1;

e22.. sqr(x1) + sqr(x22) - 2*x1*x22*cos(x47 - x26) =L= 1;

e23.. sqr(x1) + sqr(x23) - 2*x1*x23*cos(x48 - x26) =L= 1;

e24.. sqr(x1) + sqr(x24) - 2*x1*x24*cos(x49 - x26) =L= 1;

e25.. sqr(x1) + sqr(x25) - 2*x1*x25*cos(x50 - x26) =L= 1;

e26.. sqr(x2) + sqr(x3) - 2*x2*x3*cos(x28 - x27) =L= 1;

e27.. sqr(x2) + sqr(x4) - 2*x2*x4*cos(x29 - x27) =L= 1;

e28.. sqr(x2) + sqr(x5) - 2*x2*x5*cos(x30 - x27) =L= 1;

e29.. sqr(x2) + sqr(x6) - 2*x2*x6*cos(x31 - x27) =L= 1;

e30.. sqr(x2) + sqr(x7) - 2*x2*x7*cos(x32 - x27) =L= 1;

e31.. sqr(x2) + sqr(x8) - 2*x2*x8*cos(x33 - x27) =L= 1;

e32.. sqr(x2) + sqr(x9) - 2*x2*x9*cos(x34 - x27) =L= 1;

e33.. sqr(x2) + sqr(x10) - 2*x2*x10*cos(x35 - x27) =L= 1;

e34.. sqr(x2) + sqr(x11) - 2*x2*x11*cos(x36 - x27) =L= 1;

e35.. sqr(x2) + sqr(x12) - 2*x2*x12*cos(x37 - x27) =L= 1;

e36.. sqr(x2) + sqr(x13) - 2*x2*x13*cos(x38 - x27) =L= 1;

e37.. sqr(x2) + sqr(x14) - 2*x2*x14*cos(x39 - x27) =L= 1;

e38.. sqr(x2) + sqr(x15) - 2*x2*x15*cos(x40 - x27) =L= 1;

e39.. sqr(x2) + sqr(x16) - 2*x2*x16*cos(x41 - x27) =L= 1;

e40.. sqr(x2) + sqr(x17) - 2*x2*x17*cos(x42 - x27) =L= 1;

e41.. sqr(x2) + sqr(x18) - 2*x2*x18*cos(x43 - x27) =L= 1;

e42.. sqr(x2) + sqr(x19) - 2*x2*x19*cos(x44 - x27) =L= 1;

e43.. sqr(x2) + sqr(x20) - 2*x2*x20*cos(x45 - x27) =L= 1;

e44.. sqr(x2) + sqr(x21) - 2*x2*x21*cos(x46 - x27) =L= 1;

e45.. sqr(x2) + sqr(x22) - 2*x2*x22*cos(x47 - x27) =L= 1;

e46.. sqr(x2) + sqr(x23) - 2*x2*x23*cos(x48 - x27) =L= 1;

e47.. sqr(x2) + sqr(x24) - 2*x2*x24*cos(x49 - x27) =L= 1;

e48.. sqr(x2) + sqr(x25) - 2*x2*x25*cos(x50 - x27) =L= 1;

e49.. sqr(x3) + sqr(x4) - 2*x3*x4*cos(x29 - x28) =L= 1;

e50.. sqr(x3) + sqr(x5) - 2*x3*x5*cos(x30 - x28) =L= 1;

e51.. sqr(x3) + sqr(x6) - 2*x3*x6*cos(x31 - x28) =L= 1;

e52.. sqr(x3) + sqr(x7) - 2*x3*x7*cos(x32 - x28) =L= 1;

e53.. sqr(x3) + sqr(x8) - 2*x3*x8*cos(x33 - x28) =L= 1;

e54.. sqr(x3) + sqr(x9) - 2*x3*x9*cos(x34 - x28) =L= 1;

e55.. sqr(x3) + sqr(x10) - 2*x3*x10*cos(x35 - x28) =L= 1;

e56.. sqr(x3) + sqr(x11) - 2*x3*x11*cos(x36 - x28) =L= 1;

e57.. sqr(x3) + sqr(x12) - 2*x3*x12*cos(x37 - x28) =L= 1;

e58.. sqr(x3) + sqr(x13) - 2*x3*x13*cos(x38 - x28) =L= 1;

e59.. sqr(x3) + sqr(x14) - 2*x3*x14*cos(x39 - x28) =L= 1;

e60.. sqr(x3) + sqr(x15) - 2*x3*x15*cos(x40 - x28) =L= 1;

e61.. sqr(x3) + sqr(x16) - 2*x3*x16*cos(x41 - x28) =L= 1;

e62.. sqr(x3) + sqr(x17) - 2*x3*x17*cos(x42 - x28) =L= 1;

e63.. sqr(x3) + sqr(x18) - 2*x3*x18*cos(x43 - x28) =L= 1;

e64.. sqr(x3) + sqr(x19) - 2*x3*x19*cos(x44 - x28) =L= 1;

e65.. sqr(x3) + sqr(x20) - 2*x3*x20*cos(x45 - x28) =L= 1;

e66.. sqr(x3) + sqr(x21) - 2*x3*x21*cos(x46 - x28) =L= 1;

e67.. sqr(x3) + sqr(x22) - 2*x3*x22*cos(x47 - x28) =L= 1;

e68.. sqr(x3) + sqr(x23) - 2*x3*x23*cos(x48 - x28) =L= 1;

e69.. sqr(x3) + sqr(x24) - 2*x3*x24*cos(x49 - x28) =L= 1;

e70.. sqr(x3) + sqr(x25) - 2*x3*x25*cos(x50 - x28) =L= 1;

e71.. sqr(x4) + sqr(x5) - 2*x4*x5*cos(x30 - x29) =L= 1;

e72.. sqr(x4) + sqr(x6) - 2*x4*x6*cos(x31 - x29) =L= 1;

e73.. sqr(x4) + sqr(x7) - 2*x4*x7*cos(x32 - x29) =L= 1;

e74.. sqr(x4) + sqr(x8) - 2*x4*x8*cos(x33 - x29) =L= 1;

e75.. sqr(x4) + sqr(x9) - 2*x4*x9*cos(x34 - x29) =L= 1;

e76.. sqr(x4) + sqr(x10) - 2*x4*x10*cos(x35 - x29) =L= 1;

e77.. sqr(x4) + sqr(x11) - 2*x4*x11*cos(x36 - x29) =L= 1;

e78.. sqr(x4) + sqr(x12) - 2*x4*x12*cos(x37 - x29) =L= 1;

e79.. sqr(x4) + sqr(x13) - 2*x4*x13*cos(x38 - x29) =L= 1;

e80.. sqr(x4) + sqr(x14) - 2*x4*x14*cos(x39 - x29) =L= 1;

e81.. sqr(x4) + sqr(x15) - 2*x4*x15*cos(x40 - x29) =L= 1;

e82.. sqr(x4) + sqr(x16) - 2*x4*x16*cos(x41 - x29) =L= 1;

e83.. sqr(x4) + sqr(x17) - 2*x4*x17*cos(x42 - x29) =L= 1;

e84.. sqr(x4) + sqr(x18) - 2*x4*x18*cos(x43 - x29) =L= 1;

e85.. sqr(x4) + sqr(x19) - 2*x4*x19*cos(x44 - x29) =L= 1;

e86.. sqr(x4) + sqr(x20) - 2*x4*x20*cos(x45 - x29) =L= 1;

e87.. sqr(x4) + sqr(x21) - 2*x4*x21*cos(x46 - x29) =L= 1;

e88.. sqr(x4) + sqr(x22) - 2*x4*x22*cos(x47 - x29) =L= 1;

e89.. sqr(x4) + sqr(x23) - 2*x4*x23*cos(x48 - x29) =L= 1;

e90.. sqr(x4) + sqr(x24) - 2*x4*x24*cos(x49 - x29) =L= 1;

e91.. sqr(x4) + sqr(x25) - 2*x4*x25*cos(x50 - x29) =L= 1;

e92.. sqr(x5) + sqr(x6) - 2*x5*x6*cos(x31 - x30) =L= 1;

e93.. sqr(x5) + sqr(x7) - 2*x5*x7*cos(x32 - x30) =L= 1;

e94.. sqr(x5) + sqr(x8) - 2*x5*x8*cos(x33 - x30) =L= 1;

e95.. sqr(x5) + sqr(x9) - 2*x5*x9*cos(x34 - x30) =L= 1;

e96.. sqr(x5) + sqr(x10) - 2*x5*x10*cos(x35 - x30) =L= 1;

e97.. sqr(x5) + sqr(x11) - 2*x5*x11*cos(x36 - x30) =L= 1;

e98.. sqr(x5) + sqr(x12) - 2*x5*x12*cos(x37 - x30) =L= 1;

e99.. sqr(x5) + sqr(x13) - 2*x5*x13*cos(x38 - x30) =L= 1;

e100.. sqr(x5) + sqr(x14) - 2*x5*x14*cos(x39 - x30) =L= 1;

e101.. sqr(x5) + sqr(x15) - 2*x5*x15*cos(x40 - x30) =L= 1;

e102.. sqr(x5) + sqr(x16) - 2*x5*x16*cos(x41 - x30) =L= 1;

e103.. sqr(x5) + sqr(x17) - 2*x5*x17*cos(x42 - x30) =L= 1;

e104.. sqr(x5) + sqr(x18) - 2*x5*x18*cos(x43 - x30) =L= 1;

e105.. sqr(x5) + sqr(x19) - 2*x5*x19*cos(x44 - x30) =L= 1;

e106.. sqr(x5) + sqr(x20) - 2*x5*x20*cos(x45 - x30) =L= 1;

e107.. sqr(x5) + sqr(x21) - 2*x5*x21*cos(x46 - x30) =L= 1;

e108.. sqr(x5) + sqr(x22) - 2*x5*x22*cos(x47 - x30) =L= 1;

e109.. sqr(x5) + sqr(x23) - 2*x5*x23*cos(x48 - x30) =L= 1;

e110.. sqr(x5) + sqr(x24) - 2*x5*x24*cos(x49 - x30) =L= 1;

e111.. sqr(x5) + sqr(x25) - 2*x5*x25*cos(x50 - x30) =L= 1;

e112.. sqr(x6) + sqr(x7) - 2*x6*x7*cos(x32 - x31) =L= 1;

e113.. sqr(x6) + sqr(x8) - 2*x6*x8*cos(x33 - x31) =L= 1;

e114.. sqr(x6) + sqr(x9) - 2*x6*x9*cos(x34 - x31) =L= 1;

e115.. sqr(x6) + sqr(x10) - 2*x6*x10*cos(x35 - x31) =L= 1;

e116.. sqr(x6) + sqr(x11) - 2*x6*x11*cos(x36 - x31) =L= 1;

e117.. sqr(x6) + sqr(x12) - 2*x6*x12*cos(x37 - x31) =L= 1;

e118.. sqr(x6) + sqr(x13) - 2*x6*x13*cos(x38 - x31) =L= 1;

e119.. sqr(x6) + sqr(x14) - 2*x6*x14*cos(x39 - x31) =L= 1;

e120.. sqr(x6) + sqr(x15) - 2*x6*x15*cos(x40 - x31) =L= 1;

e121.. sqr(x6) + sqr(x16) - 2*x6*x16*cos(x41 - x31) =L= 1;

e122.. sqr(x6) + sqr(x17) - 2*x6*x17*cos(x42 - x31) =L= 1;

e123.. sqr(x6) + sqr(x18) - 2*x6*x18*cos(x43 - x31) =L= 1;

e124.. sqr(x6) + sqr(x19) - 2*x6*x19*cos(x44 - x31) =L= 1;

e125.. sqr(x6) + sqr(x20) - 2*x6*x20*cos(x45 - x31) =L= 1;

e126.. sqr(x6) + sqr(x21) - 2*x6*x21*cos(x46 - x31) =L= 1;

e127.. sqr(x6) + sqr(x22) - 2*x6*x22*cos(x47 - x31) =L= 1;

e128.. sqr(x6) + sqr(x23) - 2*x6*x23*cos(x48 - x31) =L= 1;

e129.. sqr(x6) + sqr(x24) - 2*x6*x24*cos(x49 - x31) =L= 1;

e130.. sqr(x6) + sqr(x25) - 2*x6*x25*cos(x50 - x31) =L= 1;

e131.. sqr(x7) + sqr(x8) - 2*x7*x8*cos(x33 - x32) =L= 1;

e132.. sqr(x7) + sqr(x9) - 2*x7*x9*cos(x34 - x32) =L= 1;

e133.. sqr(x7) + sqr(x10) - 2*x7*x10*cos(x35 - x32) =L= 1;

e134.. sqr(x7) + sqr(x11) - 2*x7*x11*cos(x36 - x32) =L= 1;

e135.. sqr(x7) + sqr(x12) - 2*x7*x12*cos(x37 - x32) =L= 1;

e136.. sqr(x7) + sqr(x13) - 2*x7*x13*cos(x38 - x32) =L= 1;

e137.. sqr(x7) + sqr(x14) - 2*x7*x14*cos(x39 - x32) =L= 1;

e138.. sqr(x7) + sqr(x15) - 2*x7*x15*cos(x40 - x32) =L= 1;

e139.. sqr(x7) + sqr(x16) - 2*x7*x16*cos(x41 - x32) =L= 1;

e140.. sqr(x7) + sqr(x17) - 2*x7*x17*cos(x42 - x32) =L= 1;

e141.. sqr(x7) + sqr(x18) - 2*x7*x18*cos(x43 - x32) =L= 1;

e142.. sqr(x7) + sqr(x19) - 2*x7*x19*cos(x44 - x32) =L= 1;

e143.. sqr(x7) + sqr(x20) - 2*x7*x20*cos(x45 - x32) =L= 1;

e144.. sqr(x7) + sqr(x21) - 2*x7*x21*cos(x46 - x32) =L= 1;

e145.. sqr(x7) + sqr(x22) - 2*x7*x22*cos(x47 - x32) =L= 1;

e146.. sqr(x7) + sqr(x23) - 2*x7*x23*cos(x48 - x32) =L= 1;

e147.. sqr(x7) + sqr(x24) - 2*x7*x24*cos(x49 - x32) =L= 1;

e148.. sqr(x7) + sqr(x25) - 2*x7*x25*cos(x50 - x32) =L= 1;

e149.. sqr(x8) + sqr(x9) - 2*x8*x9*cos(x34 - x33) =L= 1;

e150.. sqr(x8) + sqr(x10) - 2*x8*x10*cos(x35 - x33) =L= 1;

e151.. sqr(x8) + sqr(x11) - 2*x8*x11*cos(x36 - x33) =L= 1;

e152.. sqr(x8) + sqr(x12) - 2*x8*x12*cos(x37 - x33) =L= 1;

e153.. sqr(x8) + sqr(x13) - 2*x8*x13*cos(x38 - x33) =L= 1;

e154.. sqr(x8) + sqr(x14) - 2*x8*x14*cos(x39 - x33) =L= 1;

e155.. sqr(x8) + sqr(x15) - 2*x8*x15*cos(x40 - x33) =L= 1;

e156.. sqr(x8) + sqr(x16) - 2*x8*x16*cos(x41 - x33) =L= 1;

e157.. sqr(x8) + sqr(x17) - 2*x8*x17*cos(x42 - x33) =L= 1;

e158.. sqr(x8) + sqr(x18) - 2*x8*x18*cos(x43 - x33) =L= 1;

e159.. sqr(x8) + sqr(x19) - 2*x8*x19*cos(x44 - x33) =L= 1;

e160.. sqr(x8) + sqr(x20) - 2*x8*x20*cos(x45 - x33) =L= 1;

e161.. sqr(x8) + sqr(x21) - 2*x8*x21*cos(x46 - x33) =L= 1;

e162.. sqr(x8) + sqr(x22) - 2*x8*x22*cos(x47 - x33) =L= 1;

e163.. sqr(x8) + sqr(x23) - 2*x8*x23*cos(x48 - x33) =L= 1;

e164.. sqr(x8) + sqr(x24) - 2*x8*x24*cos(x49 - x33) =L= 1;

e165.. sqr(x8) + sqr(x25) - 2*x8*x25*cos(x50 - x33) =L= 1;

e166.. sqr(x9) + sqr(x10) - 2*x9*x10*cos(x35 - x34) =L= 1;

e167.. sqr(x9) + sqr(x11) - 2*x9*x11*cos(x36 - x34) =L= 1;

e168.. sqr(x9) + sqr(x12) - 2*x9*x12*cos(x37 - x34) =L= 1;

e169.. sqr(x9) + sqr(x13) - 2*x9*x13*cos(x38 - x34) =L= 1;

e170.. sqr(x9) + sqr(x14) - 2*x9*x14*cos(x39 - x34) =L= 1;

e171.. sqr(x9) + sqr(x15) - 2*x9*x15*cos(x40 - x34) =L= 1;

e172.. sqr(x9) + sqr(x16) - 2*x9*x16*cos(x41 - x34) =L= 1;

e173.. sqr(x9) + sqr(x17) - 2*x9*x17*cos(x42 - x34) =L= 1;

e174.. sqr(x9) + sqr(x18) - 2*x9*x18*cos(x43 - x34) =L= 1;

e175.. sqr(x9) + sqr(x19) - 2*x9*x19*cos(x44 - x34) =L= 1;

e176.. sqr(x9) + sqr(x20) - 2*x9*x20*cos(x45 - x34) =L= 1;

e177.. sqr(x9) + sqr(x21) - 2*x9*x21*cos(x46 - x34) =L= 1;

e178.. sqr(x9) + sqr(x22) - 2*x9*x22*cos(x47 - x34) =L= 1;

e179.. sqr(x9) + sqr(x23) - 2*x9*x23*cos(x48 - x34) =L= 1;

e180.. sqr(x9) + sqr(x24) - 2*x9*x24*cos(x49 - x34) =L= 1;

e181.. sqr(x9) + sqr(x25) - 2*x9*x25*cos(x50 - x34) =L= 1;

e182.. sqr(x10) + sqr(x11) - 2*x10*x11*cos(x36 - x35) =L= 1;

e183.. sqr(x10) + sqr(x12) - 2*x10*x12*cos(x37 - x35) =L= 1;

e184.. sqr(x10) + sqr(x13) - 2*x10*x13*cos(x38 - x35) =L= 1;

e185.. sqr(x10) + sqr(x14) - 2*x10*x14*cos(x39 - x35) =L= 1;

e186.. sqr(x10) + sqr(x15) - 2*x10*x15*cos(x40 - x35) =L= 1;

e187.. sqr(x10) + sqr(x16) - 2*x10*x16*cos(x41 - x35) =L= 1;

e188.. sqr(x10) + sqr(x17) - 2*x10*x17*cos(x42 - x35) =L= 1;

e189.. sqr(x10) + sqr(x18) - 2*x10*x18*cos(x43 - x35) =L= 1;

e190.. sqr(x10) + sqr(x19) - 2*x10*x19*cos(x44 - x35) =L= 1;

e191.. sqr(x10) + sqr(x20) - 2*x10*x20*cos(x45 - x35) =L= 1;

e192.. sqr(x10) + sqr(x21) - 2*x10*x21*cos(x46 - x35) =L= 1;

e193.. sqr(x10) + sqr(x22) - 2*x10*x22*cos(x47 - x35) =L= 1;

e194.. sqr(x10) + sqr(x23) - 2*x10*x23*cos(x48 - x35) =L= 1;

e195.. sqr(x10) + sqr(x24) - 2*x10*x24*cos(x49 - x35) =L= 1;

e196.. sqr(x10) + sqr(x25) - 2*x10*x25*cos(x50 - x35) =L= 1;

e197.. sqr(x11) + sqr(x12) - 2*x11*x12*cos(x37 - x36) =L= 1;

e198.. sqr(x11) + sqr(x13) - 2*x11*x13*cos(x38 - x36) =L= 1;

e199.. sqr(x11) + sqr(x14) - 2*x11*x14*cos(x39 - x36) =L= 1;

e200.. sqr(x11) + sqr(x15) - 2*x11*x15*cos(x40 - x36) =L= 1;

e201.. sqr(x11) + sqr(x16) - 2*x11*x16*cos(x41 - x36) =L= 1;

e202.. sqr(x11) + sqr(x17) - 2*x11*x17*cos(x42 - x36) =L= 1;

e203.. sqr(x11) + sqr(x18) - 2*x11*x18*cos(x43 - x36) =L= 1;

e204.. sqr(x11) + sqr(x19) - 2*x11*x19*cos(x44 - x36) =L= 1;

e205.. sqr(x11) + sqr(x20) - 2*x11*x20*cos(x45 - x36) =L= 1;

e206.. sqr(x11) + sqr(x21) - 2*x11*x21*cos(x46 - x36) =L= 1;

e207.. sqr(x11) + sqr(x22) - 2*x11*x22*cos(x47 - x36) =L= 1;

e208.. sqr(x11) + sqr(x23) - 2*x11*x23*cos(x48 - x36) =L= 1;

e209.. sqr(x11) + sqr(x24) - 2*x11*x24*cos(x49 - x36) =L= 1;

e210.. sqr(x11) + sqr(x25) - 2*x11*x25*cos(x50 - x36) =L= 1;

e211.. sqr(x12) + sqr(x13) - 2*x12*x13*cos(x38 - x37) =L= 1;

e212.. sqr(x12) + sqr(x14) - 2*x12*x14*cos(x39 - x37) =L= 1;

e213.. sqr(x12) + sqr(x15) - 2*x12*x15*cos(x40 - x37) =L= 1;

e214.. sqr(x12) + sqr(x16) - 2*x12*x16*cos(x41 - x37) =L= 1;

e215.. sqr(x12) + sqr(x17) - 2*x12*x17*cos(x42 - x37) =L= 1;

e216.. sqr(x12) + sqr(x18) - 2*x12*x18*cos(x43 - x37) =L= 1;

e217.. sqr(x12) + sqr(x19) - 2*x12*x19*cos(x44 - x37) =L= 1;

e218.. sqr(x12) + sqr(x20) - 2*x12*x20*cos(x45 - x37) =L= 1;

e219.. sqr(x12) + sqr(x21) - 2*x12*x21*cos(x46 - x37) =L= 1;

e220.. sqr(x12) + sqr(x22) - 2*x12*x22*cos(x47 - x37) =L= 1;

e221.. sqr(x12) + sqr(x23) - 2*x12*x23*cos(x48 - x37) =L= 1;

e222.. sqr(x12) + sqr(x24) - 2*x12*x24*cos(x49 - x37) =L= 1;

e223.. sqr(x12) + sqr(x25) - 2*x12*x25*cos(x50 - x37) =L= 1;

e224.. sqr(x13) + sqr(x14) - 2*x13*x14*cos(x39 - x38) =L= 1;

e225.. sqr(x13) + sqr(x15) - 2*x13*x15*cos(x40 - x38) =L= 1;

e226.. sqr(x13) + sqr(x16) - 2*x13*x16*cos(x41 - x38) =L= 1;

e227.. sqr(x13) + sqr(x17) - 2*x13*x17*cos(x42 - x38) =L= 1;

e228.. sqr(x13) + sqr(x18) - 2*x13*x18*cos(x43 - x38) =L= 1;

e229.. sqr(x13) + sqr(x19) - 2*x13*x19*cos(x44 - x38) =L= 1;

e230.. sqr(x13) + sqr(x20) - 2*x13*x20*cos(x45 - x38) =L= 1;

e231.. sqr(x13) + sqr(x21) - 2*x13*x21*cos(x46 - x38) =L= 1;

e232.. sqr(x13) + sqr(x22) - 2*x13*x22*cos(x47 - x38) =L= 1;

e233.. sqr(x13) + sqr(x23) - 2*x13*x23*cos(x48 - x38) =L= 1;

e234.. sqr(x13) + sqr(x24) - 2*x13*x24*cos(x49 - x38) =L= 1;

e235.. sqr(x13) + sqr(x25) - 2*x13*x25*cos(x50 - x38) =L= 1;

e236.. sqr(x14) + sqr(x15) - 2*x14*x15*cos(x40 - x39) =L= 1;

e237.. sqr(x14) + sqr(x16) - 2*x14*x16*cos(x41 - x39) =L= 1;

e238.. sqr(x14) + sqr(x17) - 2*x14*x17*cos(x42 - x39) =L= 1;

e239.. sqr(x14) + sqr(x18) - 2*x14*x18*cos(x43 - x39) =L= 1;

e240.. sqr(x14) + sqr(x19) - 2*x14*x19*cos(x44 - x39) =L= 1;

e241.. sqr(x14) + sqr(x20) - 2*x14*x20*cos(x45 - x39) =L= 1;

e242.. sqr(x14) + sqr(x21) - 2*x14*x21*cos(x46 - x39) =L= 1;

e243.. sqr(x14) + sqr(x22) - 2*x14*x22*cos(x47 - x39) =L= 1;

e244.. sqr(x14) + sqr(x23) - 2*x14*x23*cos(x48 - x39) =L= 1;

e245.. sqr(x14) + sqr(x24) - 2*x14*x24*cos(x49 - x39) =L= 1;

e246.. sqr(x14) + sqr(x25) - 2*x14*x25*cos(x50 - x39) =L= 1;

e247.. sqr(x15) + sqr(x16) - 2*x15*x16*cos(x41 - x40) =L= 1;

e248.. sqr(x15) + sqr(x17) - 2*x15*x17*cos(x42 - x40) =L= 1;

e249.. sqr(x15) + sqr(x18) - 2*x15*x18*cos(x43 - x40) =L= 1;

e250.. sqr(x15) + sqr(x19) - 2*x15*x19*cos(x44 - x40) =L= 1;

e251.. sqr(x15) + sqr(x20) - 2*x15*x20*cos(x45 - x40) =L= 1;

e252.. sqr(x15) + sqr(x21) - 2*x15*x21*cos(x46 - x40) =L= 1;

e253.. sqr(x15) + sqr(x22) - 2*x15*x22*cos(x47 - x40) =L= 1;

e254.. sqr(x15) + sqr(x23) - 2*x15*x23*cos(x48 - x40) =L= 1;

e255.. sqr(x15) + sqr(x24) - 2*x15*x24*cos(x49 - x40) =L= 1;

e256.. sqr(x15) + sqr(x25) - 2*x15*x25*cos(x50 - x40) =L= 1;

e257.. sqr(x16) + sqr(x17) - 2*x16*x17*cos(x42 - x41) =L= 1;

e258.. sqr(x16) + sqr(x18) - 2*x16*x18*cos(x43 - x41) =L= 1;

e259.. sqr(x16) + sqr(x19) - 2*x16*x19*cos(x44 - x41) =L= 1;

e260.. sqr(x16) + sqr(x20) - 2*x16*x20*cos(x45 - x41) =L= 1;

e261.. sqr(x16) + sqr(x21) - 2*x16*x21*cos(x46 - x41) =L= 1;

e262.. sqr(x16) + sqr(x22) - 2*x16*x22*cos(x47 - x41) =L= 1;

e263.. sqr(x16) + sqr(x23) - 2*x16*x23*cos(x48 - x41) =L= 1;

e264.. sqr(x16) + sqr(x24) - 2*x16*x24*cos(x49 - x41) =L= 1;

e265.. sqr(x16) + sqr(x25) - 2*x16*x25*cos(x50 - x41) =L= 1;

e266.. sqr(x17) + sqr(x18) - 2*x17*x18*cos(x43 - x42) =L= 1;

e267.. sqr(x17) + sqr(x19) - 2*x17*x19*cos(x44 - x42) =L= 1;

e268.. sqr(x17) + sqr(x20) - 2*x17*x20*cos(x45 - x42) =L= 1;

e269.. sqr(x17) + sqr(x21) - 2*x17*x21*cos(x46 - x42) =L= 1;

e270.. sqr(x17) + sqr(x22) - 2*x17*x22*cos(x47 - x42) =L= 1;

e271.. sqr(x17) + sqr(x23) - 2*x17*x23*cos(x48 - x42) =L= 1;

e272.. sqr(x17) + sqr(x24) - 2*x17*x24*cos(x49 - x42) =L= 1;

e273.. sqr(x17) + sqr(x25) - 2*x17*x25*cos(x50 - x42) =L= 1;

e274.. sqr(x18) + sqr(x19) - 2*x18*x19*cos(x44 - x43) =L= 1;

e275.. sqr(x18) + sqr(x20) - 2*x18*x20*cos(x45 - x43) =L= 1;

e276.. sqr(x18) + sqr(x21) - 2*x18*x21*cos(x46 - x43) =L= 1;

e277.. sqr(x18) + sqr(x22) - 2*x18*x22*cos(x47 - x43) =L= 1;

e278.. sqr(x18) + sqr(x23) - 2*x18*x23*cos(x48 - x43) =L= 1;

e279.. sqr(x18) + sqr(x24) - 2*x18*x24*cos(x49 - x43) =L= 1;

e280.. sqr(x18) + sqr(x25) - 2*x18*x25*cos(x50 - x43) =L= 1;

e281.. sqr(x19) + sqr(x20) - 2*x19*x20*cos(x45 - x44) =L= 1;

e282.. sqr(x19) + sqr(x21) - 2*x19*x21*cos(x46 - x44) =L= 1;

e283.. sqr(x19) + sqr(x22) - 2*x19*x22*cos(x47 - x44) =L= 1;

e284.. sqr(x19) + sqr(x23) - 2*x19*x23*cos(x48 - x44) =L= 1;

e285.. sqr(x19) + sqr(x24) - 2*x19*x24*cos(x49 - x44) =L= 1;

e286.. sqr(x19) + sqr(x25) - 2*x19*x25*cos(x50 - x44) =L= 1;

e287.. sqr(x20) + sqr(x21) - 2*x20*x21*cos(x46 - x45) =L= 1;

e288.. sqr(x20) + sqr(x22) - 2*x20*x22*cos(x47 - x45) =L= 1;

e289.. sqr(x20) + sqr(x23) - 2*x20*x23*cos(x48 - x45) =L= 1;

e290.. sqr(x20) + sqr(x24) - 2*x20*x24*cos(x49 - x45) =L= 1;

e291.. sqr(x20) + sqr(x25) - 2*x20*x25*cos(x50 - x45) =L= 1;

e292.. sqr(x21) + sqr(x22) - 2*x21*x22*cos(x47 - x46) =L= 1;

e293.. sqr(x21) + sqr(x23) - 2*x21*x23*cos(x48 - x46) =L= 1;

e294.. sqr(x21) + sqr(x24) - 2*x21*x24*cos(x49 - x46) =L= 1;

e295.. sqr(x21) + sqr(x25) - 2*x21*x25*cos(x50 - x46) =L= 1;

e296.. sqr(x22) + sqr(x23) - 2*x22*x23*cos(x48 - x47) =L= 1;

e297.. sqr(x22) + sqr(x24) - 2*x22*x24*cos(x49 - x47) =L= 1;

e298.. sqr(x22) + sqr(x25) - 2*x22*x25*cos(x50 - x47) =L= 1;

e299.. sqr(x23) + sqr(x24) - 2*x23*x24*cos(x49 - x48) =L= 1;

e300.. sqr(x23) + sqr(x25) - 2*x23*x25*cos(x50 - x48) =L= 1;

e301.. sqr(x24) + sqr(x25) - 2*x24*x25*cos(x50 - x49) =L= 1;

e302..    x26 - x27 =L= 0;

e303..    x27 - x28 =L= 0;

e304..    x28 - x29 =L= 0;

e305..    x29 - x30 =L= 0;

e306..    x30 - x31 =L= 0;

e307..    x31 - x32 =L= 0;

e308..    x32 - x33 =L= 0;

e309..    x33 - x34 =L= 0;

e310..    x34 - x35 =L= 0;

e311..    x35 - x36 =L= 0;

e312..    x36 - x37 =L= 0;

e313..    x37 - x38 =L= 0;

e314..    x38 - x39 =L= 0;

e315..    x39 - x40 =L= 0;

e316..    x40 - x41 =L= 0;

e317..    x41 - x42 =L= 0;

e318..    x42 - x43 =L= 0;

e319..    x43 - x44 =L= 0;

e320..    x44 - x45 =L= 0;

e321..    x45 - x46 =L= 0;

e322..    x46 - x47 =L= 0;

e323..    x47 - x48 =L= 0;

e324..    x48 - x49 =L= 0;

e325..    x49 - x50 =L= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 
x7.up = 1; 
x8.up = 1; 
x9.up = 1; 
x10.up = 1; 
x11.up = 1; 
x12.up = 1; 
x13.up = 1; 
x14.up = 1; 
x15.up = 1; 
x16.up = 1; 
x17.up = 1; 
x18.up = 1; 
x19.up = 1; 
x20.up = 1; 
x21.up = 1; 
x22.up = 1; 
x23.up = 1; 
x24.up = 1; 
x25.fx = 0; 
x26.up = 3.14159265358979; 
x27.up = 3.14159265358979; 
x28.up = 3.14159265358979; 
x29.up = 3.14159265358979; 
x30.up = 3.14159265358979; 
x31.up = 3.14159265358979; 
x32.up = 3.14159265358979; 
x33.up = 3.14159265358979; 
x34.up = 3.14159265358979; 
x35.up = 3.14159265358979; 
x36.up = 3.14159265358979; 
x37.up = 3.14159265358979; 
x38.up = 3.14159265358979; 
x39.up = 3.14159265358979; 
x40.up = 3.14159265358979; 
x41.up = 3.14159265358979; 
x42.up = 3.14159265358979; 
x43.up = 3.14159265358979; 
x44.up = 3.14159265358979; 
x45.up = 3.14159265358979; 
x46.up = 3.14159265358979; 
x47.up = 3.14159265358979; 
x48.up = 3.14159265358979; 
x49.up = 3.14159265358979; 
x50.fx = 3.14159265358979; 

* set non default levels

x1.l = 0.14792899408284; 
x2.l = 0.284023668639053; 
x3.l = 0.408284023668639; 
x4.l = 0.520710059171598; 
x5.l = 0.621301775147929; 
x6.l = 0.710059171597633; 
x7.l = 0.78698224852071; 
x8.l = 0.85207100591716; 
x9.l = 0.905325443786982; 
x10.l = 0.946745562130177; 
x11.l = 0.976331360946746; 
x12.l = 0.994082840236686; 
x13.l = 1; 
x14.l = 0.994082840236686; 
x15.l = 0.976331360946746; 
x16.l = 0.946745562130177; 
x17.l = 0.905325443786982; 
x18.l = 0.85207100591716; 
x19.l = 0.78698224852071; 
x20.l = 0.710059171597633; 
x21.l = 0.621301775147929; 
x22.l = 0.520710059171598; 
x23.l = 0.408284023668639; 
x24.l = 0.284023668639053; 
x26.l = 0.125663706143592; 
x27.l = 0.251327412287183; 
x28.l = 0.376991118430775; 
x29.l = 0.502654824574367; 
x30.l = 0.628318530717959; 
x31.l = 0.75398223686155; 
x32.l = 0.879645943005142; 
x33.l = 1.00530964914873; 
x34.l = 1.13097335529233; 
x35.l = 1.25663706143592; 
x36.l = 1.38230076757951; 
x37.l = 1.5079644737231; 
x38.l = 1.63362817986669; 
x39.l = 1.75929188601028; 
x40.l = 1.88495559215388; 
x41.l = 2.01061929829747; 
x42.l = 2.13628300444106; 
x43.l = 2.26194671058465; 
x44.l = 2.38761041672824; 
x45.l = 2.51327412287183; 
x46.l = 2.63893782901543; 
x47.l = 2.76460153515902; 
x48.l = 2.89026524130261; 
x49.l = 3.0159289474462; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
