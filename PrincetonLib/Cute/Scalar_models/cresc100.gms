*  NLP written by GAMS Convert at 10/06/06 11:16:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        203        3      100      100        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1114        3     1111        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar,x8,x9;

Positive Variables  x5;

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
          ,e195,e196,e197,e198,e199,e200,e201,e202,e203;


e1.. sqr((-0.544) + x4*x3*cos(x5) + x1) + sqr((-0.492) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e2.. sqr((-0.714) + x4*x3*cos(x5) + x1) + sqr((-0.505) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e3.. sqr((-0.594) + x4*x3*cos(x5) + x1) + sqr((-0.094) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e4.. sqr((-0.474) + x4*x3*cos(x5) + x1) + sqr((-0.398) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e5.. sqr((-0.47) + x4*x3*cos(x5) + x1) + sqr((-0.804) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e6.. sqr((-0.241) + x4*x3*cos(x5) + x1) + sqr((-0.955) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e7.. sqr((-0.503) + x4*x3*cos(x5) + x1) + sqr((-0.097) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e8.. sqr((-0.854) + x4*x3*cos(x5) + x1) + sqr((-0.359) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e9.. sqr((-0.438) + x4*x3*cos(x5) + x1) + sqr((-0.477) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 0;

e10.. sqr((-0.294) + x4*x3*cos(x5) + x1) + sqr((-0.887) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e11.. sqr((-0.479) + x4*x3*cos(x5) + x1) + sqr((-0.372) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e12.. sqr((-0.413) + x4*x3*cos(x5) + x1) + sqr((-0.911) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e13.. sqr((-0.722) + x4*x3*cos(x5) + x1) + sqr((-0.082) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e14.. sqr((-0.358) + x4*x3*cos(x5) + x1) + sqr((-0.788) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e15.. sqr((-0.836) + x4*x3*cos(x5) + x1) + sqr((-0.225) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e16.. sqr((-0.648) + x4*x3*cos(x5) + x1) + sqr((-0.424) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e17.. sqr((-0.267) + x4*x3*cos(x5) + x1) + sqr((-0.932) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e18.. sqr((-0.362) + x4*x3*cos(x5) + x1) + sqr((-0.697) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e19.. sqr((-0.232) + x4*x3*cos(x5) + x1) + sqr((-0.969) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e20.. sqr((-0.667) + x4*x3*cos(x5) + x1) + sqr((-0.527) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e21.. sqr((-0.476) + x4*x3*cos(x5) + x1) + sqr((-0.735) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e22.. sqr((-0.868) + x4*x3*cos(x5) + x1) + sqr((-0.141) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e23.. sqr((-0.603) + x4*x3*cos(x5) + x1) + sqr((-0.55) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e24.. sqr((-0.788) + x4*x3*cos(x5) + x1) + sqr((-0.399) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e25.. sqr((-0.745) + x4*x3*cos(x5) + x1) + sqr((-0.365) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e26.. sqr((-0.627) + x4*x3*cos(x5) + x1) + sqr((-0.762) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e27.. sqr((-0.394) + x4*x3*cos(x5) + x1) + sqr((-0.779) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e28.. sqr((-0.22) + x4*x3*cos(x5) + x1) + sqr((-0.869) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e29.. sqr((-0.548) + x4*x3*cos(x5) + x1) + sqr((-0.625) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e30.. sqr((-0.446) + x4*x3*cos(x5) + x1) + sqr((-0.778) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e31.. sqr((-0.463) + x4*x3*cos(x5) + x1) + sqr((-0.762) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e32.. sqr((-0.541) + x4*x3*cos(x5) + x1) + sqr((-0.068) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e33.. sqr((-0.631) + x4*x3*cos(x5) + x1) + sqr((-0.67) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e34.. sqr((-0.735) + x4*x3*cos(x5) + x1) + sqr((-0.151) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e35.. sqr((-0.674) + x4*x3*cos(x5) + x1) + sqr((-0.49) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e36.. sqr((-0.62) + x4*x3*cos(x5) + x1) + sqr((-0.565) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e37.. sqr((-0.257) + x4*x3*cos(x5) + x1) + sqr((-0.862) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e38.. sqr((-0.659) + x4*x3*cos(x5) + x1) + sqr((-0.01) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e39.. sqr((-0.475) + x4*x3*cos(x5) + x1) + sqr((-0.585) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e40.. sqr((-0.708) + x4*x3*cos(x5) + x1) + sqr((-0.475) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e41.. sqr((-0.545) + x4*x3*cos(x5) + x1) + sqr((-0.371) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e42.. sqr((-0.586) + x4*x3*cos(x5) + x1) + sqr((-0.085) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e43.. sqr((-0.796) + x4*x3*cos(x5) + x1) + sqr((-0.309) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e44.. sqr((-0.525) + x4*x3*cos(x5) + x1) + sqr((-0.573) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e45.. sqr((-0.498) + x4*x3*cos(x5) + x1) + sqr((-0.53) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e46.. sqr((-0.79) + x4*x3*cos(x5) + x1) + sqr((-0.217) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e47.. sqr((-0.632) + x4*x3*cos(x5) + x1) + sqr((-0.169) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e48.. sqr((-0.699) + x4*x3*cos(x5) + x1) + sqr((-0.024) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e49.. sqr((-0.758) + x4*x3*cos(x5) + x1) + sqr((-0.436) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e50.. sqr((-0.656) + x4*x3*cos(x5) + x1) + sqr((-0.662) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e51.. sqr((-0.652) + x4*x3*cos(x5) + x1) + sqr((-0.251) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e52.. sqr((-0.801) + x4*x3*cos(x5) + x1) + sqr((-0.511) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e53.. sqr((-0.73) + x4*x3*cos(x5) + x1) + sqr((-0.611) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e54.. sqr((-0.689) + x4*x3*cos(x5) + x1) + sqr((-0.277) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e55.. sqr((-0.527) + x4*x3*cos(x5) + x1) + sqr((-0.612) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e56.. sqr((-0.696) + x4*x3*cos(x5) + x1) + sqr((-0.074) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e57.. sqr((-0.911) + x4*x3*cos(x5) + x1) + sqr((-0.052) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e58.. sqr((-0.805) + x4*x3*cos(x5) + x1) + sqr((-0.075) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e59.. sqr((-0.764) + x4*x3*cos(x5) + x1) + sqr((-0.067) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e60.. sqr((-0.331) + x4*x3*cos(x5) + x1) + sqr((-0.759) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e61.. sqr((-0.078) + x4*x3*cos(x5) + x1) + sqr((-0.983) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e62.. sqr((-0.656) + x4*x3*cos(x5) + x1) + sqr((-0.34) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e63.. sqr((-0.48) + x4*x3*cos(x5) + x1) + sqr((-0.232) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e64.. sqr((-0.503) + x4*x3*cos(x5) + x1) + sqr((-0.14) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e65.. sqr((-0.412) + x4*x3*cos(x5) + x1) + sqr((-0.683) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e66.. sqr((-0.338) + x4*x3*cos(x5) + x1) + sqr((-0.624) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e67.. sqr((-0.92) + x4*x3*cos(x5) + x1) + sqr((-0.139) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e68.. sqr((-0.548) + x4*x3*cos(x5) + x1) + sqr((-0.474) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e69.. sqr((-0.826) + x4*x3*cos(x5) + x1) + sqr((-0.443) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e70.. sqr((-0.071) + x4*x3*cos(x5) + x1) + sqr((-0.969) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e71.. sqr((-0.635) + x4*x3*cos(x5) + x1) + sqr((-0.728) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e72.. sqr((-0.591) + x4*x3*cos(x5) + x1) + sqr((-0.57) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e73.. sqr((-0.489) + x4*x3*cos(x5) + x1) + sqr((-0.427) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e74.. sqr((-0.565) + x4*x3*cos(x5) + x1) + sqr((-0.105) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e75.. sqr((-0.791) + x4*x3*cos(x5) + x1) + sqr((-0.554) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e76.. sqr((-0.725) + x4*x3*cos(x5) + x1) + sqr((-0.174) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e77.. sqr((-0.091) + x4*x3*cos(x5) + x1) + sqr((-0.951) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e78.. sqr((-0.401) + x4*x3*cos(x5) + x1) + sqr((-0.79) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e79.. sqr((-0.226) + x4*x3*cos(x5) + x1) + sqr((-0.968) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e80.. sqr((-0.518) + x4*x3*cos(x5) + x1) + sqr((-0.663) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e81.. sqr((-0.651) + x4*x3*cos(x5) + x1) + sqr((-0.166) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e82.. sqr((-0.738) + x4*x3*cos(x5) + x1) + sqr((-0.146) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e83.. sqr((-0.509) + x4*x3*cos(x5) + x1) + sqr((-0.28) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e84.. sqr((-0.833) + x4*x3*cos(x5) + x1) + sqr((-0.176) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e85.. sqr((-0.669) + x4*x3*cos(x5) + x1) + sqr((-0.044) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e86.. sqr((-0.121) + x4*x3*cos(x5) + x1) + sqr((-0.921) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e87.. sqr((-0.809) + x4*x3*cos(x5) + x1) + sqr((-0.458) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e88.. sqr((-0.477) + x4*x3*cos(x5) + x1) + sqr((-0.436) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e89.. sqr((-0.267) + x4*x3*cos(x5) + x1) + sqr((-0.84) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e90.. sqr((-0.412) + x4*x3*cos(x5) + x1) + sqr((-0.63) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e91.. sqr((-0.663) + x4*x3*cos(x5) + x1) + sqr((-0.648) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e92.. sqr((-0.83) + x4*x3*cos(x5) + x1) + sqr((-0.086) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e93.. sqr((-0.324) + x4*x3*cos(x5) + x1) + sqr((-0.862) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e94.. sqr((-0.225) + x4*x3*cos(x5) + x1) + sqr((-0.853) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e95.. sqr((-0.87) + x4*x3*cos(x5) + x1) + sqr((-0.331) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 0;

e96.. sqr((-0.343) + x4*x3*cos(x5) + x1) + sqr((-0.629) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e97.. sqr((-0.849) + x4*x3*cos(x5) + x1) + sqr((-0.521) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e98.. sqr((-0.655) + x4*x3*cos(x5) + x1) + sqr((-0.714) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e99.. sqr((-0.558) + x4*x3*cos(x5) + x1) + sqr((-0.005) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 0;

e100.. sqr((-0.83) + x4*x3*cos(x5) + x1) + sqr((-0.526) + x4*x3*sin(x5) + x2)
        - sqr(x3 + x6) =L= 0;

e101.. sqr((-0.544) + x1) + sqr((-0.492) + x2) - sqr(x4*x3 + x6) =G= 0;

e102.. sqr((-0.714) + x1) + sqr((-0.505) + x2) - sqr(x4*x3 + x6) =G= 0;

e103.. sqr((-0.594) + x1) + sqr((-0.094) + x2) - sqr(x4*x3 + x6) =G= 0;

e104.. sqr((-0.474) + x1) + sqr((-0.398) + x2) - sqr(x4*x3 + x6) =G= 0;

e105.. sqr((-0.47) + x1) + sqr((-0.804) + x2) - sqr(x4*x3 + x6) =G= 0;

e106.. sqr((-0.241) + x1) + sqr((-0.955) + x2) - sqr(x4*x3 + x6) =G= 0;

e107.. sqr((-0.503) + x1) + sqr((-0.097) + x2) - sqr(x4*x3 + x6) =G= 0;

e108.. sqr((-0.854) + x1) + sqr((-0.359) + x2) - sqr(x4*x3 + x6) =G= 0;

e109.. sqr((-0.438) + x1) + sqr((-0.477) + x2) - sqr(x4*x3 + x6) =G= 0;

e110.. sqr((-0.294) + x1) + sqr((-0.887) + x2) - sqr(x4*x3 + x6) =G= 0;

e111.. sqr((-0.479) + x1) + sqr((-0.372) + x2) - sqr(x4*x3 + x6) =G= 0;

e112.. sqr((-0.413) + x1) + sqr((-0.911) + x2) - sqr(x4*x3 + x6) =G= 0;

e113.. sqr((-0.722) + x1) + sqr((-0.082) + x2) - sqr(x4*x3 + x6) =G= 0;

e114.. sqr((-0.358) + x1) + sqr((-0.788) + x2) - sqr(x4*x3 + x6) =G= 0;

e115.. sqr((-0.836) + x1) + sqr((-0.225) + x2) - sqr(x4*x3 + x6) =G= 0;

e116.. sqr((-0.648) + x1) + sqr((-0.424) + x2) - sqr(x4*x3 + x6) =G= 0;

e117.. sqr((-0.267) + x1) + sqr((-0.932) + x2) - sqr(x4*x3 + x6) =G= 0;

e118.. sqr((-0.362) + x1) + sqr((-0.697) + x2) - sqr(x4*x3 + x6) =G= 0;

e119.. sqr((-0.232) + x1) + sqr((-0.969) + x2) - sqr(x4*x3 + x6) =G= 0;

e120.. sqr((-0.667) + x1) + sqr((-0.527) + x2) - sqr(x4*x3 + x6) =G= 0;

e121.. sqr((-0.476) + x1) + sqr((-0.735) + x2) - sqr(x4*x3 + x6) =G= 0;

e122.. sqr((-0.868) + x1) + sqr((-0.141) + x2) - sqr(x4*x3 + x6) =G= 0;

e123.. sqr((-0.603) + x1) + sqr((-0.55) + x2) - sqr(x4*x3 + x6) =G= 0;

e124.. sqr((-0.788) + x1) + sqr((-0.399) + x2) - sqr(x4*x3 + x6) =G= 0;

e125.. sqr((-0.745) + x1) + sqr((-0.365) + x2) - sqr(x4*x3 + x6) =G= 0;

e126.. sqr((-0.627) + x1) + sqr((-0.762) + x2) - sqr(x4*x3 + x6) =G= 0;

e127.. sqr((-0.394) + x1) + sqr((-0.779) + x2) - sqr(x4*x3 + x6) =G= 0;

e128.. sqr((-0.22) + x1) + sqr((-0.869) + x2) - sqr(x4*x3 + x6) =G= 0;

e129.. sqr((-0.548) + x1) + sqr((-0.625) + x2) - sqr(x4*x3 + x6) =G= 0;

e130.. sqr((-0.446) + x1) + sqr((-0.778) + x2) - sqr(x4*x3 + x6) =G= 0;

e131.. sqr((-0.463) + x1) + sqr((-0.762) + x2) - sqr(x4*x3 + x6) =G= 0;

e132.. sqr((-0.541) + x1) + sqr((-0.068) + x2) - sqr(x4*x3 + x6) =G= 0;

e133.. sqr((-0.631) + x1) + sqr((-0.67) + x2) - sqr(x4*x3 + x6) =G= 0;

e134.. sqr((-0.735) + x1) + sqr((-0.151) + x2) - sqr(x4*x3 + x6) =G= 0;

e135.. sqr((-0.674) + x1) + sqr((-0.49) + x2) - sqr(x4*x3 + x6) =G= 0;

e136.. sqr((-0.62) + x1) + sqr((-0.565) + x2) - sqr(x4*x3 + x6) =G= 0;

e137.. sqr((-0.257) + x1) + sqr((-0.862) + x2) - sqr(x4*x3 + x6) =G= 0;

e138.. sqr((-0.659) + x1) + sqr((-0.01) + x2) - sqr(x4*x3 + x6) =G= 0;

e139.. sqr((-0.475) + x1) + sqr((-0.585) + x2) - sqr(x4*x3 + x6) =G= 0;

e140.. sqr((-0.708) + x1) + sqr((-0.475) + x2) - sqr(x4*x3 + x6) =G= 0;

e141.. sqr((-0.545) + x1) + sqr((-0.371) + x2) - sqr(x4*x3 + x6) =G= 0;

e142.. sqr((-0.586) + x1) + sqr((-0.085) + x2) - sqr(x4*x3 + x6) =G= 0;

e143.. sqr((-0.796) + x1) + sqr((-0.309) + x2) - sqr(x4*x3 + x6) =G= 0;

e144.. sqr((-0.525) + x1) + sqr((-0.573) + x2) - sqr(x4*x3 + x6) =G= 0;

e145.. sqr((-0.498) + x1) + sqr((-0.53) + x2) - sqr(x4*x3 + x6) =G= 0;

e146.. sqr((-0.79) + x1) + sqr((-0.217) + x2) - sqr(x4*x3 + x6) =G= 0;

e147.. sqr((-0.632) + x1) + sqr((-0.169) + x2) - sqr(x4*x3 + x6) =G= 0;

e148.. sqr((-0.699) + x1) + sqr((-0.024) + x2) - sqr(x4*x3 + x6) =G= 0;

e149.. sqr((-0.758) + x1) + sqr((-0.436) + x2) - sqr(x4*x3 + x6) =G= 0;

e150.. sqr((-0.656) + x1) + sqr((-0.662) + x2) - sqr(x4*x3 + x6) =G= 0;

e151.. sqr((-0.652) + x1) + sqr((-0.251) + x2) - sqr(x4*x3 + x6) =G= 0;

e152.. sqr((-0.801) + x1) + sqr((-0.511) + x2) - sqr(x4*x3 + x6) =G= 0;

e153.. sqr((-0.73) + x1) + sqr((-0.611) + x2) - sqr(x4*x3 + x6) =G= 0;

e154.. sqr((-0.689) + x1) + sqr((-0.277) + x2) - sqr(x4*x3 + x6) =G= 0;

e155.. sqr((-0.527) + x1) + sqr((-0.612) + x2) - sqr(x4*x3 + x6) =G= 0;

e156.. sqr((-0.696) + x1) + sqr((-0.074) + x2) - sqr(x4*x3 + x6) =G= 0;

e157.. sqr((-0.911) + x1) + sqr((-0.052) + x2) - sqr(x4*x3 + x6) =G= 0;

e158.. sqr((-0.805) + x1) + sqr((-0.075) + x2) - sqr(x4*x3 + x6) =G= 0;

e159.. sqr((-0.764) + x1) + sqr((-0.067) + x2) - sqr(x4*x3 + x6) =G= 0;

e160.. sqr((-0.331) + x1) + sqr((-0.759) + x2) - sqr(x4*x3 + x6) =G= 0;

e161.. sqr((-0.078) + x1) + sqr((-0.983) + x2) - sqr(x4*x3 + x6) =G= 0;

e162.. sqr((-0.656) + x1) + sqr((-0.34) + x2) - sqr(x4*x3 + x6) =G= 0;

e163.. sqr((-0.48) + x1) + sqr((-0.232) + x2) - sqr(x4*x3 + x6) =G= 0;

e164.. sqr((-0.503) + x1) + sqr((-0.14) + x2) - sqr(x4*x3 + x6) =G= 0;

e165.. sqr((-0.412) + x1) + sqr((-0.683) + x2) - sqr(x4*x3 + x6) =G= 0;

e166.. sqr((-0.338) + x1) + sqr((-0.624) + x2) - sqr(x4*x3 + x6) =G= 0;

e167.. sqr((-0.92) + x1) + sqr((-0.139) + x2) - sqr(x4*x3 + x6) =G= 0;

e168.. sqr((-0.548) + x1) + sqr((-0.474) + x2) - sqr(x4*x3 + x6) =G= 0;

e169.. sqr((-0.826) + x1) + sqr((-0.443) + x2) - sqr(x4*x3 + x6) =G= 0;

e170.. sqr((-0.071) + x1) + sqr((-0.969) + x2) - sqr(x4*x3 + x6) =G= 0;

e171.. sqr((-0.635) + x1) + sqr((-0.728) + x2) - sqr(x4*x3 + x6) =G= 0;

e172.. sqr((-0.591) + x1) + sqr((-0.57) + x2) - sqr(x4*x3 + x6) =G= 0;

e173.. sqr((-0.489) + x1) + sqr((-0.427) + x2) - sqr(x4*x3 + x6) =G= 0;

e174.. sqr((-0.565) + x1) + sqr((-0.105) + x2) - sqr(x4*x3 + x6) =G= 0;

e175.. sqr((-0.791) + x1) + sqr((-0.554) + x2) - sqr(x4*x3 + x6) =G= 0;

e176.. sqr((-0.725) + x1) + sqr((-0.174) + x2) - sqr(x4*x3 + x6) =G= 0;

e177.. sqr((-0.091) + x1) + sqr((-0.951) + x2) - sqr(x4*x3 + x6) =G= 0;

e178.. sqr((-0.401) + x1) + sqr((-0.79) + x2) - sqr(x4*x3 + x6) =G= 0;

e179.. sqr((-0.226) + x1) + sqr((-0.968) + x2) - sqr(x4*x3 + x6) =G= 0;

e180.. sqr((-0.518) + x1) + sqr((-0.663) + x2) - sqr(x4*x3 + x6) =G= 0;

e181.. sqr((-0.651) + x1) + sqr((-0.166) + x2) - sqr(x4*x3 + x6) =G= 0;

e182.. sqr((-0.738) + x1) + sqr((-0.146) + x2) - sqr(x4*x3 + x6) =G= 0;

e183.. sqr((-0.509) + x1) + sqr((-0.28) + x2) - sqr(x4*x3 + x6) =G= 0;

e184.. sqr((-0.833) + x1) + sqr((-0.176) + x2) - sqr(x4*x3 + x6) =G= 0;

e185.. sqr((-0.669) + x1) + sqr((-0.044) + x2) - sqr(x4*x3 + x6) =G= 0;

e186.. sqr((-0.121) + x1) + sqr((-0.921) + x2) - sqr(x4*x3 + x6) =G= 0;

e187.. sqr((-0.809) + x1) + sqr((-0.458) + x2) - sqr(x4*x3 + x6) =G= 0;

e188.. sqr((-0.477) + x1) + sqr((-0.436) + x2) - sqr(x4*x3 + x6) =G= 0;

e189.. sqr((-0.267) + x1) + sqr((-0.84) + x2) - sqr(x4*x3 + x6) =G= 0;

e190.. sqr((-0.412) + x1) + sqr((-0.63) + x2) - sqr(x4*x3 + x6) =G= 0;

e191.. sqr((-0.663) + x1) + sqr((-0.648) + x2) - sqr(x4*x3 + x6) =G= 0;

e192.. sqr((-0.83) + x1) + sqr((-0.086) + x2) - sqr(x4*x3 + x6) =G= 0;

e193.. sqr((-0.324) + x1) + sqr((-0.862) + x2) - sqr(x4*x3 + x6) =G= 0;

e194.. sqr((-0.225) + x1) + sqr((-0.853) + x2) - sqr(x4*x3 + x6) =G= 0;

e195.. sqr((-0.87) + x1) + sqr((-0.331) + x2) - sqr(x4*x3 + x6) =G= 0;

e196.. sqr((-0.343) + x1) + sqr((-0.629) + x2) - sqr(x4*x3 + x6) =G= 0;

e197.. sqr((-0.849) + x1) + sqr((-0.521) + x2) - sqr(x4*x3 + x6) =G= 0;

e198.. sqr((-0.655) + x1) + sqr((-0.714) + x2) - sqr(x4*x3 + x6) =G= 0;

e199.. sqr((-0.558) + x1) + sqr((-0.005) + x2) - sqr(x4*x3 + x6) =G= 0;

e200.. sqr((-0.83) + x1) + sqr((-0.526) + x2) - sqr(x4*x3 + x6) =G= 0;

e201..  - (sqr(x3 + x6)*(1.5707963267949 - arctan(x8/sqrt(1 - x8*x8))) - sqr(x4
       *x3 + x6)*(1.5707963267949 - arctan(x9/sqrt(1 - x9*x9))) + (x3 + x6)*x4*
       x3*sin(1.5707963267949 - arctan(x8/sqrt(1 - x8*x8)))) + objvar =E= 0;

e202.. (sqr(x4*x3) - sqr(x4*x3 + x6) + sqr(x3 + x6))/((2*x3 + 2*x6)*x4*x3) + x8
        =E= 0;

e203..  - (sqr(x4*x3) + sqr(x4*x3 + x6) - sqr(x3 + x6))/((2*x4*x3 + 2*x6)*x4*x3
       ) + x9 =E= 0;

* set non default bounds

x3.lo = 1E-8; 
x4.lo = 1; 
x5.up = 6.2831852; 
x6.lo = 0.39; 
x8.lo = -0.99; x8.up = 0.99; 
x9.lo = -0.99; x9.up = 0.99; 

* set non default levels

x1.l = -40; 
x2.l = 5; 
x3.l = 1; 
x4.l = 2; 
x5.l = 1.5; 
x6.l = 0.75; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
