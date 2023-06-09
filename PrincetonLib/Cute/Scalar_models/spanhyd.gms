*  NLP written by GAMS Convert at 10/06/06 11:52:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         34       34        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         98       98        0        0        0        0        0        0
*  FX     16       16        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        249      195       54        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,objvar;

Positive Variables  x5,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24
          ,x25,x26,x27,x28,x29,x34,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50
          ,x51,x52,x53,x54,x55,x56,x57,x58,x63,x69,x70,x71,x72,x73,x74,x75,x76
          ,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87,x92;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34;


e1..    x1 - x11 - x21 - x30 =E= -51.38;

e2..    x2 + x11 - x12 + x21 - x22 - x31 =E= -13.84;

e3..    x3 + x12 - x13 + x22 - x23 - x32 =E= -2.58;

e4..    x4 - x14 - x24 - x33 =E= -21.91;

e5..    x5 + x13 + x14 - x15 - x34 =E= 0;

e6..    x6 - x16 - x25 - x35 =E= -12.97;

e7..    x7 + x16 - x17 + x25 - x26 - x36 =E= 0;

e8..    x8 + x17 - x18 + x26 - x27 - x37 =E= -2.89;

e9..    x9 + x15 + x18 - x19 + x23 + x24 + x27 - x28 - x38 =E= -20.84;

e10..    x10 + x19 - x20 + x28 - x29 - x39 =E= -17.14;

e11..    x30 - x40 - x50 - x59 =E= -32.06;

e12..    x31 + x40 - x41 + x50 - x51 - x60 =E= -0.28;

e13..    x32 + x41 - x42 + x51 - x52 - x61 =E= -4.2;

e14..    x33 - x43 - x53 - x62 =E= -48.37;

e15..    x34 + x42 + x43 - x44 - x63 =E= 0;

e16..    x35 - x45 - x54 - x64 =E= -18.13;

e17..    x36 + x45 - x46 + x54 - x55 - x65 =E= 0;

e18..    x37 + x46 - x47 + x55 - x56 - x66 =E= 1.61;

e19..    x38 + x44 + x47 - x48 + x52 + x53 + x56 - x57 - x67 =E= -26.6;

e20..    x39 + x48 - x49 + x57 - x58 - x68 =E= -18.76;

e21..    x59 - x69 - x79 - x88 =E= -18.13;

e22..    x60 + x69 - x70 + x79 - x80 - x89 =E= 0;

e23..    x61 + x70 - x71 + x80 - x81 - x90 =E= 0;

e24..    x62 - x72 - x82 - x91 =E= -18.13;

e25..    x63 + x71 + x72 - x73 - x92 =E= 0;

e26..    x64 - x74 - x83 - x93 =E= -9.1;

e27..    x65 + x74 - x75 + x83 - x84 - x94 =E= 0;

e28..    x66 + x75 - x76 + x84 - x85 - x95 =E= 5.81;

e29..    x67 + x73 + x76 - x77 + x81 + x82 + x85 - x86 - x96 =E= -9.1;

e30..    x68 + x77 - x78 + x86 - x87 - x97 =E= -6.02;

e31..    x20 + x29 + x49 + x58 + x78 + x87 =E= 608.35;

e32..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 =E= -4626.34;

e33..    x88 + x89 + x90 + x91 + x92 + x93 + x94 + x95 + x96 + x97 =E= 4363;

e34..  - ((438.00995511036 + 1.0862222572*((58.71308 + 0.1265*x1 - 0.00025225*
      x1*x1)*x11 + (228.89241 + 2.57*(0.031*x2 - 7.2e-6*x2*x2 - (0.558*x3 - 
      0.0014052*x3*x3)))*x12 + 2.2146*(0.558*x3 - 0.0014052*x3*x3 - (0.0262*x9
       - 2.4e-6*x9*x9)) + (122.3956928 + 2.5128*(0.7584*x4 - 0.014353*x4*x4 - (
      0.0262*x9 - 2.4e-6*x9*x9)))*x14 + (84.6622463000001 + 2.5707*(0.0541*x6
       - 2.01e-5*x6*x6 - (0.0014139*x7*x7 + 0.9038*x7)))*x16 + 2.7601*(
      0.0014139*x7*x7 + 0.9038*x7 - (0.0017195*x8*x8 + 0.1557*x8)) + (
      77.2387110000001 + 0.0017195*x8*x8 + 0.1557*x8)*x18 + (107.811243 + 
      0.0262*x9 - 2.4e-6*x9*x9)*x19 + 0.0002372*x10*x10 - 0.3111*x10) - 
      6.79942546339484*x13 - 9.69572848999292*x17 - 223.024240070561*x20)*(
      403.2415578 + (58.71308 + 0.1265*x1 - 0.00025225*x1*x1)*x11 + (228.89241
       + 2.57*(0.031*x2 - 7.2e-6*x2*x2 - (0.558*x3 - 0.0014052*x3*x3)))*x12 + 
      2.2146*(0.558*x3 - 0.0014052*x3*x3 - (0.0262*x9 - 2.4e-6*x9*x9)) + (
      122.3956928 + 2.5128*(0.7584*x4 - 0.014353*x4*x4 - (0.0262*x9 - 2.4e-6*x9
      *x9)))*x14 + (84.6622463000001 + 2.5707*(0.0541*x6 - 2.01e-5*x6*x6 - (
      0.0014139*x7*x7 + 0.9038*x7)))*x16 + 2.7601*(0.0014139*x7*x7 + 0.9038*x7
       - (0.0017195*x8*x8 + 0.1557*x8)) + (77.2387110000001 + 0.0017195*x8*x8
       + 0.1557*x8)*x18 + (107.811243 + 0.0262*x9 - 2.4e-6*x9*x9)*x19 + 
      0.0002372*x10*x10 - 0.3111*x10 - 6.2597*x13 - 8.9261*x17 - 205.321*x20)
       - 6.255270637*((58.71308 + 0.1265*x1 - 0.00025225*x1*x1)*x11 + (
      228.89241 + 2.57*(0.031*x2 - 7.2e-6*x2*x2 - (0.558*x3 - 0.0014052*x3*x3))
      )*x12 + 2.2146*(0.558*x3 - 0.0014052*x3*x3 - (0.0262*x9 - 2.4e-6*x9*x9))
       + (122.3956928 + 2.5128*(0.7584*x4 - 0.014353*x4*x4 - (0.0262*x9 - 
      2.4e-6*x9*x9)))*x14 + (84.6622463000001 + 2.5707*(0.0541*x6 - 2.01e-5*x6*
      x6 - (0.0014139*x7*x7 + 0.9038*x7)))*x16 + 2.7601*(0.0014139*x7*x7 + 
      0.9038*x7 - (0.0017195*x8*x8 + 0.1557*x8)) + (77.2387110000001 + 
      0.0017195*x8*x8 + 0.1557*x8)*x18 + (107.811243 + 0.0262*x9 - 2.4e-6*x9*x9
      )*x19 + 0.0002372*x10*x10 - 0.3111*x10) + 39.1561176064289*x13 + 
      55.8351712329257*x17 + 1284.33842245948*x20 - 6.021899007*((58.71308 + 
      0.1265*x30 - 0.00025225*x30*x30)*x40 + (228.89241 + 2.57*(0.031*x31 - 
      7.2e-6*x31*x31 - (0.558*x32 - 0.0014052*x32*x32)))*x41 + 2.2146*(0.558*
      x32 - 0.0014052*x32*x32 - (0.0262*x38 - 2.4e-6*x38*x38)) + (122.3956928
       + 2.5128*(0.7584*x33 - 0.014353*x33*x33 - (0.0262*x38 - 2.4e-6*x38*x38))
      )*x43 + (84.6622463000001 + 2.5707*(0.0541*x35 - 2.01e-5*x35*x35 - (
      0.0014139*x36*x36 + 0.9038*x36)))*x45 + 2.7601*(0.0014139*x36*x36 + 
      0.9038*x36 - (0.0017195*x37*x37 + 0.1557*x37)) + (77.2387110000001 + 
      0.0017195*x37*x37 + 0.1557*x37)*x47 + (107.811243 + 0.0262*x38 - 2.4e-6*
      x38*x38)*x48 + 0.0002372*x39*x39 - 0.3111*x39) + (3398.46649455427 + 
      8.4278676858*((58.71308 + 0.1265*x30 - 0.00025225*x30*x30)*x40 + (
      228.89241 + 2.57*(0.031*x31 - 7.2e-6*x31*x31 - (0.558*x32 - 0.0014052*x32
      *x32)))*x41 + 2.2146*(0.558*x32 - 0.0014052*x32*x32 - (0.0262*x38 - 
      2.4e-6*x38*x38)) + (122.3956928 + 2.5128*(0.7584*x33 - 0.014353*x33*x33
       - (0.0262*x38 - 2.4e-6*x38*x38)))*x43 + (84.6622463000001 + 2.5707*(
      0.0541*x35 - 2.01e-5*x35*x35 - (0.0014139*x36*x36 + 0.9038*x36)))*x45 + 
      2.7601*(0.0014139*x36*x36 + 0.9038*x36 - (0.0017195*x37*x37 + 0.1557*x37)
      ) + (77.2387110000001 + 0.0017195*x37*x37 + 0.1557*x37)*x47 + (107.811243
       + 0.0262*x38 - 2.4e-6*x38*x38)*x48 + 0.0002372*x39*x39 - 0.3111*x39) - 
      52.7559233528023*x42 - 75.2279897502194*x46 - 1730.41822111614*x49)*(
      403.2415578 + (58.71308 + 0.1265*x30 - 0.00025225*x30*x30)*x40 + (
      228.89241 + 2.57*(0.031*x31 - 7.2e-6*x31*x31 - (0.558*x32 - 0.0014052*x32
      *x32)))*x41 + 2.2146*(0.558*x32 - 0.0014052*x32*x32 - (0.0262*x38 - 
      2.4e-6*x38*x38)) + (122.3956928 + 2.5128*(0.7584*x33 - 0.014353*x33*x33
       - (0.0262*x38 - 2.4e-6*x38*x38)))*x43 + (84.6622463000001 + 2.5707*(
      0.0541*x35 - 2.01e-5*x35*x35 - (0.0014139*x36*x36 + 0.9038*x36)))*x45 + 
      2.7601*(0.0014139*x36*x36 + 0.9038*x36 - (0.0017195*x37*x37 + 0.1557*x37)
      ) + (77.2387110000001 + 0.0017195*x37*x37 + 0.1557*x37)*x47 + (107.811243
       + 0.0262*x38 - 2.4e-6*x38*x38)*x48 + 0.0002372*x39*x39 - 0.3111*x39 - 
      6.2597*x42 - 8.9261*x46 - 205.321*x49) + 37.6952812141179*x42 + 
      53.7520727263827*x46 + 1236.42232601625*x49 - 6.08910295*((58.71308 + 
      0.1265*x59 - 0.00025225*x59*x59)*x69 + (228.89241 + 2.57*(0.031*x60 - 
      7.2e-6*x60*x60 - (0.558*x61 - 0.0014052*x61*x61)))*x70 + 2.2146*(0.558*
      x61 - 0.0014052*x61*x61 - (0.0262*x67 - 2.4e-6*x67*x67)) + (122.3956928
       + 2.5128*(0.7584*x62 - 0.014353*x62*x62 - (0.0262*x67 - 2.4e-6*x67*x67))
      )*x72 + (84.6622463000001 + 2.5707*(0.0541*x64 - 2.01e-5*x64*x64 - (
      0.0014139*x65*x65 + 0.9038*x65)))*x74 + 2.7601*(0.0014139*x65*x65 + 
      0.9038*x65 - (0.0017195*x66*x66 + 0.1557*x66)) + (77.2387110000001 + 
      0.0017195*x66*x66 + 0.1557*x66)*x76 + (107.811243 + 0.0262*x67 - 2.4e-6*
      x67*x67)*x77 + 0.0002372*x68*x68 - 0.3111*x68) + (3597.3022819255 + 
      8.9209611766*((58.71308 + 0.1265*x59 - 0.00025225*x59*x59)*x69 + (
      228.89241 + 2.57*(0.031*x60 - 7.2e-6*x60*x60 - (0.558*x61 - 0.0014052*x61
      *x61)))*x70 + 2.2146*(0.558*x61 - 0.0014052*x61*x61 - (0.0262*x67 - 
      2.4e-6*x67*x67)) + (122.3956928 + 2.5128*(0.7584*x62 - 0.014353*x62*x62
       - (0.0262*x67 - 2.4e-6*x67*x67)))*x72 + (84.6622463000001 + 2.5707*(
      0.0541*x64 - 2.01e-5*x64*x64 - (0.0014139*x65*x65 + 0.9038*x65)))*x74 + 
      2.7601*(0.0014139*x65*x65 + 0.9038*x65 - (0.0017195*x66*x66 + 0.1557*x66)
      ) + (77.2387110000001 + 0.0017195*x66*x66 + 0.1557*x66)*x76 + (107.811243
       + 0.0262*x67 - 2.4e-6*x67*x67)*x77 + 0.0002372*x68*x68 - 0.3111*x68) - 
      55.842540677163*x71 - 79.6293915584493*x75 - 1831.66066974069*x78)*(
      403.2415578 + (58.71308 + 0.1265*x59 - 0.00025225*x59*x59)*x69 + (
      228.89241 + 2.57*(0.031*x60 - 7.2e-6*x60*x60 - (0.558*x61 - 0.0014052*x61
      *x61)))*x70 + 2.2146*(0.558*x61 - 0.0014052*x61*x61 - (0.0262*x67 - 
      2.4e-6*x67*x67)) + (122.3956928 + 2.5128*(0.7584*x62 - 0.014353*x62*x62
       - (0.0262*x67 - 2.4e-6*x67*x67)))*x72 + (84.6622463000001 + 2.5707*(
      0.0541*x64 - 2.01e-5*x64*x64 - (0.0014139*x65*x65 + 0.9038*x65)))*x74 + 
      2.7601*(0.0014139*x65*x65 + 0.9038*x65 - (0.0017195*x66*x66 + 0.1557*x66)
      ) + (77.2387110000001 + 0.0017195*x66*x66 + 0.1557*x66)*x76 + (107.811243
       + 0.0262*x67 - 2.4e-6*x67*x67)*x77 + 0.0002372*x68*x68 - 0.3111*x68 - 
      6.2597*x71 - 8.9261*x75 - 205.321*x78) + 38.115957736115*x71 + 
      54.351941841995*x75 + 1250.22070679695*x78) + objvar
       =E= -7155.18601141601;

* set non default bounds

x1.lo = 77; x1.up = 77.01; 
x2.lo = 1124.52; x2.up = 1124.53; 
x3.lo = 158; x3.up = 158.01; 
x4.lo = 16; x4.up = 16.01; 
x5.fx = 0; 
x6.lo = 783.65; x6.up = 783.66; 
x7.lo = 11; x7.up = 11.01; 
x8.lo = 49; x8.up = 49.01; 
x9.lo = 2155.17; x9.up = 2155.18; 
x10.lo = 252; x10.up = 252.01; 
x11.up = 397.84; 
x12.up = 222.32; 
x13.up = 205.63; 
x14.up = 205.63; 
x15.up = 205.63; 
x16.up = 124.83; 
x17.up = 127.01; 
x18.up = 61.08; 
x19.up = 614.84; 
x20.up = 778.08; 
x21.up = 3024; 
x22.up = 3024; 
x23.up = 3024; 
x24.up = 3024; 
x25.up = 7257.6; 
x26.up = 1209.6; 
x27.up = 907.2; 
x28.up = 7257.6; 
x29.up = 7257.6; 
x30.fx = 77; 
x31.lo = 403.4; x31.up = 1312; 
x32.fx = 158; 
x33.fx = 16; 
x34.fx = 0; 
x35.lo = 502; x35.up = 928.46; 
x36.fx = 11; 
x37.fx = 49; 
x38.lo = 915.3; x38.up = 2611.6; 
x39.fx = 252; 
x40.up = 397.84; 
x41.up = 222.32; 
x42.up = 205.63; 
x43.up = 205.63; 
x44.up = 205.63; 
x45.up = 124.83; 
x46.up = 127.01; 
x47.up = 61.08; 
x48.up = 614.84; 
x49.up = 778.08; 
x50.up = 3024; 
x51.up = 3024; 
x52.up = 3024; 
x53.up = 3024; 
x54.up = 7257.6; 
x55.up = 1209.6; 
x56.up = 907.2; 
x57.up = 7257.6; 
x58.up = 7257.6; 
x59.fx = 77; 
x60.lo = 403.4; x60.up = 1312; 
x61.fx = 158; 
x62.fx = 16; 
x63.fx = 0; 
x64.lo = 505.64; x64.up = 928.46; 
x65.fx = 11; 
x66.fx = 49; 
x67.lo = 915.3; x67.up = 2611.6; 
x68.fx = 252; 
x69.up = 397.84; 
x70.up = 222.32; 
x71.up = 205.63; 
x72.up = 205.63; 
x73.up = 205.63; 
x74.up = 124.83; 
x75.up = 127.01; 
x76.up = 61.08; 
x77.up = 614.84; 
x78.up = 778.08; 
x79.up = 3024; 
x80.up = 3024; 
x81.up = 3024; 
x82.up = 3024; 
x83.up = 7257.6; 
x84.up = 1209.6; 
x85.up = 907.2; 
x86.up = 7257.6; 
x87.up = 7257.6; 
x88.lo = 77; x88.up = 77.01; 
x89.lo = 1100; x89.up = 1100.01; 
x90.lo = 158; x90.up = 158.01; 
x91.lo = 16; x91.up = 16.01; 
x92.fx = 0; 
x93.lo = 700; x93.up = 700.01; 
x94.lo = 11; x94.up = 11.01; 
x95.lo = 49; x95.up = 49.01; 
x96.lo = 2000; x96.up = 2000.01; 
x97.lo = 252; x97.up = 252.01; 

* set non default levels

x11.l = 51.38; 
x12.l = 140.21; 
x13.l = 142.79; 
x14.l = 21.91; 
x15.l = 164.7; 
x16.l = 58.19; 
x17.l = 58.19; 
x18.l = 61.08; 
x19.l = 566.43; 
x20.l = 583.57; 
x31.l = 1049.53; 
x35.l = 738.43; 
x38.l = 1835.36; 
x40.l = 32.06; 
x42.l = 4.2; 
x43.l = 48.37; 
x44.l = 52.57; 
x45.l = 59.85; 
x46.l = 59.85; 
x47.l = 58.24; 
x49.l = 18.76; 
x60.l = 1081.87; 
x64.l = 696.71; 
x67.l = 1972.77; 
x69.l = 18.13; 
x72.l = 18.13; 
x73.l = 18.13; 
x74.l = 5.81; 
x75.l = 5.81; 
x78.l = 6.02; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
