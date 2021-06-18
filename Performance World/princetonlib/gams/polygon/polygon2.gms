*  NLP written by GAMS Convert at 11/29/04 16:21:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        192        2        0      190        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         43       43        0        0        0        0        0        0
*  FX      4        4        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        805        3      802        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,objvar;

Positive Variables  x22,x42;

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
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191,e192;


e1.. sqr(x1 - x2) + sqr(x22 - x23) =L= 4;

e2.. sqr(x1 - x3) + sqr(x22 - x24) =L= 4;

e3.. sqr(x1 - x4) + sqr(x22 - x25) =L= 4;

e4.. sqr(x1 - x5) + sqr(x22 - x26) =L= 4;

e5.. sqr(x1 - x6) + sqr(x22 - x27) =L= 4;

e6.. sqr(x1 - x7) + sqr(x22 - x28) =L= 4;

e7.. sqr(x1 - x8) + sqr(x22 - x29) =L= 4;

e8.. sqr(x1 - x9) + sqr(x22 - x30) =L= 4;

e9.. sqr(x1 - x10) + sqr(x22 - x31) =L= 4;

e10.. sqr(x1 - x11) + sqr(x22 - x32) =L= 4;

e11.. sqr(x1 - x12) + sqr(x22 - x33) =L= 4;

e12.. sqr(x1 - x13) + sqr(x22 - x34) =L= 4;

e13.. sqr(x1 - x14) + sqr(x22 - x35) =L= 4;

e14.. sqr(x1 - x15) + sqr(x22 - x36) =L= 4;

e15.. sqr(x1 - x16) + sqr(x22 - x37) =L= 4;

e16.. sqr(x1 - x17) + sqr(x22 - x38) =L= 4;

e17.. sqr(x1 - x18) + sqr(x22 - x39) =L= 4;

e18.. sqr(x1 - x19) + sqr(x22 - x40) =L= 4;

e19.. sqr(x1 - x20) + sqr(x22 - x41) =L= 4;

e20.. sqr(x2 - x3) + sqr(x23 - x24) =L= 4;

e21.. sqr(x2 - x4) + sqr(x23 - x25) =L= 4;

e22.. sqr(x2 - x5) + sqr(x23 - x26) =L= 4;

e23.. sqr(x2 - x6) + sqr(x23 - x27) =L= 4;

e24.. sqr(x2 - x7) + sqr(x23 - x28) =L= 4;

e25.. sqr(x2 - x8) + sqr(x23 - x29) =L= 4;

e26.. sqr(x2 - x9) + sqr(x23 - x30) =L= 4;

e27.. sqr(x2 - x10) + sqr(x23 - x31) =L= 4;

e28.. sqr(x2 - x11) + sqr(x23 - x32) =L= 4;

e29.. sqr(x2 - x12) + sqr(x23 - x33) =L= 4;

e30.. sqr(x2 - x13) + sqr(x23 - x34) =L= 4;

e31.. sqr(x2 - x14) + sqr(x23 - x35) =L= 4;

e32.. sqr(x2 - x15) + sqr(x23 - x36) =L= 4;

e33.. sqr(x2 - x16) + sqr(x23 - x37) =L= 4;

e34.. sqr(x2 - x17) + sqr(x23 - x38) =L= 4;

e35.. sqr(x2 - x18) + sqr(x23 - x39) =L= 4;

e36.. sqr(x2 - x19) + sqr(x23 - x40) =L= 4;

e37.. sqr(x2 - x20) + sqr(x23 - x41) =L= 4;

e38.. sqr(x3 - x4) + sqr(x24 - x25) =L= 4;

e39.. sqr(x3 - x5) + sqr(x24 - x26) =L= 4;

e40.. sqr(x3 - x6) + sqr(x24 - x27) =L= 4;

e41.. sqr(x3 - x7) + sqr(x24 - x28) =L= 4;

e42.. sqr(x3 - x8) + sqr(x24 - x29) =L= 4;

e43.. sqr(x3 - x9) + sqr(x24 - x30) =L= 4;

e44.. sqr(x3 - x10) + sqr(x24 - x31) =L= 4;

e45.. sqr(x3 - x11) + sqr(x24 - x32) =L= 4;

e46.. sqr(x3 - x12) + sqr(x24 - x33) =L= 4;

e47.. sqr(x3 - x13) + sqr(x24 - x34) =L= 4;

e48.. sqr(x3 - x14) + sqr(x24 - x35) =L= 4;

e49.. sqr(x3 - x15) + sqr(x24 - x36) =L= 4;

e50.. sqr(x3 - x16) + sqr(x24 - x37) =L= 4;

e51.. sqr(x3 - x17) + sqr(x24 - x38) =L= 4;

e52.. sqr(x3 - x18) + sqr(x24 - x39) =L= 4;

e53.. sqr(x3 - x19) + sqr(x24 - x40) =L= 4;

e54.. sqr(x3 - x20) + sqr(x24 - x41) =L= 4;

e55.. sqr(x4 - x5) + sqr(x25 - x26) =L= 4;

e56.. sqr(x4 - x6) + sqr(x25 - x27) =L= 4;

e57.. sqr(x4 - x7) + sqr(x25 - x28) =L= 4;

e58.. sqr(x4 - x8) + sqr(x25 - x29) =L= 4;

e59.. sqr(x4 - x9) + sqr(x25 - x30) =L= 4;

e60.. sqr(x4 - x10) + sqr(x25 - x31) =L= 4;

e61.. sqr(x4 - x11) + sqr(x25 - x32) =L= 4;

e62.. sqr(x4 - x12) + sqr(x25 - x33) =L= 4;

e63.. sqr(x4 - x13) + sqr(x25 - x34) =L= 4;

e64.. sqr(x4 - x14) + sqr(x25 - x35) =L= 4;

e65.. sqr(x4 - x15) + sqr(x25 - x36) =L= 4;

e66.. sqr(x4 - x16) + sqr(x25 - x37) =L= 4;

e67.. sqr(x4 - x17) + sqr(x25 - x38) =L= 4;

e68.. sqr(x4 - x18) + sqr(x25 - x39) =L= 4;

e69.. sqr(x4 - x19) + sqr(x25 - x40) =L= 4;

e70.. sqr(x4 - x20) + sqr(x25 - x41) =L= 4;

e71.. sqr(x5 - x6) + sqr(x26 - x27) =L= 4;

e72.. sqr(x5 - x7) + sqr(x26 - x28) =L= 4;

e73.. sqr(x5 - x8) + sqr(x26 - x29) =L= 4;

e74.. sqr(x5 - x9) + sqr(x26 - x30) =L= 4;

e75.. sqr(x5 - x10) + sqr(x26 - x31) =L= 4;

e76.. sqr(x5 - x11) + sqr(x26 - x32) =L= 4;

e77.. sqr(x5 - x12) + sqr(x26 - x33) =L= 4;

e78.. sqr(x5 - x13) + sqr(x26 - x34) =L= 4;

e79.. sqr(x5 - x14) + sqr(x26 - x35) =L= 4;

e80.. sqr(x5 - x15) + sqr(x26 - x36) =L= 4;

e81.. sqr(x5 - x16) + sqr(x26 - x37) =L= 4;

e82.. sqr(x5 - x17) + sqr(x26 - x38) =L= 4;

e83.. sqr(x5 - x18) + sqr(x26 - x39) =L= 4;

e84.. sqr(x5 - x19) + sqr(x26 - x40) =L= 4;

e85.. sqr(x5 - x20) + sqr(x26 - x41) =L= 4;

e86.. sqr(x6 - x7) + sqr(x27 - x28) =L= 4;

e87.. sqr(x6 - x8) + sqr(x27 - x29) =L= 4;

e88.. sqr(x6 - x9) + sqr(x27 - x30) =L= 4;

e89.. sqr(x6 - x10) + sqr(x27 - x31) =L= 4;

e90.. sqr(x6 - x11) + sqr(x27 - x32) =L= 4;

e91.. sqr(x6 - x12) + sqr(x27 - x33) =L= 4;

e92.. sqr(x6 - x13) + sqr(x27 - x34) =L= 4;

e93.. sqr(x6 - x14) + sqr(x27 - x35) =L= 4;

e94.. sqr(x6 - x15) + sqr(x27 - x36) =L= 4;

e95.. sqr(x6 - x16) + sqr(x27 - x37) =L= 4;

e96.. sqr(x6 - x17) + sqr(x27 - x38) =L= 4;

e97.. sqr(x6 - x18) + sqr(x27 - x39) =L= 4;

e98.. sqr(x6 - x19) + sqr(x27 - x40) =L= 4;

e99.. sqr(x6 - x20) + sqr(x27 - x41) =L= 4;

e100.. sqr(x7 - x8) + sqr(x28 - x29) =L= 4;

e101.. sqr(x7 - x9) + sqr(x28 - x30) =L= 4;

e102.. sqr(x7 - x10) + sqr(x28 - x31) =L= 4;

e103.. sqr(x7 - x11) + sqr(x28 - x32) =L= 4;

e104.. sqr(x7 - x12) + sqr(x28 - x33) =L= 4;

e105.. sqr(x7 - x13) + sqr(x28 - x34) =L= 4;

e106.. sqr(x7 - x14) + sqr(x28 - x35) =L= 4;

e107.. sqr(x7 - x15) + sqr(x28 - x36) =L= 4;

e108.. sqr(x7 - x16) + sqr(x28 - x37) =L= 4;

e109.. sqr(x7 - x17) + sqr(x28 - x38) =L= 4;

e110.. sqr(x7 - x18) + sqr(x28 - x39) =L= 4;

e111.. sqr(x7 - x19) + sqr(x28 - x40) =L= 4;

e112.. sqr(x7 - x20) + sqr(x28 - x41) =L= 4;

e113.. sqr(x8 - x9) + sqr(x29 - x30) =L= 4;

e114.. sqr(x8 - x10) + sqr(x29 - x31) =L= 4;

e115.. sqr(x8 - x11) + sqr(x29 - x32) =L= 4;

e116.. sqr(x8 - x12) + sqr(x29 - x33) =L= 4;

e117.. sqr(x8 - x13) + sqr(x29 - x34) =L= 4;

e118.. sqr(x8 - x14) + sqr(x29 - x35) =L= 4;

e119.. sqr(x8 - x15) + sqr(x29 - x36) =L= 4;

e120.. sqr(x8 - x16) + sqr(x29 - x37) =L= 4;

e121.. sqr(x8 - x17) + sqr(x29 - x38) =L= 4;

e122.. sqr(x8 - x18) + sqr(x29 - x39) =L= 4;

e123.. sqr(x8 - x19) + sqr(x29 - x40) =L= 4;

e124.. sqr(x8 - x20) + sqr(x29 - x41) =L= 4;

e125.. sqr(x9 - x10) + sqr(x30 - x31) =L= 4;

e126.. sqr(x9 - x11) + sqr(x30 - x32) =L= 4;

e127.. sqr(x9 - x12) + sqr(x30 - x33) =L= 4;

e128.. sqr(x9 - x13) + sqr(x30 - x34) =L= 4;

e129.. sqr(x9 - x14) + sqr(x30 - x35) =L= 4;

e130.. sqr(x9 - x15) + sqr(x30 - x36) =L= 4;

e131.. sqr(x9 - x16) + sqr(x30 - x37) =L= 4;

e132.. sqr(x9 - x17) + sqr(x30 - x38) =L= 4;

e133.. sqr(x9 - x18) + sqr(x30 - x39) =L= 4;

e134.. sqr(x9 - x19) + sqr(x30 - x40) =L= 4;

e135.. sqr(x9 - x20) + sqr(x30 - x41) =L= 4;

e136.. sqr(x10 - x11) + sqr(x31 - x32) =L= 4;

e137.. sqr(x10 - x12) + sqr(x31 - x33) =L= 4;

e138.. sqr(x10 - x13) + sqr(x31 - x34) =L= 4;

e139.. sqr(x10 - x14) + sqr(x31 - x35) =L= 4;

e140.. sqr(x10 - x15) + sqr(x31 - x36) =L= 4;

e141.. sqr(x10 - x16) + sqr(x31 - x37) =L= 4;

e142.. sqr(x10 - x17) + sqr(x31 - x38) =L= 4;

e143.. sqr(x10 - x18) + sqr(x31 - x39) =L= 4;

e144.. sqr(x10 - x19) + sqr(x31 - x40) =L= 4;

e145.. sqr(x10 - x20) + sqr(x31 - x41) =L= 4;

e146.. sqr(x11 - x12) + sqr(x32 - x33) =L= 4;

e147.. sqr(x11 - x13) + sqr(x32 - x34) =L= 4;

e148.. sqr(x11 - x14) + sqr(x32 - x35) =L= 4;

e149.. sqr(x11 - x15) + sqr(x32 - x36) =L= 4;

e150.. sqr(x11 - x16) + sqr(x32 - x37) =L= 4;

e151.. sqr(x11 - x17) + sqr(x32 - x38) =L= 4;

e152.. sqr(x11 - x18) + sqr(x32 - x39) =L= 4;

e153.. sqr(x11 - x19) + sqr(x32 - x40) =L= 4;

e154.. sqr(x11 - x20) + sqr(x32 - x41) =L= 4;

e155.. sqr(x12 - x13) + sqr(x33 - x34) =L= 4;

e156.. sqr(x12 - x14) + sqr(x33 - x35) =L= 4;

e157.. sqr(x12 - x15) + sqr(x33 - x36) =L= 4;

e158.. sqr(x12 - x16) + sqr(x33 - x37) =L= 4;

e159.. sqr(x12 - x17) + sqr(x33 - x38) =L= 4;

e160.. sqr(x12 - x18) + sqr(x33 - x39) =L= 4;

e161.. sqr(x12 - x19) + sqr(x33 - x40) =L= 4;

e162.. sqr(x12 - x20) + sqr(x33 - x41) =L= 4;

e163.. sqr(x13 - x14) + sqr(x34 - x35) =L= 4;

e164.. sqr(x13 - x15) + sqr(x34 - x36) =L= 4;

e165.. sqr(x13 - x16) + sqr(x34 - x37) =L= 4;

e166.. sqr(x13 - x17) + sqr(x34 - x38) =L= 4;

e167.. sqr(x13 - x18) + sqr(x34 - x39) =L= 4;

e168.. sqr(x13 - x19) + sqr(x34 - x40) =L= 4;

e169.. sqr(x13 - x20) + sqr(x34 - x41) =L= 4;

e170.. sqr(x14 - x15) + sqr(x35 - x36) =L= 4;

e171.. sqr(x14 - x16) + sqr(x35 - x37) =L= 4;

e172.. sqr(x14 - x17) + sqr(x35 - x38) =L= 4;

e173.. sqr(x14 - x18) + sqr(x35 - x39) =L= 4;

e174.. sqr(x14 - x19) + sqr(x35 - x40) =L= 4;

e175.. sqr(x14 - x20) + sqr(x35 - x41) =L= 4;

e176.. sqr(x15 - x16) + sqr(x36 - x37) =L= 4;

e177.. sqr(x15 - x17) + sqr(x36 - x38) =L= 4;

e178.. sqr(x15 - x18) + sqr(x36 - x39) =L= 4;

e179.. sqr(x15 - x19) + sqr(x36 - x40) =L= 4;

e180.. sqr(x15 - x20) + sqr(x36 - x41) =L= 4;

e181.. sqr(x16 - x17) + sqr(x37 - x38) =L= 4;

e182.. sqr(x16 - x18) + sqr(x37 - x39) =L= 4;

e183.. sqr(x16 - x19) + sqr(x37 - x40) =L= 4;

e184.. sqr(x16 - x20) + sqr(x37 - x41) =L= 4;

e185.. sqr(x17 - x18) + sqr(x38 - x39) =L= 4;

e186.. sqr(x17 - x19) + sqr(x38 - x40) =L= 4;

e187.. sqr(x17 - x20) + sqr(x38 - x41) =L= 4;

e188.. sqr(x18 - x19) + sqr(x39 - x40) =L= 4;

e189.. sqr(x18 - x20) + sqr(x39 - x41) =L= 4;

e190.. sqr(x19 - x20) + sqr(x40 - x41) =L= 4;

e191..    x2 - x20 =E= 0;

e192..  - 0.5*(x1*x23 - x2*x22 + x2*x24 - x3*x23 + x3*x25 - x4*x24 + x4*x26 - 
       x5*x25 + x5*x27 - x6*x26 + x6*x28 - x7*x27 + x7*x29 - x8*x28 + x8*x30 - 
       x9*x29 + x9*x31 - x10*x30 + x10*x32 - x11*x31 + x11*x33 - x12*x32 + x12*
       x34 - x13*x33 + x13*x35 - x14*x34 + x14*x36 - x15*x35 + x15*x37 - x16*
       x36 + x16*x38 - x17*x37 + x17*x39 - x18*x38 + x18*x40 - x19*x39 + x19*
       x41 - x20*x40 + x20*x42 - x21*x41) + objvar =E= 0;

* set non default bounds

x1.fx = 0.5; 
x2.lo = 0.5; x2.up = 2.5; 
x3.lo = 0.5; x3.up = 2.5; 
x4.lo = 0.5; x4.up = 2.5; 
x5.lo = 0.5; x5.up = 2.5; 
x6.lo = 0.5; x6.up = 2.5; 
x7.lo = 0.5; x7.up = 2.5; 
x8.lo = 0.5; x8.up = 2.5; 
x9.lo = 0.5; x9.up = 2.5; 
x10.lo = 0.5; x10.up = 2.5; 
x11.lo = 0.5; x11.up = 2.5; 
x12.lo = 0.5; x12.up = 2.5; 
x13.lo = 0.5; x13.up = 2.5; 
x14.lo = 0.5; x14.up = 2.5; 
x15.lo = 0.5; x15.up = 2.5; 
x16.lo = 0.5; x16.up = 2.5; 
x17.lo = 0.5; x17.up = 2.5; 
x18.lo = 0.5; x18.up = 2.5; 
x19.lo = 0.5; x19.up = 2.5; 
x20.lo = 0.5; x20.up = 2.5; 
x21.fx = 0.5; 
x22.fx = 0; 
x42.fx = 0; 

* set non default levels

x2.l = 2.30901699437495; 
x3.l = 2.08778525229247; 
x4.l = 1.80901699437495; 
x5.l = 1.5; 
x6.l = 1.19098300562505; 
x7.l = 0.912214747707527; 
x8.l = 0.690983005625053; 
x9.l = 0.548943483704846; 
x11.l = 0.548943483704846; 
x12.l = 0.690983005625052; 
x13.l = 0.912214747707527; 
x14.l = 1.19098300562505; 
x15.l = 1.5; 
x16.l = 1.80901699437495; 
x17.l = 2.08778525229247; 
x18.l = 2.30901699437495; 
x19.l = 2.45105651629515; 
x20.l = 2.5; 
x23.l = 0.587785252292473; 
x24.l = 0.809016994374947; 
x25.l = 0.951056516295154; 
x26.l = 1; 
x27.l = 0.951056516295154; 
x28.l = 0.809016994374947; 
x29.l = 0.587785252292473; 
x30.l = 0.309016994374948; 
x31.l = 1.22460635382238E-16; 
x32.l = -0.309016994374947; 
x33.l = -0.587785252292473; 
x34.l = -0.809016994374947; 
x35.l = -0.951056516295154; 
x36.l = -1; 
x37.l = -0.951056516295154; 
x38.l = -0.809016994374948; 
x39.l = -0.587785252292473; 
x40.l = -0.309016994374948; 
x41.l = -2.44921270764475E-16; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;
