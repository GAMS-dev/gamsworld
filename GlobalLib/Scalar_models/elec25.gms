*  NLP written by GAMS Convert at 07/24/01 16:04:38
*  
*  Equation counts
*     Total       E       G       L       N       X
*        26      26       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        76      76       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       151       1     150       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..  - (1/sqrt(sqr(x1 - x2) + sqr(x26 - x27) + sqr(x51 - x52)) + 1/sqrt(sqr(x1
      - x3) + sqr(x26 - x28) + sqr(x51 - x53)) + 1/sqrt(sqr(x1 - x4) + sqr(x26
      - x29) + sqr(x51 - x54)) + 1/sqrt(sqr(x1 - x5) + sqr(x26 - x30) + sqr(x51
      - x55)) + 1/sqrt(sqr(x1 - x6) + sqr(x26 - x31) + sqr(x51 - x56)) + 1/
     sqrt(sqr(x1 - x7) + sqr(x26 - x32) + sqr(x51 - x57)) + 1/sqrt(sqr(x1 - x8)
      + sqr(x26 - x33) + sqr(x51 - x58)) + 1/sqrt(sqr(x1 - x9) + sqr(x26 - x34)
      + sqr(x51 - x59)) + 1/sqrt(sqr(x1 - x10) + sqr(x26 - x35) + sqr(x51 - x60
     )) + 1/sqrt(sqr(x1 - x11) + sqr(x26 - x36) + sqr(x51 - x61)) + 1/sqrt(sqr(
     x1 - x12) + sqr(x26 - x37) + sqr(x51 - x62)) + 1/sqrt(sqr(x1 - x13) + sqr(
     x26 - x38) + sqr(x51 - x63)) + 1/sqrt(sqr(x1 - x14) + sqr(x26 - x39) + 
     sqr(x51 - x64)) + 1/sqrt(sqr(x1 - x15) + sqr(x26 - x40) + sqr(x51 - x65))
      + 1/sqrt(sqr(x1 - x16) + sqr(x26 - x41) + sqr(x51 - x66)) + 1/sqrt(sqr(x1
      - x17) + sqr(x26 - x42) + sqr(x51 - x67)) + 1/sqrt(sqr(x1 - x18) + sqr(
     x26 - x43) + sqr(x51 - x68)) + 1/sqrt(sqr(x1 - x19) + sqr(x26 - x44) + 
     sqr(x51 - x69)) + 1/sqrt(sqr(x1 - x20) + sqr(x26 - x45) + sqr(x51 - x70))
      + 1/sqrt(sqr(x1 - x21) + sqr(x26 - x46) + sqr(x51 - x71)) + 1/sqrt(sqr(x1
      - x22) + sqr(x26 - x47) + sqr(x51 - x72)) + 1/sqrt(sqr(x1 - x23) + sqr(
     x26 - x48) + sqr(x51 - x73)) + 1/sqrt(sqr(x1 - x24) + sqr(x26 - x49) + 
     sqr(x51 - x74)) + 1/sqrt(sqr(x1 - x25) + sqr(x26 - x50) + sqr(x51 - x75))
      + 1/sqrt(sqr(x2 - x3) + sqr(x27 - x28) + sqr(x52 - x53)) + 1/sqrt(sqr(x2
      - x4) + sqr(x27 - x29) + sqr(x52 - x54)) + 1/sqrt(sqr(x2 - x5) + sqr(x27
      - x30) + sqr(x52 - x55)) + 1/sqrt(sqr(x2 - x6) + sqr(x27 - x31) + sqr(x52
      - x56)) + 1/sqrt(sqr(x2 - x7) + sqr(x27 - x32) + sqr(x52 - x57)) + 1/
     sqrt(sqr(x2 - x8) + sqr(x27 - x33) + sqr(x52 - x58)) + 1/sqrt(sqr(x2 - x9)
      + sqr(x27 - x34) + sqr(x52 - x59)) + 1/sqrt(sqr(x2 - x10) + sqr(x27 - x35
     ) + sqr(x52 - x60)) + 1/sqrt(sqr(x2 - x11) + sqr(x27 - x36) + sqr(x52 - 
     x61)) + 1/sqrt(sqr(x2 - x12) + sqr(x27 - x37) + sqr(x52 - x62)) + 1/sqrt(
     sqr(x2 - x13) + sqr(x27 - x38) + sqr(x52 - x63)) + 1/sqrt(sqr(x2 - x14) + 
     sqr(x27 - x39) + sqr(x52 - x64)) + 1/sqrt(sqr(x2 - x15) + sqr(x27 - x40)
      + sqr(x52 - x65)) + 1/sqrt(sqr(x2 - x16) + sqr(x27 - x41) + sqr(x52 - x66
     )) + 1/sqrt(sqr(x2 - x17) + sqr(x27 - x42) + sqr(x52 - x67)) + 1/sqrt(sqr(
     x2 - x18) + sqr(x27 - x43) + sqr(x52 - x68)) + 1/sqrt(sqr(x2 - x19) + sqr(
     x27 - x44) + sqr(x52 - x69)) + 1/sqrt(sqr(x2 - x20) + sqr(x27 - x45) + 
     sqr(x52 - x70)) + 1/sqrt(sqr(x2 - x21) + sqr(x27 - x46) + sqr(x52 - x71))
      + 1/sqrt(sqr(x2 - x22) + sqr(x27 - x47) + sqr(x52 - x72)) + 1/sqrt(sqr(x2
      - x23) + sqr(x27 - x48) + sqr(x52 - x73)) + 1/sqrt(sqr(x2 - x24) + sqr(
     x27 - x49) + sqr(x52 - x74)) + 1/sqrt(sqr(x2 - x25) + sqr(x27 - x50) + 
     sqr(x52 - x75)) + 1/sqrt(sqr(x3 - x4) + sqr(x28 - x29) + sqr(x53 - x54))
      + 1/sqrt(sqr(x3 - x5) + sqr(x28 - x30) + sqr(x53 - x55)) + 1/sqrt(sqr(x3
      - x6) + sqr(x28 - x31) + sqr(x53 - x56)) + 1/sqrt(sqr(x3 - x7) + sqr(x28
      - x32) + sqr(x53 - x57)) + 1/sqrt(sqr(x3 - x8) + sqr(x28 - x33) + sqr(x53
      - x58)) + 1/sqrt(sqr(x3 - x9) + sqr(x28 - x34) + sqr(x53 - x59)) + 1/
     sqrt(sqr(x3 - x10) + sqr(x28 - x35) + sqr(x53 - x60)) + 1/sqrt(sqr(x3 - 
     x11) + sqr(x28 - x36) + sqr(x53 - x61)) + 1/sqrt(sqr(x3 - x12) + sqr(x28
      - x37) + sqr(x53 - x62)) + 1/sqrt(sqr(x3 - x13) + sqr(x28 - x38) + sqr(
     x53 - x63)) + 1/sqrt(sqr(x3 - x14) + sqr(x28 - x39) + sqr(x53 - x64)) + 1/
     sqrt(sqr(x3 - x15) + sqr(x28 - x40) + sqr(x53 - x65)) + 1/sqrt(sqr(x3 - 
     x16) + sqr(x28 - x41) + sqr(x53 - x66)) + 1/sqrt(sqr(x3 - x17) + sqr(x28
      - x42) + sqr(x53 - x67)) + 1/sqrt(sqr(x3 - x18) + sqr(x28 - x43) + sqr(
     x53 - x68)) + 1/sqrt(sqr(x3 - x19) + sqr(x28 - x44) + sqr(x53 - x69)) + 1/
     sqrt(sqr(x3 - x20) + sqr(x28 - x45) + sqr(x53 - x70)) + 1/sqrt(sqr(x3 - 
     x21) + sqr(x28 - x46) + sqr(x53 - x71)) + 1/sqrt(sqr(x3 - x22) + sqr(x28
      - x47) + sqr(x53 - x72)) + 1/sqrt(sqr(x3 - x23) + sqr(x28 - x48) + sqr(
     x53 - x73)) + 1/sqrt(sqr(x3 - x24) + sqr(x28 - x49) + sqr(x53 - x74)) + 1/
     sqrt(sqr(x3 - x25) + sqr(x28 - x50) + sqr(x53 - x75)) + 1/sqrt(sqr(x4 - x5
     ) + sqr(x29 - x30) + sqr(x54 - x55)) + 1/sqrt(sqr(x4 - x6) + sqr(x29 - x31
     ) + sqr(x54 - x56)) + 1/sqrt(sqr(x4 - x7) + sqr(x29 - x32) + sqr(x54 - x57
     )) + 1/sqrt(sqr(x4 - x8) + sqr(x29 - x33) + sqr(x54 - x58)) + 1/sqrt(sqr(
     x4 - x9) + sqr(x29 - x34) + sqr(x54 - x59)) + 1/sqrt(sqr(x4 - x10) + sqr(
     x29 - x35) + sqr(x54 - x60)) + 1/sqrt(sqr(x4 - x11) + sqr(x29 - x36) + 
     sqr(x54 - x61)) + 1/sqrt(sqr(x4 - x12) + sqr(x29 - x37) + sqr(x54 - x62))
      + 1/sqrt(sqr(x4 - x13) + sqr(x29 - x38) + sqr(x54 - x63)) + 1/sqrt(sqr(x4
      - x14) + sqr(x29 - x39) + sqr(x54 - x64)) + 1/sqrt(sqr(x4 - x15) + sqr(
     x29 - x40) + sqr(x54 - x65)) + 1/sqrt(sqr(x4 - x16) + sqr(x29 - x41) + 
     sqr(x54 - x66)) + 1/sqrt(sqr(x4 - x17) + sqr(x29 - x42) + sqr(x54 - x67))
      + 1/sqrt(sqr(x4 - x18) + sqr(x29 - x43) + sqr(x54 - x68)) + 1/sqrt(sqr(x4
      - x19) + sqr(x29 - x44) + sqr(x54 - x69)) + 1/sqrt(sqr(x4 - x20) + sqr(
     x29 - x45) + sqr(x54 - x70)) + 1/sqrt(sqr(x4 - x21) + sqr(x29 - x46) + 
     sqr(x54 - x71)) + 1/sqrt(sqr(x4 - x22) + sqr(x29 - x47) + sqr(x54 - x72))
      + 1/sqrt(sqr(x4 - x23) + sqr(x29 - x48) + sqr(x54 - x73)) + 1/sqrt(sqr(x4
      - x24) + sqr(x29 - x49) + sqr(x54 - x74)) + 1/sqrt(sqr(x4 - x25) + sqr(
     x29 - x50) + sqr(x54 - x75)) + 1/sqrt(sqr(x5 - x6) + sqr(x30 - x31) + sqr(
     x55 - x56)) + 1/sqrt(sqr(x5 - x7) + sqr(x30 - x32) + sqr(x55 - x57)) + 1/
     sqrt(sqr(x5 - x8) + sqr(x30 - x33) + sqr(x55 - x58)) + 1/sqrt(sqr(x5 - x9)
      + sqr(x30 - x34) + sqr(x55 - x59)) + 1/sqrt(sqr(x5 - x10) + sqr(x30 - x35
     ) + sqr(x55 - x60)) + 1/sqrt(sqr(x5 - x11) + sqr(x30 - x36) + sqr(x55 - 
     x61)) + 1/sqrt(sqr(x5 - x12) + sqr(x30 - x37) + sqr(x55 - x62)) + 1/sqrt(
     sqr(x5 - x13) + sqr(x30 - x38) + sqr(x55 - x63)) + 1/sqrt(sqr(x5 - x14) + 
     sqr(x30 - x39) + sqr(x55 - x64)) + 1/sqrt(sqr(x5 - x15) + sqr(x30 - x40)
      + sqr(x55 - x65)) + 1/sqrt(sqr(x5 - x16) + sqr(x30 - x41) + sqr(x55 - x66
     )) + 1/sqrt(sqr(x5 - x17) + sqr(x30 - x42) + sqr(x55 - x67)) + 1/sqrt(sqr(
     x5 - x18) + sqr(x30 - x43) + sqr(x55 - x68)) + 1/sqrt(sqr(x5 - x19) + sqr(
     x30 - x44) + sqr(x55 - x69)) + 1/sqrt(sqr(x5 - x20) + sqr(x30 - x45) + 
     sqr(x55 - x70)) + 1/sqrt(sqr(x5 - x21) + sqr(x30 - x46) + sqr(x55 - x71))
      + 1/sqrt(sqr(x5 - x22) + sqr(x30 - x47) + sqr(x55 - x72)) + 1/sqrt(sqr(x5
      - x23) + sqr(x30 - x48) + sqr(x55 - x73)) + 1/sqrt(sqr(x5 - x24) + sqr(
     x30 - x49) + sqr(x55 - x74)) + 1/sqrt(sqr(x5 - x25) + sqr(x30 - x50) + 
     sqr(x55 - x75)) + 1/sqrt(sqr(x6 - x7) + sqr(x31 - x32) + sqr(x56 - x57))
      + 1/sqrt(sqr(x6 - x8) + sqr(x31 - x33) + sqr(x56 - x58)) + 1/sqrt(sqr(x6
      - x9) + sqr(x31 - x34) + sqr(x56 - x59)) + 1/sqrt(sqr(x6 - x10) + sqr(x31
      - x35) + sqr(x56 - x60)) + 1/sqrt(sqr(x6 - x11) + sqr(x31 - x36) + sqr(
     x56 - x61)) + 1/sqrt(sqr(x6 - x12) + sqr(x31 - x37) + sqr(x56 - x62)) + 1/
     sqrt(sqr(x6 - x13) + sqr(x31 - x38) + sqr(x56 - x63)) + 1/sqrt(sqr(x6 - 
     x14) + sqr(x31 - x39) + sqr(x56 - x64)) + 1/sqrt(sqr(x6 - x15) + sqr(x31
      - x40) + sqr(x56 - x65)) + 1/sqrt(sqr(x6 - x16) + sqr(x31 - x41) + sqr(
     x56 - x66)) + 1/sqrt(sqr(x6 - x17) + sqr(x31 - x42) + sqr(x56 - x67)) + 1/
     sqrt(sqr(x6 - x18) + sqr(x31 - x43) + sqr(x56 - x68)) + 1/sqrt(sqr(x6 - 
     x19) + sqr(x31 - x44) + sqr(x56 - x69)) + 1/sqrt(sqr(x6 - x20) + sqr(x31
      - x45) + sqr(x56 - x70)) + 1/sqrt(sqr(x6 - x21) + sqr(x31 - x46) + sqr(
     x56 - x71)) + 1/sqrt(sqr(x6 - x22) + sqr(x31 - x47) + sqr(x56 - x72)) + 1/
     sqrt(sqr(x6 - x23) + sqr(x31 - x48) + sqr(x56 - x73)) + 1/sqrt(sqr(x6 - 
     x24) + sqr(x31 - x49) + sqr(x56 - x74)) + 1/sqrt(sqr(x6 - x25) + sqr(x31
      - x50) + sqr(x56 - x75)) + 1/sqrt(sqr(x7 - x8) + sqr(x32 - x33) + sqr(x57
      - x58)) + 1/sqrt(sqr(x7 - x9) + sqr(x32 - x34) + sqr(x57 - x59)) + 1/
     sqrt(sqr(x7 - x10) + sqr(x32 - x35) + sqr(x57 - x60)) + 1/sqrt(sqr(x7 - 
     x11) + sqr(x32 - x36) + sqr(x57 - x61)) + 1/sqrt(sqr(x7 - x12) + sqr(x32
      - x37) + sqr(x57 - x62)) + 1/sqrt(sqr(x7 - x13) + sqr(x32 - x38) + sqr(
     x57 - x63)) + 1/sqrt(sqr(x7 - x14) + sqr(x32 - x39) + sqr(x57 - x64)) + 1/
     sqrt(sqr(x7 - x15) + sqr(x32 - x40) + sqr(x57 - x65)) + 1/sqrt(sqr(x7 - 
     x16) + sqr(x32 - x41) + sqr(x57 - x66)) + 1/sqrt(sqr(x7 - x17) + sqr(x32
      - x42) + sqr(x57 - x67)) + 1/sqrt(sqr(x7 - x18) + sqr(x32 - x43) + sqr(
     x57 - x68)) + 1/sqrt(sqr(x7 - x19) + sqr(x32 - x44) + sqr(x57 - x69)) + 1/
     sqrt(sqr(x7 - x20) + sqr(x32 - x45) + sqr(x57 - x70)) + 1/sqrt(sqr(x7 - 
     x21) + sqr(x32 - x46) + sqr(x57 - x71)) + 1/sqrt(sqr(x7 - x22) + sqr(x32
      - x47) + sqr(x57 - x72)) + 1/sqrt(sqr(x7 - x23) + sqr(x32 - x48) + sqr(
     x57 - x73)) + 1/sqrt(sqr(x7 - x24) + sqr(x32 - x49) + sqr(x57 - x74)) + 1/
     sqrt(sqr(x7 - x25) + sqr(x32 - x50) + sqr(x57 - x75)) + 1/sqrt(sqr(x8 - x9
     ) + sqr(x33 - x34) + sqr(x58 - x59)) + 1/sqrt(sqr(x8 - x10) + sqr(x33 - 
     x35) + sqr(x58 - x60)) + 1/sqrt(sqr(x8 - x11) + sqr(x33 - x36) + sqr(x58
      - x61)) + 1/sqrt(sqr(x8 - x12) + sqr(x33 - x37) + sqr(x58 - x62)) + 1/
     sqrt(sqr(x8 - x13) + sqr(x33 - x38) + sqr(x58 - x63)) + 1/sqrt(sqr(x8 - 
     x14) + sqr(x33 - x39) + sqr(x58 - x64)) + 1/sqrt(sqr(x8 - x15) + sqr(x33
      - x40) + sqr(x58 - x65)) + 1/sqrt(sqr(x8 - x16) + sqr(x33 - x41) + sqr(
     x58 - x66)) + 1/sqrt(sqr(x8 - x17) + sqr(x33 - x42) + sqr(x58 - x67)) + 1/
     sqrt(sqr(x8 - x18) + sqr(x33 - x43) + sqr(x58 - x68)) + 1/sqrt(sqr(x8 - 
     x19) + sqr(x33 - x44) + sqr(x58 - x69)) + 1/sqrt(sqr(x8 - x20) + sqr(x33
      - x45) + sqr(x58 - x70)) + 1/sqrt(sqr(x8 - x21) + sqr(x33 - x46) + sqr(
     x58 - x71)) + 1/sqrt(sqr(x8 - x22) + sqr(x33 - x47) + sqr(x58 - x72)) + 1/
     sqrt(sqr(x8 - x23) + sqr(x33 - x48) + sqr(x58 - x73)) + 1/sqrt(sqr(x8 - 
     x24) + sqr(x33 - x49) + sqr(x58 - x74)) + 1/sqrt(sqr(x8 - x25) + sqr(x33
      - x50) + sqr(x58 - x75)) + 1/sqrt(sqr(x9 - x10) + sqr(x34 - x35) + sqr(
     x59 - x60)) + 1/sqrt(sqr(x9 - x11) + sqr(x34 - x36) + sqr(x59 - x61)) + 1/
     sqrt(sqr(x9 - x12) + sqr(x34 - x37) + sqr(x59 - x62)) + 1/sqrt(sqr(x9 - 
     x13) + sqr(x34 - x38) + sqr(x59 - x63)) + 1/sqrt(sqr(x9 - x14) + sqr(x34
      - x39) + sqr(x59 - x64)) + 1/sqrt(sqr(x9 - x15) + sqr(x34 - x40) + sqr(
     x59 - x65)) + 1/sqrt(sqr(x9 - x16) + sqr(x34 - x41) + sqr(x59 - x66)) + 1/
     sqrt(sqr(x9 - x17) + sqr(x34 - x42) + sqr(x59 - x67)) + 1/sqrt(sqr(x9 - 
     x18) + sqr(x34 - x43) + sqr(x59 - x68)) + 1/sqrt(sqr(x9 - x19) + sqr(x34
      - x44) + sqr(x59 - x69)) + 1/sqrt(sqr(x9 - x20) + sqr(x34 - x45) + sqr(
     x59 - x70)) + 1/sqrt(sqr(x9 - x21) + sqr(x34 - x46) + sqr(x59 - x71)) + 1/
     sqrt(sqr(x9 - x22) + sqr(x34 - x47) + sqr(x59 - x72)) + 1/sqrt(sqr(x9 - 
     x23) + sqr(x34 - x48) + sqr(x59 - x73)) + 1/sqrt(sqr(x9 - x24) + sqr(x34
      - x49) + sqr(x59 - x74)) + 1/sqrt(sqr(x9 - x25) + sqr(x34 - x50) + sqr(
     x59 - x75)) + 1/sqrt(sqr(x10 - x11) + sqr(x35 - x36) + sqr(x60 - x61)) + 1
     /sqrt(sqr(x10 - x12) + sqr(x35 - x37) + sqr(x60 - x62)) + 1/sqrt(sqr(x10
      - x13) + sqr(x35 - x38) + sqr(x60 - x63)) + 1/sqrt(sqr(x10 - x14) + sqr(
     x35 - x39) + sqr(x60 - x64)) + 1/sqrt(sqr(x10 - x15) + sqr(x35 - x40) + 
     sqr(x60 - x65)) + 1/sqrt(sqr(x10 - x16) + sqr(x35 - x41) + sqr(x60 - x66))
      + 1/sqrt(sqr(x10 - x17) + sqr(x35 - x42) + sqr(x60 - x67)) + 1/sqrt(sqr(
     x10 - x18) + sqr(x35 - x43) + sqr(x60 - x68)) + 1/sqrt(sqr(x10 - x19) + 
     sqr(x35 - x44) + sqr(x60 - x69)) + 1/sqrt(sqr(x10 - x20) + sqr(x35 - x45)
      + sqr(x60 - x70)) + 1/sqrt(sqr(x10 - x21) + sqr(x35 - x46) + sqr(x60 - 
     x71)) + 1/sqrt(sqr(x10 - x22) + sqr(x35 - x47) + sqr(x60 - x72)) + 1/sqrt(
     sqr(x10 - x23) + sqr(x35 - x48) + sqr(x60 - x73)) + 1/sqrt(sqr(x10 - x24)
      + sqr(x35 - x49) + sqr(x60 - x74)) + 1/sqrt(sqr(x10 - x25) + sqr(x35 - 
     x50) + sqr(x60 - x75)) + 1/sqrt(sqr(x11 - x12) + sqr(x36 - x37) + sqr(x61
      - x62)) + 1/sqrt(sqr(x11 - x13) + sqr(x36 - x38) + sqr(x61 - x63)) + 1/
     sqrt(sqr(x11 - x14) + sqr(x36 - x39) + sqr(x61 - x64)) + 1/sqrt(sqr(x11 - 
     x15) + sqr(x36 - x40) + sqr(x61 - x65)) + 1/sqrt(sqr(x11 - x16) + sqr(x36
      - x41) + sqr(x61 - x66)) + 1/sqrt(sqr(x11 - x17) + sqr(x36 - x42) + sqr(
     x61 - x67)) + 1/sqrt(sqr(x11 - x18) + sqr(x36 - x43) + sqr(x61 - x68)) + 1
     /sqrt(sqr(x11 - x19) + sqr(x36 - x44) + sqr(x61 - x69)) + 1/sqrt(sqr(x11
      - x20) + sqr(x36 - x45) + sqr(x61 - x70)) + 1/sqrt(sqr(x11 - x21) + sqr(
     x36 - x46) + sqr(x61 - x71)) + 1/sqrt(sqr(x11 - x22) + sqr(x36 - x47) + 
     sqr(x61 - x72)) + 1/sqrt(sqr(x11 - x23) + sqr(x36 - x48) + sqr(x61 - x73))
      + 1/sqrt(sqr(x11 - x24) + sqr(x36 - x49) + sqr(x61 - x74)) + 1/sqrt(sqr(
     x11 - x25) + sqr(x36 - x50) + sqr(x61 - x75)) + 1/sqrt(sqr(x12 - x13) + 
     sqr(x37 - x38) + sqr(x62 - x63)) + 1/sqrt(sqr(x12 - x14) + sqr(x37 - x39)
      + sqr(x62 - x64)) + 1/sqrt(sqr(x12 - x15) + sqr(x37 - x40) + sqr(x62 - 
     x65)) + 1/sqrt(sqr(x12 - x16) + sqr(x37 - x41) + sqr(x62 - x66)) + 1/sqrt(
     sqr(x12 - x17) + sqr(x37 - x42) + sqr(x62 - x67)) + 1/sqrt(sqr(x12 - x18)
      + sqr(x37 - x43) + sqr(x62 - x68)) + 1/sqrt(sqr(x12 - x19) + sqr(x37 - 
     x44) + sqr(x62 - x69)) + 1/sqrt(sqr(x12 - x20) + sqr(x37 - x45) + sqr(x62
      - x70)) + 1/sqrt(sqr(x12 - x21) + sqr(x37 - x46) + sqr(x62 - x71)) + 1/
     sqrt(sqr(x12 - x22) + sqr(x37 - x47) + sqr(x62 - x72)) + 1/sqrt(sqr(x12 - 
     x23) + sqr(x37 - x48) + sqr(x62 - x73)) + 1/sqrt(sqr(x12 - x24) + sqr(x37
      - x49) + sqr(x62 - x74)) + 1/sqrt(sqr(x12 - x25) + sqr(x37 - x50) + sqr(
     x62 - x75)) + 1/sqrt(sqr(x13 - x14) + sqr(x38 - x39) + sqr(x63 - x64)) + 1
     /sqrt(sqr(x13 - x15) + sqr(x38 - x40) + sqr(x63 - x65)) + 1/sqrt(sqr(x13
      - x16) + sqr(x38 - x41) + sqr(x63 - x66)) + 1/sqrt(sqr(x13 - x17) + sqr(
     x38 - x42) + sqr(x63 - x67)) + 1/sqrt(sqr(x13 - x18) + sqr(x38 - x43) + 
     sqr(x63 - x68)) + 1/sqrt(sqr(x13 - x19) + sqr(x38 - x44) + sqr(x63 - x69))
      + 1/sqrt(sqr(x13 - x20) + sqr(x38 - x45) + sqr(x63 - x70)) + 1/sqrt(sqr(
     x13 - x21) + sqr(x38 - x46) + sqr(x63 - x71)) + 1/sqrt(sqr(x13 - x22) + 
     sqr(x38 - x47) + sqr(x63 - x72)) + 1/sqrt(sqr(x13 - x23) + sqr(x38 - x48)
      + sqr(x63 - x73)) + 1/sqrt(sqr(x13 - x24) + sqr(x38 - x49) + sqr(x63 - 
     x74)) + 1/sqrt(sqr(x13 - x25) + sqr(x38 - x50) + sqr(x63 - x75)) + 1/sqrt(
     sqr(x14 - x15) + sqr(x39 - x40) + sqr(x64 - x65)) + 1/sqrt(sqr(x14 - x16)
      + sqr(x39 - x41) + sqr(x64 - x66)) + 1/sqrt(sqr(x14 - x17) + sqr(x39 - 
     x42) + sqr(x64 - x67)) + 1/sqrt(sqr(x14 - x18) + sqr(x39 - x43) + sqr(x64
      - x68)) + 1/sqrt(sqr(x14 - x19) + sqr(x39 - x44) + sqr(x64 - x69)) + 1/
     sqrt(sqr(x14 - x20) + sqr(x39 - x45) + sqr(x64 - x70)) + 1/sqrt(sqr(x14 - 
     x21) + sqr(x39 - x46) + sqr(x64 - x71)) + 1/sqrt(sqr(x14 - x22) + sqr(x39
      - x47) + sqr(x64 - x72)) + 1/sqrt(sqr(x14 - x23) + sqr(x39 - x48) + sqr(
     x64 - x73)) + 1/sqrt(sqr(x14 - x24) + sqr(x39 - x49) + sqr(x64 - x74)) + 1
     /sqrt(sqr(x14 - x25) + sqr(x39 - x50) + sqr(x64 - x75)) + 1/sqrt(sqr(x15
      - x16) + sqr(x40 - x41) + sqr(x65 - x66)) + 1/sqrt(sqr(x15 - x17) + sqr(
     x40 - x42) + sqr(x65 - x67)) + 1/sqrt(sqr(x15 - x18) + sqr(x40 - x43) + 
     sqr(x65 - x68)) + 1/sqrt(sqr(x15 - x19) + sqr(x40 - x44) + sqr(x65 - x69))
      + 1/sqrt(sqr(x15 - x20) + sqr(x40 - x45) + sqr(x65 - x70)) + 1/sqrt(sqr(
     x15 - x21) + sqr(x40 - x46) + sqr(x65 - x71)) + 1/sqrt(sqr(x15 - x22) + 
     sqr(x40 - x47) + sqr(x65 - x72)) + 1/sqrt(sqr(x15 - x23) + sqr(x40 - x48)
      + sqr(x65 - x73)) + 1/sqrt(sqr(x15 - x24) + sqr(x40 - x49) + sqr(x65 - 
     x74)) + 1/sqrt(sqr(x15 - x25) + sqr(x40 - x50) + sqr(x65 - x75)) + 1/sqrt(
     sqr(x16 - x17) + sqr(x41 - x42) + sqr(x66 - x67)) + 1/sqrt(sqr(x16 - x18)
      + sqr(x41 - x43) + sqr(x66 - x68)) + 1/sqrt(sqr(x16 - x19) + sqr(x41 - 
     x44) + sqr(x66 - x69)) + 1/sqrt(sqr(x16 - x20) + sqr(x41 - x45) + sqr(x66
      - x70)) + 1/sqrt(sqr(x16 - x21) + sqr(x41 - x46) + sqr(x66 - x71)) + 1/
     sqrt(sqr(x16 - x22) + sqr(x41 - x47) + sqr(x66 - x72)) + 1/sqrt(sqr(x16 - 
     x23) + sqr(x41 - x48) + sqr(x66 - x73)) + 1/sqrt(sqr(x16 - x24) + sqr(x41
      - x49) + sqr(x66 - x74)) + 1/sqrt(sqr(x16 - x25) + sqr(x41 - x50) + sqr(
     x66 - x75)) + 1/sqrt(sqr(x17 - x18) + sqr(x42 - x43) + sqr(x67 - x68)) + 1
     /sqrt(sqr(x17 - x19) + sqr(x42 - x44) + sqr(x67 - x69)) + 1/sqrt(sqr(x17
      - x20) + sqr(x42 - x45) + sqr(x67 - x70)) + 1/sqrt(sqr(x17 - x21) + sqr(
     x42 - x46) + sqr(x67 - x71)) + 1/sqrt(sqr(x17 - x22) + sqr(x42 - x47) + 
     sqr(x67 - x72)) + 1/sqrt(sqr(x17 - x23) + sqr(x42 - x48) + sqr(x67 - x73))
      + 1/sqrt(sqr(x17 - x24) + sqr(x42 - x49) + sqr(x67 - x74)) + 1/sqrt(sqr(
     x17 - x25) + sqr(x42 - x50) + sqr(x67 - x75)) + 1/sqrt(sqr(x18 - x19) + 
     sqr(x43 - x44) + sqr(x68 - x69)) + 1/sqrt(sqr(x18 - x20) + sqr(x43 - x45)
      + sqr(x68 - x70)) + 1/sqrt(sqr(x18 - x21) + sqr(x43 - x46) + sqr(x68 - 
     x71)) + 1/sqrt(sqr(x18 - x22) + sqr(x43 - x47) + sqr(x68 - x72)) + 1/sqrt(
     sqr(x18 - x23) + sqr(x43 - x48) + sqr(x68 - x73)) + 1/sqrt(sqr(x18 - x24)
      + sqr(x43 - x49) + sqr(x68 - x74)) + 1/sqrt(sqr(x18 - x25) + sqr(x43 - 
     x50) + sqr(x68 - x75)) + 1/sqrt(sqr(x19 - x20) + sqr(x44 - x45) + sqr(x69
      - x70)) + 1/sqrt(sqr(x19 - x21) + sqr(x44 - x46) + sqr(x69 - x71)) + 1/
     sqrt(sqr(x19 - x22) + sqr(x44 - x47) + sqr(x69 - x72)) + 1/sqrt(sqr(x19 - 
     x23) + sqr(x44 - x48) + sqr(x69 - x73)) + 1/sqrt(sqr(x19 - x24) + sqr(x44
      - x49) + sqr(x69 - x74)) + 1/sqrt(sqr(x19 - x25) + sqr(x44 - x50) + sqr(
     x69 - x75)) + 1/sqrt(sqr(x20 - x21) + sqr(x45 - x46) + sqr(x70 - x71)) + 1
     /sqrt(sqr(x20 - x22) + sqr(x45 - x47) + sqr(x70 - x72)) + 1/sqrt(sqr(x20
      - x23) + sqr(x45 - x48) + sqr(x70 - x73)) + 1/sqrt(sqr(x20 - x24) + sqr(
     x45 - x49) + sqr(x70 - x74)) + 1/sqrt(sqr(x20 - x25) + sqr(x45 - x50) + 
     sqr(x70 - x75)) + 1/sqrt(sqr(x21 - x22) + sqr(x46 - x47) + sqr(x71 - x72))
      + 1/sqrt(sqr(x21 - x23) + sqr(x46 - x48) + sqr(x71 - x73)) + 1/sqrt(sqr(
     x21 - x24) + sqr(x46 - x49) + sqr(x71 - x74)) + 1/sqrt(sqr(x21 - x25) + 
     sqr(x46 - x50) + sqr(x71 - x75)) + 1/sqrt(sqr(x22 - x23) + sqr(x47 - x48)
      + sqr(x72 - x73)) + 1/sqrt(sqr(x22 - x24) + sqr(x47 - x49) + sqr(x72 - 
     x74)) + 1/sqrt(sqr(x22 - x25) + sqr(x47 - x50) + sqr(x72 - x75)) + 1/sqrt(
     sqr(x23 - x24) + sqr(x48 - x49) + sqr(x73 - x74)) + 1/sqrt(sqr(x23 - x25)
      + sqr(x48 - x50) + sqr(x73 - x75)) + 1/sqrt(sqr(x24 - x25) + sqr(x49 - 
     x50) + sqr(x74 - x75))) + objvar =E= 0;

e2.. sqr(x1) + sqr(x26) + sqr(x51) =E= 1;

e3.. sqr(x2) + sqr(x27) + sqr(x52) =E= 1;

e4.. sqr(x3) + sqr(x28) + sqr(x53) =E= 1;

e5.. sqr(x4) + sqr(x29) + sqr(x54) =E= 1;

e6.. sqr(x5) + sqr(x30) + sqr(x55) =E= 1;

e7.. sqr(x6) + sqr(x31) + sqr(x56) =E= 1;

e8.. sqr(x7) + sqr(x32) + sqr(x57) =E= 1;

e9.. sqr(x8) + sqr(x33) + sqr(x58) =E= 1;

e10.. sqr(x9) + sqr(x34) + sqr(x59) =E= 1;

e11.. sqr(x10) + sqr(x35) + sqr(x60) =E= 1;

e12.. sqr(x11) + sqr(x36) + sqr(x61) =E= 1;

e13.. sqr(x12) + sqr(x37) + sqr(x62) =E= 1;

e14.. sqr(x13) + sqr(x38) + sqr(x63) =E= 1;

e15.. sqr(x14) + sqr(x39) + sqr(x64) =E= 1;

e16.. sqr(x15) + sqr(x40) + sqr(x65) =E= 1;

e17.. sqr(x16) + sqr(x41) + sqr(x66) =E= 1;

e18.. sqr(x17) + sqr(x42) + sqr(x67) =E= 1;

e19.. sqr(x18) + sqr(x43) + sqr(x68) =E= 1;

e20.. sqr(x19) + sqr(x44) + sqr(x69) =E= 1;

e21.. sqr(x20) + sqr(x45) + sqr(x70) =E= 1;

e22.. sqr(x21) + sqr(x46) + sqr(x71) =E= 1;

e23.. sqr(x22) + sqr(x47) + sqr(x72) =E= 1;

e24.. sqr(x23) + sqr(x48) + sqr(x73) =E= 1;

e25.. sqr(x24) + sqr(x49) + sqr(x74) =E= 1;

e26.. sqr(x25) + sqr(x50) + sqr(x75) =E= 1;

* set non default bounds


* set non default levels

x1.l = 0.239180341590991; 
x2.l = 0.366795705695488; 
x3.l = -0.824393694345008; 
x4.l = -0.20445364152556; 
x5.l = -0.213822736723748; 
x6.l = 0.0552164684243268; 
x7.l = -0.586906863272324; 
x8.l = 0.298593602647523; 
x9.l = 0.355869249309419; 
x10.l = -0.739872584978883; 
x11.l = 0.781972693719759; 
x12.l = -0.842050067383099; 
x13.l = 0.763853183973836; 
x14.l = 0.0707385883845137; 
x15.l = 0.676966872258273; 
x16.l = -0.615239159391388; 
x17.l = 0.194562217624882; 
x18.l = -0.000422232856522465; 
x19.l = -0.0710616666815774; 
x20.l = -0.802987831773153; 
x21.l = -0.344305154696255; 
x22.l = -0.533805829063186; 
x23.l = 0.665382373979989; 
x24.l = 0.388420087049812; 
x25.l = -0.682029983840943; 
x26.l = 0.446611486489583; 
x27.l = -0.552573627870873; 
x28.l = -0.270012939754188; 
x29.l = 0.614265045675796; 
x30.l = 0.787195952709942; 
x31.l = 0.335681675744966; 
x32.l = 0.809619787722586; 
x33.l = -0.378664598119689; 
x34.l = 0.159642467758326; 
x35.l = -0.000979349466686923; 
x36.l = -0.00924905564272029; 
x37.l = -0.454232023429031; 
x38.l = -0.042600453543173; 
x39.l = -0.91720202046222; 
x40.l = 0.727211440768476; 
x41.l = -0.741026339314474; 
x42.l = 0.304537885768853; 
x43.l = 0.834446009909628; 
x44.l = -0.127224428134585; 
x45.l = 0.34535116139819; 
x46.l = 0.417792969107124; 
x47.l = 0.720899917808122; 
x48.l = 0.72200222898579; 
x49.l = 0.535334038601125; 
x50.l = -0.427520073559083; 
x51.l = -0.862166424962131; 
x52.l = 0.748413853469436; 
x53.l = -0.497461605643582; 
x54.l = -0.762152978166359; 
x55.l = 0.578448242539515; 
x56.l = 0.940355759371844; 
x57.l = -0.00749220741006433; 
x58.l = 0.876045080226371; 
x59.l = -0.920799304888955; 
x60.l = 0.672746310931013; 
x61.l = 0.623244062343463; 
x62.l = -0.290903683221246; 
x63.l = -0.643982542225292; 
x64.l = -0.392092470947082; 
x65.l = 0.113487330924153; 
x66.l = 0.268999518946722; 
x67.l = 0.932417406317752; 
x68.l = 0.551089537430458; 
x69.l = 0.989325115628965; 
x70.l = 0.485739762985462; 
x71.l = 0.840775234776954; 
x72.l = -0.441989417704098; 
x73.l = -0.189681516591112; 
x74.l = -0.750031534731191; 
x75.l = 0.593347864111736; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
