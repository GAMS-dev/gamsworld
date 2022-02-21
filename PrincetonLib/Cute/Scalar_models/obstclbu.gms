*  NLP written by GAMS Convert at 10/06/06 11:47:02
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         97       97        0        0        0        0        0        0
*  FX     32       32        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         97        1       96        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x15,x16,x22,x23,x29,x30,x34,x35
          ,x39,x40,x44,x45,x51,x52,x58,x59,x60,x61,x62,x63,x64,x65,x66;

Equations  e1;


e1..  - ((0.25*x11 - 0.25*x10)*(x11 - x10) + (0.25*x17 - 0.25*x10)*(x17 - x10)
      + (0.25*x9 - 0.25*x10)*(x9 - x10) + (0.25*x1 - 0.25*x10)*(x1 - x10) - 
     0.0123456790123457*x10 + (0.25*x18 - 0.25*x17)*(x18 - x17) + (0.25*x24 - 
     0.25*x17)*(x24 - x17) + (0.25*x16 - 0.25*x17)*(x16 - x17) + (0.25*x10 - 
     0.25*x17)*(x10 - x17) - 0.0123456790123457*x17 + (0.25*x25 - 0.25*x24)*(
     x25 - x24) + (0.25*x76 - 0.25*x24)*(x76 - x24) + (0.25*x23 - 0.25*x24)*(
     x23 - x24) + (0.25*x17 - 0.25*x24)*(x17 - x24) - 0.0123456790123457*x24 + 
     (0.25*x77 - 0.25*x76)*(x77 - x76) + (0.25*x81 - 0.25*x76)*(x81 - x76) + (
     0.25*x30 - 0.25*x76)*(x30 - x76) + (0.25*x24 - 0.25*x76)*(x24 - x76) - 
     0.0123456790123457*x76 + (0.25*x82 - 0.25*x81)*(x82 - x81) + (0.25*x86 - 
     0.25*x81)*(x86 - x81) + (0.25*x35 - 0.25*x81)*(x35 - x81) + (0.25*x76 - 
     0.25*x81)*(x76 - x81) - 0.0123456790123457*x81 + (0.25*x87 - 0.25*x86)*(
     x87 - x86) + (0.25*x46 - 0.25*x86)*(x46 - x86) + (0.25*x40 - 0.25*x86)*(
     x40 - x86) + (0.25*x81 - 0.25*x86)*(x81 - x86) - 0.0123456790123457*x86 + 
     (0.25*x47 - 0.25*x46)*(x47 - x46) + (0.25*x53 - 0.25*x46)*(x53 - x46) + (
     0.25*x45 - 0.25*x46)*(x45 - x46) + (0.25*x86 - 0.25*x46)*(x86 - x46) - 
     0.0123456790123457*x46 + (0.25*x54 - 0.25*x53)*(x54 - x53) + (0.25*x59 - 
     0.25*x53)*(x59 - x53) + (0.25*x52 - 0.25*x53)*(x52 - x53) + (0.25*x46 - 
     0.25*x53)*(x46 - x53) - 0.0123456790123457*x53 + (0.25*x12 - 0.25*x11)*(
     x12 - x11) + (0.25*x18 - 0.25*x11)*(x18 - x11) + (0.25*x10 - 0.25*x11)*(
     x10 - x11) + (0.25*x2 - 0.25*x11)*(x2 - x11) - 0.0123456790123457*x11 + (
     0.25*x19 - 0.25*x18)*(x19 - x18) + (0.25*x25 - 0.25*x18)*(x25 - x18) + (
     0.25*x17 - 0.25*x18)*(x17 - x18) + (0.25*x11 - 0.25*x18)*(x11 - x18) - 
     0.0123456790123457*x18 + (0.25*x26 - 0.25*x25)*(x26 - x25) + (0.25*x77 - 
     0.25*x25)*(x77 - x25) + (0.25*x24 - 0.25*x25)*(x24 - x25) + (0.25*x18 - 
     0.25*x25)*(x18 - x25) - 0.0123456790123457*x25 + (0.25*x78 - 0.25*x77)*(
     x78 - x77) + (0.25*x82 - 0.25*x77)*(x82 - x77) + (0.25*x76 - 0.25*x77)*(
     x76 - x77) + (0.25*x25 - 0.25*x77)*(x25 - x77) - 0.0123456790123457*x77 + 
     (0.25*x83 - 0.25*x82)*(x83 - x82) + (0.25*x87 - 0.25*x82)*(x87 - x82) + (
     0.25*x81 - 0.25*x82)*(x81 - x82) + (0.25*x77 - 0.25*x82)*(x77 - x82) - 
     0.0123456790123457*x82 + (0.25*x88 - 0.25*x87)*(x88 - x87) + (0.25*x47 - 
     0.25*x87)*(x47 - x87) + (0.25*x86 - 0.25*x87)*(x86 - x87) + (0.25*x82 - 
     0.25*x87)*(x82 - x87) - 0.0123456790123457*x87 + (0.25*x48 - 0.25*x47)*(
     x48 - x47) + (0.25*x54 - 0.25*x47)*(x54 - x47) + (0.25*x46 - 0.25*x47)*(
     x46 - x47) + (0.25*x87 - 0.25*x47)*(x87 - x47) - 0.0123456790123457*x47 + 
     (0.25*x55 - 0.25*x54)*(x55 - x54) + (0.25*x60 - 0.25*x54)*(x60 - x54) + (
     0.25*x53 - 0.25*x54)*(x53 - x54) + (0.25*x47 - 0.25*x54)*(x47 - x54) - 
     0.0123456790123457*x54 + (0.25*x67 - 0.25*x12)*(x67 - x12) + (0.25*x19 - 
     0.25*x12)*(x19 - x12) + (0.25*x11 - 0.25*x12)*(x11 - x12) + (0.25*x3 - 
     0.25*x12)*(x3 - x12) - 0.0123456790123457*x12 + (0.25*x70 - 0.25*x19)*(x70
      - x19) + (0.25*x26 - 0.25*x19)*(x26 - x19) + (0.25*x18 - 0.25*x19)*(x18
      - x19) + (0.25*x12 - 0.25*x19)*(x12 - x19) - 0.0123456790123457*x19 + (
     0.25*x73 - 0.25*x26)*(x73 - x26) + (0.25*x78 - 0.25*x26)*(x78 - x26) + (
     0.25*x25 - 0.25*x26)*(x25 - x26) + (0.25*x19 - 0.25*x26)*(x19 - x26) - 
     0.0123456790123457*x26 + (0.25*x31 - 0.25*x78)*(x31 - x78) + (0.25*x83 - 
     0.25*x78)*(x83 - x78) + (0.25*x77 - 0.25*x78)*(x77 - x78) + (0.25*x26 - 
     0.25*x78)*(x26 - x78) - 0.0123456790123457*x78 + (0.25*x36 - 0.25*x83)*(
     x36 - x83) + (0.25*x88 - 0.25*x83)*(x88 - x83) + (0.25*x82 - 0.25*x83)*(
     x82 - x83) + (0.25*x78 - 0.25*x83)*(x78 - x83) - 0.0123456790123457*x83 + 
     (0.25*x41 - 0.25*x88)*(x41 - x88) + (0.25*x48 - 0.25*x88)*(x48 - x88) + (
     0.25*x87 - 0.25*x88)*(x87 - x88) + (0.25*x83 - 0.25*x88)*(x83 - x88) - 
     0.0123456790123457*x88 + (0.25*x91 - 0.25*x48)*(x91 - x48) + (0.25*x55 - 
     0.25*x48)*(x55 - x48) + (0.25*x47 - 0.25*x48)*(x47 - x48) + (0.25*x88 - 
     0.25*x48)*(x88 - x48) - 0.0123456790123457*x48 + (0.25*x94 - 0.25*x55)*(
     x94 - x55) + (0.25*x61 - 0.25*x55)*(x61 - x55) + (0.25*x54 - 0.25*x55)*(
     x54 - x55) + (0.25*x48 - 0.25*x55)*(x48 - x55) - 0.0123456790123457*x55 + 
     (0.25*x68 - 0.25*x67)*(x68 - x67) + (0.25*x70 - 0.25*x67)*(x70 - x67) + (
     0.25*x12 - 0.25*x67)*(x12 - x67) + (0.25*x4 - 0.25*x67)*(x4 - x67) - 
     0.0123456790123457*x67 + (0.25*x71 - 0.25*x70)*(x71 - x70) + (0.25*x73 - 
     0.25*x70)*(x73 - x70) + (0.25*x19 - 0.25*x70)*(x19 - x70) + (0.25*x67 - 
     0.25*x70)*(x67 - x70) - 0.0123456790123457*x70 + (0.25*x74 - 0.25*x73)*(
     x74 - x73) + (0.25*x31 - 0.25*x73)*(x31 - x73) + (0.25*x26 - 0.25*x73)*(
     x26 - x73) + (0.25*x70 - 0.25*x73)*(x70 - x73) - 0.0123456790123457*x73 + 
     (0.25*x32 - 0.25*x31)*(x32 - x31) + (0.25*x36 - 0.25*x31)*(x36 - x31) + (
     0.25*x78 - 0.25*x31)*(x78 - x31) + (0.25*x73 - 0.25*x31)*(x73 - x31) - 
     0.0123456790123457*x31 + (0.25*x37 - 0.25*x36)*(x37 - x36) + (0.25*x41 - 
     0.25*x36)*(x41 - x36) + (0.25*x83 - 0.25*x36)*(x83 - x36) + (0.25*x31 - 
     0.25*x36)*(x31 - x36) - 0.0123456790123457*x36 + (0.25*x42 - 0.25*x41)*(
     x42 - x41) + (0.25*x91 - 0.25*x41)*(x91 - x41) + (0.25*x88 - 0.25*x41)*(
     x88 - x41) + (0.25*x36 - 0.25*x41)*(x36 - x41) - 0.0123456790123457*x41 + 
     (0.25*x92 - 0.25*x91)*(x92 - x91) + (0.25*x94 - 0.25*x91)*(x94 - x91) + (
     0.25*x48 - 0.25*x91)*(x48 - x91) + (0.25*x41 - 0.25*x91)*(x41 - x91) - 
     0.0123456790123457*x91 + (0.25*x95 - 0.25*x94)*(x95 - x94) + (0.25*x62 - 
     0.25*x94)*(x62 - x94) + (0.25*x55 - 0.25*x94)*(x55 - x94) + (0.25*x91 - 
     0.25*x94)*(x91 - x94) - 0.0123456790123457*x94 + (0.25*x69 - 0.25*x68)*(
     x69 - x68) + (0.25*x71 - 0.25*x68)*(x71 - x68) + (0.25*x67 - 0.25*x68)*(
     x67 - x68) + (0.25*x5 - 0.25*x68)*(x5 - x68) - 0.0123456790123457*x68 + (
     0.25*x72 - 0.25*x71)*(x72 - x71) + (0.25*x74 - 0.25*x71)*(x74 - x71) + (
     0.25*x70 - 0.25*x71)*(x70 - x71) + (0.25*x68 - 0.25*x71)*(x68 - x71) - 
     0.0123456790123457*x71 + (0.25*x75 - 0.25*x74)*(x75 - x74) + (0.25*x32 - 
     0.25*x74)*(x32 - x74) + (0.25*x73 - 0.25*x74)*(x73 - x74) + (0.25*x71 - 
     0.25*x74)*(x71 - x74) - 0.0123456790123457*x74 + (0.25*x33 - 0.25*x32)*(
     x33 - x32) + (0.25*x37 - 0.25*x32)*(x37 - x32) + (0.25*x31 - 0.25*x32)*(
     x31 - x32) + (0.25*x74 - 0.25*x32)*(x74 - x32) - 0.0123456790123457*x32 + 
     (0.25*x38 - 0.25*x37)*(x38 - x37) + (0.25*x42 - 0.25*x37)*(x42 - x37) + (
     0.25*x36 - 0.25*x37)*(x36 - x37) + (0.25*x32 - 0.25*x37)*(x32 - x37) - 
     0.0123456790123457*x37 + (0.25*x43 - 0.25*x42)*(x43 - x42) + (0.25*x92 - 
     0.25*x42)*(x92 - x42) + (0.25*x41 - 0.25*x42)*(x41 - x42) + (0.25*x37 - 
     0.25*x42)*(x37 - x42) - 0.0123456790123457*x42 + (0.25*x93 - 0.25*x92)*(
     x93 - x92) + (0.25*x95 - 0.25*x92)*(x95 - x92) + (0.25*x91 - 0.25*x92)*(
     x91 - x92) + (0.25*x42 - 0.25*x92)*(x42 - x92) - 0.0123456790123457*x92 + 
     (0.25*x96 - 0.25*x95)*(x96 - x95) + (0.25*x63 - 0.25*x95)*(x63 - x95) + (
     0.25*x94 - 0.25*x95)*(x94 - x95) + (0.25*x92 - 0.25*x95)*(x92 - x95) - 
     0.0123456790123457*x95 + (0.25*x13 - 0.25*x69)*(x13 - x69) + (0.25*x72 - 
     0.25*x69)*(x72 - x69) + (0.25*x68 - 0.25*x69)*(x68 - x69) + (0.25*x6 - 
     0.25*x69)*(x6 - x69) - 0.0123456790123457*x69 + (0.25*x20 - 0.25*x72)*(x20
      - x72) + (0.25*x75 - 0.25*x72)*(x75 - x72) + (0.25*x71 - 0.25*x72)*(x71
      - x72) + (0.25*x69 - 0.25*x72)*(x69 - x72) - 0.0123456790123457*x72 + (
     0.25*x27 - 0.25*x75)*(x27 - x75) + (0.25*x33 - 0.25*x75)*(x33 - x75) + (
     0.25*x74 - 0.25*x75)*(x74 - x75) + (0.25*x72 - 0.25*x75)*(x72 - x75) - 
     0.0123456790123457*x75 + (0.25*x79 - 0.25*x33)*(x79 - x33) + (0.25*x38 - 
     0.25*x33)*(x38 - x33) + (0.25*x32 - 0.25*x33)*(x32 - x33) + (0.25*x75 - 
     0.25*x33)*(x75 - x33) - 0.0123456790123457*x33 + (0.25*x84 - 0.25*x38)*(
     x84 - x38) + (0.25*x43 - 0.25*x38)*(x43 - x38) + (0.25*x37 - 0.25*x38)*(
     x37 - x38) + (0.25*x33 - 0.25*x38)*(x33 - x38) - 0.0123456790123457*x38 + 
     (0.25*x89 - 0.25*x43)*(x89 - x43) + (0.25*x93 - 0.25*x43)*(x93 - x43) + (
     0.25*x42 - 0.25*x43)*(x42 - x43) + (0.25*x38 - 0.25*x43)*(x38 - x43) - 
     0.0123456790123457*x43 + (0.25*x49 - 0.25*x93)*(x49 - x93) + (0.25*x96 - 
     0.25*x93)*(x96 - x93) + (0.25*x92 - 0.25*x93)*(x92 - x93) + (0.25*x43 - 
     0.25*x93)*(x43 - x93) - 0.0123456790123457*x93 + (0.25*x56 - 0.25*x96)*(
     x56 - x96) + (0.25*x64 - 0.25*x96)*(x64 - x96) + (0.25*x95 - 0.25*x96)*(
     x95 - x96) + (0.25*x93 - 0.25*x96)*(x93 - x96) - 0.0123456790123457*x96 + 
     (0.25*x14 - 0.25*x13)*(x14 - x13) + (0.25*x20 - 0.25*x13)*(x20 - x13) + (
     0.25*x69 - 0.25*x13)*(x69 - x13) + (0.25*x7 - 0.25*x13)*(x7 - x13) - 
     0.0123456790123457*x13 + (0.25*x21 - 0.25*x20)*(x21 - x20) + (0.25*x27 - 
     0.25*x20)*(x27 - x20) + (0.25*x72 - 0.25*x20)*(x72 - x20) + (0.25*x13 - 
     0.25*x20)*(x13 - x20) - 0.0123456790123457*x20 + (0.25*x28 - 0.25*x27)*(
     x28 - x27) + (0.25*x79 - 0.25*x27)*(x79 - x27) + (0.25*x75 - 0.25*x27)*(
     x75 - x27) + (0.25*x20 - 0.25*x27)*(x20 - x27) - 0.0123456790123457*x27 + 
     (0.25*x80 - 0.25*x79)*(x80 - x79) + (0.25*x84 - 0.25*x79)*(x84 - x79) + (
     0.25*x33 - 0.25*x79)*(x33 - x79) + (0.25*x27 - 0.25*x79)*(x27 - x79) - 
     0.0123456790123457*x79 + (0.25*x85 - 0.25*x84)*(x85 - x84) + (0.25*x89 - 
     0.25*x84)*(x89 - x84) + (0.25*x38 - 0.25*x84)*(x38 - x84) + (0.25*x79 - 
     0.25*x84)*(x79 - x84) - 0.0123456790123457*x84 + (0.25*x90 - 0.25*x89)*(
     x90 - x89) + (0.25*x49 - 0.25*x89)*(x49 - x89) + (0.25*x43 - 0.25*x89)*(
     x43 - x89) + (0.25*x84 - 0.25*x89)*(x84 - x89) - 0.0123456790123457*x89 + 
     (0.25*x50 - 0.25*x49)*(x50 - x49) + (0.25*x56 - 0.25*x49)*(x56 - x49) + (
     0.25*x93 - 0.25*x49)*(x93 - x49) + (0.25*x89 - 0.25*x49)*(x89 - x49) - 
     0.0123456790123457*x49 + (0.25*x57 - 0.25*x56)*(x57 - x56) + (0.25*x65 - 
     0.25*x56)*(x65 - x56) + (0.25*x96 - 0.25*x56)*(x96 - x56) + (0.25*x49 - 
     0.25*x56)*(x49 - x56) - 0.0123456790123457*x56 + (0.25*x15 - 0.25*x14)*(
     x15 - x14) + (0.25*x21 - 0.25*x14)*(x21 - x14) + (0.25*x13 - 0.25*x14)*(
     x13 - x14) + (0.25*x8 - 0.25*x14)*(x8 - x14) - 0.0123456790123457*x14 + (
     0.25*x22 - 0.25*x21)*(x22 - x21) + (0.25*x28 - 0.25*x21)*(x28 - x21) + (
     0.25*x20 - 0.25*x21)*(x20 - x21) + (0.25*x14 - 0.25*x21)*(x14 - x21) - 
     0.0123456790123457*x21 + (0.25*x29 - 0.25*x28)*(x29 - x28) + (0.25*x80 - 
     0.25*x28)*(x80 - x28) + (0.25*x27 - 0.25*x28)*(x27 - x28) + (0.25*x21 - 
     0.25*x28)*(x21 - x28) - 0.0123456790123457*x28 + (0.25*x34 - 0.25*x80)*(
     x34 - x80) + (0.25*x85 - 0.25*x80)*(x85 - x80) + (0.25*x79 - 0.25*x80)*(
     x79 - x80) + (0.25*x28 - 0.25*x80)*(x28 - x80) - 0.0123456790123457*x80 + 
     (0.25*x39 - 0.25*x85)*(x39 - x85) + (0.25*x90 - 0.25*x85)*(x90 - x85) + (
     0.25*x84 - 0.25*x85)*(x84 - x85) + (0.25*x80 - 0.25*x85)*(x80 - x85) - 
     0.0123456790123457*x85 + (0.25*x44 - 0.25*x90)*(x44 - x90) + (0.25*x50 - 
     0.25*x90)*(x50 - x90) + (0.25*x89 - 0.25*x90)*(x89 - x90) + (0.25*x85 - 
     0.25*x90)*(x85 - x90) - 0.0123456790123457*x90 + (0.25*x51 - 0.25*x50)*(
     x51 - x50) + (0.25*x57 - 0.25*x50)*(x57 - x50) + (0.25*x49 - 0.25*x50)*(
     x49 - x50) + (0.25*x90 - 0.25*x50)*(x90 - x50) - 0.0123456790123457*x50 + 
     (0.25*x58 - 0.25*x57)*(x58 - x57) + (0.25*x66 - 0.25*x57)*(x66 - x57) + (
     0.25*x56 - 0.25*x57)*(x56 - x57) + (0.25*x50 - 0.25*x57)*(x50 - x57) - 
     0.0123456790123457*x57) + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x2.fx = 0; 
x3.fx = 0; 
x4.fx = 0; 
x5.fx = 0; 
x6.fx = 0; 
x7.fx = 0; 
x8.fx = 0; 
x9.fx = 0; 
x10.lo = 0.393779336635683; x10.up = 0.557240340085779; 
x11.lo = 0.446718164607601; x11.up = 0.604371564257258; 
x12.lo = 0.000265872388652867; x12.up = 0.0241347458970552; 
x13.lo = 0.284731206337994; x13.up = 0.45280278371302; 
x14.lo = 0.540091619559498; x14.up = 0.683200674155107; 
x15.fx = 0; 
x16.fx = 0; 
x17.lo = 0.422714108654355; x17.up = 0.583245627320611; 
x18.lo = 0.479542863739741; x18.up = 0.632658253186744; 
x19.lo = 0.00028540860154168; x19.up = 0.024334889569585; 
x20.lo = 0.305653158750173; x20.up = 0.473752738261658; 
x21.lo = 0.579777368473255; x21.up = 0.71530311088386; 
x22.fx = 0; 
x23.fx = 0; 
x24.lo = 4.46613701041805E-5; x24.up = 0.02125879408843; 
x25.lo = 5.06655464764993E-5; x25.up = 0.0213692260533082; 
x26.lo = 3.01545156014471E-8; x26.up = 0.020009688017269; 
x27.lo = 3.22934308720114E-5; x27.up = 0.0210140891235141; 
x28.lo = 6.12557071109841E-5; x28.up = 0.0215539285228208; 
x29.fx = 0; 
x30.fx = 0; 
x31.lo = 0.313729929736426; x31.up = 0.481711439422208; 
x32.lo = 0.458894413944559; x32.up = 0.614942755737996; 
x33.lo = 0.00195097862552384; x33.up = 0.0356135505717738; 
x34.fx = 0; 
x35.fx = 0; 
x36.lo = 0.388220695333013; x36.up = 0.552172532801311; 
x37.lo = 0.567852447535572; x37.up = 0.705736081369553; 
x38.lo = 0.0024142110993906; x38.up = 0.0379963112116094; 
x39.fx = 0; 
x40.fx = 0; 
x41.lo = 0.00030693606948697; x41.up = 0.0245502153543299; 
x42.lo = 0.00044895699891943; x42.up = 0.0258632241503354; 
x43.lo = 1.90872994321731E-6; x43.up = 0.0201538732019207; 
x44.fx = 0; 
x45.fx = 0; 
x46.lo = 0.334451435972091; x46.up = 0.501824312019127; 
x47.lo = 0.379414351459624; x47.up = 0.544093977877458; 
x48.lo = 0.000225815307959009; x48.up = 0.0237082492668075; 
x49.lo = 0.241832803212606; x49.up = 0.408159428737598; 
x50.lo = 0.458719899478336; x50.up = 0.614791911017674; 
x51.fx = 0; 
x52.fx = 0; 
x53.lo = 0.477541853399075; x53.up = 0.630952754382422; 
x54.lo = 0.541741529904379; x54.up = 0.684550649172644; 
x55.lo = 0.000322427261749376; x55.up = 0.0247020564279926; 
x56.lo = 0.345297620634162; x56.up = 0.512185774381034; 
x57.lo = 0.654976858900979; x57.up = 0.774195558953462; 
x58.fx = 0; 
x59.fx = 0; 
x60.fx = 0; 
x61.fx = 0; 
x62.fx = 0; 
x63.fx = 0; 
x64.fx = 0; 
x65.fx = 0; 
x66.fx = 0; 
x67.lo = -0.339161156354068; x67.up = 0.506337104572388; 
x68.lo = -0.496092802521634; x68.up = 0.646674395535926; 
x69.lo = -0.00210912668488674; x69.up = 0.0364463089471501; 
x70.lo = -0.364082603021477; x70.up = 0.529878404719995; 
x71.lo = -0.532545533291374; x71.up = 0.677008766287058; 
x72.lo = -0.00226410459791562; x72.up = 0.0372423976921895; 
x73.lo = -3.84667262084016E-5; x73.up = 0.0211395240203335; 
x74.lo = -5.62654822082178E-5; x74.up = 0.0214683447343979; 
x75.lo = -2.39211351908692E-7; x75.up = 0.020038534925497; 
x76.lo = -0.364252690203117; x76.up = 0.530037191085347; 
x77.lo = -0.413222020767081; x77.up = 0.574781927091204; 
x78.lo = -0.000245936553311669; x78.up = 0.023925383158772; 
x79.lo = -0.263381285517649; x79.up = 0.430887827343088; 
x80.lo = -0.499594079926841; x80.up = 0.649619527301265; 
x81.lo = -0.450739375699278; x81.up = 0.607873205269559; 
x82.lo = -0.511335786049752; x82.up = 0.659446368627957; 
x83.lo = -0.000304330733808772; x83.up = 0.0245244300215596; 
x84.lo = -0.325917472672333; x84.up = 0.493592805168607; 
x85.lo = -0.618215677593785; x85.up = 0.745704823264472; 
x86.lo = -0.000356364753356265; x86.up = 0.0250264707780689; 
x87.lo = -0.000404273647038607; x87.up = 0.0254674349115417; 
x88.lo = -2.40610766974242E-7; x88.up = 0.0200386850686286; 
x89.lo = -0.000257677731356806; x89.up = 0.0240493432504585; 
x90.lo = -0.000488775308624626; x90.up = 0.0262049674231537; 
x91.lo = -0.288062184109774; x91.up = 0.456171715591109; 
x92.lo = -0.421350067772307; x92.up = 0.582033296756697; 
x93.lo = -0.00179135973571932; x93.up = 0.0347498817613908; 
x94.lo = -0.411305602244286; x94.up = 0.573065306952623; 
x95.lo = -0.601618861970156; x95.up = 0.732657668246734; 
x96.lo = -0.0025577682027691; x96.up = 0.0387028355858038; 

* set non default levels

x10.l = 0.557240340085779; 
x11.l = 0.604371564257258; 
x12.l = 0.0241347458970552; 
x13.l = 0.45280278371302; 
x14.l = 0.683200674155107; 
x17.l = 0.583245627320611; 
x18.l = 0.632658253186744; 
x19.l = 0.024334889569585; 
x20.l = 0.473752738261658; 
x21.l = 0.71530311088386; 
x24.l = 0.02125879408843; 
x25.l = 0.0213692260533082; 
x26.l = 0.020009688017269; 
x27.l = 0.0210140891235141; 
x28.l = 0.0215539285228208; 
x31.l = 0.481711439422208; 
x32.l = 0.614942755737996; 
x33.l = 0.0356135505717738; 
x36.l = 0.552172532801311; 
x37.l = 0.705736081369553; 
x38.l = 0.0379963112116094; 
x41.l = 0.0245502153543299; 
x42.l = 0.0258632241503354; 
x43.l = 0.0201538732019207; 
x46.l = 0.501824312019127; 
x47.l = 0.544093977877458; 
x48.l = 0.0237082492668075; 
x49.l = 0.408159428737598; 
x50.l = 0.614791911017674; 
x53.l = 0.630952754382422; 
x54.l = 0.684550649172644; 
x55.l = 0.0247020564279926; 
x56.l = 0.512185774381034; 
x57.l = 0.774195558953462; 
x67.l = 0.506337104572388; 
x68.l = 0.646674395535926; 
x69.l = 0.0364463089471501; 
x70.l = 0.529878404719995; 
x71.l = 0.677008766287058; 
x72.l = 0.0372423976921895; 
x73.l = 0.0211395240203335; 
x74.l = 0.0214683447343979; 
x75.l = 0.020038534925497; 
x76.l = 0.530037191085347; 
x77.l = 0.574781927091204; 
x78.l = 0.023925383158772; 
x79.l = 0.430887827343088; 
x80.l = 0.649619527301265; 
x81.l = 0.607873205269559; 
x82.l = 0.659446368627957; 
x83.l = 0.0245244300215596; 
x84.l = 0.493592805168607; 
x85.l = 0.745704823264472; 
x86.l = 0.0250264707780689; 
x87.l = 0.0254674349115417; 
x88.l = 0.0200386850686286; 
x89.l = 0.0240493432504585; 
x90.l = 0.0262049674231537; 
x91.l = 0.456171715591109; 
x92.l = 0.582033296756697; 
x93.l = 0.0347498817613908; 
x94.l = 0.573065306952623; 
x95.l = 0.732657668246734; 
x96.l = 0.0387028355858038; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;