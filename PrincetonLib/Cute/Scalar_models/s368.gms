*  NLP written by GAMS Convert at 10/06/06 11:47:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        101      101        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        101        1      100        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100;

Equations  e1;


e1..  - (sqr(-x1)*POWER(x1,4) + sqr(-x1)*POWER(x2,4) + sqr(-x1)*POWER(x3,4) + 
     sqr(-x1)*POWER(x4,4) + sqr(-x1)*POWER(x5,4) + sqr(-x1)*POWER(x6,4) + sqr(-
     x1)*POWER(x7,4) + sqr(-x1)*POWER(x8,4) + sqr(-x1)*POWER(x9,4) + sqr(-x1)*
     POWER(x10,4) + sqr(-x1)*POWER(x11,4) + sqr(-x1)*POWER(x12,4) + sqr(-x1)*
     POWER(x13,4) + sqr(-x1)*POWER(x14,4) + sqr(-x1)*POWER(x15,4) + sqr(-x1)*
     POWER(x16,4) + sqr(-x1)*POWER(x17,4) + sqr(-x1)*POWER(x18,4) + sqr(-x1)*
     POWER(x19,4) + sqr(-x1)*POWER(x20,4) + sqr(-x1)*POWER(x21,4) + sqr(-x1)*
     POWER(x22,4) + sqr(-x1)*POWER(x23,4) + sqr(-x1)*POWER(x24,4) + sqr(-x1)*
     POWER(x25,4) + sqr(-x1)*POWER(x26,4) + sqr(-x1)*POWER(x27,4) + sqr(-x1)*
     POWER(x28,4) + sqr(-x1)*POWER(x29,4) + sqr(-x1)*POWER(x30,4) + sqr(-x1)*
     POWER(x31,4) + sqr(-x1)*POWER(x32,4) + sqr(-x1)*POWER(x33,4) + sqr(-x1)*
     POWER(x34,4) + sqr(-x1)*POWER(x35,4) + sqr(-x1)*POWER(x36,4) + sqr(-x1)*
     POWER(x37,4) + sqr(-x1)*POWER(x38,4) + sqr(-x1)*POWER(x39,4) + sqr(-x1)*
     POWER(x40,4) + sqr(-x1)*POWER(x41,4) + sqr(-x1)*POWER(x42,4) + sqr(-x1)*
     POWER(x43,4) + sqr(-x1)*POWER(x44,4) + sqr(-x1)*POWER(x45,4) + sqr(-x1)*
     POWER(x46,4) + sqr(-x1)*POWER(x47,4) + sqr(-x1)*POWER(x48,4) + sqr(-x1)*
     POWER(x49,4) + sqr(-x1)*POWER(x50,4) + sqr(-x1)*POWER(x51,4) + sqr(-x1)*
     POWER(x52,4) + sqr(-x1)*POWER(x53,4) + sqr(-x1)*POWER(x54,4) + sqr(-x1)*
     POWER(x55,4) + sqr(-x1)*POWER(x56,4) + sqr(-x1)*POWER(x57,4) + sqr(-x1)*
     POWER(x58,4) + sqr(-x1)*POWER(x59,4) + sqr(-x1)*POWER(x60,4) + sqr(-x1)*
     POWER(x61,4) + sqr(-x1)*POWER(x62,4) + sqr(-x1)*POWER(x63,4) + sqr(-x1)*
     POWER(x64,4) + sqr(-x1)*POWER(x65,4) + sqr(-x1)*POWER(x66,4) + sqr(-x1)*
     POWER(x67,4) + sqr(-x1)*POWER(x68,4) + sqr(-x1)*POWER(x69,4) + sqr(-x1)*
     POWER(x70,4) + sqr(-x1)*POWER(x71,4) + sqr(-x1)*POWER(x72,4) + sqr(-x1)*
     POWER(x73,4) + sqr(-x1)*POWER(x74,4) + sqr(-x1)*POWER(x75,4) + sqr(-x1)*
     POWER(x76,4) + sqr(-x1)*POWER(x77,4) + sqr(-x1)*POWER(x78,4) + sqr(-x1)*
     POWER(x79,4) + sqr(-x1)*POWER(x80,4) + sqr(-x1)*POWER(x81,4) + sqr(-x1)*
     POWER(x82,4) + sqr(-x1)*POWER(x83,4) + sqr(-x1)*POWER(x84,4) + sqr(-x1)*
     POWER(x85,4) + sqr(-x1)*POWER(x86,4) + sqr(-x1)*POWER(x87,4) + sqr(-x1)*
     POWER(x88,4) + sqr(-x1)*POWER(x89,4) + sqr(-x1)*POWER(x90,4) + sqr(-x1)*
     POWER(x91,4) + sqr(-x1)*POWER(x92,4) + sqr(-x1)*POWER(x93,4) + sqr(-x1)*
     POWER(x94,4) + sqr(-x1)*POWER(x95,4) + sqr(-x1)*POWER(x96,4) + sqr(-x1)*
     POWER(x97,4) + sqr(-x1)*POWER(x98,4) + sqr(-x1)*POWER(x99,4) + sqr(-x1)*
     POWER(x100,4) + sqr(-x2)*POWER(x1,4) + sqr(-x2)*POWER(x2,4) + sqr(-x2)*
     POWER(x3,4) + sqr(-x2)*POWER(x4,4) + sqr(-x2)*POWER(x5,4) + sqr(-x2)*
     POWER(x6,4) + sqr(-x2)*POWER(x7,4) + sqr(-x2)*POWER(x8,4) + sqr(-x2)*
     POWER(x9,4) + sqr(-x2)*POWER(x10,4) + sqr(-x2)*POWER(x11,4) + sqr(-x2)*
     POWER(x12,4) + sqr(-x2)*POWER(x13,4) + sqr(-x2)*POWER(x14,4) + sqr(-x2)*
     POWER(x15,4) + sqr(-x2)*POWER(x16,4) + sqr(-x2)*POWER(x17,4) + sqr(-x2)*
     POWER(x18,4) + sqr(-x2)*POWER(x19,4) + sqr(-x2)*POWER(x20,4) + sqr(-x2)*
     POWER(x21,4) + sqr(-x2)*POWER(x22,4) + sqr(-x2)*POWER(x23,4) + sqr(-x2)*
     POWER(x24,4) + sqr(-x2)*POWER(x25,4) + sqr(-x2)*POWER(x26,4) + sqr(-x2)*
     POWER(x27,4) + sqr(-x2)*POWER(x28,4) + sqr(-x2)*POWER(x29,4) + sqr(-x2)*
     POWER(x30,4) + sqr(-x2)*POWER(x31,4) + sqr(-x2)*POWER(x32,4) + sqr(-x2)*
     POWER(x33,4) + sqr(-x2)*POWER(x34,4) + sqr(-x2)*POWER(x35,4) + sqr(-x2)*
     POWER(x36,4) + sqr(-x2)*POWER(x37,4) + sqr(-x2)*POWER(x38,4) + sqr(-x2)*
     POWER(x39,4) + sqr(-x2)*POWER(x40,4) + sqr(-x2)*POWER(x41,4) + sqr(-x2)*
     POWER(x42,4) + sqr(-x2)*POWER(x43,4) + sqr(-x2)*POWER(x44,4) + sqr(-x2)*
     POWER(x45,4) + sqr(-x2)*POWER(x46,4) + sqr(-x2)*POWER(x47,4) + sqr(-x2)*
     POWER(x48,4) + sqr(-x2)*POWER(x49,4) + sqr(-x2)*POWER(x50,4) + sqr(-x2)*
     POWER(x51,4) + sqr(-x2)*POWER(x52,4) + sqr(-x2)*POWER(x53,4) + sqr(-x2)*
     POWER(x54,4) + sqr(-x2)*POWER(x55,4) + sqr(-x2)*POWER(x56,4) + sqr(-x2)*
     POWER(x57,4) + sqr(-x2)*POWER(x58,4) + sqr(-x2)*POWER(x59,4) + sqr(-x2)*
     POWER(x60,4) + sqr(-x2)*POWER(x61,4) + sqr(-x2)*POWER(x62,4) + sqr(-x2)*
     POWER(x63,4) + sqr(-x2)*POWER(x64,4) + sqr(-x2)*POWER(x65,4) + sqr(-x2)*
     POWER(x66,4) + sqr(-x2)*POWER(x67,4) + sqr(-x2)*POWER(x68,4) + sqr(-x2)*
     POWER(x69,4) + sqr(-x2)*POWER(x70,4) + sqr(-x2)*POWER(x71,4) + sqr(-x2)*
     POWER(x72,4) + sqr(-x2)*POWER(x73,4) + sqr(-x2)*POWER(x74,4) + sqr(-x2)*
     POWER(x75,4) + sqr(-x2)*POWER(x76,4) + sqr(-x2)*POWER(x77,4) + sqr(-x2)*
     POWER(x78,4) + sqr(-x2)*POWER(x79,4) + sqr(-x2)*POWER(x80,4) + sqr(-x2)*
     POWER(x81,4) + sqr(-x2)*POWER(x82,4) + sqr(-x2)*POWER(x83,4) + sqr(-x2)*
     POWER(x84,4) + sqr(-x2)*POWER(x85,4) + sqr(-x2)*POWER(x86,4) + sqr(-x2)*
     POWER(x87,4) + sqr(-x2)*POWER(x88,4) + sqr(-x2)*POWER(x89,4) + sqr(-x2)*
     POWER(x90,4) + sqr(-x2)*POWER(x91,4) + sqr(-x2)*POWER(x92,4) + sqr(-x2)*
     POWER(x93,4) + sqr(-x2)*POWER(x94,4) + sqr(-x2)*POWER(x95,4) + sqr(-x2)*
     POWER(x96,4) + sqr(-x2)*POWER(x97,4) + sqr(-x2)*POWER(x98,4) + sqr(-x2)*
     POWER(x99,4) + sqr(-x2)*POWER(x100,4) + sqr(-x3)*POWER(x1,4) + sqr(-x3)*
     POWER(x2,4) + sqr(-x3)*POWER(x3,4) + sqr(-x3)*POWER(x4,4) + sqr(-x3)*
     POWER(x5,4) + sqr(-x3)*POWER(x6,4) + sqr(-x3)*POWER(x7,4) + sqr(-x3)*
     POWER(x8,4) + sqr(-x3)*POWER(x9,4) + sqr(-x3)*POWER(x10,4) + sqr(-x3)*
     POWER(x11,4) + sqr(-x3)*POWER(x12,4) + sqr(-x3)*POWER(x13,4) + sqr(-x3)*
     POWER(x14,4) + sqr(-x3)*POWER(x15,4) + sqr(-x3)*POWER(x16,4) + sqr(-x3)*
     POWER(x17,4) + sqr(-x3)*POWER(x18,4) + sqr(-x3)*POWER(x19,4) + sqr(-x3)*
     POWER(x20,4) + sqr(-x3)*POWER(x21,4) + sqr(-x3)*POWER(x22,4) + sqr(-x3)*
     POWER(x23,4) + sqr(-x3)*POWER(x24,4) + sqr(-x3)*POWER(x25,4) + sqr(-x3)*
     POWER(x26,4) + sqr(-x3)*POWER(x27,4) + sqr(-x3)*POWER(x28,4) + sqr(-x3)*
     POWER(x29,4) + sqr(-x3)*POWER(x30,4) + sqr(-x3)*POWER(x31,4) + sqr(-x3)*
     POWER(x32,4) + sqr(-x3)*POWER(x33,4) + sqr(-x3)*POWER(x34,4) + sqr(-x3)*
     POWER(x35,4) + sqr(-x3)*POWER(x36,4) + sqr(-x3)*POWER(x37,4) + sqr(-x3)*
     POWER(x38,4) + sqr(-x3)*POWER(x39,4) + sqr(-x3)*POWER(x40,4) + sqr(-x3)*
     POWER(x41,4) + sqr(-x3)*POWER(x42,4) + sqr(-x3)*POWER(x43,4) + sqr(-x3)*
     POWER(x44,4) + sqr(-x3)*POWER(x45,4) + sqr(-x3)*POWER(x46,4) + sqr(-x3)*
     POWER(x47,4) + sqr(-x3)*POWER(x48,4) + sqr(-x3)*POWER(x49,4) + sqr(-x3)*
     POWER(x50,4) + sqr(-x3)*POWER(x51,4) + sqr(-x3)*POWER(x52,4) + sqr(-x3)*
     POWER(x53,4) + sqr(-x3)*POWER(x54,4) + sqr(-x3)*POWER(x55,4) + sqr(-x3)*
     POWER(x56,4) + sqr(-x3)*POWER(x57,4) + sqr(-x3)*POWER(x58,4) + sqr(-x3)*
     POWER(x59,4) + sqr(-x3)*POWER(x60,4) + sqr(-x3)*POWER(x61,4) + sqr(-x3)*
     POWER(x62,4) + sqr(-x3)*POWER(x63,4) + sqr(-x3)*POWER(x64,4) + sqr(-x3)*
     POWER(x65,4) + sqr(-x3)*POWER(x66,4) + sqr(-x3)*POWER(x67,4) + sqr(-x3)*
     POWER(x68,4) + sqr(-x3)*POWER(x69,4) + sqr(-x3)*POWER(x70,4) + sqr(-x3)*
     POWER(x71,4) + sqr(-x3)*POWER(x72,4) + sqr(-x3)*POWER(x73,4) + sqr(-x3)*
     POWER(x74,4) + sqr(-x3)*POWER(x75,4) + sqr(-x3)*POWER(x76,4) + sqr(-x3)*
     POWER(x77,4) + sqr(-x3)*POWER(x78,4) + sqr(-x3)*POWER(x79,4) + sqr(-x3)*
     POWER(x80,4) + sqr(-x3)*POWER(x81,4) + sqr(-x3)*POWER(x82,4) + sqr(-x3)*
     POWER(x83,4) + sqr(-x3)*POWER(x84,4) + sqr(-x3)*POWER(x85,4) + sqr(-x3)*
     POWER(x86,4) + sqr(-x3)*POWER(x87,4) + sqr(-x3)*POWER(x88,4) + sqr(-x3)*
     POWER(x89,4) + sqr(-x3)*POWER(x90,4) + sqr(-x3)*POWER(x91,4) + sqr(-x3)*
     POWER(x92,4) + sqr(-x3)*POWER(x93,4) + sqr(-x3)*POWER(x94,4) + sqr(-x3)*
     POWER(x95,4) + sqr(-x3)*POWER(x96,4) + sqr(-x3)*POWER(x97,4) + sqr(-x3)*
     POWER(x98,4) + sqr(-x3)*POWER(x99,4) + sqr(-x3)*POWER(x100,4) + sqr(-x4)*
     POWER(x1,4) + sqr(-x4)*POWER(x2,4) + sqr(-x4)*POWER(x3,4) + sqr(-x4)*
     POWER(x4,4) + sqr(-x4)*POWER(x5,4) + sqr(-x4)*POWER(x6,4) + sqr(-x4)*
     POWER(x7,4) + sqr(-x4)*POWER(x8,4) + sqr(-x4)*POWER(x9,4) + sqr(-x4)*
     POWER(x10,4) + sqr(-x4)*POWER(x11,4) + sqr(-x4)*POWER(x12,4) + sqr(-x4)*
     POWER(x13,4) + sqr(-x4)*POWER(x14,4) + sqr(-x4)*POWER(x15,4) + sqr(-x4)*
     POWER(x16,4) + sqr(-x4)*POWER(x17,4) + sqr(-x4)*POWER(x18,4) + sqr(-x4)*
     POWER(x19,4) + sqr(-x4)*POWER(x20,4) + sqr(-x4)*POWER(x21,4) + sqr(-x4)*
     POWER(x22,4) + sqr(-x4)*POWER(x23,4) + sqr(-x4)*POWER(x24,4) + sqr(-x4)*
     POWER(x25,4) + sqr(-x4)*POWER(x26,4) + sqr(-x4)*POWER(x27,4) + sqr(-x4)*
     POWER(x28,4) + sqr(-x4)*POWER(x29,4) + sqr(-x4)*POWER(x30,4) + sqr(-x4)*
     POWER(x31,4) + sqr(-x4)*POWER(x32,4) + sqr(-x4)*POWER(x33,4) + sqr(-x4)*
     POWER(x34,4) + sqr(-x4)*POWER(x35,4) + sqr(-x4)*POWER(x36,4) + sqr(-x4)*
     POWER(x37,4) + sqr(-x4)*POWER(x38,4) + sqr(-x4)*POWER(x39,4) + sqr(-x4)*
     POWER(x40,4) + sqr(-x4)*POWER(x41,4) + sqr(-x4)*POWER(x42,4) + sqr(-x4)*
     POWER(x43,4) + sqr(-x4)*POWER(x44,4) + sqr(-x4)*POWER(x45,4) + sqr(-x4)*
     POWER(x46,4) + sqr(-x4)*POWER(x47,4) + sqr(-x4)*POWER(x48,4) + sqr(-x4)*
     POWER(x49,4) + sqr(-x4)*POWER(x50,4) + sqr(-x4)*POWER(x51,4) + sqr(-x4)*
     POWER(x52,4) + sqr(-x4)*POWER(x53,4) + sqr(-x4)*POWER(x54,4) + sqr(-x4)*
     POWER(x55,4) + sqr(-x4)*POWER(x56,4) + sqr(-x4)*POWER(x57,4) + sqr(-x4)*
     POWER(x58,4) + sqr(-x4)*POWER(x59,4) + sqr(-x4)*POWER(x60,4) + sqr(-x4)*
     POWER(x61,4) + sqr(-x4)*POWER(x62,4) + sqr(-x4)*POWER(x63,4) + sqr(-x4)*
     POWER(x64,4) + sqr(-x4)*POWER(x65,4) + sqr(-x4)*POWER(x66,4) + sqr(-x4)*
     POWER(x67,4) + sqr(-x4)*POWER(x68,4) + sqr(-x4)*POWER(x69,4) + sqr(-x4)*
     POWER(x70,4) + sqr(-x4)*POWER(x71,4) + sqr(-x4)*POWER(x72,4) + sqr(-x4)*
     POWER(x73,4) + sqr(-x4)*POWER(x74,4) + sqr(-x4)*POWER(x75,4) + sqr(-x4)*
     POWER(x76,4) + sqr(-x4)*POWER(x77,4) + sqr(-x4)*POWER(x78,4) + sqr(-x4)*
     POWER(x79,4) + sqr(-x4)*POWER(x80,4) + sqr(-x4)*POWER(x81,4) + sqr(-x4)*
     POWER(x82,4) + sqr(-x4)*POWER(x83,4) + sqr(-x4)*POWER(x84,4) + sqr(-x4)*
     POWER(x85,4) + sqr(-x4)*POWER(x86,4) + sqr(-x4)*POWER(x87,4) + sqr(-x4)*
     POWER(x88,4) + sqr(-x4)*POWER(x89,4) + sqr(-x4)*POWER(x90,4) + sqr(-x4)*
     POWER(x91,4) + sqr(-x4)*POWER(x92,4) + sqr(-x4)*POWER(x93,4) + sqr(-x4)*
     POWER(x94,4) + sqr(-x4)*POWER(x95,4) + sqr(-x4)*POWER(x96,4) + sqr(-x4)*
     POWER(x97,4) + sqr(-x4)*POWER(x98,4) + sqr(-x4)*POWER(x99,4) + sqr(-x4)*
     POWER(x100,4) + sqr(-x5)*POWER(x1,4) + sqr(-x5)*POWER(x2,4) + sqr(-x5)*
     POWER(x3,4) + sqr(-x5)*POWER(x4,4) + sqr(-x5)*POWER(x5,4) + sqr(-x5)*
     POWER(x6,4) + sqr(-x5)*POWER(x7,4) + sqr(-x5)*POWER(x8,4) + sqr(-x5)*
     POWER(x9,4) + sqr(-x5)*POWER(x10,4) + sqr(-x5)*POWER(x11,4) + sqr(-x5)*
     POWER(x12,4) + sqr(-x5)*POWER(x13,4) + sqr(-x5)*POWER(x14,4) + sqr(-x5)*
     POWER(x15,4) + sqr(-x5)*POWER(x16,4) + sqr(-x5)*POWER(x17,4) + sqr(-x5)*
     POWER(x18,4) + sqr(-x5)*POWER(x19,4) + sqr(-x5)*POWER(x20,4) + sqr(-x5)*
     POWER(x21,4) + sqr(-x5)*POWER(x22,4) + sqr(-x5)*POWER(x23,4) + sqr(-x5)*
     POWER(x24,4) + sqr(-x5)*POWER(x25,4) + sqr(-x5)*POWER(x26,4) + sqr(-x5)*
     POWER(x27,4) + sqr(-x5)*POWER(x28,4) + sqr(-x5)*POWER(x29,4) + sqr(-x5)*
     POWER(x30,4) + sqr(-x5)*POWER(x31,4) + sqr(-x5)*POWER(x32,4) + sqr(-x5)*
     POWER(x33,4) + sqr(-x5)*POWER(x34,4) + sqr(-x5)*POWER(x35,4) + sqr(-x5)*
     POWER(x36,4) + sqr(-x5)*POWER(x37,4) + sqr(-x5)*POWER(x38,4) + sqr(-x5)*
     POWER(x39,4) + sqr(-x5)*POWER(x40,4) + sqr(-x5)*POWER(x41,4) + sqr(-x5)*
     POWER(x42,4) + sqr(-x5)*POWER(x43,4) + sqr(-x5)*POWER(x44,4) + sqr(-x5)*
     POWER(x45,4) + sqr(-x5)*POWER(x46,4) + sqr(-x5)*POWER(x47,4) + sqr(-x5)*
     POWER(x48,4) + sqr(-x5)*POWER(x49,4) + sqr(-x5)*POWER(x50,4) + sqr(-x5)*
     POWER(x51,4) + sqr(-x5)*POWER(x52,4) + sqr(-x5)*POWER(x53,4) + sqr(-x5)*
     POWER(x54,4) + sqr(-x5)*POWER(x55,4) + sqr(-x5)*POWER(x56,4) + sqr(-x5)*
     POWER(x57,4) + sqr(-x5)*POWER(x58,4) + sqr(-x5)*POWER(x59,4) + sqr(-x5)*
     POWER(x60,4) + sqr(-x5)*POWER(x61,4) + sqr(-x5)*POWER(x62,4) + sqr(-x5)*
     POWER(x63,4) + sqr(-x5)*POWER(x64,4) + sqr(-x5)*POWER(x65,4) + sqr(-x5)*
     POWER(x66,4) + sqr(-x5)*POWER(x67,4) + sqr(-x5)*POWER(x68,4) + sqr(-x5)*
     POWER(x69,4) + sqr(-x5)*POWER(x70,4) + sqr(-x5)*POWER(x71,4) + sqr(-x5)*
     POWER(x72,4) + sqr(-x5)*POWER(x73,4) + sqr(-x5)*POWER(x74,4) + sqr(-x5)*
     POWER(x75,4) + sqr(-x5)*POWER(x76,4) + sqr(-x5)*POWER(x77,4) + sqr(-x5)*
     POWER(x78,4) + sqr(-x5)*POWER(x79,4) + sqr(-x5)*POWER(x80,4) + sqr(-x5)*
     POWER(x81,4) + sqr(-x5)*POWER(x82,4) + sqr(-x5)*POWER(x83,4) + sqr(-x5)*
     POWER(x84,4) + sqr(-x5)*POWER(x85,4) + sqr(-x5)*POWER(x86,4) + sqr(-x5)*
     POWER(x87,4) + sqr(-x5)*POWER(x88,4) + sqr(-x5)*POWER(x89,4) + sqr(-x5)*
     POWER(x90,4) + sqr(-x5)*POWER(x91,4) + sqr(-x5)*POWER(x92,4) + sqr(-x5)*
     POWER(x93,4) + sqr(-x5)*POWER(x94,4) + sqr(-x5)*POWER(x95,4) + sqr(-x5)*
     POWER(x96,4) + sqr(-x5)*POWER(x97,4) + sqr(-x5)*POWER(x98,4) + sqr(-x5)*
     POWER(x99,4) + sqr(-x5)*POWER(x100,4) + sqr(-x6)*POWER(x1,4) + sqr(-x6)*
     POWER(x2,4) + sqr(-x6)*POWER(x3,4) + sqr(-x6)*POWER(x4,4) + sqr(-x6)*
     POWER(x5,4) + sqr(-x6)*POWER(x6,4) + sqr(-x6)*POWER(x7,4) + sqr(-x6)*
     POWER(x8,4) + sqr(-x6)*POWER(x9,4) + sqr(-x6)*POWER(x10,4) + sqr(-x6)*
     POWER(x11,4) + sqr(-x6)*POWER(x12,4) + sqr(-x6)*POWER(x13,4) + sqr(-x6)*
     POWER(x14,4) + sqr(-x6)*POWER(x15,4) + sqr(-x6)*POWER(x16,4) + sqr(-x6)*
     POWER(x17,4) + sqr(-x6)*POWER(x18,4) + sqr(-x6)*POWER(x19,4) + sqr(-x6)*
     POWER(x20,4) + sqr(-x6)*POWER(x21,4) + sqr(-x6)*POWER(x22,4) + sqr(-x6)*
     POWER(x23,4) + sqr(-x6)*POWER(x24,4) + sqr(-x6)*POWER(x25,4) + sqr(-x6)*
     POWER(x26,4) + sqr(-x6)*POWER(x27,4) + sqr(-x6)*POWER(x28,4) + sqr(-x6)*
     POWER(x29,4) + sqr(-x6)*POWER(x30,4) + sqr(-x6)*POWER(x31,4) + sqr(-x6)*
     POWER(x32,4) + sqr(-x6)*POWER(x33,4) + sqr(-x6)*POWER(x34,4) + sqr(-x6)*
     POWER(x35,4) + sqr(-x6)*POWER(x36,4) + sqr(-x6)*POWER(x37,4) + sqr(-x6)*
     POWER(x38,4) + sqr(-x6)*POWER(x39,4) + sqr(-x6)*POWER(x40,4) + sqr(-x6)*
     POWER(x41,4) + sqr(-x6)*POWER(x42,4) + sqr(-x6)*POWER(x43,4) + sqr(-x6)*
     POWER(x44,4) + sqr(-x6)*POWER(x45,4) + sqr(-x6)*POWER(x46,4) + sqr(-x6)*
     POWER(x47,4) + sqr(-x6)*POWER(x48,4) + sqr(-x6)*POWER(x49,4) + sqr(-x6)*
     POWER(x50,4) + sqr(-x6)*POWER(x51,4) + sqr(-x6)*POWER(x52,4) + sqr(-x6)*
     POWER(x53,4) + sqr(-x6)*POWER(x54,4) + sqr(-x6)*POWER(x55,4) + sqr(-x6)*
     POWER(x56,4) + sqr(-x6)*POWER(x57,4) + sqr(-x6)*POWER(x58,4) + sqr(-x6)*
     POWER(x59,4) + sqr(-x6)*POWER(x60,4) + sqr(-x6)*POWER(x61,4) + sqr(-x6)*
     POWER(x62,4) + sqr(-x6)*POWER(x63,4) + sqr(-x6)*POWER(x64,4) + sqr(-x6)*
     POWER(x65,4) + sqr(-x6)*POWER(x66,4) + sqr(-x6)*POWER(x67,4) + sqr(-x6)*
     POWER(x68,4) + sqr(-x6)*POWER(x69,4) + sqr(-x6)*POWER(x70,4) + sqr(-x6)*
     POWER(x71,4) + sqr(-x6)*POWER(x72,4) + sqr(-x6)*POWER(x73,4) + sqr(-x6)*
     POWER(x74,4) + sqr(-x6)*POWER(x75,4) + sqr(-x6)*POWER(x76,4) + sqr(-x6)*
     POWER(x77,4) + sqr(-x6)*POWER(x78,4) + sqr(-x6)*POWER(x79,4) + sqr(-x6)*
     POWER(x80,4) + sqr(-x6)*POWER(x81,4) + sqr(-x6)*POWER(x82,4) + sqr(-x6)*
     POWER(x83,4) + sqr(-x6)*POWER(x84,4) + sqr(-x6)*POWER(x85,4) + sqr(-x6)*
     POWER(x86,4) + sqr(-x6)*POWER(x87,4) + sqr(-x6)*POWER(x88,4) + sqr(-x6)*
     POWER(x89,4) + sqr(-x6)*POWER(x90,4) + sqr(-x6)*POWER(x91,4) + sqr(-x6)*
     POWER(x92,4) + sqr(-x6)*POWER(x93,4) + sqr(-x6)*POWER(x94,4) + sqr(-x6)*
     POWER(x95,4) + sqr(-x6)*POWER(x96,4) + sqr(-x6)*POWER(x97,4) + sqr(-x6)*
     POWER(x98,4) + sqr(-x6)*POWER(x99,4) + sqr(-x6)*POWER(x100,4) + sqr(-x7)*
     POWER(x1,4) + sqr(-x7)*POWER(x2,4) + sqr(-x7)*POWER(x3,4) + sqr(-x7)*
     POWER(x4,4) + sqr(-x7)*POWER(x5,4) + sqr(-x7)*POWER(x6,4) + sqr(-x7)*
     POWER(x7,4) + sqr(-x7)*POWER(x8,4) + sqr(-x7)*POWER(x9,4) + sqr(-x7)*
     POWER(x10,4) + sqr(-x7)*POWER(x11,4) + sqr(-x7)*POWER(x12,4) + sqr(-x7)*
     POWER(x13,4) + sqr(-x7)*POWER(x14,4) + sqr(-x7)*POWER(x15,4) + sqr(-x7)*
     POWER(x16,4) + sqr(-x7)*POWER(x17,4) + sqr(-x7)*POWER(x18,4) + sqr(-x7)*
     POWER(x19,4) + sqr(-x7)*POWER(x20,4) + sqr(-x7)*POWER(x21,4) + sqr(-x7)*
     POWER(x22,4) + sqr(-x7)*POWER(x23,4) + sqr(-x7)*POWER(x24,4) + sqr(-x7)*
     POWER(x25,4) + sqr(-x7)*POWER(x26,4) + sqr(-x7)*POWER(x27,4) + sqr(-x7)*
     POWER(x28,4) + sqr(-x7)*POWER(x29,4) + sqr(-x7)*POWER(x30,4) + sqr(-x7)*
     POWER(x31,4) + sqr(-x7)*POWER(x32,4) + sqr(-x7)*POWER(x33,4) + sqr(-x7)*
     POWER(x34,4) + sqr(-x7)*POWER(x35,4) + sqr(-x7)*POWER(x36,4) + sqr(-x7)*
     POWER(x37,4) + sqr(-x7)*POWER(x38,4) + sqr(-x7)*POWER(x39,4) + sqr(-x7)*
     POWER(x40,4) + sqr(-x7)*POWER(x41,4) + sqr(-x7)*POWER(x42,4) + sqr(-x7)*
     POWER(x43,4) + sqr(-x7)*POWER(x44,4) + sqr(-x7)*POWER(x45,4) + sqr(-x7)*
     POWER(x46,4) + sqr(-x7)*POWER(x47,4) + sqr(-x7)*POWER(x48,4) + sqr(-x7)*
     POWER(x49,4) + sqr(-x7)*POWER(x50,4) + sqr(-x7)*POWER(x51,4) + sqr(-x7)*
     POWER(x52,4) + sqr(-x7)*POWER(x53,4) + sqr(-x7)*POWER(x54,4) + sqr(-x7)*
     POWER(x55,4) + sqr(-x7)*POWER(x56,4) + sqr(-x7)*POWER(x57,4) + sqr(-x7)*
     POWER(x58,4) + sqr(-x7)*POWER(x59,4) + sqr(-x7)*POWER(x60,4) + sqr(-x7)*
     POWER(x61,4) + sqr(-x7)*POWER(x62,4) + sqr(-x7)*POWER(x63,4) + sqr(-x7)*
     POWER(x64,4) + sqr(-x7)*POWER(x65,4) + sqr(-x7)*POWER(x66,4) + sqr(-x7)*
     POWER(x67,4) + sqr(-x7)*POWER(x68,4) + sqr(-x7)*POWER(x69,4) + sqr(-x7)*
     POWER(x70,4) + sqr(-x7)*POWER(x71,4) + sqr(-x7)*POWER(x72,4) + sqr(-x7)*
     POWER(x73,4) + sqr(-x7)*POWER(x74,4) + sqr(-x7)*POWER(x75,4) + sqr(-x7)*
     POWER(x76,4) + sqr(-x7)*POWER(x77,4) + sqr(-x7)*POWER(x78,4) + sqr(-x7)*
     POWER(x79,4) + sqr(-x7)*POWER(x80,4) + sqr(-x7)*POWER(x81,4) + sqr(-x7)*
     POWER(x82,4) + sqr(-x7)*POWER(x83,4) + sqr(-x7)*POWER(x84,4) + sqr(-x7)*
     POWER(x85,4) + sqr(-x7)*POWER(x86,4) + sqr(-x7)*POWER(x87,4) + sqr(-x7)*
     POWER(x88,4) + sqr(-x7)*POWER(x89,4) + sqr(-x7)*POWER(x90,4) + sqr(-x7)*
     POWER(x91,4) + sqr(-x7)*POWER(x92,4) + sqr(-x7)*POWER(x93,4) + sqr(-x7)*
     POWER(x94,4) + sqr(-x7)*POWER(x95,4) + sqr(-x7)*POWER(x96,4) + sqr(-x7)*
     POWER(x97,4) + sqr(-x7)*POWER(x98,4) + sqr(-x7)*POWER(x99,4) + sqr(-x7)*
     POWER(x100,4) + sqr(-x8)*POWER(x1,4) + sqr(-x8)*POWER(x2,4) + sqr(-x8)*
     POWER(x3,4) + sqr(-x8)*POWER(x4,4) + sqr(-x8)*POWER(x5,4) + sqr(-x8)*
     POWER(x6,4) + sqr(-x8)*POWER(x7,4) + sqr(-x8)*POWER(x8,4) + sqr(-x8)*
     POWER(x9,4) + sqr(-x8)*POWER(x10,4) + sqr(-x8)*POWER(x11,4) + sqr(-x8)*
     POWER(x12,4) + sqr(-x8)*POWER(x13,4) + sqr(-x8)*POWER(x14,4) + sqr(-x8)*
     POWER(x15,4) + sqr(-x8)*POWER(x16,4) + sqr(-x8)*POWER(x17,4) + sqr(-x8)*
     POWER(x18,4) + sqr(-x8)*POWER(x19,4) + sqr(-x8)*POWER(x20,4) + sqr(-x8)*
     POWER(x21,4) + sqr(-x8)*POWER(x22,4) + sqr(-x8)*POWER(x23,4) + sqr(-x8)*
     POWER(x24,4) + sqr(-x8)*POWER(x25,4) + sqr(-x8)*POWER(x26,4) + sqr(-x8)*
     POWER(x27,4) + sqr(-x8)*POWER(x28,4) + sqr(-x8)*POWER(x29,4) + sqr(-x8)*
     POWER(x30,4) + sqr(-x8)*POWER(x31,4) + sqr(-x8)*POWER(x32,4) + sqr(-x8)*
     POWER(x33,4) + sqr(-x8)*POWER(x34,4) + sqr(-x8)*POWER(x35,4) + sqr(-x8)*
     POWER(x36,4) + sqr(-x8)*POWER(x37,4) + sqr(-x8)*POWER(x38,4) + sqr(-x8)*
     POWER(x39,4) + sqr(-x8)*POWER(x40,4) + sqr(-x8)*POWER(x41,4) + sqr(-x8)*
     POWER(x42,4) + sqr(-x8)*POWER(x43,4) + sqr(-x8)*POWER(x44,4) + sqr(-x8)*
     POWER(x45,4) + sqr(-x8)*POWER(x46,4) + sqr(-x8)*POWER(x47,4) + sqr(-x8)*
     POWER(x48,4) + sqr(-x8)*POWER(x49,4) + sqr(-x8)*POWER(x50,4) + sqr(-x8)*
     POWER(x51,4) + sqr(-x8)*POWER(x52,4) + sqr(-x8)*POWER(x53,4) + sqr(-x8)*
     POWER(x54,4) + sqr(-x8)*POWER(x55,4) + sqr(-x8)*POWER(x56,4) + sqr(-x8)*
     POWER(x57,4) + sqr(-x8)*POWER(x58,4) + sqr(-x8)*POWER(x59,4) + sqr(-x8)*
     POWER(x60,4) + sqr(-x8)*POWER(x61,4) + sqr(-x8)*POWER(x62,4) + sqr(-x8)*
     POWER(x63,4) + sqr(-x8)*POWER(x64,4) + sqr(-x8)*POWER(x65,4) + sqr(-x8)*
     POWER(x66,4) + sqr(-x8)*POWER(x67,4) + sqr(-x8)*POWER(x68,4) + sqr(-x8)*
     POWER(x69,4) + sqr(-x8)*POWER(x70,4) + sqr(-x8)*POWER(x71,4) + sqr(-x8)*
     POWER(x72,4) + sqr(-x8)*POWER(x73,4) + sqr(-x8)*POWER(x74,4) + sqr(-x8)*
     POWER(x75,4) + sqr(-x8)*POWER(x76,4) + sqr(-x8)*POWER(x77,4) + sqr(-x8)*
     POWER(x78,4) + sqr(-x8)*POWER(x79,4) + sqr(-x8)*POWER(x80,4) + sqr(-x8)*
     POWER(x81,4) + sqr(-x8)*POWER(x82,4) + sqr(-x8)*POWER(x83,4) + sqr(-x8)*
     POWER(x84,4) + sqr(-x8)*POWER(x85,4) + sqr(-x8)*POWER(x86,4) + sqr(-x8)*
     POWER(x87,4) + sqr(-x8)*POWER(x88,4) + sqr(-x8)*POWER(x89,4) + sqr(-x8)*
     POWER(x90,4) + sqr(-x8)*POWER(x91,4) + sqr(-x8)*POWER(x92,4) + sqr(-x8)*
     POWER(x93,4) + sqr(-x8)*POWER(x94,4) + sqr(-x8)*POWER(x95,4) + sqr(-x8)*
     POWER(x96,4) + sqr(-x8)*POWER(x97,4) + sqr(-x8)*POWER(x98,4) + sqr(-x8)*
     POWER(x99,4) + sqr(-x8)*POWER(x100,4) + sqr(-x9)*POWER(x1,4) + sqr(-x9)*
     POWER(x2,4) + sqr(-x9)*POWER(x3,4) + sqr(-x9)*POWER(x4,4) + sqr(-x9)*
     POWER(x5,4) + sqr(-x9)*POWER(x6,4) + sqr(-x9)*POWER(x7,4) + sqr(-x9)*
     POWER(x8,4) + sqr(-x9)*POWER(x9,4) + sqr(-x9)*POWER(x10,4) + sqr(-x9)*
     POWER(x11,4) + sqr(-x9)*POWER(x12,4) + sqr(-x9)*POWER(x13,4) + sqr(-x9)*
     POWER(x14,4) + sqr(-x9)*POWER(x15,4) + sqr(-x9)*POWER(x16,4) + sqr(-x9)*
     POWER(x17,4) + sqr(-x9)*POWER(x18,4) + sqr(-x9)*POWER(x19,4) + sqr(-x9)*
     POWER(x20,4) + sqr(-x9)*POWER(x21,4) + sqr(-x9)*POWER(x22,4) + sqr(-x9)*
     POWER(x23,4) + sqr(-x9)*POWER(x24,4) + sqr(-x9)*POWER(x25,4) + sqr(-x9)*
     POWER(x26,4) + sqr(-x9)*POWER(x27,4) + sqr(-x9)*POWER(x28,4) + sqr(-x9)*
     POWER(x29,4) + sqr(-x9)*POWER(x30,4) + sqr(-x9)*POWER(x31,4) + sqr(-x9)*
     POWER(x32,4) + sqr(-x9)*POWER(x33,4) + sqr(-x9)*POWER(x34,4) + sqr(-x9)*
     POWER(x35,4) + sqr(-x9)*POWER(x36,4) + sqr(-x9)*POWER(x37,4) + sqr(-x9)*
     POWER(x38,4) + sqr(-x9)*POWER(x39,4) + sqr(-x9)*POWER(x40,4) + sqr(-x9)*
     POWER(x41,4) + sqr(-x9)*POWER(x42,4) + sqr(-x9)*POWER(x43,4) + sqr(-x9)*
     POWER(x44,4) + sqr(-x9)*POWER(x45,4) + sqr(-x9)*POWER(x46,4) + sqr(-x9)*
     POWER(x47,4) + sqr(-x9)*POWER(x48,4) + sqr(-x9)*POWER(x49,4) + sqr(-x9)*
     POWER(x50,4) + sqr(-x9)*POWER(x51,4) + sqr(-x9)*POWER(x52,4) + sqr(-x9)*
     POWER(x53,4) + sqr(-x9)*POWER(x54,4) + sqr(-x9)*POWER(x55,4) + sqr(-x9)*
     POWER(x56,4) + sqr(-x9)*POWER(x57,4) + sqr(-x9)*POWER(x58,4) + sqr(-x9)*
     POWER(x59,4) + sqr(-x9)*POWER(x60,4) + sqr(-x9)*POWER(x61,4) + sqr(-x9)*
     POWER(x62,4) + sqr(-x9)*POWER(x63,4) + sqr(-x9)*POWER(x64,4) + sqr(-x9)*
     POWER(x65,4) + sqr(-x9)*POWER(x66,4) + sqr(-x9)*POWER(x67,4) + sqr(-x9)*
     POWER(x68,4) + sqr(-x9)*POWER(x69,4) + sqr(-x9)*POWER(x70,4) + sqr(-x9)*
     POWER(x71,4) + sqr(-x9)*POWER(x72,4) + sqr(-x9)*POWER(x73,4) + sqr(-x9)*
     POWER(x74,4) + sqr(-x9)*POWER(x75,4) + sqr(-x9)*POWER(x76,4) + sqr(-x9)*
     POWER(x77,4) + sqr(-x9)*POWER(x78,4) + sqr(-x9)*POWER(x79,4) + sqr(-x9)*
     POWER(x80,4) + sqr(-x9)*POWER(x81,4) + sqr(-x9)*POWER(x82,4) + sqr(-x9)*
     POWER(x83,4) + sqr(-x9)*POWER(x84,4) + sqr(-x9)*POWER(x85,4) + sqr(-x9)*
     POWER(x86,4) + sqr(-x9)*POWER(x87,4) + sqr(-x9)*POWER(x88,4) + sqr(-x9)*
     POWER(x89,4) + sqr(-x9)*POWER(x90,4) + sqr(-x9)*POWER(x91,4) + sqr(-x9)*
     POWER(x92,4) + sqr(-x9)*POWER(x93,4) + sqr(-x9)*POWER(x94,4) + sqr(-x9)*
     POWER(x95,4) + sqr(-x9)*POWER(x96,4) + sqr(-x9)*POWER(x97,4) + sqr(-x9)*
     POWER(x98,4) + sqr(-x9)*POWER(x99,4) + sqr(-x9)*POWER(x100,4) + sqr(-x10)*
     POWER(x1,4) + sqr(-x10)*POWER(x2,4) + sqr(-x10)*POWER(x3,4) + sqr(-x10)*
     POWER(x4,4) + sqr(-x10)*POWER(x5,4) + sqr(-x10)*POWER(x6,4) + sqr(-x10)*
     POWER(x7,4) + sqr(-x10)*POWER(x8,4) + sqr(-x10)*POWER(x9,4) + sqr(-x10)*
     POWER(x10,4) + sqr(-x10)*POWER(x11,4) + sqr(-x10)*POWER(x12,4) + sqr(-x10)
     *POWER(x13,4) + sqr(-x10)*POWER(x14,4) + sqr(-x10)*POWER(x15,4) + sqr(-x10
     )*POWER(x16,4) + sqr(-x10)*POWER(x17,4) + sqr(-x10)*POWER(x18,4) + sqr(-
     x10)*POWER(x19,4) + sqr(-x10)*POWER(x20,4) + sqr(-x10)*POWER(x21,4) + sqr(
     -x10)*POWER(x22,4) + sqr(-x10)*POWER(x23,4) + sqr(-x10)*POWER(x24,4) + 
     sqr(-x10)*POWER(x25,4) + sqr(-x10)*POWER(x26,4) + sqr(-x10)*POWER(x27,4)
      + sqr(-x10)*POWER(x28,4) + sqr(-x10)*POWER(x29,4) + sqr(-x10)*POWER(x30,4
     ) + sqr(-x10)*POWER(x31,4) + sqr(-x10)*POWER(x32,4) + sqr(-x10)*POWER(x33,
     4) + sqr(-x10)*POWER(x34,4) + sqr(-x10)*POWER(x35,4) + sqr(-x10)*POWER(x36
     ,4) + sqr(-x10)*POWER(x37,4) + sqr(-x10)*POWER(x38,4) + sqr(-x10)*POWER(
     x39,4) + sqr(-x10)*POWER(x40,4) + sqr(-x10)*POWER(x41,4) + sqr(-x10)*
     POWER(x42,4) + sqr(-x10)*POWER(x43,4) + sqr(-x10)*POWER(x44,4) + sqr(-x10)
     *POWER(x45,4) + sqr(-x10)*POWER(x46,4) + sqr(-x10)*POWER(x47,4) + sqr(-x10
     )*POWER(x48,4) + sqr(-x10)*POWER(x49,4) + sqr(-x10)*POWER(x50,4) + sqr(-
     x10)*POWER(x51,4) + sqr(-x10)*POWER(x52,4) + sqr(-x10)*POWER(x53,4) + sqr(
     -x10)*POWER(x54,4) + sqr(-x10)*POWER(x55,4) + sqr(-x10)*POWER(x56,4) + 
     sqr(-x10)*POWER(x57,4) + sqr(-x10)*POWER(x58,4) + sqr(-x10)*POWER(x59,4)
      + sqr(-x10)*POWER(x60,4) + sqr(-x10)*POWER(x61,4) + sqr(-x10)*POWER(x62,4
     ) + sqr(-x10)*POWER(x63,4) + sqr(-x10)*POWER(x64,4) + sqr(-x10)*POWER(x65,
     4) + sqr(-x10)*POWER(x66,4) + sqr(-x10)*POWER(x67,4) + sqr(-x10)*POWER(x68
     ,4) + sqr(-x10)*POWER(x69,4) + sqr(-x10)*POWER(x70,4) + sqr(-x10)*POWER(
     x71,4) + sqr(-x10)*POWER(x72,4) + sqr(-x10)*POWER(x73,4) + sqr(-x10)*
     POWER(x74,4) + sqr(-x10)*POWER(x75,4) + sqr(-x10)*POWER(x76,4) + sqr(-x10)
     *POWER(x77,4) + sqr(-x10)*POWER(x78,4) + sqr(-x10)*POWER(x79,4) + sqr(-x10
     )*POWER(x80,4) + sqr(-x10)*POWER(x81,4) + sqr(-x10)*POWER(x82,4) + sqr(-
     x10)*POWER(x83,4) + sqr(-x10)*POWER(x84,4) + sqr(-x10)*POWER(x85,4) + sqr(
     -x10)*POWER(x86,4) + sqr(-x10)*POWER(x87,4) + sqr(-x10)*POWER(x88,4) + 
     sqr(-x10)*POWER(x89,4) + sqr(-x10)*POWER(x90,4) + sqr(-x10)*POWER(x91,4)
      + sqr(-x10)*POWER(x92,4) + sqr(-x10)*POWER(x93,4) + sqr(-x10)*POWER(x94,4
     ) + sqr(-x10)*POWER(x95,4) + sqr(-x10)*POWER(x96,4) + sqr(-x10)*POWER(x97,
     4) + sqr(-x10)*POWER(x98,4) + sqr(-x10)*POWER(x99,4) + sqr(-x10)*POWER(
     x100,4) + sqr(-x11)*POWER(x1,4) + sqr(-x11)*POWER(x2,4) + sqr(-x11)*POWER(
     x3,4) + sqr(-x11)*POWER(x4,4) + sqr(-x11)*POWER(x5,4) + sqr(-x11)*POWER(x6
     ,4) + sqr(-x11)*POWER(x7,4) + sqr(-x11)*POWER(x8,4) + sqr(-x11)*POWER(x9,4
     ) + sqr(-x11)*POWER(x10,4) + sqr(-x11)*POWER(x11,4) + sqr(-x11)*POWER(x12,
     4) + sqr(-x11)*POWER(x13,4) + sqr(-x11)*POWER(x14,4) + sqr(-x11)*POWER(x15
     ,4) + sqr(-x11)*POWER(x16,4) + sqr(-x11)*POWER(x17,4) + sqr(-x11)*POWER(
     x18,4) + sqr(-x11)*POWER(x19,4) + sqr(-x11)*POWER(x20,4) + sqr(-x11)*
     POWER(x21,4) + sqr(-x11)*POWER(x22,4) + sqr(-x11)*POWER(x23,4) + sqr(-x11)
     *POWER(x24,4) + sqr(-x11)*POWER(x25,4) + sqr(-x11)*POWER(x26,4) + sqr(-x11
     )*POWER(x27,4) + sqr(-x11)*POWER(x28,4) + sqr(-x11)*POWER(x29,4) + sqr(-
     x11)*POWER(x30,4) + sqr(-x11)*POWER(x31,4) + sqr(-x11)*POWER(x32,4) + sqr(
     -x11)*POWER(x33,4) + sqr(-x11)*POWER(x34,4) + sqr(-x11)*POWER(x35,4) + 
     sqr(-x11)*POWER(x36,4) + sqr(-x11)*POWER(x37,4) + sqr(-x11)*POWER(x38,4)
      + sqr(-x11)*POWER(x39,4) + sqr(-x11)*POWER(x40,4) + sqr(-x11)*POWER(x41,4
     ) + sqr(-x11)*POWER(x42,4) + sqr(-x11)*POWER(x43,4) + sqr(-x11)*POWER(x44,
     4) + sqr(-x11)*POWER(x45,4) + sqr(-x11)*POWER(x46,4) + sqr(-x11)*POWER(x47
     ,4) + sqr(-x11)*POWER(x48,4) + sqr(-x11)*POWER(x49,4) + sqr(-x11)*POWER(
     x50,4) + sqr(-x11)*POWER(x51,4) + sqr(-x11)*POWER(x52,4) + sqr(-x11)*
     POWER(x53,4) + sqr(-x11)*POWER(x54,4) + sqr(-x11)*POWER(x55,4) + sqr(-x11)
     *POWER(x56,4) + sqr(-x11)*POWER(x57,4) + sqr(-x11)*POWER(x58,4) + sqr(-x11
     )*POWER(x59,4) + sqr(-x11)*POWER(x60,4) + sqr(-x11)*POWER(x61,4) + sqr(-
     x11)*POWER(x62,4) + sqr(-x11)*POWER(x63,4) + sqr(-x11)*POWER(x64,4) + sqr(
     -x11)*POWER(x65,4) + sqr(-x11)*POWER(x66,4) + sqr(-x11)*POWER(x67,4) + 
     sqr(-x11)*POWER(x68,4) + sqr(-x11)*POWER(x69,4) + sqr(-x11)*POWER(x70,4)
      + sqr(-x11)*POWER(x71,4) + sqr(-x11)*POWER(x72,4) + sqr(-x11)*POWER(x73,4
     ) + sqr(-x11)*POWER(x74,4) + sqr(-x11)*POWER(x75,4) + sqr(-x11)*POWER(x76,
     4) + sqr(-x11)*POWER(x77,4) + sqr(-x11)*POWER(x78,4) + sqr(-x11)*POWER(x79
     ,4) + sqr(-x11)*POWER(x80,4) + sqr(-x11)*POWER(x81,4) + sqr(-x11)*POWER(
     x82,4) + sqr(-x11)*POWER(x83,4) + sqr(-x11)*POWER(x84,4) + sqr(-x11)*
     POWER(x85,4) + sqr(-x11)*POWER(x86,4) + sqr(-x11)*POWER(x87,4) + sqr(-x11)
     *POWER(x88,4) + sqr(-x11)*POWER(x89,4) + sqr(-x11)*POWER(x90,4) + sqr(-x11
     )*POWER(x91,4) + sqr(-x11)*POWER(x92,4) + sqr(-x11)*POWER(x93,4) + sqr(-
     x11)*POWER(x94,4) + sqr(-x11)*POWER(x95,4) + sqr(-x11)*POWER(x96,4) + sqr(
     -x11)*POWER(x97,4) + sqr(-x11)*POWER(x98,4) + sqr(-x11)*POWER(x99,4) + 
     sqr(-x11)*POWER(x100,4) + sqr(-x12)*POWER(x1,4) + sqr(-x12)*POWER(x2,4) + 
     sqr(-x12)*POWER(x3,4) + sqr(-x12)*POWER(x4,4) + sqr(-x12)*POWER(x5,4) + 
     sqr(-x12)*POWER(x6,4) + sqr(-x12)*POWER(x7,4) + sqr(-x12)*POWER(x8,4) + 
     sqr(-x12)*POWER(x9,4) + sqr(-x12)*POWER(x10,4) + sqr(-x12)*POWER(x11,4) + 
     sqr(-x12)*POWER(x12,4) + sqr(-x12)*POWER(x13,4) + sqr(-x12)*POWER(x14,4)
      + sqr(-x12)*POWER(x15,4) + sqr(-x12)*POWER(x16,4) + sqr(-x12)*POWER(x17,4
     ) + sqr(-x12)*POWER(x18,4) + sqr(-x12)*POWER(x19,4) + sqr(-x12)*POWER(x20,
     4) + sqr(-x12)*POWER(x21,4) + sqr(-x12)*POWER(x22,4) + sqr(-x12)*POWER(x23
     ,4) + sqr(-x12)*POWER(x24,4) + sqr(-x12)*POWER(x25,4) + sqr(-x12)*POWER(
     x26,4) + sqr(-x12)*POWER(x27,4) + sqr(-x12)*POWER(x28,4) + sqr(-x12)*
     POWER(x29,4) + sqr(-x12)*POWER(x30,4) + sqr(-x12)*POWER(x31,4) + sqr(-x12)
     *POWER(x32,4) + sqr(-x12)*POWER(x33,4) + sqr(-x12)*POWER(x34,4) + sqr(-x12
     )*POWER(x35,4) + sqr(-x12)*POWER(x36,4) + sqr(-x12)*POWER(x37,4) + sqr(-
     x12)*POWER(x38,4) + sqr(-x12)*POWER(x39,4) + sqr(-x12)*POWER(x40,4) + sqr(
     -x12)*POWER(x41,4) + sqr(-x12)*POWER(x42,4) + sqr(-x12)*POWER(x43,4) + 
     sqr(-x12)*POWER(x44,4) + sqr(-x12)*POWER(x45,4) + sqr(-x12)*POWER(x46,4)
      + sqr(-x12)*POWER(x47,4) + sqr(-x12)*POWER(x48,4) + sqr(-x12)*POWER(x49,4
     ) + sqr(-x12)*POWER(x50,4) + sqr(-x12)*POWER(x51,4) + sqr(-x12)*POWER(x52,
     4) + sqr(-x12)*POWER(x53,4) + sqr(-x12)*POWER(x54,4) + sqr(-x12)*POWER(x55
     ,4) + sqr(-x12)*POWER(x56,4) + sqr(-x12)*POWER(x57,4) + sqr(-x12)*POWER(
     x58,4) + sqr(-x12)*POWER(x59,4) + sqr(-x12)*POWER(x60,4) + sqr(-x12)*
     POWER(x61,4) + sqr(-x12)*POWER(x62,4) + sqr(-x12)*POWER(x63,4) + sqr(-x12)
     *POWER(x64,4) + sqr(-x12)*POWER(x65,4) + sqr(-x12)*POWER(x66,4) + sqr(-x12
     )*POWER(x67,4) + sqr(-x12)*POWER(x68,4) + sqr(-x12)*POWER(x69,4) + sqr(-
     x12)*POWER(x70,4) + sqr(-x12)*POWER(x71,4) + sqr(-x12)*POWER(x72,4) + sqr(
     -x12)*POWER(x73,4) + sqr(-x12)*POWER(x74,4) + sqr(-x12)*POWER(x75,4) + 
     sqr(-x12)*POWER(x76,4) + sqr(-x12)*POWER(x77,4) + sqr(-x12)*POWER(x78,4)
      + sqr(-x12)*POWER(x79,4) + sqr(-x12)*POWER(x80,4) + sqr(-x12)*POWER(x81,4
     ) + sqr(-x12)*POWER(x82,4) + sqr(-x12)*POWER(x83,4) + sqr(-x12)*POWER(x84,
     4) + sqr(-x12)*POWER(x85,4) + sqr(-x12)*POWER(x86,4) + sqr(-x12)*POWER(x87
     ,4) + sqr(-x12)*POWER(x88,4) + sqr(-x12)*POWER(x89,4) + sqr(-x12)*POWER(
     x90,4) + sqr(-x12)*POWER(x91,4) + sqr(-x12)*POWER(x92,4) + sqr(-x12)*
     POWER(x93,4) + sqr(-x12)*POWER(x94,4) + sqr(-x12)*POWER(x95,4) + sqr(-x12)
     *POWER(x96,4) + sqr(-x12)*POWER(x97,4) + sqr(-x12)*POWER(x98,4) + sqr(-x12
     )*POWER(x99,4) + sqr(-x12)*POWER(x100,4) + sqr(-x13)*POWER(x1,4) + sqr(-
     x13)*POWER(x2,4) + sqr(-x13)*POWER(x3,4) + sqr(-x13)*POWER(x4,4) + sqr(-
     x13)*POWER(x5,4) + sqr(-x13)*POWER(x6,4) + sqr(-x13)*POWER(x7,4) + sqr(-
     x13)*POWER(x8,4) + sqr(-x13)*POWER(x9,4) + sqr(-x13)*POWER(x10,4) + sqr(-
     x13)*POWER(x11,4) + sqr(-x13)*POWER(x12,4) + sqr(-x13)*POWER(x13,4) + sqr(
     -x13)*POWER(x14,4) + sqr(-x13)*POWER(x15,4) + sqr(-x13)*POWER(x16,4) + 
     sqr(-x13)*POWER(x17,4) + sqr(-x13)*POWER(x18,4) + sqr(-x13)*POWER(x19,4)
      + sqr(-x13)*POWER(x20,4) + sqr(-x13)*POWER(x21,4) + sqr(-x13)*POWER(x22,4
     ) + sqr(-x13)*POWER(x23,4) + sqr(-x13)*POWER(x24,4) + sqr(-x13)*POWER(x25,
     4) + sqr(-x13)*POWER(x26,4) + sqr(-x13)*POWER(x27,4) + sqr(-x13)*POWER(x28
     ,4) + sqr(-x13)*POWER(x29,4) + sqr(-x13)*POWER(x30,4) + sqr(-x13)*POWER(
     x31,4) + sqr(-x13)*POWER(x32,4) + sqr(-x13)*POWER(x33,4) + sqr(-x13)*
     POWER(x34,4) + sqr(-x13)*POWER(x35,4) + sqr(-x13)*POWER(x36,4) + sqr(-x13)
     *POWER(x37,4) + sqr(-x13)*POWER(x38,4) + sqr(-x13)*POWER(x39,4) + sqr(-x13
     )*POWER(x40,4) + sqr(-x13)*POWER(x41,4) + sqr(-x13)*POWER(x42,4) + sqr(-
     x13)*POWER(x43,4) + sqr(-x13)*POWER(x44,4) + sqr(-x13)*POWER(x45,4) + sqr(
     -x13)*POWER(x46,4) + sqr(-x13)*POWER(x47,4) + sqr(-x13)*POWER(x48,4) + 
     sqr(-x13)*POWER(x49,4) + sqr(-x13)*POWER(x50,4) + sqr(-x13)*POWER(x51,4)
      + sqr(-x13)*POWER(x52,4) + sqr(-x13)*POWER(x53,4) + sqr(-x13)*POWER(x54,4
     ) + sqr(-x13)*POWER(x55,4) + sqr(-x13)*POWER(x56,4) + sqr(-x13)*POWER(x57,
     4) + sqr(-x13)*POWER(x58,4) + sqr(-x13)*POWER(x59,4) + sqr(-x13)*POWER(x60
     ,4) + sqr(-x13)*POWER(x61,4) + sqr(-x13)*POWER(x62,4) + sqr(-x13)*POWER(
     x63,4) + sqr(-x13)*POWER(x64,4) + sqr(-x13)*POWER(x65,4) + sqr(-x13)*
     POWER(x66,4) + sqr(-x13)*POWER(x67,4) + sqr(-x13)*POWER(x68,4) + sqr(-x13)
     *POWER(x69,4) + sqr(-x13)*POWER(x70,4) + sqr(-x13)*POWER(x71,4) + sqr(-x13
     )*POWER(x72,4) + sqr(-x13)*POWER(x73,4) + sqr(-x13)*POWER(x74,4) + sqr(-
     x13)*POWER(x75,4) + sqr(-x13)*POWER(x76,4) + sqr(-x13)*POWER(x77,4) + sqr(
     -x13)*POWER(x78,4) + sqr(-x13)*POWER(x79,4) + sqr(-x13)*POWER(x80,4) + 
     sqr(-x13)*POWER(x81,4) + sqr(-x13)*POWER(x82,4) + sqr(-x13)*POWER(x83,4)
      + sqr(-x13)*POWER(x84,4) + sqr(-x13)*POWER(x85,4) + sqr(-x13)*POWER(x86,4
     ) + sqr(-x13)*POWER(x87,4) + sqr(-x13)*POWER(x88,4) + sqr(-x13)*POWER(x89,
     4) + sqr(-x13)*POWER(x90,4) + sqr(-x13)*POWER(x91,4) + sqr(-x13)*POWER(x92
     ,4) + sqr(-x13)*POWER(x93,4) + sqr(-x13)*POWER(x94,4) + sqr(-x13)*POWER(
     x95,4) + sqr(-x13)*POWER(x96,4) + sqr(-x13)*POWER(x97,4) + sqr(-x13)*
     POWER(x98,4) + sqr(-x13)*POWER(x99,4) + sqr(-x13)*POWER(x100,4) + sqr(-x14
     )*POWER(x1,4) + sqr(-x14)*POWER(x2,4) + sqr(-x14)*POWER(x3,4) + sqr(-x14)*
     POWER(x4,4) + sqr(-x14)*POWER(x5,4) + sqr(-x14)*POWER(x6,4) + sqr(-x14)*
     POWER(x7,4) + sqr(-x14)*POWER(x8,4) + sqr(-x14)*POWER(x9,4) + sqr(-x14)*
     POWER(x10,4) + sqr(-x14)*POWER(x11,4) + sqr(-x14)*POWER(x12,4) + sqr(-x14)
     *POWER(x13,4) + sqr(-x14)*POWER(x14,4) + sqr(-x14)*POWER(x15,4) + sqr(-x14
     )*POWER(x16,4) + sqr(-x14)*POWER(x17,4) + sqr(-x14)*POWER(x18,4) + sqr(-
     x14)*POWER(x19,4) + sqr(-x14)*POWER(x20,4) + sqr(-x14)*POWER(x21,4) + sqr(
     -x14)*POWER(x22,4) + sqr(-x14)*POWER(x23,4) + sqr(-x14)*POWER(x24,4) + 
     sqr(-x14)*POWER(x25,4) + sqr(-x14)*POWER(x26,4) + sqr(-x14)*POWER(x27,4)
      + sqr(-x14)*POWER(x28,4) + sqr(-x14)*POWER(x29,4) + sqr(-x14)*POWER(x30,4
     ) + sqr(-x14)*POWER(x31,4) + sqr(-x14)*POWER(x32,4) + sqr(-x14)*POWER(x33,
     4) + sqr(-x14)*POWER(x34,4) + sqr(-x14)*POWER(x35,4) + sqr(-x14)*POWER(x36
     ,4) + sqr(-x14)*POWER(x37,4) + sqr(-x14)*POWER(x38,4) + sqr(-x14)*POWER(
     x39,4) + sqr(-x14)*POWER(x40,4) + sqr(-x14)*POWER(x41,4) + sqr(-x14)*
     POWER(x42,4) + sqr(-x14)*POWER(x43,4) + sqr(-x14)*POWER(x44,4) + sqr(-x14)
     *POWER(x45,4) + sqr(-x14)*POWER(x46,4) + sqr(-x14)*POWER(x47,4) + sqr(-x14
     )*POWER(x48,4) + sqr(-x14)*POWER(x49,4) + sqr(-x14)*POWER(x50,4) + sqr(-
     x14)*POWER(x51,4) + sqr(-x14)*POWER(x52,4) + sqr(-x14)*POWER(x53,4) + sqr(
     -x14)*POWER(x54,4) + sqr(-x14)*POWER(x55,4) + sqr(-x14)*POWER(x56,4) + 
     sqr(-x14)*POWER(x57,4) + sqr(-x14)*POWER(x58,4) + sqr(-x14)*POWER(x59,4)
      + sqr(-x14)*POWER(x60,4) + sqr(-x14)*POWER(x61,4) + sqr(-x14)*POWER(x62,4
     ) + sqr(-x14)*POWER(x63,4) + sqr(-x14)*POWER(x64,4) + sqr(-x14)*POWER(x65,
     4) + sqr(-x14)*POWER(x66,4) + sqr(-x14)*POWER(x67,4) + sqr(-x14)*POWER(x68
     ,4) + sqr(-x14)*POWER(x69,4) + sqr(-x14)*POWER(x70,4) + sqr(-x14)*POWER(
     x71,4) + sqr(-x14)*POWER(x72,4) + sqr(-x14)*POWER(x73,4) + sqr(-x14)*
     POWER(x74,4) + sqr(-x14)*POWER(x75,4) + sqr(-x14)*POWER(x76,4) + sqr(-x14)
     *POWER(x77,4) + sqr(-x14)*POWER(x78,4) + sqr(-x14)*POWER(x79,4) + sqr(-x14
     )*POWER(x80,4) + sqr(-x14)*POWER(x81,4) + sqr(-x14)*POWER(x82,4) + sqr(-
     x14)*POWER(x83,4) + sqr(-x14)*POWER(x84,4) + sqr(-x14)*POWER(x85,4) + sqr(
     -x14)*POWER(x86,4) + sqr(-x14)*POWER(x87,4) + sqr(-x14)*POWER(x88,4) + 
     sqr(-x14)*POWER(x89,4) + sqr(-x14)*POWER(x90,4) + sqr(-x14)*POWER(x91,4)
      + sqr(-x14)*POWER(x92,4) + sqr(-x14)*POWER(x93,4) + sqr(-x14)*POWER(x94,4
     ) + sqr(-x14)*POWER(x95,4) + sqr(-x14)*POWER(x96,4) + sqr(-x14)*POWER(x97,
     4) + sqr(-x14)*POWER(x98,4) + sqr(-x14)*POWER(x99,4) + sqr(-x14)*POWER(
     x100,4) + sqr(-x15)*POWER(x1,4) + sqr(-x15)*POWER(x2,4) + sqr(-x15)*POWER(
     x3,4) + sqr(-x15)*POWER(x4,4) + sqr(-x15)*POWER(x5,4) + sqr(-x15)*POWER(x6
     ,4) + sqr(-x15)*POWER(x7,4) + sqr(-x15)*POWER(x8,4) + sqr(-x15)*POWER(x9,4
     ) + sqr(-x15)*POWER(x10,4) + sqr(-x15)*POWER(x11,4) + sqr(-x15)*POWER(x12,
     4) + sqr(-x15)*POWER(x13,4) + sqr(-x15)*POWER(x14,4) + sqr(-x15)*POWER(x15
     ,4) + sqr(-x15)*POWER(x16,4) + sqr(-x15)*POWER(x17,4) + sqr(-x15)*POWER(
     x18,4) + sqr(-x15)*POWER(x19,4) + sqr(-x15)*POWER(x20,4) + sqr(-x15)*
     POWER(x21,4) + sqr(-x15)*POWER(x22,4) + sqr(-x15)*POWER(x23,4) + sqr(-x15)
     *POWER(x24,4) + sqr(-x15)*POWER(x25,4) + sqr(-x15)*POWER(x26,4) + sqr(-x15
     )*POWER(x27,4) + sqr(-x15)*POWER(x28,4) + sqr(-x15)*POWER(x29,4) + sqr(-
     x15)*POWER(x30,4) + sqr(-x15)*POWER(x31,4) + sqr(-x15)*POWER(x32,4) + sqr(
     -x15)*POWER(x33,4) + sqr(-x15)*POWER(x34,4) + sqr(-x15)*POWER(x35,4) + 
     sqr(-x15)*POWER(x36,4) + sqr(-x15)*POWER(x37,4) + sqr(-x15)*POWER(x38,4)
      + sqr(-x15)*POWER(x39,4) + sqr(-x15)*POWER(x40,4) + sqr(-x15)*POWER(x41,4
     ) + sqr(-x15)*POWER(x42,4) + sqr(-x15)*POWER(x43,4) + sqr(-x15)*POWER(x44,
     4) + sqr(-x15)*POWER(x45,4) + sqr(-x15)*POWER(x46,4) + sqr(-x15)*POWER(x47
     ,4) + sqr(-x15)*POWER(x48,4) + sqr(-x15)*POWER(x49,4) + sqr(-x15)*POWER(
     x50,4) + sqr(-x15)*POWER(x51,4) + sqr(-x15)*POWER(x52,4) + sqr(-x15)*
     POWER(x53,4) + sqr(-x15)*POWER(x54,4) + sqr(-x15)*POWER(x55,4) + sqr(-x15)
     *POWER(x56,4) + sqr(-x15)*POWER(x57,4) + sqr(-x15)*POWER(x58,4) + sqr(-x15
     )*POWER(x59,4) + sqr(-x15)*POWER(x60,4) + sqr(-x15)*POWER(x61,4) + sqr(-
     x15)*POWER(x62,4) + sqr(-x15)*POWER(x63,4) + sqr(-x15)*POWER(x64,4) + sqr(
     -x15)*POWER(x65,4) + sqr(-x15)*POWER(x66,4) + sqr(-x15)*POWER(x67,4) + 
     sqr(-x15)*POWER(x68,4) + sqr(-x15)*POWER(x69,4) + sqr(-x15)*POWER(x70,4)
      + sqr(-x15)*POWER(x71,4) + sqr(-x15)*POWER(x72,4) + sqr(-x15)*POWER(x73,4
     ) + sqr(-x15)*POWER(x74,4) + sqr(-x15)*POWER(x75,4) + sqr(-x15)*POWER(x76,
     4) + sqr(-x15)*POWER(x77,4) + sqr(-x15)*POWER(x78,4) + sqr(-x15)*POWER(x79
     ,4) + sqr(-x15)*POWER(x80,4) + sqr(-x15)*POWER(x81,4) + sqr(-x15)*POWER(
     x82,4) + sqr(-x15)*POWER(x83,4) + sqr(-x15)*POWER(x84,4) + sqr(-x15)*
     POWER(x85,4) + sqr(-x15)*POWER(x86,4) + sqr(-x15)*POWER(x87,4) + sqr(-x15)
     *POWER(x88,4) + sqr(-x15)*POWER(x89,4) + sqr(-x15)*POWER(x90,4) + sqr(-x15
     )*POWER(x91,4) + sqr(-x15)*POWER(x92,4) + sqr(-x15)*POWER(x93,4) + sqr(-
     x15)*POWER(x94,4) + sqr(-x15)*POWER(x95,4) + sqr(-x15)*POWER(x96,4) + sqr(
     -x15)*POWER(x97,4) + sqr(-x15)*POWER(x98,4) + sqr(-x15)*POWER(x99,4) + 
     sqr(-x15)*POWER(x100,4) + sqr(-x16)*POWER(x1,4) + sqr(-x16)*POWER(x2,4) + 
     sqr(-x16)*POWER(x3,4) + sqr(-x16)*POWER(x4,4) + sqr(-x16)*POWER(x5,4) + 
     sqr(-x16)*POWER(x6,4) + sqr(-x16)*POWER(x7,4) + sqr(-x16)*POWER(x8,4) + 
     sqr(-x16)*POWER(x9,4) + sqr(-x16)*POWER(x10,4) + sqr(-x16)*POWER(x11,4) + 
     sqr(-x16)*POWER(x12,4) + sqr(-x16)*POWER(x13,4) + sqr(-x16)*POWER(x14,4)
      + sqr(-x16)*POWER(x15,4) + sqr(-x16)*POWER(x16,4) + sqr(-x16)*POWER(x17,4
     ) + sqr(-x16)*POWER(x18,4) + sqr(-x16)*POWER(x19,4) + sqr(-x16)*POWER(x20,
     4) + sqr(-x16)*POWER(x21,4) + sqr(-x16)*POWER(x22,4) + sqr(-x16)*POWER(x23
     ,4) + sqr(-x16)*POWER(x24,4) + sqr(-x16)*POWER(x25,4) + sqr(-x16)*POWER(
     x26,4) + sqr(-x16)*POWER(x27,4) + sqr(-x16)*POWER(x28,4) + sqr(-x16)*
     POWER(x29,4) + sqr(-x16)*POWER(x30,4) + sqr(-x16)*POWER(x31,4) + sqr(-x16)
     *POWER(x32,4) + sqr(-x16)*POWER(x33,4) + sqr(-x16)*POWER(x34,4) + sqr(-x16
     )*POWER(x35,4) + sqr(-x16)*POWER(x36,4) + sqr(-x16)*POWER(x37,4) + sqr(-
     x16)*POWER(x38,4) + sqr(-x16)*POWER(x39,4) + sqr(-x16)*POWER(x40,4) + sqr(
     -x16)*POWER(x41,4) + sqr(-x16)*POWER(x42,4) + sqr(-x16)*POWER(x43,4) + 
     sqr(-x16)*POWER(x44,4) + sqr(-x16)*POWER(x45,4) + sqr(-x16)*POWER(x46,4)
      + sqr(-x16)*POWER(x47,4) + sqr(-x16)*POWER(x48,4) + sqr(-x16)*POWER(x49,4
     ) + sqr(-x16)*POWER(x50,4) + sqr(-x16)*POWER(x51,4) + sqr(-x16)*POWER(x52,
     4) + sqr(-x16)*POWER(x53,4) + sqr(-x16)*POWER(x54,4) + sqr(-x16)*POWER(x55
     ,4) + sqr(-x16)*POWER(x56,4) + sqr(-x16)*POWER(x57,4) + sqr(-x16)*POWER(
     x58,4) + sqr(-x16)*POWER(x59,4) + sqr(-x16)*POWER(x60,4) + sqr(-x16)*
     POWER(x61,4) + sqr(-x16)*POWER(x62,4) + sqr(-x16)*POWER(x63,4) + sqr(-x16)
     *POWER(x64,4) + sqr(-x16)*POWER(x65,4) + sqr(-x16)*POWER(x66,4) + sqr(-x16
     )*POWER(x67,4) + sqr(-x16)*POWER(x68,4) + sqr(-x16)*POWER(x69,4) + sqr(-
     x16)*POWER(x70,4) + sqr(-x16)*POWER(x71,4) + sqr(-x16)*POWER(x72,4) + sqr(
     -x16)*POWER(x73,4) + sqr(-x16)*POWER(x74,4) + sqr(-x16)*POWER(x75,4) + 
     sqr(-x16)*POWER(x76,4) + sqr(-x16)*POWER(x77,4) + sqr(-x16)*POWER(x78,4)
      + sqr(-x16)*POWER(x79,4) + sqr(-x16)*POWER(x80,4) + sqr(-x16)*POWER(x81,4
     ) + sqr(-x16)*POWER(x82,4) + sqr(-x16)*POWER(x83,4) + sqr(-x16)*POWER(x84,
     4) + sqr(-x16)*POWER(x85,4) + sqr(-x16)*POWER(x86,4) + sqr(-x16)*POWER(x87
     ,4) + sqr(-x16)*POWER(x88,4) + sqr(-x16)*POWER(x89,4) + sqr(-x16)*POWER(
     x90,4) + sqr(-x16)*POWER(x91,4) + sqr(-x16)*POWER(x92,4) + sqr(-x16)*
     POWER(x93,4) + sqr(-x16)*POWER(x94,4) + sqr(-x16)*POWER(x95,4) + sqr(-x16)
     *POWER(x96,4) + sqr(-x16)*POWER(x97,4) + sqr(-x16)*POWER(x98,4) + sqr(-x16
     )*POWER(x99,4) + sqr(-x16)*POWER(x100,4) + sqr(-x17)*POWER(x1,4) + sqr(-
     x17)*POWER(x2,4) + sqr(-x17)*POWER(x3,4) + sqr(-x17)*POWER(x4,4) + sqr(-
     x17)*POWER(x5,4) + sqr(-x17)*POWER(x6,4) + sqr(-x17)*POWER(x7,4) + sqr(-
     x17)*POWER(x8,4) + sqr(-x17)*POWER(x9,4) + sqr(-x17)*POWER(x10,4) + sqr(-
     x17)*POWER(x11,4) + sqr(-x17)*POWER(x12,4) + sqr(-x17)*POWER(x13,4) + sqr(
     -x17)*POWER(x14,4) + sqr(-x17)*POWER(x15,4) + sqr(-x17)*POWER(x16,4) + 
     sqr(-x17)*POWER(x17,4) + sqr(-x17)*POWER(x18,4) + sqr(-x17)*POWER(x19,4)
      + sqr(-x17)*POWER(x20,4) + sqr(-x17)*POWER(x21,4) + sqr(-x17)*POWER(x22,4
     ) + sqr(-x17)*POWER(x23,4) + sqr(-x17)*POWER(x24,4) + sqr(-x17)*POWER(x25,
     4) + sqr(-x17)*POWER(x26,4) + sqr(-x17)*POWER(x27,4) + sqr(-x17)*POWER(x28
     ,4) + sqr(-x17)*POWER(x29,4) + sqr(-x17)*POWER(x30,4) + sqr(-x17)*POWER(
     x31,4) + sqr(-x17)*POWER(x32,4) + sqr(-x17)*POWER(x33,4) + sqr(-x17)*
     POWER(x34,4) + sqr(-x17)*POWER(x35,4) + sqr(-x17)*POWER(x36,4) + sqr(-x17)
     *POWER(x37,4) + sqr(-x17)*POWER(x38,4) + sqr(-x17)*POWER(x39,4) + sqr(-x17
     )*POWER(x40,4) + sqr(-x17)*POWER(x41,4) + sqr(-x17)*POWER(x42,4) + sqr(-
     x17)*POWER(x43,4) + sqr(-x17)*POWER(x44,4) + sqr(-x17)*POWER(x45,4) + sqr(
     -x17)*POWER(x46,4) + sqr(-x17)*POWER(x47,4) + sqr(-x17)*POWER(x48,4) + 
     sqr(-x17)*POWER(x49,4) + sqr(-x17)*POWER(x50,4) + sqr(-x17)*POWER(x51,4)
      + sqr(-x17)*POWER(x52,4) + sqr(-x17)*POWER(x53,4) + sqr(-x17)*POWER(x54,4
     ) + sqr(-x17)*POWER(x55,4) + sqr(-x17)*POWER(x56,4) + sqr(-x17)*POWER(x57,
     4) + sqr(-x17)*POWER(x58,4) + sqr(-x17)*POWER(x59,4) + sqr(-x17)*POWER(x60
     ,4) + sqr(-x17)*POWER(x61,4) + sqr(-x17)*POWER(x62,4) + sqr(-x17)*POWER(
     x63,4) + sqr(-x17)*POWER(x64,4) + sqr(-x17)*POWER(x65,4) + sqr(-x17)*
     POWER(x66,4) + sqr(-x17)*POWER(x67,4) + sqr(-x17)*POWER(x68,4) + sqr(-x17)
     *POWER(x69,4) + sqr(-x17)*POWER(x70,4) + sqr(-x17)*POWER(x71,4) + sqr(-x17
     )*POWER(x72,4) + sqr(-x17)*POWER(x73,4) + sqr(-x17)*POWER(x74,4) + sqr(-
     x17)*POWER(x75,4) + sqr(-x17)*POWER(x76,4) + sqr(-x17)*POWER(x77,4) + sqr(
     -x17)*POWER(x78,4) + sqr(-x17)*POWER(x79,4) + sqr(-x17)*POWER(x80,4) + 
     sqr(-x17)*POWER(x81,4) + sqr(-x17)*POWER(x82,4) + sqr(-x17)*POWER(x83,4)
      + sqr(-x17)*POWER(x84,4) + sqr(-x17)*POWER(x85,4) + sqr(-x17)*POWER(x86,4
     ) + sqr(-x17)*POWER(x87,4) + sqr(-x17)*POWER(x88,4) + sqr(-x17)*POWER(x89,
     4) + sqr(-x17)*POWER(x90,4) + sqr(-x17)*POWER(x91,4) + sqr(-x17)*POWER(x92
     ,4) + sqr(-x17)*POWER(x93,4) + sqr(-x17)*POWER(x94,4) + sqr(-x17)*POWER(
     x95,4) + sqr(-x17)*POWER(x96,4) + sqr(-x17)*POWER(x97,4) + sqr(-x17)*
     POWER(x98,4) + sqr(-x17)*POWER(x99,4) + sqr(-x17)*POWER(x100,4) + sqr(-x18
     )*POWER(x1,4) + sqr(-x18)*POWER(x2,4) + sqr(-x18)*POWER(x3,4) + sqr(-x18)*
     POWER(x4,4) + sqr(-x18)*POWER(x5,4) + sqr(-x18)*POWER(x6,4) + sqr(-x18)*
     POWER(x7,4) + sqr(-x18)*POWER(x8,4) + sqr(-x18)*POWER(x9,4) + sqr(-x18)*
     POWER(x10,4) + sqr(-x18)*POWER(x11,4) + sqr(-x18)*POWER(x12,4) + sqr(-x18)
     *POWER(x13,4) + sqr(-x18)*POWER(x14,4) + sqr(-x18)*POWER(x15,4) + sqr(-x18
     )*POWER(x16,4) + sqr(-x18)*POWER(x17,4) + sqr(-x18)*POWER(x18,4) + sqr(-
     x18)*POWER(x19,4) + sqr(-x18)*POWER(x20,4) + sqr(-x18)*POWER(x21,4) + sqr(
     -x18)*POWER(x22,4) + sqr(-x18)*POWER(x23,4) + sqr(-x18)*POWER(x24,4) + 
     sqr(-x18)*POWER(x25,4) + sqr(-x18)*POWER(x26,4) + sqr(-x18)*POWER(x27,4)
      + sqr(-x18)*POWER(x28,4) + sqr(-x18)*POWER(x29,4) + sqr(-x18)*POWER(x30,4
     ) + sqr(-x18)*POWER(x31,4) + sqr(-x18)*POWER(x32,4) + sqr(-x18)*POWER(x33,
     4) + sqr(-x18)*POWER(x34,4) + sqr(-x18)*POWER(x35,4) + sqr(-x18)*POWER(x36
     ,4) + sqr(-x18)*POWER(x37,4) + sqr(-x18)*POWER(x38,4) + sqr(-x18)*POWER(
     x39,4) + sqr(-x18)*POWER(x40,4) + sqr(-x18)*POWER(x41,4) + sqr(-x18)*
     POWER(x42,4) + sqr(-x18)*POWER(x43,4) + sqr(-x18)*POWER(x44,4) + sqr(-x18)
     *POWER(x45,4) + sqr(-x18)*POWER(x46,4) + sqr(-x18)*POWER(x47,4) + sqr(-x18
     )*POWER(x48,4) + sqr(-x18)*POWER(x49,4) + sqr(-x18)*POWER(x50,4) + sqr(-
     x18)*POWER(x51,4) + sqr(-x18)*POWER(x52,4) + sqr(-x18)*POWER(x53,4) + sqr(
     -x18)*POWER(x54,4) + sqr(-x18)*POWER(x55,4) + sqr(-x18)*POWER(x56,4) + 
     sqr(-x18)*POWER(x57,4) + sqr(-x18)*POWER(x58,4) + sqr(-x18)*POWER(x59,4)
      + sqr(-x18)*POWER(x60,4) + sqr(-x18)*POWER(x61,4) + sqr(-x18)*POWER(x62,4
     ) + sqr(-x18)*POWER(x63,4) + sqr(-x18)*POWER(x64,4) + sqr(-x18)*POWER(x65,
     4) + sqr(-x18)*POWER(x66,4) + sqr(-x18)*POWER(x67,4) + sqr(-x18)*POWER(x68
     ,4) + sqr(-x18)*POWER(x69,4) + sqr(-x18)*POWER(x70,4) + sqr(-x18)*POWER(
     x71,4) + sqr(-x18)*POWER(x72,4) + sqr(-x18)*POWER(x73,4) + sqr(-x18)*
     POWER(x74,4) + sqr(-x18)*POWER(x75,4) + sqr(-x18)*POWER(x76,4) + sqr(-x18)
     *POWER(x77,4) + sqr(-x18)*POWER(x78,4) + sqr(-x18)*POWER(x79,4) + sqr(-x18
     )*POWER(x80,4) + sqr(-x18)*POWER(x81,4) + sqr(-x18)*POWER(x82,4) + sqr(-
     x18)*POWER(x83,4) + sqr(-x18)*POWER(x84,4) + sqr(-x18)*POWER(x85,4) + sqr(
     -x18)*POWER(x86,4) + sqr(-x18)*POWER(x87,4) + sqr(-x18)*POWER(x88,4) + 
     sqr(-x18)*POWER(x89,4) + sqr(-x18)*POWER(x90,4) + sqr(-x18)*POWER(x91,4)
      + sqr(-x18)*POWER(x92,4) + sqr(-x18)*POWER(x93,4) + sqr(-x18)*POWER(x94,4
     ) + sqr(-x18)*POWER(x95,4) + sqr(-x18)*POWER(x96,4) + sqr(-x18)*POWER(x97,
     4) + sqr(-x18)*POWER(x98,4) + sqr(-x18)*POWER(x99,4) + sqr(-x18)*POWER(
     x100,4) + sqr(-x19)*POWER(x1,4) + sqr(-x19)*POWER(x2,4) + sqr(-x19)*POWER(
     x3,4) + sqr(-x19)*POWER(x4,4) + sqr(-x19)*POWER(x5,4) + sqr(-x19)*POWER(x6
     ,4) + sqr(-x19)*POWER(x7,4) + sqr(-x19)*POWER(x8,4) + sqr(-x19)*POWER(x9,4
     ) + sqr(-x19)*POWER(x10,4) + sqr(-x19)*POWER(x11,4) + sqr(-x19)*POWER(x12,
     4) + sqr(-x19)*POWER(x13,4) + sqr(-x19)*POWER(x14,4) + sqr(-x19)*POWER(x15
     ,4) + sqr(-x19)*POWER(x16,4) + sqr(-x19)*POWER(x17,4) + sqr(-x19)*POWER(
     x18,4) + sqr(-x19)*POWER(x19,4) + sqr(-x19)*POWER(x20,4) + sqr(-x19)*
     POWER(x21,4) + sqr(-x19)*POWER(x22,4) + sqr(-x19)*POWER(x23,4) + sqr(-x19)
     *POWER(x24,4) + sqr(-x19)*POWER(x25,4) + sqr(-x19)*POWER(x26,4) + sqr(-x19
     )*POWER(x27,4) + sqr(-x19)*POWER(x28,4) + sqr(-x19)*POWER(x29,4) + sqr(-
     x19)*POWER(x30,4) + sqr(-x19)*POWER(x31,4) + sqr(-x19)*POWER(x32,4) + sqr(
     -x19)*POWER(x33,4) + sqr(-x19)*POWER(x34,4) + sqr(-x19)*POWER(x35,4) + 
     sqr(-x19)*POWER(x36,4) + sqr(-x19)*POWER(x37,4) + sqr(-x19)*POWER(x38,4)
      + sqr(-x19)*POWER(x39,4) + sqr(-x19)*POWER(x40,4) + sqr(-x19)*POWER(x41,4
     ) + sqr(-x19)*POWER(x42,4) + sqr(-x19)*POWER(x43,4) + sqr(-x19)*POWER(x44,
     4) + sqr(-x19)*POWER(x45,4) + sqr(-x19)*POWER(x46,4) + sqr(-x19)*POWER(x47
     ,4) + sqr(-x19)*POWER(x48,4) + sqr(-x19)*POWER(x49,4) + sqr(-x19)*POWER(
     x50,4) + sqr(-x19)*POWER(x51,4) + sqr(-x19)*POWER(x52,4) + sqr(-x19)*
     POWER(x53,4) + sqr(-x19)*POWER(x54,4) + sqr(-x19)*POWER(x55,4) + sqr(-x19)
     *POWER(x56,4) + sqr(-x19)*POWER(x57,4) + sqr(-x19)*POWER(x58,4) + sqr(-x19
     )*POWER(x59,4) + sqr(-x19)*POWER(x60,4) + sqr(-x19)*POWER(x61,4) + sqr(-
     x19)*POWER(x62,4) + sqr(-x19)*POWER(x63,4) + sqr(-x19)*POWER(x64,4) + sqr(
     -x19)*POWER(x65,4) + sqr(-x19)*POWER(x66,4) + sqr(-x19)*POWER(x67,4) + 
     sqr(-x19)*POWER(x68,4) + sqr(-x19)*POWER(x69,4) + sqr(-x19)*POWER(x70,4)
      + sqr(-x19)*POWER(x71,4) + sqr(-x19)*POWER(x72,4) + sqr(-x19)*POWER(x73,4
     ) + sqr(-x19)*POWER(x74,4) + sqr(-x19)*POWER(x75,4) + sqr(-x19)*POWER(x76,
     4) + sqr(-x19)*POWER(x77,4) + sqr(-x19)*POWER(x78,4) + sqr(-x19)*POWER(x79
     ,4) + sqr(-x19)*POWER(x80,4) + sqr(-x19)*POWER(x81,4) + sqr(-x19)*POWER(
     x82,4) + sqr(-x19)*POWER(x83,4) + sqr(-x19)*POWER(x84,4) + sqr(-x19)*
     POWER(x85,4) + sqr(-x19)*POWER(x86,4) + sqr(-x19)*POWER(x87,4) + sqr(-x19)
     *POWER(x88,4) + sqr(-x19)*POWER(x89,4) + sqr(-x19)*POWER(x90,4) + sqr(-x19
     )*POWER(x91,4) + sqr(-x19)*POWER(x92,4) + sqr(-x19)*POWER(x93,4) + sqr(-
     x19)*POWER(x94,4) + sqr(-x19)*POWER(x95,4) + sqr(-x19)*POWER(x96,4) + sqr(
     -x19)*POWER(x97,4) + sqr(-x19)*POWER(x98,4) + sqr(-x19)*POWER(x99,4) + 
     sqr(-x19)*POWER(x100,4) + sqr(-x20)*POWER(x1,4) + sqr(-x20)*POWER(x2,4) + 
     sqr(-x20)*POWER(x3,4) + sqr(-x20)*POWER(x4,4) + sqr(-x20)*POWER(x5,4) + 
     sqr(-x20)*POWER(x6,4) + sqr(-x20)*POWER(x7,4) + sqr(-x20)*POWER(x8,4) + 
     sqr(-x20)*POWER(x9,4) + sqr(-x20)*POWER(x10,4) + sqr(-x20)*POWER(x11,4) + 
     sqr(-x20)*POWER(x12,4) + sqr(-x20)*POWER(x13,4) + sqr(-x20)*POWER(x14,4)
      + sqr(-x20)*POWER(x15,4) + sqr(-x20)*POWER(x16,4) + sqr(-x20)*POWER(x17,4
     ) + sqr(-x20)*POWER(x18,4) + sqr(-x20)*POWER(x19,4) + sqr(-x20)*POWER(x20,
     4) + sqr(-x20)*POWER(x21,4) + sqr(-x20)*POWER(x22,4) + sqr(-x20)*POWER(x23
     ,4) + sqr(-x20)*POWER(x24,4) + sqr(-x20)*POWER(x25,4) + sqr(-x20)*POWER(
     x26,4) + sqr(-x20)*POWER(x27,4) + sqr(-x20)*POWER(x28,4) + sqr(-x20)*
     POWER(x29,4) + sqr(-x20)*POWER(x30,4) + sqr(-x20)*POWER(x31,4) + sqr(-x20)
     *POWER(x32,4) + sqr(-x20)*POWER(x33,4) + sqr(-x20)*POWER(x34,4) + sqr(-x20
     )*POWER(x35,4) + sqr(-x20)*POWER(x36,4) + sqr(-x20)*POWER(x37,4) + sqr(-
     x20)*POWER(x38,4) + sqr(-x20)*POWER(x39,4) + sqr(-x20)*POWER(x40,4) + sqr(
     -x20)*POWER(x41,4) + sqr(-x20)*POWER(x42,4) + sqr(-x20)*POWER(x43,4) + 
     sqr(-x20)*POWER(x44,4) + sqr(-x20)*POWER(x45,4) + sqr(-x20)*POWER(x46,4)
      + sqr(-x20)*POWER(x47,4) + sqr(-x20)*POWER(x48,4) + sqr(-x20)*POWER(x49,4
     ) + sqr(-x20)*POWER(x50,4) + sqr(-x20)*POWER(x51,4) + sqr(-x20)*POWER(x52,
     4) + sqr(-x20)*POWER(x53,4) + sqr(-x20)*POWER(x54,4) + sqr(-x20)*POWER(x55
     ,4) + sqr(-x20)*POWER(x56,4) + sqr(-x20)*POWER(x57,4) + sqr(-x20)*POWER(
     x58,4) + sqr(-x20)*POWER(x59,4) + sqr(-x20)*POWER(x60,4) + sqr(-x20)*
     POWER(x61,4) + sqr(-x20)*POWER(x62,4) + sqr(-x20)*POWER(x63,4) + sqr(-x20)
     *POWER(x64,4) + sqr(-x20)*POWER(x65,4) + sqr(-x20)*POWER(x66,4) + sqr(-x20
     )*POWER(x67,4) + sqr(-x20)*POWER(x68,4) + sqr(-x20)*POWER(x69,4) + sqr(-
     x20)*POWER(x70,4) + sqr(-x20)*POWER(x71,4) + sqr(-x20)*POWER(x72,4) + sqr(
     -x20)*POWER(x73,4) + sqr(-x20)*POWER(x74,4) + sqr(-x20)*POWER(x75,4) + 
     sqr(-x20)*POWER(x76,4) + sqr(-x20)*POWER(x77,4) + sqr(-x20)*POWER(x78,4)
      + sqr(-x20)*POWER(x79,4) + sqr(-x20)*POWER(x80,4) + sqr(-x20)*POWER(x81,4
     ) + sqr(-x20)*POWER(x82,4) + sqr(-x20)*POWER(x83,4) + sqr(-x20)*POWER(x84,
     4) + sqr(-x20)*POWER(x85,4) + sqr(-x20)*POWER(x86,4) + sqr(-x20)*POWER(x87
     ,4) + sqr(-x20)*POWER(x88,4) + sqr(-x20)*POWER(x89,4) + sqr(-x20)*POWER(
     x90,4) + sqr(-x20)*POWER(x91,4) + sqr(-x20)*POWER(x92,4) + sqr(-x20)*
     POWER(x93,4) + sqr(-x20)*POWER(x94,4) + sqr(-x20)*POWER(x95,4) + sqr(-x20)
     *POWER(x96,4) + sqr(-x20)*POWER(x97,4) + sqr(-x20)*POWER(x98,4) + sqr(-x20
     )*POWER(x99,4) + sqr(-x20)*POWER(x100,4) + sqr(-x21)*POWER(x1,4) + sqr(-
     x21)*POWER(x2,4) + sqr(-x21)*POWER(x3,4) + sqr(-x21)*POWER(x4,4) + sqr(-
     x21)*POWER(x5,4) + sqr(-x21)*POWER(x6,4) + sqr(-x21)*POWER(x7,4) + sqr(-
     x21)*POWER(x8,4) + sqr(-x21)*POWER(x9,4) + sqr(-x21)*POWER(x10,4) + sqr(-
     x21)*POWER(x11,4) + sqr(-x21)*POWER(x12,4) + sqr(-x21)*POWER(x13,4) + sqr(
     -x21)*POWER(x14,4) + sqr(-x21)*POWER(x15,4) + sqr(-x21)*POWER(x16,4) + 
     sqr(-x21)*POWER(x17,4) + sqr(-x21)*POWER(x18,4) + sqr(-x21)*POWER(x19,4)
      + sqr(-x21)*POWER(x20,4) + sqr(-x21)*POWER(x21,4) + sqr(-x21)*POWER(x22,4
     ) + sqr(-x21)*POWER(x23,4) + sqr(-x21)*POWER(x24,4) + sqr(-x21)*POWER(x25,
     4) + sqr(-x21)*POWER(x26,4) + sqr(-x21)*POWER(x27,4) + sqr(-x21)*POWER(x28
     ,4) + sqr(-x21)*POWER(x29,4) + sqr(-x21)*POWER(x30,4) + sqr(-x21)*POWER(
     x31,4) + sqr(-x21)*POWER(x32,4) + sqr(-x21)*POWER(x33,4) + sqr(-x21)*
     POWER(x34,4) + sqr(-x21)*POWER(x35,4) + sqr(-x21)*POWER(x36,4) + sqr(-x21)
     *POWER(x37,4) + sqr(-x21)*POWER(x38,4) + sqr(-x21)*POWER(x39,4) + sqr(-x21
     )*POWER(x40,4) + sqr(-x21)*POWER(x41,4) + sqr(-x21)*POWER(x42,4) + sqr(-
     x21)*POWER(x43,4) + sqr(-x21)*POWER(x44,4) + sqr(-x21)*POWER(x45,4) + sqr(
     -x21)*POWER(x46,4) + sqr(-x21)*POWER(x47,4) + sqr(-x21)*POWER(x48,4) + 
     sqr(-x21)*POWER(x49,4) + sqr(-x21)*POWER(x50,4) + sqr(-x21)*POWER(x51,4)
      + sqr(-x21)*POWER(x52,4) + sqr(-x21)*POWER(x53,4) + sqr(-x21)*POWER(x54,4
     ) + sqr(-x21)*POWER(x55,4) + sqr(-x21)*POWER(x56,4) + sqr(-x21)*POWER(x57,
     4) + sqr(-x21)*POWER(x58,4) + sqr(-x21)*POWER(x59,4) + sqr(-x21)*POWER(x60
     ,4) + sqr(-x21)*POWER(x61,4) + sqr(-x21)*POWER(x62,4) + sqr(-x21)*POWER(
     x63,4) + sqr(-x21)*POWER(x64,4) + sqr(-x21)*POWER(x65,4) + sqr(-x21)*
     POWER(x66,4) + sqr(-x21)*POWER(x67,4) + sqr(-x21)*POWER(x68,4) + sqr(-x21)
     *POWER(x69,4) + sqr(-x21)*POWER(x70,4) + sqr(-x21)*POWER(x71,4) + sqr(-x21
     )*POWER(x72,4) + sqr(-x21)*POWER(x73,4) + sqr(-x21)*POWER(x74,4) + sqr(-
     x21)*POWER(x75,4) + sqr(-x21)*POWER(x76,4) + sqr(-x21)*POWER(x77,4) + sqr(
     -x21)*POWER(x78,4) + sqr(-x21)*POWER(x79,4) + sqr(-x21)*POWER(x80,4) + 
     sqr(-x21)*POWER(x81,4) + sqr(-x21)*POWER(x82,4) + sqr(-x21)*POWER(x83,4)
      + sqr(-x21)*POWER(x84,4) + sqr(-x21)*POWER(x85,4) + sqr(-x21)*POWER(x86,4
     ) + sqr(-x21)*POWER(x87,4) + sqr(-x21)*POWER(x88,4) + sqr(-x21)*POWER(x89,
     4) + sqr(-x21)*POWER(x90,4) + sqr(-x21)*POWER(x91,4) + sqr(-x21)*POWER(x92
     ,4) + sqr(-x21)*POWER(x93,4) + sqr(-x21)*POWER(x94,4) + sqr(-x21)*POWER(
     x95,4) + sqr(-x21)*POWER(x96,4) + sqr(-x21)*POWER(x97,4) + sqr(-x21)*
     POWER(x98,4) + sqr(-x21)*POWER(x99,4) + sqr(-x21)*POWER(x100,4) + sqr(-x22
     )*POWER(x1,4) + sqr(-x22)*POWER(x2,4) + sqr(-x22)*POWER(x3,4) + sqr(-x22)*
     POWER(x4,4) + sqr(-x22)*POWER(x5,4) + sqr(-x22)*POWER(x6,4) + sqr(-x22)*
     POWER(x7,4) + sqr(-x22)*POWER(x8,4) + sqr(-x22)*POWER(x9,4) + sqr(-x22)*
     POWER(x10,4) + sqr(-x22)*POWER(x11,4) + sqr(-x22)*POWER(x12,4) + sqr(-x22)
     *POWER(x13,4) + sqr(-x22)*POWER(x14,4) + sqr(-x22)*POWER(x15,4) + sqr(-x22
     )*POWER(x16,4) + sqr(-x22)*POWER(x17,4) + sqr(-x22)*POWER(x18,4) + sqr(-
     x22)*POWER(x19,4) + sqr(-x22)*POWER(x20,4) + sqr(-x22)*POWER(x21,4) + sqr(
     -x22)*POWER(x22,4) + sqr(-x22)*POWER(x23,4) + sqr(-x22)*POWER(x24,4) + 
     sqr(-x22)*POWER(x25,4) + sqr(-x22)*POWER(x26,4) + sqr(-x22)*POWER(x27,4)
      + sqr(-x22)*POWER(x28,4) + sqr(-x22)*POWER(x29,4) + sqr(-x22)*POWER(x30,4
     ) + sqr(-x22)*POWER(x31,4) + sqr(-x22)*POWER(x32,4) + sqr(-x22)*POWER(x33,
     4) + sqr(-x22)*POWER(x34,4) + sqr(-x22)*POWER(x35,4) + sqr(-x22)*POWER(x36
     ,4) + sqr(-x22)*POWER(x37,4) + sqr(-x22)*POWER(x38,4) + sqr(-x22)*POWER(
     x39,4) + sqr(-x22)*POWER(x40,4) + sqr(-x22)*POWER(x41,4) + sqr(-x22)*
     POWER(x42,4) + sqr(-x22)*POWER(x43,4) + sqr(-x22)*POWER(x44,4) + sqr(-x22)
     *POWER(x45,4) + sqr(-x22)*POWER(x46,4) + sqr(-x22)*POWER(x47,4) + sqr(-x22
     )*POWER(x48,4) + sqr(-x22)*POWER(x49,4) + sqr(-x22)*POWER(x50,4) + sqr(-
     x22)*POWER(x51,4) + sqr(-x22)*POWER(x52,4) + sqr(-x22)*POWER(x53,4) + sqr(
     -x22)*POWER(x54,4) + sqr(-x22)*POWER(x55,4) + sqr(-x22)*POWER(x56,4) + 
     sqr(-x22)*POWER(x57,4) + sqr(-x22)*POWER(x58,4) + sqr(-x22)*POWER(x59,4)
      + sqr(-x22)*POWER(x60,4) + sqr(-x22)*POWER(x61,4) + sqr(-x22)*POWER(x62,4
     ) + sqr(-x22)*POWER(x63,4) + sqr(-x22)*POWER(x64,4) + sqr(-x22)*POWER(x65,
     4) + sqr(-x22)*POWER(x66,4) + sqr(-x22)*POWER(x67,4) + sqr(-x22)*POWER(x68
     ,4) + sqr(-x22)*POWER(x69,4) + sqr(-x22)*POWER(x70,4) + sqr(-x22)*POWER(
     x71,4) + sqr(-x22)*POWER(x72,4) + sqr(-x22)*POWER(x73,4) + sqr(-x22)*
     POWER(x74,4) + sqr(-x22)*POWER(x75,4) + sqr(-x22)*POWER(x76,4) + sqr(-x22)
     *POWER(x77,4) + sqr(-x22)*POWER(x78,4) + sqr(-x22)*POWER(x79,4) + sqr(-x22
     )*POWER(x80,4) + sqr(-x22)*POWER(x81,4) + sqr(-x22)*POWER(x82,4) + sqr(-
     x22)*POWER(x83,4) + sqr(-x22)*POWER(x84,4) + sqr(-x22)*POWER(x85,4) + sqr(
     -x22)*POWER(x86,4) + sqr(-x22)*POWER(x87,4) + sqr(-x22)*POWER(x88,4) + 
     sqr(-x22)*POWER(x89,4) + sqr(-x22)*POWER(x90,4) + sqr(-x22)*POWER(x91,4)
      + sqr(-x22)*POWER(x92,4) + sqr(-x22)*POWER(x93,4) + sqr(-x22)*POWER(x94,4
     ) + sqr(-x22)*POWER(x95,4) + sqr(-x22)*POWER(x96,4) + sqr(-x22)*POWER(x97,
     4) + sqr(-x22)*POWER(x98,4) + sqr(-x22)*POWER(x99,4) + sqr(-x22)*POWER(
     x100,4) + sqr(-x23)*POWER(x1,4) + sqr(-x23)*POWER(x2,4) + sqr(-x23)*POWER(
     x3,4) + sqr(-x23)*POWER(x4,4) + sqr(-x23)*POWER(x5,4) + sqr(-x23)*POWER(x6
     ,4) + sqr(-x23)*POWER(x7,4) + sqr(-x23)*POWER(x8,4) + sqr(-x23)*POWER(x9,4
     ) + sqr(-x23)*POWER(x10,4) + sqr(-x23)*POWER(x11,4) + sqr(-x23)*POWER(x12,
     4) + sqr(-x23)*POWER(x13,4) + sqr(-x23)*POWER(x14,4) + sqr(-x23)*POWER(x15
     ,4) + sqr(-x23)*POWER(x16,4) + sqr(-x23)*POWER(x17,4) + sqr(-x23)*POWER(
     x18,4) + sqr(-x23)*POWER(x19,4) + sqr(-x23)*POWER(x20,4) + sqr(-x23)*
     POWER(x21,4) + sqr(-x23)*POWER(x22,4) + sqr(-x23)*POWER(x23,4) + sqr(-x23)
     *POWER(x24,4) + sqr(-x23)*POWER(x25,4) + sqr(-x23)*POWER(x26,4) + sqr(-x23
     )*POWER(x27,4) + sqr(-x23)*POWER(x28,4) + sqr(-x23)*POWER(x29,4) + sqr(-
     x23)*POWER(x30,4) + sqr(-x23)*POWER(x31,4) + sqr(-x23)*POWER(x32,4) + sqr(
     -x23)*POWER(x33,4) + sqr(-x23)*POWER(x34,4) + sqr(-x23)*POWER(x35,4) + 
     sqr(-x23)*POWER(x36,4) + sqr(-x23)*POWER(x37,4) + sqr(-x23)*POWER(x38,4)
      + sqr(-x23)*POWER(x39,4) + sqr(-x23)*POWER(x40,4) + sqr(-x23)*POWER(x41,4
     ) + sqr(-x23)*POWER(x42,4) + sqr(-x23)*POWER(x43,4) + sqr(-x23)*POWER(x44,
     4) + sqr(-x23)*POWER(x45,4) + sqr(-x23)*POWER(x46,4) + sqr(-x23)*POWER(x47
     ,4) + sqr(-x23)*POWER(x48,4) + sqr(-x23)*POWER(x49,4) + sqr(-x23)*POWER(
     x50,4) + sqr(-x23)*POWER(x51,4) + sqr(-x23)*POWER(x52,4) + sqr(-x23)*
     POWER(x53,4) + sqr(-x23)*POWER(x54,4) + sqr(-x23)*POWER(x55,4) + sqr(-x23)
     *POWER(x56,4) + sqr(-x23)*POWER(x57,4) + sqr(-x23)*POWER(x58,4) + sqr(-x23
     )*POWER(x59,4) + sqr(-x23)*POWER(x60,4) + sqr(-x23)*POWER(x61,4) + sqr(-
     x23)*POWER(x62,4) + sqr(-x23)*POWER(x63,4) + sqr(-x23)*POWER(x64,4) + sqr(
     -x23)*POWER(x65,4) + sqr(-x23)*POWER(x66,4) + sqr(-x23)*POWER(x67,4) + 
     sqr(-x23)*POWER(x68,4) + sqr(-x23)*POWER(x69,4) + sqr(-x23)*POWER(x70,4)
      + sqr(-x23)*POWER(x71,4) + sqr(-x23)*POWER(x72,4) + sqr(-x23)*POWER(x73,4
     ) + sqr(-x23)*POWER(x74,4) + sqr(-x23)*POWER(x75,4) + sqr(-x23)*POWER(x76,
     4) + sqr(-x23)*POWER(x77,4) + sqr(-x23)*POWER(x78,4) + sqr(-x23)*POWER(x79
     ,4) + sqr(-x23)*POWER(x80,4) + sqr(-x23)*POWER(x81,4) + sqr(-x23)*POWER(
     x82,4) + sqr(-x23)*POWER(x83,4) + sqr(-x23)*POWER(x84,4) + sqr(-x23)*
     POWER(x85,4) + sqr(-x23)*POWER(x86,4) + sqr(-x23)*POWER(x87,4) + sqr(-x23)
     *POWER(x88,4) + sqr(-x23)*POWER(x89,4) + sqr(-x23)*POWER(x90,4) + sqr(-x23
     )*POWER(x91,4) + sqr(-x23)*POWER(x92,4) + sqr(-x23)*POWER(x93,4) + sqr(-
     x23)*POWER(x94,4) + sqr(-x23)*POWER(x95,4) + sqr(-x23)*POWER(x96,4) + sqr(
     -x23)*POWER(x97,4) + sqr(-x23)*POWER(x98,4) + sqr(-x23)*POWER(x99,4) + 
     sqr(-x23)*POWER(x100,4) + sqr(-x24)*POWER(x1,4) + sqr(-x24)*POWER(x2,4) + 
     sqr(-x24)*POWER(x3,4) + sqr(-x24)*POWER(x4,4) + sqr(-x24)*POWER(x5,4) + 
     sqr(-x24)*POWER(x6,4) + sqr(-x24)*POWER(x7,4) + sqr(-x24)*POWER(x8,4) + 
     sqr(-x24)*POWER(x9,4) + sqr(-x24)*POWER(x10,4) + sqr(-x24)*POWER(x11,4) + 
     sqr(-x24)*POWER(x12,4) + sqr(-x24)*POWER(x13,4) + sqr(-x24)*POWER(x14,4)
      + sqr(-x24)*POWER(x15,4) + sqr(-x24)*POWER(x16,4) + sqr(-x24)*POWER(x17,4
     ) + sqr(-x24)*POWER(x18,4) + sqr(-x24)*POWER(x19,4) + sqr(-x24)*POWER(x20,
     4) + sqr(-x24)*POWER(x21,4) + sqr(-x24)*POWER(x22,4) + sqr(-x24)*POWER(x23
     ,4) + sqr(-x24)*POWER(x24,4) + sqr(-x24)*POWER(x25,4) + sqr(-x24)*POWER(
     x26,4) + sqr(-x24)*POWER(x27,4) + sqr(-x24)*POWER(x28,4) + sqr(-x24)*
     POWER(x29,4) + sqr(-x24)*POWER(x30,4) + sqr(-x24)*POWER(x31,4) + sqr(-x24)
     *POWER(x32,4) + sqr(-x24)*POWER(x33,4) + sqr(-x24)*POWER(x34,4) + sqr(-x24
     )*POWER(x35,4) + sqr(-x24)*POWER(x36,4) + sqr(-x24)*POWER(x37,4) + sqr(-
     x24)*POWER(x38,4) + sqr(-x24)*POWER(x39,4) + sqr(-x24)*POWER(x40,4) + sqr(
     -x24)*POWER(x41,4) + sqr(-x24)*POWER(x42,4) + sqr(-x24)*POWER(x43,4) + 
     sqr(-x24)*POWER(x44,4) + sqr(-x24)*POWER(x45,4) + sqr(-x24)*POWER(x46,4)
      + sqr(-x24)*POWER(x47,4) + sqr(-x24)*POWER(x48,4) + sqr(-x24)*POWER(x49,4
     ) + sqr(-x24)*POWER(x50,4) + sqr(-x24)*POWER(x51,4) + sqr(-x24)*POWER(x52,
     4) + sqr(-x24)*POWER(x53,4) + sqr(-x24)*POWER(x54,4) + sqr(-x24)*POWER(x55
     ,4) + sqr(-x24)*POWER(x56,4) + sqr(-x24)*POWER(x57,4) + sqr(-x24)*POWER(
     x58,4) + sqr(-x24)*POWER(x59,4) + sqr(-x24)*POWER(x60,4) + sqr(-x24)*
     POWER(x61,4) + sqr(-x24)*POWER(x62,4) + sqr(-x24)*POWER(x63,4) + sqr(-x24)
     *POWER(x64,4) + sqr(-x24)*POWER(x65,4) + sqr(-x24)*POWER(x66,4) + sqr(-x24
     )*POWER(x67,4) + sqr(-x24)*POWER(x68,4) + sqr(-x24)*POWER(x69,4) + sqr(-
     x24)*POWER(x70,4) + sqr(-x24)*POWER(x71,4) + sqr(-x24)*POWER(x72,4) + sqr(
     -x24)*POWER(x73,4) + sqr(-x24)*POWER(x74,4) + sqr(-x24)*POWER(x75,4) + 
     sqr(-x24)*POWER(x76,4) + sqr(-x24)*POWER(x77,4) + sqr(-x24)*POWER(x78,4)
      + sqr(-x24)*POWER(x79,4) + sqr(-x24)*POWER(x80,4) + sqr(-x24)*POWER(x81,4
     ) + sqr(-x24)*POWER(x82,4) + sqr(-x24)*POWER(x83,4) + sqr(-x24)*POWER(x84,
     4) + sqr(-x24)*POWER(x85,4) + sqr(-x24)*POWER(x86,4) + sqr(-x24)*POWER(x87
     ,4) + sqr(-x24)*POWER(x88,4) + sqr(-x24)*POWER(x89,4) + sqr(-x24)*POWER(
     x90,4) + sqr(-x24)*POWER(x91,4) + sqr(-x24)*POWER(x92,4) + sqr(-x24)*
     POWER(x93,4) + sqr(-x24)*POWER(x94,4) + sqr(-x24)*POWER(x95,4) + sqr(-x24)
     *POWER(x96,4) + sqr(-x24)*POWER(x97,4) + sqr(-x24)*POWER(x98,4) + sqr(-x24
     )*POWER(x99,4) + sqr(-x24)*POWER(x100,4) + sqr(-x25)*POWER(x1,4) + sqr(-
     x25)*POWER(x2,4) + sqr(-x25)*POWER(x3,4) + sqr(-x25)*POWER(x4,4) + sqr(-
     x25)*POWER(x5,4) + sqr(-x25)*POWER(x6,4) + sqr(-x25)*POWER(x7,4) + sqr(-
     x25)*POWER(x8,4) + sqr(-x25)*POWER(x9,4) + sqr(-x25)*POWER(x10,4) + sqr(-
     x25)*POWER(x11,4) + sqr(-x25)*POWER(x12,4) + sqr(-x25)*POWER(x13,4) + sqr(
     -x25)*POWER(x14,4) + sqr(-x25)*POWER(x15,4) + sqr(-x25)*POWER(x16,4) + 
     sqr(-x25)*POWER(x17,4) + sqr(-x25)*POWER(x18,4) + sqr(-x25)*POWER(x19,4)
      + sqr(-x25)*POWER(x20,4) + sqr(-x25)*POWER(x21,4) + sqr(-x25)*POWER(x22,4
     ) + sqr(-x25)*POWER(x23,4) + sqr(-x25)*POWER(x24,4) + sqr(-x25)*POWER(x25,
     4) + sqr(-x25)*POWER(x26,4) + sqr(-x25)*POWER(x27,4) + sqr(-x25)*POWER(x28
     ,4) + sqr(-x25)*POWER(x29,4) + sqr(-x25)*POWER(x30,4) + sqr(-x25)*POWER(
     x31,4) + sqr(-x25)*POWER(x32,4) + sqr(-x25)*POWER(x33,4) + sqr(-x25)*
     POWER(x34,4) + sqr(-x25)*POWER(x35,4) + sqr(-x25)*POWER(x36,4) + sqr(-x25)
     *POWER(x37,4) + sqr(-x25)*POWER(x38,4) + sqr(-x25)*POWER(x39,4) + sqr(-x25
     )*POWER(x40,4) + sqr(-x25)*POWER(x41,4) + sqr(-x25)*POWER(x42,4) + sqr(-
     x25)*POWER(x43,4) + sqr(-x25)*POWER(x44,4) + sqr(-x25)*POWER(x45,4) + sqr(
     -x25)*POWER(x46,4) + sqr(-x25)*POWER(x47,4) + sqr(-x25)*POWER(x48,4) + 
     sqr(-x25)*POWER(x49,4) + sqr(-x25)*POWER(x50,4) + sqr(-x25)*POWER(x51,4)
      + sqr(-x25)*POWER(x52,4) + sqr(-x25)*POWER(x53,4) + sqr(-x25)*POWER(x54,4
     ) + sqr(-x25)*POWER(x55,4) + sqr(-x25)*POWER(x56,4) + sqr(-x25)*POWER(x57,
     4) + sqr(-x25)*POWER(x58,4) + sqr(-x25)*POWER(x59,4) + sqr(-x25)*POWER(x60
     ,4) + sqr(-x25)*POWER(x61,4) + sqr(-x25)*POWER(x62,4) + sqr(-x25)*POWER(
     x63,4) + sqr(-x25)*POWER(x64,4) + sqr(-x25)*POWER(x65,4) + sqr(-x25)*
     POWER(x66,4) + sqr(-x25)*POWER(x67,4) + sqr(-x25)*POWER(x68,4) + sqr(-x25)
     *POWER(x69,4) + sqr(-x25)*POWER(x70,4) + sqr(-x25)*POWER(x71,4) + sqr(-x25
     )*POWER(x72,4) + sqr(-x25)*POWER(x73,4) + sqr(-x25)*POWER(x74,4) + sqr(-
     x25)*POWER(x75,4) + sqr(-x25)*POWER(x76,4) + sqr(-x25)*POWER(x77,4) + sqr(
     -x25)*POWER(x78,4) + sqr(-x25)*POWER(x79,4) + sqr(-x25)*POWER(x80,4) + 
     sqr(-x25)*POWER(x81,4) + sqr(-x25)*POWER(x82,4) + sqr(-x25)*POWER(x83,4)
      + sqr(-x25)*POWER(x84,4) + sqr(-x25)*POWER(x85,4) + sqr(-x25)*POWER(x86,4
     ) + sqr(-x25)*POWER(x87,4) + sqr(-x25)*POWER(x88,4) + sqr(-x25)*POWER(x89,
     4) + sqr(-x25)*POWER(x90,4) + sqr(-x25)*POWER(x91,4) + sqr(-x25)*POWER(x92
     ,4) + sqr(-x25)*POWER(x93,4) + sqr(-x25)*POWER(x94,4) + sqr(-x25)*POWER(
     x95,4) + sqr(-x25)*POWER(x96,4) + sqr(-x25)*POWER(x97,4) + sqr(-x25)*
     POWER(x98,4) + sqr(-x25)*POWER(x99,4) + sqr(-x25)*POWER(x100,4) + sqr(-x26
     )*POWER(x1,4) + sqr(-x26)*POWER(x2,4) + sqr(-x26)*POWER(x3,4) + sqr(-x26)*
     POWER(x4,4) + sqr(-x26)*POWER(x5,4) + sqr(-x26)*POWER(x6,4) + sqr(-x26)*
     POWER(x7,4) + sqr(-x26)*POWER(x8,4) + sqr(-x26)*POWER(x9,4) + sqr(-x26)*
     POWER(x10,4) + sqr(-x26)*POWER(x11,4) + sqr(-x26)*POWER(x12,4) + sqr(-x26)
     *POWER(x13,4) + sqr(-x26)*POWER(x14,4) + sqr(-x26)*POWER(x15,4) + sqr(-x26
     )*POWER(x16,4) + sqr(-x26)*POWER(x17,4) + sqr(-x26)*POWER(x18,4) + sqr(-
     x26)*POWER(x19,4) + sqr(-x26)*POWER(x20,4) + sqr(-x26)*POWER(x21,4) + sqr(
     -x26)*POWER(x22,4) + sqr(-x26)*POWER(x23,4) + sqr(-x26)*POWER(x24,4) + 
     sqr(-x26)*POWER(x25,4) + sqr(-x26)*POWER(x26,4) + sqr(-x26)*POWER(x27,4)
      + sqr(-x26)*POWER(x28,4) + sqr(-x26)*POWER(x29,4) + sqr(-x26)*POWER(x30,4
     ) + sqr(-x26)*POWER(x31,4) + sqr(-x26)*POWER(x32,4) + sqr(-x26)*POWER(x33,
     4) + sqr(-x26)*POWER(x34,4) + sqr(-x26)*POWER(x35,4) + sqr(-x26)*POWER(x36
     ,4) + sqr(-x26)*POWER(x37,4) + sqr(-x26)*POWER(x38,4) + sqr(-x26)*POWER(
     x39,4) + sqr(-x26)*POWER(x40,4) + sqr(-x26)*POWER(x41,4) + sqr(-x26)*
     POWER(x42,4) + sqr(-x26)*POWER(x43,4) + sqr(-x26)*POWER(x44,4) + sqr(-x26)
     *POWER(x45,4) + sqr(-x26)*POWER(x46,4) + sqr(-x26)*POWER(x47,4) + sqr(-x26
     )*POWER(x48,4) + sqr(-x26)*POWER(x49,4) + sqr(-x26)*POWER(x50,4) + sqr(-
     x26)*POWER(x51,4) + sqr(-x26)*POWER(x52,4) + sqr(-x26)*POWER(x53,4) + sqr(
     -x26)*POWER(x54,4) + sqr(-x26)*POWER(x55,4) + sqr(-x26)*POWER(x56,4) + 
     sqr(-x26)*POWER(x57,4) + sqr(-x26)*POWER(x58,4) + sqr(-x26)*POWER(x59,4)
      + sqr(-x26)*POWER(x60,4) + sqr(-x26)*POWER(x61,4) + sqr(-x26)*POWER(x62,4
     ) + sqr(-x26)*POWER(x63,4) + sqr(-x26)*POWER(x64,4) + sqr(-x26)*POWER(x65,
     4) + sqr(-x26)*POWER(x66,4) + sqr(-x26)*POWER(x67,4) + sqr(-x26)*POWER(x68
     ,4) + sqr(-x26)*POWER(x69,4) + sqr(-x26)*POWER(x70,4) + sqr(-x26)*POWER(
     x71,4) + sqr(-x26)*POWER(x72,4) + sqr(-x26)*POWER(x73,4) + sqr(-x26)*
     POWER(x74,4) + sqr(-x26)*POWER(x75,4) + sqr(-x26)*POWER(x76,4) + sqr(-x26)
     *POWER(x77,4) + sqr(-x26)*POWER(x78,4) + sqr(-x26)*POWER(x79,4) + sqr(-x26
     )*POWER(x80,4) + sqr(-x26)*POWER(x81,4) + sqr(-x26)*POWER(x82,4) + sqr(-
     x26)*POWER(x83,4) + sqr(-x26)*POWER(x84,4) + sqr(-x26)*POWER(x85,4) + sqr(
     -x26)*POWER(x86,4) + sqr(-x26)*POWER(x87,4) + sqr(-x26)*POWER(x88,4) + 
     sqr(-x26)*POWER(x89,4) + sqr(-x26)*POWER(x90,4) + sqr(-x26)*POWER(x91,4)
      + sqr(-x26)*POWER(x92,4) + sqr(-x26)*POWER(x93,4) + sqr(-x26)*POWER(x94,4
     ) + sqr(-x26)*POWER(x95,4) + sqr(-x26)*POWER(x96,4) + sqr(-x26)*POWER(x97,
     4) + sqr(-x26)*POWER(x98,4) + sqr(-x26)*POWER(x99,4) + sqr(-x26)*POWER(
     x100,4) + sqr(-x27)*POWER(x1,4) + sqr(-x27)*POWER(x2,4) + sqr(-x27)*POWER(
     x3,4) + sqr(-x27)*POWER(x4,4) + sqr(-x27)*POWER(x5,4) + sqr(-x27)*POWER(x6
     ,4) + sqr(-x27)*POWER(x7,4) + sqr(-x27)*POWER(x8,4) + sqr(-x27)*POWER(x9,4
     ) + sqr(-x27)*POWER(x10,4) + sqr(-x27)*POWER(x11,4) + sqr(-x27)*POWER(x12,
     4) + sqr(-x27)*POWER(x13,4) + sqr(-x27)*POWER(x14,4) + sqr(-x27)*POWER(x15
     ,4) + sqr(-x27)*POWER(x16,4) + sqr(-x27)*POWER(x17,4) + sqr(-x27)*POWER(
     x18,4) + sqr(-x27)*POWER(x19,4) + sqr(-x27)*POWER(x20,4) + sqr(-x27)*
     POWER(x21,4) + sqr(-x27)*POWER(x22,4) + sqr(-x27)*POWER(x23,4) + sqr(-x27)
     *POWER(x24,4) + sqr(-x27)*POWER(x25,4) + sqr(-x27)*POWER(x26,4) + sqr(-x27
     )*POWER(x27,4) + sqr(-x27)*POWER(x28,4) + sqr(-x27)*POWER(x29,4) + sqr(-
     x27)*POWER(x30,4) + sqr(-x27)*POWER(x31,4) + sqr(-x27)*POWER(x32,4) + sqr(
     -x27)*POWER(x33,4) + sqr(-x27)*POWER(x34,4) + sqr(-x27)*POWER(x35,4) + 
     sqr(-x27)*POWER(x36,4) + sqr(-x27)*POWER(x37,4) + sqr(-x27)*POWER(x38,4)
      + sqr(-x27)*POWER(x39,4) + sqr(-x27)*POWER(x40,4) + sqr(-x27)*POWER(x41,4
     ) + sqr(-x27)*POWER(x42,4) + sqr(-x27)*POWER(x43,4) + sqr(-x27)*POWER(x44,
     4) + sqr(-x27)*POWER(x45,4) + sqr(-x27)*POWER(x46,4) + sqr(-x27)*POWER(x47
     ,4) + sqr(-x27)*POWER(x48,4) + sqr(-x27)*POWER(x49,4) + sqr(-x27)*POWER(
     x50,4) + sqr(-x27)*POWER(x51,4) + sqr(-x27)*POWER(x52,4) + sqr(-x27)*
     POWER(x53,4) + sqr(-x27)*POWER(x54,4) + sqr(-x27)*POWER(x55,4) + sqr(-x27)
     *POWER(x56,4) + sqr(-x27)*POWER(x57,4) + sqr(-x27)*POWER(x58,4) + sqr(-x27
     )*POWER(x59,4) + sqr(-x27)*POWER(x60,4) + sqr(-x27)*POWER(x61,4) + sqr(-
     x27)*POWER(x62,4) + sqr(-x27)*POWER(x63,4) + sqr(-x27)*POWER(x64,4) + sqr(
     -x27)*POWER(x65,4) + sqr(-x27)*POWER(x66,4) + sqr(-x27)*POWER(x67,4) + 
     sqr(-x27)*POWER(x68,4) + sqr(-x27)*POWER(x69,4) + sqr(-x27)*POWER(x70,4)
      + sqr(-x27)*POWER(x71,4) + sqr(-x27)*POWER(x72,4) + sqr(-x27)*POWER(x73,4
     ) + sqr(-x27)*POWER(x74,4) + sqr(-x27)*POWER(x75,4) + sqr(-x27)*POWER(x76,
     4) + sqr(-x27)*POWER(x77,4) + sqr(-x27)*POWER(x78,4) + sqr(-x27)*POWER(x79
     ,4) + sqr(-x27)*POWER(x80,4) + sqr(-x27)*POWER(x81,4) + sqr(-x27)*POWER(
     x82,4) + sqr(-x27)*POWER(x83,4) + sqr(-x27)*POWER(x84,4) + sqr(-x27)*
     POWER(x85,4) + sqr(-x27)*POWER(x86,4) + sqr(-x27)*POWER(x87,4) + sqr(-x27)
     *POWER(x88,4) + sqr(-x27)*POWER(x89,4) + sqr(-x27)*POWER(x90,4) + sqr(-x27
     )*POWER(x91,4) + sqr(-x27)*POWER(x92,4) + sqr(-x27)*POWER(x93,4) + sqr(-
     x27)*POWER(x94,4) + sqr(-x27)*POWER(x95,4) + sqr(-x27)*POWER(x96,4) + sqr(
     -x27)*POWER(x97,4) + sqr(-x27)*POWER(x98,4) + sqr(-x27)*POWER(x99,4) + 
     sqr(-x27)*POWER(x100,4) + sqr(-x28)*POWER(x1,4) + sqr(-x28)*POWER(x2,4) + 
     sqr(-x28)*POWER(x3,4) + sqr(-x28)*POWER(x4,4) + sqr(-x28)*POWER(x5,4) + 
     sqr(-x28)*POWER(x6,4) + sqr(-x28)*POWER(x7,4) + sqr(-x28)*POWER(x8,4) + 
     sqr(-x28)*POWER(x9,4) + sqr(-x28)*POWER(x10,4) + sqr(-x28)*POWER(x11,4) + 
     sqr(-x28)*POWER(x12,4) + sqr(-x28)*POWER(x13,4) + sqr(-x28)*POWER(x14,4)
      + sqr(-x28)*POWER(x15,4) + sqr(-x28)*POWER(x16,4) + sqr(-x28)*POWER(x17,4
     ) + sqr(-x28)*POWER(x18,4) + sqr(-x28)*POWER(x19,4) + sqr(-x28)*POWER(x20,
     4) + sqr(-x28)*POWER(x21,4) + sqr(-x28)*POWER(x22,4) + sqr(-x28)*POWER(x23
     ,4) + sqr(-x28)*POWER(x24,4) + sqr(-x28)*POWER(x25,4) + sqr(-x28)*POWER(
     x26,4) + sqr(-x28)*POWER(x27,4) + sqr(-x28)*POWER(x28,4) + sqr(-x28)*
     POWER(x29,4) + sqr(-x28)*POWER(x30,4) + sqr(-x28)*POWER(x31,4) + sqr(-x28)
     *POWER(x32,4) + sqr(-x28)*POWER(x33,4) + sqr(-x28)*POWER(x34,4) + sqr(-x28
     )*POWER(x35,4) + sqr(-x28)*POWER(x36,4) + sqr(-x28)*POWER(x37,4) + sqr(-
     x28)*POWER(x38,4) + sqr(-x28)*POWER(x39,4) + sqr(-x28)*POWER(x40,4) + sqr(
     -x28)*POWER(x41,4) + sqr(-x28)*POWER(x42,4) + sqr(-x28)*POWER(x43,4) + 
     sqr(-x28)*POWER(x44,4) + sqr(-x28)*POWER(x45,4) + sqr(-x28)*POWER(x46,4)
      + sqr(-x28)*POWER(x47,4) + sqr(-x28)*POWER(x48,4) + sqr(-x28)*POWER(x49,4
     ) + sqr(-x28)*POWER(x50,4) + sqr(-x28)*POWER(x51,4) + sqr(-x28)*POWER(x52,
     4) + sqr(-x28)*POWER(x53,4) + sqr(-x28)*POWER(x54,4) + sqr(-x28)*POWER(x55
     ,4) + sqr(-x28)*POWER(x56,4) + sqr(-x28)*POWER(x57,4) + sqr(-x28)*POWER(
     x58,4) + sqr(-x28)*POWER(x59,4) + sqr(-x28)*POWER(x60,4) + sqr(-x28)*
     POWER(x61,4) + sqr(-x28)*POWER(x62,4) + sqr(-x28)*POWER(x63,4) + sqr(-x28)
     *POWER(x64,4) + sqr(-x28)*POWER(x65,4) + sqr(-x28)*POWER(x66,4) + sqr(-x28
     )*POWER(x67,4) + sqr(-x28)*POWER(x68,4) + sqr(-x28)*POWER(x69,4) + sqr(-
     x28)*POWER(x70,4) + sqr(-x28)*POWER(x71,4) + sqr(-x28)*POWER(x72,4) + sqr(
     -x28)*POWER(x73,4) + sqr(-x28)*POWER(x74,4) + sqr(-x28)*POWER(x75,4) + 
     sqr(-x28)*POWER(x76,4) + sqr(-x28)*POWER(x77,4) + sqr(-x28)*POWER(x78,4)
      + sqr(-x28)*POWER(x79,4) + sqr(-x28)*POWER(x80,4) + sqr(-x28)*POWER(x81,4
     ) + sqr(-x28)*POWER(x82,4) + sqr(-x28)*POWER(x83,4) + sqr(-x28)*POWER(x84,
     4) + sqr(-x28)*POWER(x85,4) + sqr(-x28)*POWER(x86,4) + sqr(-x28)*POWER(x87
     ,4) + sqr(-x28)*POWER(x88,4) + sqr(-x28)*POWER(x89,4) + sqr(-x28)*POWER(
     x90,4) + sqr(-x28)*POWER(x91,4) + sqr(-x28)*POWER(x92,4) + sqr(-x28)*
     POWER(x93,4) + sqr(-x28)*POWER(x94,4) + sqr(-x28)*POWER(x95,4) + sqr(-x28)
     *POWER(x96,4) + sqr(-x28)*POWER(x97,4) + sqr(-x28)*POWER(x98,4) + sqr(-x28
     )*POWER(x99,4) + sqr(-x28)*POWER(x100,4) + sqr(-x29)*POWER(x1,4) + sqr(-
     x29)*POWER(x2,4) + sqr(-x29)*POWER(x3,4) + sqr(-x29)*POWER(x4,4) + sqr(-
     x29)*POWER(x5,4) + sqr(-x29)*POWER(x6,4) + sqr(-x29)*POWER(x7,4) + sqr(-
     x29)*POWER(x8,4) + sqr(-x29)*POWER(x9,4) + sqr(-x29)*POWER(x10,4) + sqr(-
     x29)*POWER(x11,4) + sqr(-x29)*POWER(x12,4) + sqr(-x29)*POWER(x13,4) + sqr(
     -x29)*POWER(x14,4) + sqr(-x29)*POWER(x15,4) + sqr(-x29)*POWER(x16,4) + 
     sqr(-x29)*POWER(x17,4) + sqr(-x29)*POWER(x18,4) + sqr(-x29)*POWER(x19,4)
      + sqr(-x29)*POWER(x20,4) + sqr(-x29)*POWER(x21,4) + sqr(-x29)*POWER(x22,4
     ) + sqr(-x29)*POWER(x23,4) + sqr(-x29)*POWER(x24,4) + sqr(-x29)*POWER(x25,
     4) + sqr(-x29)*POWER(x26,4) + sqr(-x29)*POWER(x27,4) + sqr(-x29)*POWER(x28
     ,4) + sqr(-x29)*POWER(x29,4) + sqr(-x29)*POWER(x30,4) + sqr(-x29)*POWER(
     x31,4) + sqr(-x29)*POWER(x32,4) + sqr(-x29)*POWER(x33,4) + sqr(-x29)*
     POWER(x34,4) + sqr(-x29)*POWER(x35,4) + sqr(-x29)*POWER(x36,4) + sqr(-x29)
     *POWER(x37,4) + sqr(-x29)*POWER(x38,4) + sqr(-x29)*POWER(x39,4) + sqr(-x29
     )*POWER(x40,4) + sqr(-x29)*POWER(x41,4) + sqr(-x29)*POWER(x42,4) + sqr(-
     x29)*POWER(x43,4) + sqr(-x29)*POWER(x44,4) + sqr(-x29)*POWER(x45,4) + sqr(
     -x29)*POWER(x46,4) + sqr(-x29)*POWER(x47,4) + sqr(-x29)*POWER(x48,4) + 
     sqr(-x29)*POWER(x49,4) + sqr(-x29)*POWER(x50,4) + sqr(-x29)*POWER(x51,4)
      + sqr(-x29)*POWER(x52,4) + sqr(-x29)*POWER(x53,4) + sqr(-x29)*POWER(x54,4
     ) + sqr(-x29)*POWER(x55,4) + sqr(-x29)*POWER(x56,4) + sqr(-x29)*POWER(x57,
     4) + sqr(-x29)*POWER(x58,4) + sqr(-x29)*POWER(x59,4) + sqr(-x29)*POWER(x60
     ,4) + sqr(-x29)*POWER(x61,4) + sqr(-x29)*POWER(x62,4) + sqr(-x29)*POWER(
     x63,4) + sqr(-x29)*POWER(x64,4) + sqr(-x29)*POWER(x65,4) + sqr(-x29)*
     POWER(x66,4) + sqr(-x29)*POWER(x67,4) + sqr(-x29)*POWER(x68,4) + sqr(-x29)
     *POWER(x69,4) + sqr(-x29)*POWER(x70,4) + sqr(-x29)*POWER(x71,4) + sqr(-x29
     )*POWER(x72,4) + sqr(-x29)*POWER(x73,4) + sqr(-x29)*POWER(x74,4) + sqr(-
     x29)*POWER(x75,4) + sqr(-x29)*POWER(x76,4) + sqr(-x29)*POWER(x77,4) + sqr(
     -x29)*POWER(x78,4) + sqr(-x29)*POWER(x79,4) + sqr(-x29)*POWER(x80,4) + 
     sqr(-x29)*POWER(x81,4) + sqr(-x29)*POWER(x82,4) + sqr(-x29)*POWER(x83,4)
      + sqr(-x29)*POWER(x84,4) + sqr(-x29)*POWER(x85,4) + sqr(-x29)*POWER(x86,4
     ) + sqr(-x29)*POWER(x87,4) + sqr(-x29)*POWER(x88,4) + sqr(-x29)*POWER(x89,
     4) + sqr(-x29)*POWER(x90,4) + sqr(-x29)*POWER(x91,4) + sqr(-x29)*POWER(x92
     ,4) + sqr(-x29)*POWER(x93,4) + sqr(-x29)*POWER(x94,4) + sqr(-x29)*POWER(
     x95,4) + sqr(-x29)*POWER(x96,4) + sqr(-x29)*POWER(x97,4) + sqr(-x29)*
     POWER(x98,4) + sqr(-x29)*POWER(x99,4) + sqr(-x29)*POWER(x100,4) + sqr(-x30
     )*POWER(x1,4) + sqr(-x30)*POWER(x2,4) + sqr(-x30)*POWER(x3,4) + sqr(-x30)*
     POWER(x4,4) + sqr(-x30)*POWER(x5,4) + sqr(-x30)*POWER(x6,4) + sqr(-x30)*
     POWER(x7,4) + sqr(-x30)*POWER(x8,4) + sqr(-x30)*POWER(x9,4) + sqr(-x30)*
     POWER(x10,4) + sqr(-x30)*POWER(x11,4) + sqr(-x30)*POWER(x12,4) + sqr(-x30)
     *POWER(x13,4) + sqr(-x30)*POWER(x14,4) + sqr(-x30)*POWER(x15,4) + sqr(-x30
     )*POWER(x16,4) + sqr(-x30)*POWER(x17,4) + sqr(-x30)*POWER(x18,4) + sqr(-
     x30)*POWER(x19,4) + sqr(-x30)*POWER(x20,4) + sqr(-x30)*POWER(x21,4) + sqr(
     -x30)*POWER(x22,4) + sqr(-x30)*POWER(x23,4) + sqr(-x30)*POWER(x24,4) + 
     sqr(-x30)*POWER(x25,4) + sqr(-x30)*POWER(x26,4) + sqr(-x30)*POWER(x27,4)
      + sqr(-x30)*POWER(x28,4) + sqr(-x30)*POWER(x29,4) + sqr(-x30)*POWER(x30,4
     ) + sqr(-x30)*POWER(x31,4) + sqr(-x30)*POWER(x32,4) + sqr(-x30)*POWER(x33,
     4) + sqr(-x30)*POWER(x34,4) + sqr(-x30)*POWER(x35,4) + sqr(-x30)*POWER(x36
     ,4) + sqr(-x30)*POWER(x37,4) + sqr(-x30)*POWER(x38,4) + sqr(-x30)*POWER(
     x39,4) + sqr(-x30)*POWER(x40,4) + sqr(-x30)*POWER(x41,4) + sqr(-x30)*
     POWER(x42,4) + sqr(-x30)*POWER(x43,4) + sqr(-x30)*POWER(x44,4) + sqr(-x30)
     *POWER(x45,4) + sqr(-x30)*POWER(x46,4) + sqr(-x30)*POWER(x47,4) + sqr(-x30
     )*POWER(x48,4) + sqr(-x30)*POWER(x49,4) + sqr(-x30)*POWER(x50,4) + sqr(-
     x30)*POWER(x51,4) + sqr(-x30)*POWER(x52,4) + sqr(-x30)*POWER(x53,4) + sqr(
     -x30)*POWER(x54,4) + sqr(-x30)*POWER(x55,4) + sqr(-x30)*POWER(x56,4) + 
     sqr(-x30)*POWER(x57,4) + sqr(-x30)*POWER(x58,4) + sqr(-x30)*POWER(x59,4)
      + sqr(-x30)*POWER(x60,4) + sqr(-x30)*POWER(x61,4) + sqr(-x30)*POWER(x62,4
     ) + sqr(-x30)*POWER(x63,4) + sqr(-x30)*POWER(x64,4) + sqr(-x30)*POWER(x65,
     4) + sqr(-x30)*POWER(x66,4) + sqr(-x30)*POWER(x67,4) + sqr(-x30)*POWER(x68
     ,4) + sqr(-x30)*POWER(x69,4) + sqr(-x30)*POWER(x70,4) + sqr(-x30)*POWER(
     x71,4) + sqr(-x30)*POWER(x72,4) + sqr(-x30)*POWER(x73,4) + sqr(-x30)*
     POWER(x74,4) + sqr(-x30)*POWER(x75,4) + sqr(-x30)*POWER(x76,4) + sqr(-x30)
     *POWER(x77,4) + sqr(-x30)*POWER(x78,4) + sqr(-x30)*POWER(x79,4) + sqr(-x30
     )*POWER(x80,4) + sqr(-x30)*POWER(x81,4) + sqr(-x30)*POWER(x82,4) + sqr(-
     x30)*POWER(x83,4) + sqr(-x30)*POWER(x84,4) + sqr(-x30)*POWER(x85,4) + sqr(
     -x30)*POWER(x86,4) + sqr(-x30)*POWER(x87,4) + sqr(-x30)*POWER(x88,4) + 
     sqr(-x30)*POWER(x89,4) + sqr(-x30)*POWER(x90,4) + sqr(-x30)*POWER(x91,4)
      + sqr(-x30)*POWER(x92,4) + sqr(-x30)*POWER(x93,4) + sqr(-x30)*POWER(x94,4
     ) + sqr(-x30)*POWER(x95,4) + sqr(-x30)*POWER(x96,4) + sqr(-x30)*POWER(x97,
     4) + sqr(-x30)*POWER(x98,4) + sqr(-x30)*POWER(x99,4) + sqr(-x30)*POWER(
     x100,4) + sqr(-x31)*POWER(x1,4) + sqr(-x31)*POWER(x2,4) + sqr(-x31)*POWER(
     x3,4) + sqr(-x31)*POWER(x4,4) + sqr(-x31)*POWER(x5,4) + sqr(-x31)*POWER(x6
     ,4) + sqr(-x31)*POWER(x7,4) + sqr(-x31)*POWER(x8,4) + sqr(-x31)*POWER(x9,4
     ) + sqr(-x31)*POWER(x10,4) + sqr(-x31)*POWER(x11,4) + sqr(-x31)*POWER(x12,
     4) + sqr(-x31)*POWER(x13,4) + sqr(-x31)*POWER(x14,4) + sqr(-x31)*POWER(x15
     ,4) + sqr(-x31)*POWER(x16,4) + sqr(-x31)*POWER(x17,4) + sqr(-x31)*POWER(
     x18,4) + sqr(-x31)*POWER(x19,4) + sqr(-x31)*POWER(x20,4) + sqr(-x31)*
     POWER(x21,4) + sqr(-x31)*POWER(x22,4) + sqr(-x31)*POWER(x23,4) + sqr(-x31)
     *POWER(x24,4) + sqr(-x31)*POWER(x25,4) + sqr(-x31)*POWER(x26,4) + sqr(-x31
     )*POWER(x27,4) + sqr(-x31)*POWER(x28,4) + sqr(-x31)*POWER(x29,4) + sqr(-
     x31)*POWER(x30,4) + sqr(-x31)*POWER(x31,4) + sqr(-x31)*POWER(x32,4) + sqr(
     -x31)*POWER(x33,4) + sqr(-x31)*POWER(x34,4) + sqr(-x31)*POWER(x35,4) + 
     sqr(-x31)*POWER(x36,4) + sqr(-x31)*POWER(x37,4) + sqr(-x31)*POWER(x38,4)
      + sqr(-x31)*POWER(x39,4) + sqr(-x31)*POWER(x40,4) + sqr(-x31)*POWER(x41,4
     ) + sqr(-x31)*POWER(x42,4) + sqr(-x31)*POWER(x43,4) + sqr(-x31)*POWER(x44,
     4) + sqr(-x31)*POWER(x45,4) + sqr(-x31)*POWER(x46,4) + sqr(-x31)*POWER(x47
     ,4) + sqr(-x31)*POWER(x48,4) + sqr(-x31)*POWER(x49,4) + sqr(-x31)*POWER(
     x50,4) + sqr(-x31)*POWER(x51,4) + sqr(-x31)*POWER(x52,4) + sqr(-x31)*
     POWER(x53,4) + sqr(-x31)*POWER(x54,4) + sqr(-x31)*POWER(x55,4) + sqr(-x31)
     *POWER(x56,4) + sqr(-x31)*POWER(x57,4) + sqr(-x31)*POWER(x58,4) + sqr(-x31
     )*POWER(x59,4) + sqr(-x31)*POWER(x60,4) + sqr(-x31)*POWER(x61,4) + sqr(-
     x31)*POWER(x62,4) + sqr(-x31)*POWER(x63,4) + sqr(-x31)*POWER(x64,4) + sqr(
     -x31)*POWER(x65,4) + sqr(-x31)*POWER(x66,4) + sqr(-x31)*POWER(x67,4) + 
     sqr(-x31)*POWER(x68,4) + sqr(-x31)*POWER(x69,4) + sqr(-x31)*POWER(x70,4)
      + sqr(-x31)*POWER(x71,4) + sqr(-x31)*POWER(x72,4) + sqr(-x31)*POWER(x73,4
     ) + sqr(-x31)*POWER(x74,4) + sqr(-x31)*POWER(x75,4) + sqr(-x31)*POWER(x76,
     4) + sqr(-x31)*POWER(x77,4) + sqr(-x31)*POWER(x78,4) + sqr(-x31)*POWER(x79
     ,4) + sqr(-x31)*POWER(x80,4) + sqr(-x31)*POWER(x81,4) + sqr(-x31)*POWER(
     x82,4) + sqr(-x31)*POWER(x83,4) + sqr(-x31)*POWER(x84,4) + sqr(-x31)*
     POWER(x85,4) + sqr(-x31)*POWER(x86,4) + sqr(-x31)*POWER(x87,4) + sqr(-x31)
     *POWER(x88,4) + sqr(-x31)*POWER(x89,4) + sqr(-x31)*POWER(x90,4) + sqr(-x31
     )*POWER(x91,4) + sqr(-x31)*POWER(x92,4) + sqr(-x31)*POWER(x93,4) + sqr(-
     x31)*POWER(x94,4) + sqr(-x31)*POWER(x95,4) + sqr(-x31)*POWER(x96,4) + sqr(
     -x31)*POWER(x97,4) + sqr(-x31)*POWER(x98,4) + sqr(-x31)*POWER(x99,4) + 
     sqr(-x31)*POWER(x100,4) + sqr(-x32)*POWER(x1,4) + sqr(-x32)*POWER(x2,4) + 
     sqr(-x32)*POWER(x3,4) + sqr(-x32)*POWER(x4,4) + sqr(-x32)*POWER(x5,4) + 
     sqr(-x32)*POWER(x6,4) + sqr(-x32)*POWER(x7,4) + sqr(-x32)*POWER(x8,4) + 
     sqr(-x32)*POWER(x9,4) + sqr(-x32)*POWER(x10,4) + sqr(-x32)*POWER(x11,4) + 
     sqr(-x32)*POWER(x12,4) + sqr(-x32)*POWER(x13,4) + sqr(-x32)*POWER(x14,4)
      + sqr(-x32)*POWER(x15,4) + sqr(-x32)*POWER(x16,4) + sqr(-x32)*POWER(x17,4
     ) + sqr(-x32)*POWER(x18,4) + sqr(-x32)*POWER(x19,4) + sqr(-x32)*POWER(x20,
     4) + sqr(-x32)*POWER(x21,4) + sqr(-x32)*POWER(x22,4) + sqr(-x32)*POWER(x23
     ,4) + sqr(-x32)*POWER(x24,4) + sqr(-x32)*POWER(x25,4) + sqr(-x32)*POWER(
     x26,4) + sqr(-x32)*POWER(x27,4) + sqr(-x32)*POWER(x28,4) + sqr(-x32)*
     POWER(x29,4) + sqr(-x32)*POWER(x30,4) + sqr(-x32)*POWER(x31,4) + sqr(-x32)
     *POWER(x32,4) + sqr(-x32)*POWER(x33,4) + sqr(-x32)*POWER(x34,4) + sqr(-x32
     )*POWER(x35,4) + sqr(-x32)*POWER(x36,4) + sqr(-x32)*POWER(x37,4) + sqr(-
     x32)*POWER(x38,4) + sqr(-x32)*POWER(x39,4) + sqr(-x32)*POWER(x40,4) + sqr(
     -x32)*POWER(x41,4) + sqr(-x32)*POWER(x42,4) + sqr(-x32)*POWER(x43,4) + 
     sqr(-x32)*POWER(x44,4) + sqr(-x32)*POWER(x45,4) + sqr(-x32)*POWER(x46,4)
      + sqr(-x32)*POWER(x47,4) + sqr(-x32)*POWER(x48,4) + sqr(-x32)*POWER(x49,4
     ) + sqr(-x32)*POWER(x50,4) + sqr(-x32)*POWER(x51,4) + sqr(-x32)*POWER(x52,
     4) + sqr(-x32)*POWER(x53,4) + sqr(-x32)*POWER(x54,4) + sqr(-x32)*POWER(x55
     ,4) + sqr(-x32)*POWER(x56,4) + sqr(-x32)*POWER(x57,4) + sqr(-x32)*POWER(
     x58,4) + sqr(-x32)*POWER(x59,4) + sqr(-x32)*POWER(x60,4) + sqr(-x32)*
     POWER(x61,4) + sqr(-x32)*POWER(x62,4) + sqr(-x32)*POWER(x63,4) + sqr(-x32)
     *POWER(x64,4) + sqr(-x32)*POWER(x65,4) + sqr(-x32)*POWER(x66,4) + sqr(-x32
     )*POWER(x67,4) + sqr(-x32)*POWER(x68,4) + sqr(-x32)*POWER(x69,4) + sqr(-
     x32)*POWER(x70,4) + sqr(-x32)*POWER(x71,4) + sqr(-x32)*POWER(x72,4) + sqr(
     -x32)*POWER(x73,4) + sqr(-x32)*POWER(x74,4) + sqr(-x32)*POWER(x75,4) + 
     sqr(-x32)*POWER(x76,4) + sqr(-x32)*POWER(x77,4) + sqr(-x32)*POWER(x78,4)
      + sqr(-x32)*POWER(x79,4) + sqr(-x32)*POWER(x80,4) + sqr(-x32)*POWER(x81,4
     ) + sqr(-x32)*POWER(x82,4) + sqr(-x32)*POWER(x83,4) + sqr(-x32)*POWER(x84,
     4) + sqr(-x32)*POWER(x85,4) + sqr(-x32)*POWER(x86,4) + sqr(-x32)*POWER(x87
     ,4) + sqr(-x32)*POWER(x88,4) + sqr(-x32)*POWER(x89,4) + sqr(-x32)*POWER(
     x90,4) + sqr(-x32)*POWER(x91,4) + sqr(-x32)*POWER(x92,4) + sqr(-x32)*
     POWER(x93,4) + sqr(-x32)*POWER(x94,4) + sqr(-x32)*POWER(x95,4) + sqr(-x32)
     *POWER(x96,4) + sqr(-x32)*POWER(x97,4) + sqr(-x32)*POWER(x98,4) + sqr(-x32
     )*POWER(x99,4) + sqr(-x32)*POWER(x100,4) + sqr(-x33)*POWER(x1,4) + sqr(-
     x33)*POWER(x2,4) + sqr(-x33)*POWER(x3,4) + sqr(-x33)*POWER(x4,4) + sqr(-
     x33)*POWER(x5,4) + sqr(-x33)*POWER(x6,4) + sqr(-x33)*POWER(x7,4) + sqr(-
     x33)*POWER(x8,4) + sqr(-x33)*POWER(x9,4) + sqr(-x33)*POWER(x10,4) + sqr(-
     x33)*POWER(x11,4) + sqr(-x33)*POWER(x12,4) + sqr(-x33)*POWER(x13,4) + sqr(
     -x33)*POWER(x14,4) + sqr(-x33)*POWER(x15,4) + sqr(-x33)*POWER(x16,4) + 
     sqr(-x33)*POWER(x17,4) + sqr(-x33)*POWER(x18,4) + sqr(-x33)*POWER(x19,4)
      + sqr(-x33)*POWER(x20,4) + sqr(-x33)*POWER(x21,4) + sqr(-x33)*POWER(x22,4
     ) + sqr(-x33)*POWER(x23,4) + sqr(-x33)*POWER(x24,4) + sqr(-x33)*POWER(x25,
     4) + sqr(-x33)*POWER(x26,4) + sqr(-x33)*POWER(x27,4) + sqr(-x33)*POWER(x28
     ,4) + sqr(-x33)*POWER(x29,4) + sqr(-x33)*POWER(x30,4) + sqr(-x33)*POWER(
     x31,4) + sqr(-x33)*POWER(x32,4) + sqr(-x33)*POWER(x33,4) + sqr(-x33)*
     POWER(x34,4) + sqr(-x33)*POWER(x35,4) + sqr(-x33)*POWER(x36,4) + sqr(-x33)
     *POWER(x37,4) + sqr(-x33)*POWER(x38,4) + sqr(-x33)*POWER(x39,4) + sqr(-x33
     )*POWER(x40,4) + sqr(-x33)*POWER(x41,4) + sqr(-x33)*POWER(x42,4) + sqr(-
     x33)*POWER(x43,4) + sqr(-x33)*POWER(x44,4) + sqr(-x33)*POWER(x45,4) + sqr(
     -x33)*POWER(x46,4) + sqr(-x33)*POWER(x47,4) + sqr(-x33)*POWER(x48,4) + 
     sqr(-x33)*POWER(x49,4) + sqr(-x33)*POWER(x50,4) + sqr(-x33)*POWER(x51,4)
      + sqr(-x33)*POWER(x52,4) + sqr(-x33)*POWER(x53,4) + sqr(-x33)*POWER(x54,4
     ) + sqr(-x33)*POWER(x55,4) + sqr(-x33)*POWER(x56,4) + sqr(-x33)*POWER(x57,
     4) + sqr(-x33)*POWER(x58,4) + sqr(-x33)*POWER(x59,4) + sqr(-x33)*POWER(x60
     ,4) + sqr(-x33)*POWER(x61,4) + sqr(-x33)*POWER(x62,4) + sqr(-x33)*POWER(
     x63,4) + sqr(-x33)*POWER(x64,4) + sqr(-x33)*POWER(x65,4) + sqr(-x33)*
     POWER(x66,4) + sqr(-x33)*POWER(x67,4) + sqr(-x33)*POWER(x68,4) + sqr(-x33)
     *POWER(x69,4) + sqr(-x33)*POWER(x70,4) + sqr(-x33)*POWER(x71,4) + sqr(-x33
     )*POWER(x72,4) + sqr(-x33)*POWER(x73,4) + sqr(-x33)*POWER(x74,4) + sqr(-
     x33)*POWER(x75,4) + sqr(-x33)*POWER(x76,4) + sqr(-x33)*POWER(x77,4) + sqr(
     -x33)*POWER(x78,4) + sqr(-x33)*POWER(x79,4) + sqr(-x33)*POWER(x80,4) + 
     sqr(-x33)*POWER(x81,4) + sqr(-x33)*POWER(x82,4) + sqr(-x33)*POWER(x83,4)
      + sqr(-x33)*POWER(x84,4) + sqr(-x33)*POWER(x85,4) + sqr(-x33)*POWER(x86,4
     ) + sqr(-x33)*POWER(x87,4) + sqr(-x33)*POWER(x88,4) + sqr(-x33)*POWER(x89,
     4) + sqr(-x33)*POWER(x90,4) + sqr(-x33)*POWER(x91,4) + sqr(-x33)*POWER(x92
     ,4) + sqr(-x33)*POWER(x93,4) + sqr(-x33)*POWER(x94,4) + sqr(-x33)*POWER(
     x95,4) + sqr(-x33)*POWER(x96,4) + sqr(-x33)*POWER(x97,4) + sqr(-x33)*
     POWER(x98,4) + sqr(-x33)*POWER(x99,4) + sqr(-x33)*POWER(x100,4) + sqr(-x34
     )*POWER(x1,4) + sqr(-x34)*POWER(x2,4) + sqr(-x34)*POWER(x3,4) + sqr(-x34)*
     POWER(x4,4) + sqr(-x34)*POWER(x5,4) + sqr(-x34)*POWER(x6,4) + sqr(-x34)*
     POWER(x7,4) + sqr(-x34)*POWER(x8,4) + sqr(-x34)*POWER(x9,4) + sqr(-x34)*
     POWER(x10,4) + sqr(-x34)*POWER(x11,4) + sqr(-x34)*POWER(x12,4) + sqr(-x34)
     *POWER(x13,4) + sqr(-x34)*POWER(x14,4) + sqr(-x34)*POWER(x15,4) + sqr(-x34
     )*POWER(x16,4) + sqr(-x34)*POWER(x17,4) + sqr(-x34)*POWER(x18,4) + sqr(-
     x34)*POWER(x19,4) + sqr(-x34)*POWER(x20,4) + sqr(-x34)*POWER(x21,4) + sqr(
     -x34)*POWER(x22,4) + sqr(-x34)*POWER(x23,4) + sqr(-x34)*POWER(x24,4) + 
     sqr(-x34)*POWER(x25,4) + sqr(-x34)*POWER(x26,4) + sqr(-x34)*POWER(x27,4)
      + sqr(-x34)*POWER(x28,4) + sqr(-x34)*POWER(x29,4) + sqr(-x34)*POWER(x30,4
     ) + sqr(-x34)*POWER(x31,4) + sqr(-x34)*POWER(x32,4) + sqr(-x34)*POWER(x33,
     4) + sqr(-x34)*POWER(x34,4) + sqr(-x34)*POWER(x35,4) + sqr(-x34)*POWER(x36
     ,4) + sqr(-x34)*POWER(x37,4) + sqr(-x34)*POWER(x38,4) + sqr(-x34)*POWER(
     x39,4) + sqr(-x34)*POWER(x40,4) + sqr(-x34)*POWER(x41,4) + sqr(-x34)*
     POWER(x42,4) + sqr(-x34)*POWER(x43,4) + sqr(-x34)*POWER(x44,4) + sqr(-x34)
     *POWER(x45,4) + sqr(-x34)*POWER(x46,4) + sqr(-x34)*POWER(x47,4) + sqr(-x34
     )*POWER(x48,4) + sqr(-x34)*POWER(x49,4) + sqr(-x34)*POWER(x50,4) + sqr(-
     x34)*POWER(x51,4) + sqr(-x34)*POWER(x52,4) + sqr(-x34)*POWER(x53,4) + sqr(
     -x34)*POWER(x54,4) + sqr(-x34)*POWER(x55,4) + sqr(-x34)*POWER(x56,4) + 
     sqr(-x34)*POWER(x57,4) + sqr(-x34)*POWER(x58,4) + sqr(-x34)*POWER(x59,4)
      + sqr(-x34)*POWER(x60,4) + sqr(-x34)*POWER(x61,4) + sqr(-x34)*POWER(x62,4
     ) + sqr(-x34)*POWER(x63,4) + sqr(-x34)*POWER(x64,4) + sqr(-x34)*POWER(x65,
     4) + sqr(-x34)*POWER(x66,4) + sqr(-x34)*POWER(x67,4) + sqr(-x34)*POWER(x68
     ,4) + sqr(-x34)*POWER(x69,4) + sqr(-x34)*POWER(x70,4) + sqr(-x34)*POWER(
     x71,4) + sqr(-x34)*POWER(x72,4) + sqr(-x34)*POWER(x73,4) + sqr(-x34)*
     POWER(x74,4) + sqr(-x34)*POWER(x75,4) + sqr(-x34)*POWER(x76,4) + sqr(-x34)
     *POWER(x77,4) + sqr(-x34)*POWER(x78,4) + sqr(-x34)*POWER(x79,4) + sqr(-x34
     )*POWER(x80,4) + sqr(-x34)*POWER(x81,4) + sqr(-x34)*POWER(x82,4) + sqr(-
     x34)*POWER(x83,4) + sqr(-x34)*POWER(x84,4) + sqr(-x34)*POWER(x85,4) + sqr(
     -x34)*POWER(x86,4) + sqr(-x34)*POWER(x87,4) + sqr(-x34)*POWER(x88,4) + 
     sqr(-x34)*POWER(x89,4) + sqr(-x34)*POWER(x90,4) + sqr(-x34)*POWER(x91,4)
      + sqr(-x34)*POWER(x92,4) + sqr(-x34)*POWER(x93,4) + sqr(-x34)*POWER(x94,4
     ) + sqr(-x34)*POWER(x95,4) + sqr(-x34)*POWER(x96,4) + sqr(-x34)*POWER(x97,
     4) + sqr(-x34)*POWER(x98,4) + sqr(-x34)*POWER(x99,4) + sqr(-x34)*POWER(
     x100,4) + sqr(-x35)*POWER(x1,4) + sqr(-x35)*POWER(x2,4) + sqr(-x35)*POWER(
     x3,4) + sqr(-x35)*POWER(x4,4) + sqr(-x35)*POWER(x5,4) + sqr(-x35)*POWER(x6
     ,4) + sqr(-x35)*POWER(x7,4) + sqr(-x35)*POWER(x8,4) + sqr(-x35)*POWER(x9,4
     ) + sqr(-x35)*POWER(x10,4) + sqr(-x35)*POWER(x11,4) + sqr(-x35)*POWER(x12,
     4) + sqr(-x35)*POWER(x13,4) + sqr(-x35)*POWER(x14,4) + sqr(-x35)*POWER(x15
     ,4) + sqr(-x35)*POWER(x16,4) + sqr(-x35)*POWER(x17,4) + sqr(-x35)*POWER(
     x18,4) + sqr(-x35)*POWER(x19,4) + sqr(-x35)*POWER(x20,4) + sqr(-x35)*
     POWER(x21,4) + sqr(-x35)*POWER(x22,4) + sqr(-x35)*POWER(x23,4) + sqr(-x35)
     *POWER(x24,4) + sqr(-x35)*POWER(x25,4) + sqr(-x35)*POWER(x26,4) + sqr(-x35
     )*POWER(x27,4) + sqr(-x35)*POWER(x28,4) + sqr(-x35)*POWER(x29,4) + sqr(-
     x35)*POWER(x30,4) + sqr(-x35)*POWER(x31,4) + sqr(-x35)*POWER(x32,4) + sqr(
     -x35)*POWER(x33,4) + sqr(-x35)*POWER(x34,4) + sqr(-x35)*POWER(x35,4) + 
     sqr(-x35)*POWER(x36,4) + sqr(-x35)*POWER(x37,4) + sqr(-x35)*POWER(x38,4)
      + sqr(-x35)*POWER(x39,4) + sqr(-x35)*POWER(x40,4) + sqr(-x35)*POWER(x41,4
     ) + sqr(-x35)*POWER(x42,4) + sqr(-x35)*POWER(x43,4) + sqr(-x35)*POWER(x44,
     4) + sqr(-x35)*POWER(x45,4) + sqr(-x35)*POWER(x46,4) + sqr(-x35)*POWER(x47
     ,4) + sqr(-x35)*POWER(x48,4) + sqr(-x35)*POWER(x49,4) + sqr(-x35)*POWER(
     x50,4) + sqr(-x35)*POWER(x51,4) + sqr(-x35)*POWER(x52,4) + sqr(-x35)*
     POWER(x53,4) + sqr(-x35)*POWER(x54,4) + sqr(-x35)*POWER(x55,4) + sqr(-x35)
     *POWER(x56,4) + sqr(-x35)*POWER(x57,4) + sqr(-x35)*POWER(x58,4) + sqr(-x35
     )*POWER(x59,4) + sqr(-x35)*POWER(x60,4) + sqr(-x35)*POWER(x61,4) + sqr(-
     x35)*POWER(x62,4) + sqr(-x35)*POWER(x63,4) + sqr(-x35)*POWER(x64,4) + sqr(
     -x35)*POWER(x65,4) + sqr(-x35)*POWER(x66,4) + sqr(-x35)*POWER(x67,4) + 
     sqr(-x35)*POWER(x68,4) + sqr(-x35)*POWER(x69,4) + sqr(-x35)*POWER(x70,4)
      + sqr(-x35)*POWER(x71,4) + sqr(-x35)*POWER(x72,4) + sqr(-x35)*POWER(x73,4
     ) + sqr(-x35)*POWER(x74,4) + sqr(-x35)*POWER(x75,4) + sqr(-x35)*POWER(x76,
     4) + sqr(-x35)*POWER(x77,4) + sqr(-x35)*POWER(x78,4) + sqr(-x35)*POWER(x79
     ,4) + sqr(-x35)*POWER(x80,4) + sqr(-x35)*POWER(x81,4) + sqr(-x35)*POWER(
     x82,4) + sqr(-x35)*POWER(x83,4) + sqr(-x35)*POWER(x84,4) + sqr(-x35)*
     POWER(x85,4) + sqr(-x35)*POWER(x86,4) + sqr(-x35)*POWER(x87,4) + sqr(-x35)
     *POWER(x88,4) + sqr(-x35)*POWER(x89,4) + sqr(-x35)*POWER(x90,4) + sqr(-x35
     )*POWER(x91,4) + sqr(-x35)*POWER(x92,4) + sqr(-x35)*POWER(x93,4) + sqr(-
     x35)*POWER(x94,4) + sqr(-x35)*POWER(x95,4) + sqr(-x35)*POWER(x96,4) + sqr(
     -x35)*POWER(x97,4) + sqr(-x35)*POWER(x98,4) + sqr(-x35)*POWER(x99,4) + 
     sqr(-x35)*POWER(x100,4) + sqr(-x36)*POWER(x1,4) + sqr(-x36)*POWER(x2,4) + 
     sqr(-x36)*POWER(x3,4) + sqr(-x36)*POWER(x4,4) + sqr(-x36)*POWER(x5,4) + 
     sqr(-x36)*POWER(x6,4) + sqr(-x36)*POWER(x7,4) + sqr(-x36)*POWER(x8,4) + 
     sqr(-x36)*POWER(x9,4) + sqr(-x36)*POWER(x10,4) + sqr(-x36)*POWER(x11,4) + 
     sqr(-x36)*POWER(x12,4) + sqr(-x36)*POWER(x13,4) + sqr(-x36)*POWER(x14,4)
      + sqr(-x36)*POWER(x15,4) + sqr(-x36)*POWER(x16,4) + sqr(-x36)*POWER(x17,4
     ) + sqr(-x36)*POWER(x18,4) + sqr(-x36)*POWER(x19,4) + sqr(-x36)*POWER(x20,
     4) + sqr(-x36)*POWER(x21,4) + sqr(-x36)*POWER(x22,4) + sqr(-x36)*POWER(x23
     ,4) + sqr(-x36)*POWER(x24,4) + sqr(-x36)*POWER(x25,4) + sqr(-x36)*POWER(
     x26,4) + sqr(-x36)*POWER(x27,4) + sqr(-x36)*POWER(x28,4) + sqr(-x36)*
     POWER(x29,4) + sqr(-x36)*POWER(x30,4) + sqr(-x36)*POWER(x31,4) + sqr(-x36)
     *POWER(x32,4) + sqr(-x36)*POWER(x33,4) + sqr(-x36)*POWER(x34,4) + sqr(-x36
     )*POWER(x35,4) + sqr(-x36)*POWER(x36,4) + sqr(-x36)*POWER(x37,4) + sqr(-
     x36)*POWER(x38,4) + sqr(-x36)*POWER(x39,4) + sqr(-x36)*POWER(x40,4) + sqr(
     -x36)*POWER(x41,4) + sqr(-x36)*POWER(x42,4) + sqr(-x36)*POWER(x43,4) + 
     sqr(-x36)*POWER(x44,4) + sqr(-x36)*POWER(x45,4) + sqr(-x36)*POWER(x46,4)
      + sqr(-x36)*POWER(x47,4) + sqr(-x36)*POWER(x48,4) + sqr(-x36)*POWER(x49,4
     ) + sqr(-x36)*POWER(x50,4) + sqr(-x36)*POWER(x51,4) + sqr(-x36)*POWER(x52,
     4) + sqr(-x36)*POWER(x53,4) + sqr(-x36)*POWER(x54,4) + sqr(-x36)*POWER(x55
     ,4) + sqr(-x36)*POWER(x56,4) + sqr(-x36)*POWER(x57,4) + sqr(-x36)*POWER(
     x58,4) + sqr(-x36)*POWER(x59,4) + sqr(-x36)*POWER(x60,4) + sqr(-x36)*
     POWER(x61,4) + sqr(-x36)*POWER(x62,4) + sqr(-x36)*POWER(x63,4) + sqr(-x36)
     *POWER(x64,4) + sqr(-x36)*POWER(x65,4) + sqr(-x36)*POWER(x66,4) + sqr(-x36
     )*POWER(x67,4) + sqr(-x36)*POWER(x68,4) + sqr(-x36)*POWER(x69,4) + sqr(-
     x36)*POWER(x70,4) + sqr(-x36)*POWER(x71,4) + sqr(-x36)*POWER(x72,4) + sqr(
     -x36)*POWER(x73,4) + sqr(-x36)*POWER(x74,4) + sqr(-x36)*POWER(x75,4) + 
     sqr(-x36)*POWER(x76,4) + sqr(-x36)*POWER(x77,4) + sqr(-x36)*POWER(x78,4)
      + sqr(-x36)*POWER(x79,4) + sqr(-x36)*POWER(x80,4) + sqr(-x36)*POWER(x81,4
     ) + sqr(-x36)*POWER(x82,4) + sqr(-x36)*POWER(x83,4) + sqr(-x36)*POWER(x84,
     4) + sqr(-x36)*POWER(x85,4) + sqr(-x36)*POWER(x86,4) + sqr(-x36)*POWER(x87
     ,4) + sqr(-x36)*POWER(x88,4) + sqr(-x36)*POWER(x89,4) + sqr(-x36)*POWER(
     x90,4) + sqr(-x36)*POWER(x91,4) + sqr(-x36)*POWER(x92,4) + sqr(-x36)*
     POWER(x93,4) + sqr(-x36)*POWER(x94,4) + sqr(-x36)*POWER(x95,4) + sqr(-x36)
     *POWER(x96,4) + sqr(-x36)*POWER(x97,4) + sqr(-x36)*POWER(x98,4) + sqr(-x36
     )*POWER(x99,4) + sqr(-x36)*POWER(x100,4) + sqr(-x37)*POWER(x1,4) + sqr(-
     x37)*POWER(x2,4) + sqr(-x37)*POWER(x3,4) + sqr(-x37)*POWER(x4,4) + sqr(-
     x37)*POWER(x5,4) + sqr(-x37)*POWER(x6,4) + sqr(-x37)*POWER(x7,4) + sqr(-
     x37)*POWER(x8,4) + sqr(-x37)*POWER(x9,4) + sqr(-x37)*POWER(x10,4) + sqr(-
     x37)*POWER(x11,4) + sqr(-x37)*POWER(x12,4) + sqr(-x37)*POWER(x13,4) + sqr(
     -x37)*POWER(x14,4) + sqr(-x37)*POWER(x15,4) + sqr(-x37)*POWER(x16,4) + 
     sqr(-x37)*POWER(x17,4) + sqr(-x37)*POWER(x18,4) + sqr(-x37)*POWER(x19,4)
      + sqr(-x37)*POWER(x20,4) + sqr(-x37)*POWER(x21,4) + sqr(-x37)*POWER(x22,4
     ) + sqr(-x37)*POWER(x23,4) + sqr(-x37)*POWER(x24,4) + sqr(-x37)*POWER(x25,
     4) + sqr(-x37)*POWER(x26,4) + sqr(-x37)*POWER(x27,4) + sqr(-x37)*POWER(x28
     ,4) + sqr(-x37)*POWER(x29,4) + sqr(-x37)*POWER(x30,4) + sqr(-x37)*POWER(
     x31,4) + sqr(-x37)*POWER(x32,4) + sqr(-x37)*POWER(x33,4) + sqr(-x37)*
     POWER(x34,4) + sqr(-x37)*POWER(x35,4) + sqr(-x37)*POWER(x36,4) + sqr(-x37)
     *POWER(x37,4) + sqr(-x37)*POWER(x38,4) + sqr(-x37)*POWER(x39,4) + sqr(-x37
     )*POWER(x40,4) + sqr(-x37)*POWER(x41,4) + sqr(-x37)*POWER(x42,4) + sqr(-
     x37)*POWER(x43,4) + sqr(-x37)*POWER(x44,4) + sqr(-x37)*POWER(x45,4) + sqr(
     -x37)*POWER(x46,4) + sqr(-x37)*POWER(x47,4) + sqr(-x37)*POWER(x48,4) + 
     sqr(-x37)*POWER(x49,4) + sqr(-x37)*POWER(x50,4) + sqr(-x37)*POWER(x51,4)
      + sqr(-x37)*POWER(x52,4) + sqr(-x37)*POWER(x53,4) + sqr(-x37)*POWER(x54,4
     ) + sqr(-x37)*POWER(x55,4) + sqr(-x37)*POWER(x56,4) + sqr(-x37)*POWER(x57,
     4) + sqr(-x37)*POWER(x58,4) + sqr(-x37)*POWER(x59,4) + sqr(-x37)*POWER(x60
     ,4) + sqr(-x37)*POWER(x61,4) + sqr(-x37)*POWER(x62,4) + sqr(-x37)*POWER(
     x63,4) + sqr(-x37)*POWER(x64,4) + sqr(-x37)*POWER(x65,4) + sqr(-x37)*
     POWER(x66,4) + sqr(-x37)*POWER(x67,4) + sqr(-x37)*POWER(x68,4) + sqr(-x37)
     *POWER(x69,4) + sqr(-x37)*POWER(x70,4) + sqr(-x37)*POWER(x71,4) + sqr(-x37
     )*POWER(x72,4) + sqr(-x37)*POWER(x73,4) + sqr(-x37)*POWER(x74,4) + sqr(-
     x37)*POWER(x75,4) + sqr(-x37)*POWER(x76,4) + sqr(-x37)*POWER(x77,4) + sqr(
     -x37)*POWER(x78,4) + sqr(-x37)*POWER(x79,4) + sqr(-x37)*POWER(x80,4) + 
     sqr(-x37)*POWER(x81,4) + sqr(-x37)*POWER(x82,4) + sqr(-x37)*POWER(x83,4)
      + sqr(-x37)*POWER(x84,4) + sqr(-x37)*POWER(x85,4) + sqr(-x37)*POWER(x86,4
     ) + sqr(-x37)*POWER(x87,4) + sqr(-x37)*POWER(x88,4) + sqr(-x37)*POWER(x89,
     4) + sqr(-x37)*POWER(x90,4) + sqr(-x37)*POWER(x91,4) + sqr(-x37)*POWER(x92
     ,4) + sqr(-x37)*POWER(x93,4) + sqr(-x37)*POWER(x94,4) + sqr(-x37)*POWER(
     x95,4) + sqr(-x37)*POWER(x96,4) + sqr(-x37)*POWER(x97,4) + sqr(-x37)*
     POWER(x98,4) + sqr(-x37)*POWER(x99,4) + sqr(-x37)*POWER(x100,4) + sqr(-x38
     )*POWER(x1,4) + sqr(-x38)*POWER(x2,4) + sqr(-x38)*POWER(x3,4) + sqr(-x38)*
     POWER(x4,4) + sqr(-x38)*POWER(x5,4) + sqr(-x38)*POWER(x6,4) + sqr(-x38)*
     POWER(x7,4) + sqr(-x38)*POWER(x8,4) + sqr(-x38)*POWER(x9,4) + sqr(-x38)*
     POWER(x10,4) + sqr(-x38)*POWER(x11,4) + sqr(-x38)*POWER(x12,4) + sqr(-x38)
     *POWER(x13,4) + sqr(-x38)*POWER(x14,4) + sqr(-x38)*POWER(x15,4) + sqr(-x38
     )*POWER(x16,4) + sqr(-x38)*POWER(x17,4) + sqr(-x38)*POWER(x18,4) + sqr(-
     x38)*POWER(x19,4) + sqr(-x38)*POWER(x20,4) + sqr(-x38)*POWER(x21,4) + sqr(
     -x38)*POWER(x22,4) + sqr(-x38)*POWER(x23,4) + sqr(-x38)*POWER(x24,4) + 
     sqr(-x38)*POWER(x25,4) + sqr(-x38)*POWER(x26,4) + sqr(-x38)*POWER(x27,4)
      + sqr(-x38)*POWER(x28,4) + sqr(-x38)*POWER(x29,4) + sqr(-x38)*POWER(x30,4
     ) + sqr(-x38)*POWER(x31,4) + sqr(-x38)*POWER(x32,4) + sqr(-x38)*POWER(x33,
     4) + sqr(-x38)*POWER(x34,4) + sqr(-x38)*POWER(x35,4) + sqr(-x38)*POWER(x36
     ,4) + sqr(-x38)*POWER(x37,4) + sqr(-x38)*POWER(x38,4) + sqr(-x38)*POWER(
     x39,4) + sqr(-x38)*POWER(x40,4) + sqr(-x38)*POWER(x41,4) + sqr(-x38)*
     POWER(x42,4) + sqr(-x38)*POWER(x43,4) + sqr(-x38)*POWER(x44,4) + sqr(-x38)
     *POWER(x45,4) + sqr(-x38)*POWER(x46,4) + sqr(-x38)*POWER(x47,4) + sqr(-x38
     )*POWER(x48,4) + sqr(-x38)*POWER(x49,4) + sqr(-x38)*POWER(x50,4) + sqr(-
     x38)*POWER(x51,4) + sqr(-x38)*POWER(x52,4) + sqr(-x38)*POWER(x53,4) + sqr(
     -x38)*POWER(x54,4) + sqr(-x38)*POWER(x55,4) + sqr(-x38)*POWER(x56,4) + 
     sqr(-x38)*POWER(x57,4) + sqr(-x38)*POWER(x58,4) + sqr(-x38)*POWER(x59,4)
      + sqr(-x38)*POWER(x60,4) + sqr(-x38)*POWER(x61,4) + sqr(-x38)*POWER(x62,4
     ) + sqr(-x38)*POWER(x63,4) + sqr(-x38)*POWER(x64,4) + sqr(-x38)*POWER(x65,
     4) + sqr(-x38)*POWER(x66,4) + sqr(-x38)*POWER(x67,4) + sqr(-x38)*POWER(x68
     ,4) + sqr(-x38)*POWER(x69,4) + sqr(-x38)*POWER(x70,4) + sqr(-x38)*POWER(
     x71,4) + sqr(-x38)*POWER(x72,4) + sqr(-x38)*POWER(x73,4) + sqr(-x38)*
     POWER(x74,4) + sqr(-x38)*POWER(x75,4) + sqr(-x38)*POWER(x76,4) + sqr(-x38)
     *POWER(x77,4) + sqr(-x38)*POWER(x78,4) + sqr(-x38)*POWER(x79,4) + sqr(-x38
     )*POWER(x80,4) + sqr(-x38)*POWER(x81,4) + sqr(-x38)*POWER(x82,4) + sqr(-
     x38)*POWER(x83,4) + sqr(-x38)*POWER(x84,4) + sqr(-x38)*POWER(x85,4) + sqr(
     -x38)*POWER(x86,4) + sqr(-x38)*POWER(x87,4) + sqr(-x38)*POWER(x88,4) + 
     sqr(-x38)*POWER(x89,4) + sqr(-x38)*POWER(x90,4) + sqr(-x38)*POWER(x91,4)
      + sqr(-x38)*POWER(x92,4) + sqr(-x38)*POWER(x93,4) + sqr(-x38)*POWER(x94,4
     ) + sqr(-x38)*POWER(x95,4) + sqr(-x38)*POWER(x96,4) + sqr(-x38)*POWER(x97,
     4) + sqr(-x38)*POWER(x98,4) + sqr(-x38)*POWER(x99,4) + sqr(-x38)*POWER(
     x100,4) + sqr(-x39)*POWER(x1,4) + sqr(-x39)*POWER(x2,4) + sqr(-x39)*POWER(
     x3,4) + sqr(-x39)*POWER(x4,4) + sqr(-x39)*POWER(x5,4) + sqr(-x39)*POWER(x6
     ,4) + sqr(-x39)*POWER(x7,4) + sqr(-x39)*POWER(x8,4) + sqr(-x39)*POWER(x9,4
     ) + sqr(-x39)*POWER(x10,4) + sqr(-x39)*POWER(x11,4) + sqr(-x39)*POWER(x12,
     4) + sqr(-x39)*POWER(x13,4) + sqr(-x39)*POWER(x14,4) + sqr(-x39)*POWER(x15
     ,4) + sqr(-x39)*POWER(x16,4) + sqr(-x39)*POWER(x17,4) + sqr(-x39)*POWER(
     x18,4) + sqr(-x39)*POWER(x19,4) + sqr(-x39)*POWER(x20,4) + sqr(-x39)*
     POWER(x21,4) + sqr(-x39)*POWER(x22,4) + sqr(-x39)*POWER(x23,4) + sqr(-x39)
     *POWER(x24,4) + sqr(-x39)*POWER(x25,4) + sqr(-x39)*POWER(x26,4) + sqr(-x39
     )*POWER(x27,4) + sqr(-x39)*POWER(x28,4) + sqr(-x39)*POWER(x29,4) + sqr(-
     x39)*POWER(x30,4) + sqr(-x39)*POWER(x31,4) + sqr(-x39)*POWER(x32,4) + sqr(
     -x39)*POWER(x33,4) + sqr(-x39)*POWER(x34,4) + sqr(-x39)*POWER(x35,4) + 
     sqr(-x39)*POWER(x36,4) + sqr(-x39)*POWER(x37,4) + sqr(-x39)*POWER(x38,4)
      + sqr(-x39)*POWER(x39,4) + sqr(-x39)*POWER(x40,4) + sqr(-x39)*POWER(x41,4
     ) + sqr(-x39)*POWER(x42,4) + sqr(-x39)*POWER(x43,4) + sqr(-x39)*POWER(x44,
     4) + sqr(-x39)*POWER(x45,4) + sqr(-x39)*POWER(x46,4) + sqr(-x39)*POWER(x47
     ,4) + sqr(-x39)*POWER(x48,4) + sqr(-x39)*POWER(x49,4) + sqr(-x39)*POWER(
     x50,4) + sqr(-x39)*POWER(x51,4) + sqr(-x39)*POWER(x52,4) + sqr(-x39)*
     POWER(x53,4) + sqr(-x39)*POWER(x54,4) + sqr(-x39)*POWER(x55,4) + sqr(-x39)
     *POWER(x56,4) + sqr(-x39)*POWER(x57,4) + sqr(-x39)*POWER(x58,4) + sqr(-x39
     )*POWER(x59,4) + sqr(-x39)*POWER(x60,4) + sqr(-x39)*POWER(x61,4) + sqr(-
     x39)*POWER(x62,4) + sqr(-x39)*POWER(x63,4) + sqr(-x39)*POWER(x64,4) + sqr(
     -x39)*POWER(x65,4) + sqr(-x39)*POWER(x66,4) + sqr(-x39)*POWER(x67,4) + 
     sqr(-x39)*POWER(x68,4) + sqr(-x39)*POWER(x69,4) + sqr(-x39)*POWER(x70,4)
      + sqr(-x39)*POWER(x71,4) + sqr(-x39)*POWER(x72,4) + sqr(-x39)*POWER(x73,4
     ) + sqr(-x39)*POWER(x74,4) + sqr(-x39)*POWER(x75,4) + sqr(-x39)*POWER(x76,
     4) + sqr(-x39)*POWER(x77,4) + sqr(-x39)*POWER(x78,4) + sqr(-x39)*POWER(x79
     ,4) + sqr(-x39)*POWER(x80,4) + sqr(-x39)*POWER(x81,4) + sqr(-x39)*POWER(
     x82,4) + sqr(-x39)*POWER(x83,4) + sqr(-x39)*POWER(x84,4) + sqr(-x39)*
     POWER(x85,4) + sqr(-x39)*POWER(x86,4) + sqr(-x39)*POWER(x87,4) + sqr(-x39)
     *POWER(x88,4) + sqr(-x39)*POWER(x89,4) + sqr(-x39)*POWER(x90,4) + sqr(-x39
     )*POWER(x91,4) + sqr(-x39)*POWER(x92,4) + sqr(-x39)*POWER(x93,4) + sqr(-
     x39)*POWER(x94,4) + sqr(-x39)*POWER(x95,4) + sqr(-x39)*POWER(x96,4) + sqr(
     -x39)*POWER(x97,4) + sqr(-x39)*POWER(x98,4) + sqr(-x39)*POWER(x99,4) + 
     sqr(-x39)*POWER(x100,4) + sqr(-x40)*POWER(x1,4) + sqr(-x40)*POWER(x2,4) + 
     sqr(-x40)*POWER(x3,4) + sqr(-x40)*POWER(x4,4) + sqr(-x40)*POWER(x5,4) + 
     sqr(-x40)*POWER(x6,4) + sqr(-x40)*POWER(x7,4) + sqr(-x40)*POWER(x8,4) + 
     sqr(-x40)*POWER(x9,4) + sqr(-x40)*POWER(x10,4) + sqr(-x40)*POWER(x11,4) + 
     sqr(-x40)*POWER(x12,4) + sqr(-x40)*POWER(x13,4) + sqr(-x40)*POWER(x14,4)
      + sqr(-x40)*POWER(x15,4) + sqr(-x40)*POWER(x16,4) + sqr(-x40)*POWER(x17,4
     ) + sqr(-x40)*POWER(x18,4) + sqr(-x40)*POWER(x19,4) + sqr(-x40)*POWER(x20,
     4) + sqr(-x40)*POWER(x21,4) + sqr(-x40)*POWER(x22,4) + sqr(-x40)*POWER(x23
     ,4) + sqr(-x40)*POWER(x24,4) + sqr(-x40)*POWER(x25,4) + sqr(-x40)*POWER(
     x26,4) + sqr(-x40)*POWER(x27,4) + sqr(-x40)*POWER(x28,4) + sqr(-x40)*
     POWER(x29,4) + sqr(-x40)*POWER(x30,4) + sqr(-x40)*POWER(x31,4) + sqr(-x40)
     *POWER(x32,4) + sqr(-x40)*POWER(x33,4) + sqr(-x40)*POWER(x34,4) + sqr(-x40
     )*POWER(x35,4) + sqr(-x40)*POWER(x36,4) + sqr(-x40)*POWER(x37,4) + sqr(-
     x40)*POWER(x38,4) + sqr(-x40)*POWER(x39,4) + sqr(-x40)*POWER(x40,4) + sqr(
     -x40)*POWER(x41,4) + sqr(-x40)*POWER(x42,4) + sqr(-x40)*POWER(x43,4) + 
     sqr(-x40)*POWER(x44,4) + sqr(-x40)*POWER(x45,4) + sqr(-x40)*POWER(x46,4)
      + sqr(-x40)*POWER(x47,4) + sqr(-x40)*POWER(x48,4) + sqr(-x40)*POWER(x49,4
     ) + sqr(-x40)*POWER(x50,4) + sqr(-x40)*POWER(x51,4) + sqr(-x40)*POWER(x52,
     4) + sqr(-x40)*POWER(x53,4) + sqr(-x40)*POWER(x54,4) + sqr(-x40)*POWER(x55
     ,4) + sqr(-x40)*POWER(x56,4) + sqr(-x40)*POWER(x57,4) + sqr(-x40)*POWER(
     x58,4) + sqr(-x40)*POWER(x59,4) + sqr(-x40)*POWER(x60,4) + sqr(-x40)*
     POWER(x61,4) + sqr(-x40)*POWER(x62,4) + sqr(-x40)*POWER(x63,4) + sqr(-x40)
     *POWER(x64,4) + sqr(-x40)*POWER(x65,4) + sqr(-x40)*POWER(x66,4) + sqr(-x40
     )*POWER(x67,4) + sqr(-x40)*POWER(x68,4) + sqr(-x40)*POWER(x69,4) + sqr(-
     x40)*POWER(x70,4) + sqr(-x40)*POWER(x71,4) + sqr(-x40)*POWER(x72,4) + sqr(
     -x40)*POWER(x73,4) + sqr(-x40)*POWER(x74,4) + sqr(-x40)*POWER(x75,4) + 
     sqr(-x40)*POWER(x76,4) + sqr(-x40)*POWER(x77,4) + sqr(-x40)*POWER(x78,4)
      + sqr(-x40)*POWER(x79,4) + sqr(-x40)*POWER(x80,4) + sqr(-x40)*POWER(x81,4
     ) + sqr(-x40)*POWER(x82,4) + sqr(-x40)*POWER(x83,4) + sqr(-x40)*POWER(x84,
     4) + sqr(-x40)*POWER(x85,4) + sqr(-x40)*POWER(x86,4) + sqr(-x40)*POWER(x87
     ,4) + sqr(-x40)*POWER(x88,4) + sqr(-x40)*POWER(x89,4) + sqr(-x40)*POWER(
     x90,4) + sqr(-x40)*POWER(x91,4) + sqr(-x40)*POWER(x92,4) + sqr(-x40)*
     POWER(x93,4) + sqr(-x40)*POWER(x94,4) + sqr(-x40)*POWER(x95,4) + sqr(-x40)
     *POWER(x96,4) + sqr(-x40)*POWER(x97,4) + sqr(-x40)*POWER(x98,4) + sqr(-x40
     )*POWER(x99,4) + sqr(-x40)*POWER(x100,4) + sqr(-x41)*POWER(x1,4) + sqr(-
     x41)*POWER(x2,4) + sqr(-x41)*POWER(x3,4) + sqr(-x41)*POWER(x4,4) + sqr(-
     x41)*POWER(x5,4) + sqr(-x41)*POWER(x6,4) + sqr(-x41)*POWER(x7,4) + sqr(-
     x41)*POWER(x8,4) + sqr(-x41)*POWER(x9,4) + sqr(-x41)*POWER(x10,4) + sqr(-
     x41)*POWER(x11,4) + sqr(-x41)*POWER(x12,4) + sqr(-x41)*POWER(x13,4) + sqr(
     -x41)*POWER(x14,4) + sqr(-x41)*POWER(x15,4) + sqr(-x41)*POWER(x16,4) + 
     sqr(-x41)*POWER(x17,4) + sqr(-x41)*POWER(x18,4) + sqr(-x41)*POWER(x19,4)
      + sqr(-x41)*POWER(x20,4) + sqr(-x41)*POWER(x21,4) + sqr(-x41)*POWER(x22,4
     ) + sqr(-x41)*POWER(x23,4) + sqr(-x41)*POWER(x24,4) + sqr(-x41)*POWER(x25,
     4) + sqr(-x41)*POWER(x26,4) + sqr(-x41)*POWER(x27,4) + sqr(-x41)*POWER(x28
     ,4) + sqr(-x41)*POWER(x29,4) + sqr(-x41)*POWER(x30,4) + sqr(-x41)*POWER(
     x31,4) + sqr(-x41)*POWER(x32,4) + sqr(-x41)*POWER(x33,4) + sqr(-x41)*
     POWER(x34,4) + sqr(-x41)*POWER(x35,4) + sqr(-x41)*POWER(x36,4) + sqr(-x41)
     *POWER(x37,4) + sqr(-x41)*POWER(x38,4) + sqr(-x41)*POWER(x39,4) + sqr(-x41
     )*POWER(x40,4) + sqr(-x41)*POWER(x41,4) + sqr(-x41)*POWER(x42,4) + sqr(-
     x41)*POWER(x43,4) + sqr(-x41)*POWER(x44,4) + sqr(-x41)*POWER(x45,4) + sqr(
     -x41)*POWER(x46,4) + sqr(-x41)*POWER(x47,4) + sqr(-x41)*POWER(x48,4) + 
     sqr(-x41)*POWER(x49,4) + sqr(-x41)*POWER(x50,4) + sqr(-x41)*POWER(x51,4)
      + sqr(-x41)*POWER(x52,4) + sqr(-x41)*POWER(x53,4) + sqr(-x41)*POWER(x54,4
     ) + sqr(-x41)*POWER(x55,4) + sqr(-x41)*POWER(x56,4) + sqr(-x41)*POWER(x57,
     4) + sqr(-x41)*POWER(x58,4) + sqr(-x41)*POWER(x59,4) + sqr(-x41)*POWER(x60
     ,4) + sqr(-x41)*POWER(x61,4) + sqr(-x41)*POWER(x62,4) + sqr(-x41)*POWER(
     x63,4) + sqr(-x41)*POWER(x64,4) + sqr(-x41)*POWER(x65,4) + sqr(-x41)*
     POWER(x66,4) + sqr(-x41)*POWER(x67,4) + sqr(-x41)*POWER(x68,4) + sqr(-x41)
     *POWER(x69,4) + sqr(-x41)*POWER(x70,4) + sqr(-x41)*POWER(x71,4) + sqr(-x41
     )*POWER(x72,4) + sqr(-x41)*POWER(x73,4) + sqr(-x41)*POWER(x74,4) + sqr(-
     x41)*POWER(x75,4) + sqr(-x41)*POWER(x76,4) + sqr(-x41)*POWER(x77,4) + sqr(
     -x41)*POWER(x78,4) + sqr(-x41)*POWER(x79,4) + sqr(-x41)*POWER(x80,4) + 
     sqr(-x41)*POWER(x81,4) + sqr(-x41)*POWER(x82,4) + sqr(-x41)*POWER(x83,4)
      + sqr(-x41)*POWER(x84,4) + sqr(-x41)*POWER(x85,4) + sqr(-x41)*POWER(x86,4
     ) + sqr(-x41)*POWER(x87,4) + sqr(-x41)*POWER(x88,4) + sqr(-x41)*POWER(x89,
     4) + sqr(-x41)*POWER(x90,4) + sqr(-x41)*POWER(x91,4) + sqr(-x41)*POWER(x92
     ,4) + sqr(-x41)*POWER(x93,4) + sqr(-x41)*POWER(x94,4) + sqr(-x41)*POWER(
     x95,4) + sqr(-x41)*POWER(x96,4) + sqr(-x41)*POWER(x97,4) + sqr(-x41)*
     POWER(x98,4) + sqr(-x41)*POWER(x99,4) + sqr(-x41)*POWER(x100,4) + sqr(-x42
     )*POWER(x1,4) + sqr(-x42)*POWER(x2,4) + sqr(-x42)*POWER(x3,4) + sqr(-x42)*
     POWER(x4,4) + sqr(-x42)*POWER(x5,4) + sqr(-x42)*POWER(x6,4) + sqr(-x42)*
     POWER(x7,4) + sqr(-x42)*POWER(x8,4) + sqr(-x42)*POWER(x9,4) + sqr(-x42)*
     POWER(x10,4) + sqr(-x42)*POWER(x11,4) + sqr(-x42)*POWER(x12,4) + sqr(-x42)
     *POWER(x13,4) + sqr(-x42)*POWER(x14,4) + sqr(-x42)*POWER(x15,4) + sqr(-x42
     )*POWER(x16,4) + sqr(-x42)*POWER(x17,4) + sqr(-x42)*POWER(x18,4) + sqr(-
     x42)*POWER(x19,4) + sqr(-x42)*POWER(x20,4) + sqr(-x42)*POWER(x21,4) + sqr(
     -x42)*POWER(x22,4) + sqr(-x42)*POWER(x23,4) + sqr(-x42)*POWER(x24,4) + 
     sqr(-x42)*POWER(x25,4) + sqr(-x42)*POWER(x26,4) + sqr(-x42)*POWER(x27,4)
      + sqr(-x42)*POWER(x28,4) + sqr(-x42)*POWER(x29,4) + sqr(-x42)*POWER(x30,4
     ) + sqr(-x42)*POWER(x31,4) + sqr(-x42)*POWER(x32,4) + sqr(-x42)*POWER(x33,
     4) + sqr(-x42)*POWER(x34,4) + sqr(-x42)*POWER(x35,4) + sqr(-x42)*POWER(x36
     ,4) + sqr(-x42)*POWER(x37,4) + sqr(-x42)*POWER(x38,4) + sqr(-x42)*POWER(
     x39,4) + sqr(-x42)*POWER(x40,4) + sqr(-x42)*POWER(x41,4) + sqr(-x42)*
     POWER(x42,4) + sqr(-x42)*POWER(x43,4) + sqr(-x42)*POWER(x44,4) + sqr(-x42)
     *POWER(x45,4) + sqr(-x42)*POWER(x46,4) + sqr(-x42)*POWER(x47,4) + sqr(-x42
     )*POWER(x48,4) + sqr(-x42)*POWER(x49,4) + sqr(-x42)*POWER(x50,4) + sqr(-
     x42)*POWER(x51,4) + sqr(-x42)*POWER(x52,4) + sqr(-x42)*POWER(x53,4) + sqr(
     -x42)*POWER(x54,4) + sqr(-x42)*POWER(x55,4) + sqr(-x42)*POWER(x56,4) + 
     sqr(-x42)*POWER(x57,4) + sqr(-x42)*POWER(x58,4) + sqr(-x42)*POWER(x59,4)
      + sqr(-x42)*POWER(x60,4) + sqr(-x42)*POWER(x61,4) + sqr(-x42)*POWER(x62,4
     ) + sqr(-x42)*POWER(x63,4) + sqr(-x42)*POWER(x64,4) + sqr(-x42)*POWER(x65,
     4) + sqr(-x42)*POWER(x66,4) + sqr(-x42)*POWER(x67,4) + sqr(-x42)*POWER(x68
     ,4) + sqr(-x42)*POWER(x69,4) + sqr(-x42)*POWER(x70,4) + sqr(-x42)*POWER(
     x71,4) + sqr(-x42)*POWER(x72,4) + sqr(-x42)*POWER(x73,4) + sqr(-x42)*
     POWER(x74,4) + sqr(-x42)*POWER(x75,4) + sqr(-x42)*POWER(x76,4) + sqr(-x42)
     *POWER(x77,4) + sqr(-x42)*POWER(x78,4) + sqr(-x42)*POWER(x79,4) + sqr(-x42
     )*POWER(x80,4) + sqr(-x42)*POWER(x81,4) + sqr(-x42)*POWER(x82,4) + sqr(-
     x42)*POWER(x83,4) + sqr(-x42)*POWER(x84,4) + sqr(-x42)*POWER(x85,4) + sqr(
     -x42)*POWER(x86,4) + sqr(-x42)*POWER(x87,4) + sqr(-x42)*POWER(x88,4) + 
     sqr(-x42)*POWER(x89,4) + sqr(-x42)*POWER(x90,4) + sqr(-x42)*POWER(x91,4)
      + sqr(-x42)*POWER(x92,4) + sqr(-x42)*POWER(x93,4) + sqr(-x42)*POWER(x94,4
     ) + sqr(-x42)*POWER(x95,4) + sqr(-x42)*POWER(x96,4) + sqr(-x42)*POWER(x97,
     4) + sqr(-x42)*POWER(x98,4) + sqr(-x42)*POWER(x99,4) + sqr(-x42)*POWER(
     x100,4) + sqr(-x43)*POWER(x1,4) + sqr(-x43)*POWER(x2,4) + sqr(-x43)*POWER(
     x3,4) + sqr(-x43)*POWER(x4,4) + sqr(-x43)*POWER(x5,4) + sqr(-x43)*POWER(x6
     ,4) + sqr(-x43)*POWER(x7,4) + sqr(-x43)*POWER(x8,4) + sqr(-x43)*POWER(x9,4
     ) + sqr(-x43)*POWER(x10,4) + sqr(-x43)*POWER(x11,4) + sqr(-x43)*POWER(x12,
     4) + sqr(-x43)*POWER(x13,4) + sqr(-x43)*POWER(x14,4) + sqr(-x43)*POWER(x15
     ,4) + sqr(-x43)*POWER(x16,4) + sqr(-x43)*POWER(x17,4) + sqr(-x43)*POWER(
     x18,4) + sqr(-x43)*POWER(x19,4) + sqr(-x43)*POWER(x20,4) + sqr(-x43)*
     POWER(x21,4) + sqr(-x43)*POWER(x22,4) + sqr(-x43)*POWER(x23,4) + sqr(-x43)
     *POWER(x24,4) + sqr(-x43)*POWER(x25,4) + sqr(-x43)*POWER(x26,4) + sqr(-x43
     )*POWER(x27,4) + sqr(-x43)*POWER(x28,4) + sqr(-x43)*POWER(x29,4) + sqr(-
     x43)*POWER(x30,4) + sqr(-x43)*POWER(x31,4) + sqr(-x43)*POWER(x32,4) + sqr(
     -x43)*POWER(x33,4) + sqr(-x43)*POWER(x34,4) + sqr(-x43)*POWER(x35,4) + 
     sqr(-x43)*POWER(x36,4) + sqr(-x43)*POWER(x37,4) + sqr(-x43)*POWER(x38,4)
      + sqr(-x43)*POWER(x39,4) + sqr(-x43)*POWER(x40,4) + sqr(-x43)*POWER(x41,4
     ) + sqr(-x43)*POWER(x42,4) + sqr(-x43)*POWER(x43,4) + sqr(-x43)*POWER(x44,
     4) + sqr(-x43)*POWER(x45,4) + sqr(-x43)*POWER(x46,4) + sqr(-x43)*POWER(x47
     ,4) + sqr(-x43)*POWER(x48,4) + sqr(-x43)*POWER(x49,4) + sqr(-x43)*POWER(
     x50,4) + sqr(-x43)*POWER(x51,4) + sqr(-x43)*POWER(x52,4) + sqr(-x43)*
     POWER(x53,4) + sqr(-x43)*POWER(x54,4) + sqr(-x43)*POWER(x55,4) + sqr(-x43)
     *POWER(x56,4) + sqr(-x43)*POWER(x57,4) + sqr(-x43)*POWER(x58,4) + sqr(-x43
     )*POWER(x59,4) + sqr(-x43)*POWER(x60,4) + sqr(-x43)*POWER(x61,4) + sqr(-
     x43)*POWER(x62,4) + sqr(-x43)*POWER(x63,4) + sqr(-x43)*POWER(x64,4) + sqr(
     -x43)*POWER(x65,4) + sqr(-x43)*POWER(x66,4) + sqr(-x43)*POWER(x67,4) + 
     sqr(-x43)*POWER(x68,4) + sqr(-x43)*POWER(x69,4) + sqr(-x43)*POWER(x70,4)
      + sqr(-x43)*POWER(x71,4) + sqr(-x43)*POWER(x72,4) + sqr(-x43)*POWER(x73,4
     ) + sqr(-x43)*POWER(x74,4) + sqr(-x43)*POWER(x75,4) + sqr(-x43)*POWER(x76,
     4) + sqr(-x43)*POWER(x77,4) + sqr(-x43)*POWER(x78,4) + sqr(-x43)*POWER(x79
     ,4) + sqr(-x43)*POWER(x80,4) + sqr(-x43)*POWER(x81,4) + sqr(-x43)*POWER(
     x82,4) + sqr(-x43)*POWER(x83,4) + sqr(-x43)*POWER(x84,4) + sqr(-x43)*
     POWER(x85,4) + sqr(-x43)*POWER(x86,4) + sqr(-x43)*POWER(x87,4) + sqr(-x43)
     *POWER(x88,4) + sqr(-x43)*POWER(x89,4) + sqr(-x43)*POWER(x90,4) + sqr(-x43
     )*POWER(x91,4) + sqr(-x43)*POWER(x92,4) + sqr(-x43)*POWER(x93,4) + sqr(-
     x43)*POWER(x94,4) + sqr(-x43)*POWER(x95,4) + sqr(-x43)*POWER(x96,4) + sqr(
     -x43)*POWER(x97,4) + sqr(-x43)*POWER(x98,4) + sqr(-x43)*POWER(x99,4) + 
     sqr(-x43)*POWER(x100,4) + sqr(-x44)*POWER(x1,4) + sqr(-x44)*POWER(x2,4) + 
     sqr(-x44)*POWER(x3,4) + sqr(-x44)*POWER(x4,4) + sqr(-x44)*POWER(x5,4) + 
     sqr(-x44)*POWER(x6,4) + sqr(-x44)*POWER(x7,4) + sqr(-x44)*POWER(x8,4) + 
     sqr(-x44)*POWER(x9,4) + sqr(-x44)*POWER(x10,4) + sqr(-x44)*POWER(x11,4) + 
     sqr(-x44)*POWER(x12,4) + sqr(-x44)*POWER(x13,4) + sqr(-x44)*POWER(x14,4)
      + sqr(-x44)*POWER(x15,4) + sqr(-x44)*POWER(x16,4) + sqr(-x44)*POWER(x17,4
     ) + sqr(-x44)*POWER(x18,4) + sqr(-x44)*POWER(x19,4) + sqr(-x44)*POWER(x20,
     4) + sqr(-x44)*POWER(x21,4) + sqr(-x44)*POWER(x22,4) + sqr(-x44)*POWER(x23
     ,4) + sqr(-x44)*POWER(x24,4) + sqr(-x44)*POWER(x25,4) + sqr(-x44)*POWER(
     x26,4) + sqr(-x44)*POWER(x27,4) + sqr(-x44)*POWER(x28,4) + sqr(-x44)*
     POWER(x29,4) + sqr(-x44)*POWER(x30,4) + sqr(-x44)*POWER(x31,4) + sqr(-x44)
     *POWER(x32,4) + sqr(-x44)*POWER(x33,4) + sqr(-x44)*POWER(x34,4) + sqr(-x44
     )*POWER(x35,4) + sqr(-x44)*POWER(x36,4) + sqr(-x44)*POWER(x37,4) + sqr(-
     x44)*POWER(x38,4) + sqr(-x44)*POWER(x39,4) + sqr(-x44)*POWER(x40,4) + sqr(
     -x44)*POWER(x41,4) + sqr(-x44)*POWER(x42,4) + sqr(-x44)*POWER(x43,4) + 
     sqr(-x44)*POWER(x44,4) + sqr(-x44)*POWER(x45,4) + sqr(-x44)*POWER(x46,4)
      + sqr(-x44)*POWER(x47,4) + sqr(-x44)*POWER(x48,4) + sqr(-x44)*POWER(x49,4
     ) + sqr(-x44)*POWER(x50,4) + sqr(-x44)*POWER(x51,4) + sqr(-x44)*POWER(x52,
     4) + sqr(-x44)*POWER(x53,4) + sqr(-x44)*POWER(x54,4) + sqr(-x44)*POWER(x55
     ,4) + sqr(-x44)*POWER(x56,4) + sqr(-x44)*POWER(x57,4) + sqr(-x44)*POWER(
     x58,4) + sqr(-x44)*POWER(x59,4) + sqr(-x44)*POWER(x60,4) + sqr(-x44)*
     POWER(x61,4) + sqr(-x44)*POWER(x62,4) + sqr(-x44)*POWER(x63,4) + sqr(-x44)
     *POWER(x64,4) + sqr(-x44)*POWER(x65,4) + sqr(-x44)*POWER(x66,4) + sqr(-x44
     )*POWER(x67,4) + sqr(-x44)*POWER(x68,4) + sqr(-x44)*POWER(x69,4) + sqr(-
     x44)*POWER(x70,4) + sqr(-x44)*POWER(x71,4) + sqr(-x44)*POWER(x72,4) + sqr(
     -x44)*POWER(x73,4) + sqr(-x44)*POWER(x74,4) + sqr(-x44)*POWER(x75,4) + 
     sqr(-x44)*POWER(x76,4) + sqr(-x44)*POWER(x77,4) + sqr(-x44)*POWER(x78,4)
      + sqr(-x44)*POWER(x79,4) + sqr(-x44)*POWER(x80,4) + sqr(-x44)*POWER(x81,4
     ) + sqr(-x44)*POWER(x82,4) + sqr(-x44)*POWER(x83,4) + sqr(-x44)*POWER(x84,
     4) + sqr(-x44)*POWER(x85,4) + sqr(-x44)*POWER(x86,4) + sqr(-x44)*POWER(x87
     ,4) + sqr(-x44)*POWER(x88,4) + sqr(-x44)*POWER(x89,4) + sqr(-x44)*POWER(
     x90,4) + sqr(-x44)*POWER(x91,4) + sqr(-x44)*POWER(x92,4) + sqr(-x44)*
     POWER(x93,4) + sqr(-x44)*POWER(x94,4) + sqr(-x44)*POWER(x95,4) + sqr(-x44)
     *POWER(x96,4) + sqr(-x44)*POWER(x97,4) + sqr(-x44)*POWER(x98,4) + sqr(-x44
     )*POWER(x99,4) + sqr(-x44)*POWER(x100,4) + sqr(-x45)*POWER(x1,4) + sqr(-
     x45)*POWER(x2,4) + sqr(-x45)*POWER(x3,4) + sqr(-x45)*POWER(x4,4) + sqr(-
     x45)*POWER(x5,4) + sqr(-x45)*POWER(x6,4) + sqr(-x45)*POWER(x7,4) + sqr(-
     x45)*POWER(x8,4) + sqr(-x45)*POWER(x9,4) + sqr(-x45)*POWER(x10,4) + sqr(-
     x45)*POWER(x11,4) + sqr(-x45)*POWER(x12,4) + sqr(-x45)*POWER(x13,4) + sqr(
     -x45)*POWER(x14,4) + sqr(-x45)*POWER(x15,4) + sqr(-x45)*POWER(x16,4) + 
     sqr(-x45)*POWER(x17,4) + sqr(-x45)*POWER(x18,4) + sqr(-x45)*POWER(x19,4)
      + sqr(-x45)*POWER(x20,4) + sqr(-x45)*POWER(x21,4) + sqr(-x45)*POWER(x22,4
     ) + sqr(-x45)*POWER(x23,4) + sqr(-x45)*POWER(x24,4) + sqr(-x45)*POWER(x25,
     4) + sqr(-x45)*POWER(x26,4) + sqr(-x45)*POWER(x27,4) + sqr(-x45)*POWER(x28
     ,4) + sqr(-x45)*POWER(x29,4) + sqr(-x45)*POWER(x30,4) + sqr(-x45)*POWER(
     x31,4) + sqr(-x45)*POWER(x32,4) + sqr(-x45)*POWER(x33,4) + sqr(-x45)*
     POWER(x34,4) + sqr(-x45)*POWER(x35,4) + sqr(-x45)*POWER(x36,4) + sqr(-x45)
     *POWER(x37,4) + sqr(-x45)*POWER(x38,4) + sqr(-x45)*POWER(x39,4) + sqr(-x45
     )*POWER(x40,4) + sqr(-x45)*POWER(x41,4) + sqr(-x45)*POWER(x42,4) + sqr(-
     x45)*POWER(x43,4) + sqr(-x45)*POWER(x44,4) + sqr(-x45)*POWER(x45,4) + sqr(
     -x45)*POWER(x46,4) + sqr(-x45)*POWER(x47,4) + sqr(-x45)*POWER(x48,4) + 
     sqr(-x45)*POWER(x49,4) + sqr(-x45)*POWER(x50,4) + sqr(-x45)*POWER(x51,4)
      + sqr(-x45)*POWER(x52,4) + sqr(-x45)*POWER(x53,4) + sqr(-x45)*POWER(x54,4
     ) + sqr(-x45)*POWER(x55,4) + sqr(-x45)*POWER(x56,4) + sqr(-x45)*POWER(x57,
     4) + sqr(-x45)*POWER(x58,4) + sqr(-x45)*POWER(x59,4) + sqr(-x45)*POWER(x60
     ,4) + sqr(-x45)*POWER(x61,4) + sqr(-x45)*POWER(x62,4) + sqr(-x45)*POWER(
     x63,4) + sqr(-x45)*POWER(x64,4) + sqr(-x45)*POWER(x65,4) + sqr(-x45)*
     POWER(x66,4) + sqr(-x45)*POWER(x67,4) + sqr(-x45)*POWER(x68,4) + sqr(-x45)
     *POWER(x69,4) + sqr(-x45)*POWER(x70,4) + sqr(-x45)*POWER(x71,4) + sqr(-x45
     )*POWER(x72,4) + sqr(-x45)*POWER(x73,4) + sqr(-x45)*POWER(x74,4) + sqr(-
     x45)*POWER(x75,4) + sqr(-x45)*POWER(x76,4) + sqr(-x45)*POWER(x77,4) + sqr(
     -x45)*POWER(x78,4) + sqr(-x45)*POWER(x79,4) + sqr(-x45)*POWER(x80,4) + 
     sqr(-x45)*POWER(x81,4) + sqr(-x45)*POWER(x82,4) + sqr(-x45)*POWER(x83,4)
      + sqr(-x45)*POWER(x84,4) + sqr(-x45)*POWER(x85,4) + sqr(-x45)*POWER(x86,4
     ) + sqr(-x45)*POWER(x87,4) + sqr(-x45)*POWER(x88,4) + sqr(-x45)*POWER(x89,
     4) + sqr(-x45)*POWER(x90,4) + sqr(-x45)*POWER(x91,4) + sqr(-x45)*POWER(x92
     ,4) + sqr(-x45)*POWER(x93,4) + sqr(-x45)*POWER(x94,4) + sqr(-x45)*POWER(
     x95,4) + sqr(-x45)*POWER(x96,4) + sqr(-x45)*POWER(x97,4) + sqr(-x45)*
     POWER(x98,4) + sqr(-x45)*POWER(x99,4) + sqr(-x45)*POWER(x100,4) + sqr(-x46
     )*POWER(x1,4) + sqr(-x46)*POWER(x2,4) + sqr(-x46)*POWER(x3,4) + sqr(-x46)*
     POWER(x4,4) + sqr(-x46)*POWER(x5,4) + sqr(-x46)*POWER(x6,4) + sqr(-x46)*
     POWER(x7,4) + sqr(-x46)*POWER(x8,4) + sqr(-x46)*POWER(x9,4) + sqr(-x46)*
     POWER(x10,4) + sqr(-x46)*POWER(x11,4) + sqr(-x46)*POWER(x12,4) + sqr(-x46)
     *POWER(x13,4) + sqr(-x46)*POWER(x14,4) + sqr(-x46)*POWER(x15,4) + sqr(-x46
     )*POWER(x16,4) + sqr(-x46)*POWER(x17,4) + sqr(-x46)*POWER(x18,4) + sqr(-
     x46)*POWER(x19,4) + sqr(-x46)*POWER(x20,4) + sqr(-x46)*POWER(x21,4) + sqr(
     -x46)*POWER(x22,4) + sqr(-x46)*POWER(x23,4) + sqr(-x46)*POWER(x24,4) + 
     sqr(-x46)*POWER(x25,4) + sqr(-x46)*POWER(x26,4) + sqr(-x46)*POWER(x27,4)
      + sqr(-x46)*POWER(x28,4) + sqr(-x46)*POWER(x29,4) + sqr(-x46)*POWER(x30,4
     ) + sqr(-x46)*POWER(x31,4) + sqr(-x46)*POWER(x32,4) + sqr(-x46)*POWER(x33,
     4) + sqr(-x46)*POWER(x34,4) + sqr(-x46)*POWER(x35,4) + sqr(-x46)*POWER(x36
     ,4) + sqr(-x46)*POWER(x37,4) + sqr(-x46)*POWER(x38,4) + sqr(-x46)*POWER(
     x39,4) + sqr(-x46)*POWER(x40,4) + sqr(-x46)*POWER(x41,4) + sqr(-x46)*
     POWER(x42,4) + sqr(-x46)*POWER(x43,4) + sqr(-x46)*POWER(x44,4) + sqr(-x46)
     *POWER(x45,4) + sqr(-x46)*POWER(x46,4) + sqr(-x46)*POWER(x47,4) + sqr(-x46
     )*POWER(x48,4) + sqr(-x46)*POWER(x49,4) + sqr(-x46)*POWER(x50,4) + sqr(-
     x46)*POWER(x51,4) + sqr(-x46)*POWER(x52,4) + sqr(-x46)*POWER(x53,4) + sqr(
     -x46)*POWER(x54,4) + sqr(-x46)*POWER(x55,4) + sqr(-x46)*POWER(x56,4) + 
     sqr(-x46)*POWER(x57,4) + sqr(-x46)*POWER(x58,4) + sqr(-x46)*POWER(x59,4)
      + sqr(-x46)*POWER(x60,4) + sqr(-x46)*POWER(x61,4) + sqr(-x46)*POWER(x62,4
     ) + sqr(-x46)*POWER(x63,4) + sqr(-x46)*POWER(x64,4) + sqr(-x46)*POWER(x65,
     4) + sqr(-x46)*POWER(x66,4) + sqr(-x46)*POWER(x67,4) + sqr(-x46)*POWER(x68
     ,4) + sqr(-x46)*POWER(x69,4) + sqr(-x46)*POWER(x70,4) + sqr(-x46)*POWER(
     x71,4) + sqr(-x46)*POWER(x72,4) + sqr(-x46)*POWER(x73,4) + sqr(-x46)*
     POWER(x74,4) + sqr(-x46)*POWER(x75,4) + sqr(-x46)*POWER(x76,4) + sqr(-x46)
     *POWER(x77,4) + sqr(-x46)*POWER(x78,4) + sqr(-x46)*POWER(x79,4) + sqr(-x46
     )*POWER(x80,4) + sqr(-x46)*POWER(x81,4) + sqr(-x46)*POWER(x82,4) + sqr(-
     x46)*POWER(x83,4) + sqr(-x46)*POWER(x84,4) + sqr(-x46)*POWER(x85,4) + sqr(
     -x46)*POWER(x86,4) + sqr(-x46)*POWER(x87,4) + sqr(-x46)*POWER(x88,4) + 
     sqr(-x46)*POWER(x89,4) + sqr(-x46)*POWER(x90,4) + sqr(-x46)*POWER(x91,4)
      + sqr(-x46)*POWER(x92,4) + sqr(-x46)*POWER(x93,4) + sqr(-x46)*POWER(x94,4
     ) + sqr(-x46)*POWER(x95,4) + sqr(-x46)*POWER(x96,4) + sqr(-x46)*POWER(x97,
     4) + sqr(-x46)*POWER(x98,4) + sqr(-x46)*POWER(x99,4) + sqr(-x46)*POWER(
     x100,4) + sqr(-x47)*POWER(x1,4) + sqr(-x47)*POWER(x2,4) + sqr(-x47)*POWER(
     x3,4) + sqr(-x47)*POWER(x4,4) + sqr(-x47)*POWER(x5,4) + sqr(-x47)*POWER(x6
     ,4) + sqr(-x47)*POWER(x7,4) + sqr(-x47)*POWER(x8,4) + sqr(-x47)*POWER(x9,4
     ) + sqr(-x47)*POWER(x10,4) + sqr(-x47)*POWER(x11,4) + sqr(-x47)*POWER(x12,
     4) + sqr(-x47)*POWER(x13,4) + sqr(-x47)*POWER(x14,4) + sqr(-x47)*POWER(x15
     ,4) + sqr(-x47)*POWER(x16,4) + sqr(-x47)*POWER(x17,4) + sqr(-x47)*POWER(
     x18,4) + sqr(-x47)*POWER(x19,4) + sqr(-x47)*POWER(x20,4) + sqr(-x47)*
     POWER(x21,4) + sqr(-x47)*POWER(x22,4) + sqr(-x47)*POWER(x23,4) + sqr(-x47)
     *POWER(x24,4) + sqr(-x47)*POWER(x25,4) + sqr(-x47)*POWER(x26,4) + sqr(-x47
     )*POWER(x27,4) + sqr(-x47)*POWER(x28,4) + sqr(-x47)*POWER(x29,4) + sqr(-
     x47)*POWER(x30,4) + sqr(-x47)*POWER(x31,4) + sqr(-x47)*POWER(x32,4) + sqr(
     -x47)*POWER(x33,4) + sqr(-x47)*POWER(x34,4) + sqr(-x47)*POWER(x35,4) + 
     sqr(-x47)*POWER(x36,4) + sqr(-x47)*POWER(x37,4) + sqr(-x47)*POWER(x38,4)
      + sqr(-x47)*POWER(x39,4) + sqr(-x47)*POWER(x40,4) + sqr(-x47)*POWER(x41,4
     ) + sqr(-x47)*POWER(x42,4) + sqr(-x47)*POWER(x43,4) + sqr(-x47)*POWER(x44,
     4) + sqr(-x47)*POWER(x45,4) + sqr(-x47)*POWER(x46,4) + sqr(-x47)*POWER(x47
     ,4) + sqr(-x47)*POWER(x48,4) + sqr(-x47)*POWER(x49,4) + sqr(-x47)*POWER(
     x50,4) + sqr(-x47)*POWER(x51,4) + sqr(-x47)*POWER(x52,4) + sqr(-x47)*
     POWER(x53,4) + sqr(-x47)*POWER(x54,4) + sqr(-x47)*POWER(x55,4) + sqr(-x47)
     *POWER(x56,4) + sqr(-x47)*POWER(x57,4) + sqr(-x47)*POWER(x58,4) + sqr(-x47
     )*POWER(x59,4) + sqr(-x47)*POWER(x60,4) + sqr(-x47)*POWER(x61,4) + sqr(-
     x47)*POWER(x62,4) + sqr(-x47)*POWER(x63,4) + sqr(-x47)*POWER(x64,4) + sqr(
     -x47)*POWER(x65,4) + sqr(-x47)*POWER(x66,4) + sqr(-x47)*POWER(x67,4) + 
     sqr(-x47)*POWER(x68,4) + sqr(-x47)*POWER(x69,4) + sqr(-x47)*POWER(x70,4)
      + sqr(-x47)*POWER(x71,4) + sqr(-x47)*POWER(x72,4) + sqr(-x47)*POWER(x73,4
     ) + sqr(-x47)*POWER(x74,4) + sqr(-x47)*POWER(x75,4) + sqr(-x47)*POWER(x76,
     4) + sqr(-x47)*POWER(x77,4) + sqr(-x47)*POWER(x78,4) + sqr(-x47)*POWER(x79
     ,4) + sqr(-x47)*POWER(x80,4) + sqr(-x47)*POWER(x81,4) + sqr(-x47)*POWER(
     x82,4) + sqr(-x47)*POWER(x83,4) + sqr(-x47)*POWER(x84,4) + sqr(-x47)*
     POWER(x85,4) + sqr(-x47)*POWER(x86,4) + sqr(-x47)*POWER(x87,4) + sqr(-x47)
     *POWER(x88,4) + sqr(-x47)*POWER(x89,4) + sqr(-x47)*POWER(x90,4) + sqr(-x47
     )*POWER(x91,4) + sqr(-x47)*POWER(x92,4) + sqr(-x47)*POWER(x93,4) + sqr(-
     x47)*POWER(x94,4) + sqr(-x47)*POWER(x95,4) + sqr(-x47)*POWER(x96,4) + sqr(
     -x47)*POWER(x97,4) + sqr(-x47)*POWER(x98,4) + sqr(-x47)*POWER(x99,4) + 
     sqr(-x47)*POWER(x100,4) + sqr(-x48)*POWER(x1,4) + sqr(-x48)*POWER(x2,4) + 
     sqr(-x48)*POWER(x3,4) + sqr(-x48)*POWER(x4,4) + sqr(-x48)*POWER(x5,4) + 
     sqr(-x48)*POWER(x6,4) + sqr(-x48)*POWER(x7,4) + sqr(-x48)*POWER(x8,4) + 
     sqr(-x48)*POWER(x9,4) + sqr(-x48)*POWER(x10,4) + sqr(-x48)*POWER(x11,4) + 
     sqr(-x48)*POWER(x12,4) + sqr(-x48)*POWER(x13,4) + sqr(-x48)*POWER(x14,4)
      + sqr(-x48)*POWER(x15,4) + sqr(-x48)*POWER(x16,4) + sqr(-x48)*POWER(x17,4
     ) + sqr(-x48)*POWER(x18,4) + sqr(-x48)*POWER(x19,4) + sqr(-x48)*POWER(x20,
     4) + sqr(-x48)*POWER(x21,4) + sqr(-x48)*POWER(x22,4) + sqr(-x48)*POWER(x23
     ,4) + sqr(-x48)*POWER(x24,4) + sqr(-x48)*POWER(x25,4) + sqr(-x48)*POWER(
     x26,4) + sqr(-x48)*POWER(x27,4) + sqr(-x48)*POWER(x28,4) + sqr(-x48)*
     POWER(x29,4) + sqr(-x48)*POWER(x30,4) + sqr(-x48)*POWER(x31,4) + sqr(-x48)
     *POWER(x32,4) + sqr(-x48)*POWER(x33,4) + sqr(-x48)*POWER(x34,4) + sqr(-x48
     )*POWER(x35,4) + sqr(-x48)*POWER(x36,4) + sqr(-x48)*POWER(x37,4) + sqr(-
     x48)*POWER(x38,4) + sqr(-x48)*POWER(x39,4) + sqr(-x48)*POWER(x40,4) + sqr(
     -x48)*POWER(x41,4) + sqr(-x48)*POWER(x42,4) + sqr(-x48)*POWER(x43,4) + 
     sqr(-x48)*POWER(x44,4) + sqr(-x48)*POWER(x45,4) + sqr(-x48)*POWER(x46,4)
      + sqr(-x48)*POWER(x47,4) + sqr(-x48)*POWER(x48,4) + sqr(-x48)*POWER(x49,4
     ) + sqr(-x48)*POWER(x50,4) + sqr(-x48)*POWER(x51,4) + sqr(-x48)*POWER(x52,
     4) + sqr(-x48)*POWER(x53,4) + sqr(-x48)*POWER(x54,4) + sqr(-x48)*POWER(x55
     ,4) + sqr(-x48)*POWER(x56,4) + sqr(-x48)*POWER(x57,4) + sqr(-x48)*POWER(
     x58,4) + sqr(-x48)*POWER(x59,4) + sqr(-x48)*POWER(x60,4) + sqr(-x48)*
     POWER(x61,4) + sqr(-x48)*POWER(x62,4) + sqr(-x48)*POWER(x63,4) + sqr(-x48)
     *POWER(x64,4) + sqr(-x48)*POWER(x65,4) + sqr(-x48)*POWER(x66,4) + sqr(-x48
     )*POWER(x67,4) + sqr(-x48)*POWER(x68,4) + sqr(-x48)*POWER(x69,4) + sqr(-
     x48)*POWER(x70,4) + sqr(-x48)*POWER(x71,4) + sqr(-x48)*POWER(x72,4) + sqr(
     -x48)*POWER(x73,4) + sqr(-x48)*POWER(x74,4) + sqr(-x48)*POWER(x75,4) + 
     sqr(-x48)*POWER(x76,4) + sqr(-x48)*POWER(x77,4) + sqr(-x48)*POWER(x78,4)
      + sqr(-x48)*POWER(x79,4) + sqr(-x48)*POWER(x80,4) + sqr(-x48)*POWER(x81,4
     ) + sqr(-x48)*POWER(x82,4) + sqr(-x48)*POWER(x83,4) + sqr(-x48)*POWER(x84,
     4) + sqr(-x48)*POWER(x85,4) + sqr(-x48)*POWER(x86,4) + sqr(-x48)*POWER(x87
     ,4) + sqr(-x48)*POWER(x88,4) + sqr(-x48)*POWER(x89,4) + sqr(-x48)*POWER(
     x90,4) + sqr(-x48)*POWER(x91,4) + sqr(-x48)*POWER(x92,4) + sqr(-x48)*
     POWER(x93,4) + sqr(-x48)*POWER(x94,4) + sqr(-x48)*POWER(x95,4) + sqr(-x48)
     *POWER(x96,4) + sqr(-x48)*POWER(x97,4) + sqr(-x48)*POWER(x98,4) + sqr(-x48
     )*POWER(x99,4) + sqr(-x48)*POWER(x100,4) + sqr(-x49)*POWER(x1,4) + sqr(-
     x49)*POWER(x2,4) + sqr(-x49)*POWER(x3,4) + sqr(-x49)*POWER(x4,4) + sqr(-
     x49)*POWER(x5,4) + sqr(-x49)*POWER(x6,4) + sqr(-x49)*POWER(x7,4) + sqr(-
     x49)*POWER(x8,4) + sqr(-x49)*POWER(x9,4) + sqr(-x49)*POWER(x10,4) + sqr(-
     x49)*POWER(x11,4) + sqr(-x49)*POWER(x12,4) + sqr(-x49)*POWER(x13,4) + sqr(
     -x49)*POWER(x14,4) + sqr(-x49)*POWER(x15,4) + sqr(-x49)*POWER(x16,4) + 
     sqr(-x49)*POWER(x17,4) + sqr(-x49)*POWER(x18,4) + sqr(-x49)*POWER(x19,4)
      + sqr(-x49)*POWER(x20,4) + sqr(-x49)*POWER(x21,4) + sqr(-x49)*POWER(x22,4
     ) + sqr(-x49)*POWER(x23,4) + sqr(-x49)*POWER(x24,4) + sqr(-x49)*POWER(x25,
     4) + sqr(-x49)*POWER(x26,4) + sqr(-x49)*POWER(x27,4) + sqr(-x49)*POWER(x28
     ,4) + sqr(-x49)*POWER(x29,4) + sqr(-x49)*POWER(x30,4) + sqr(-x49)*POWER(
     x31,4) + sqr(-x49)*POWER(x32,4) + sqr(-x49)*POWER(x33,4) + sqr(-x49)*
     POWER(x34,4) + sqr(-x49)*POWER(x35,4) + sqr(-x49)*POWER(x36,4) + sqr(-x49)
     *POWER(x37,4) + sqr(-x49)*POWER(x38,4) + sqr(-x49)*POWER(x39,4) + sqr(-x49
     )*POWER(x40,4) + sqr(-x49)*POWER(x41,4) + sqr(-x49)*POWER(x42,4) + sqr(-
     x49)*POWER(x43,4) + sqr(-x49)*POWER(x44,4) + sqr(-x49)*POWER(x45,4) + sqr(
     -x49)*POWER(x46,4) + sqr(-x49)*POWER(x47,4) + sqr(-x49)*POWER(x48,4) + 
     sqr(-x49)*POWER(x49,4) + sqr(-x49)*POWER(x50,4) + sqr(-x49)*POWER(x51,4)
      + sqr(-x49)*POWER(x52,4) + sqr(-x49)*POWER(x53,4) + sqr(-x49)*POWER(x54,4
     ) + sqr(-x49)*POWER(x55,4) + sqr(-x49)*POWER(x56,4) + sqr(-x49)*POWER(x57,
     4) + sqr(-x49)*POWER(x58,4) + sqr(-x49)*POWER(x59,4) + sqr(-x49)*POWER(x60
     ,4) + sqr(-x49)*POWER(x61,4) + sqr(-x49)*POWER(x62,4) + sqr(-x49)*POWER(
     x63,4) + sqr(-x49)*POWER(x64,4) + sqr(-x49)*POWER(x65,4) + sqr(-x49)*
     POWER(x66,4) + sqr(-x49)*POWER(x67,4) + sqr(-x49)*POWER(x68,4) + sqr(-x49)
     *POWER(x69,4) + sqr(-x49)*POWER(x70,4) + sqr(-x49)*POWER(x71,4) + sqr(-x49
     )*POWER(x72,4) + sqr(-x49)*POWER(x73,4) + sqr(-x49)*POWER(x74,4) + sqr(-
     x49)*POWER(x75,4) + sqr(-x49)*POWER(x76,4) + sqr(-x49)*POWER(x77,4) + sqr(
     -x49)*POWER(x78,4) + sqr(-x49)*POWER(x79,4) + sqr(-x49)*POWER(x80,4) + 
     sqr(-x49)*POWER(x81,4) + sqr(-x49)*POWER(x82,4) + sqr(-x49)*POWER(x83,4)
      + sqr(-x49)*POWER(x84,4) + sqr(-x49)*POWER(x85,4) + sqr(-x49)*POWER(x86,4
     ) + sqr(-x49)*POWER(x87,4) + sqr(-x49)*POWER(x88,4) + sqr(-x49)*POWER(x89,
     4) + sqr(-x49)*POWER(x90,4) + sqr(-x49)*POWER(x91,4) + sqr(-x49)*POWER(x92
     ,4) + sqr(-x49)*POWER(x93,4) + sqr(-x49)*POWER(x94,4) + sqr(-x49)*POWER(
     x95,4) + sqr(-x49)*POWER(x96,4) + sqr(-x49)*POWER(x97,4) + sqr(-x49)*
     POWER(x98,4) + sqr(-x49)*POWER(x99,4) + sqr(-x49)*POWER(x100,4) + sqr(-x50
     )*POWER(x1,4) + sqr(-x50)*POWER(x2,4) + sqr(-x50)*POWER(x3,4) + sqr(-x50)*
     POWER(x4,4) + sqr(-x50)*POWER(x5,4) + sqr(-x50)*POWER(x6,4) + sqr(-x50)*
     POWER(x7,4) + sqr(-x50)*POWER(x8,4) + sqr(-x50)*POWER(x9,4) + sqr(-x50)*
     POWER(x10,4) + sqr(-x50)*POWER(x11,4) + sqr(-x50)*POWER(x12,4) + sqr(-x50)
     *POWER(x13,4) + sqr(-x50)*POWER(x14,4) + sqr(-x50)*POWER(x15,4) + sqr(-x50
     )*POWER(x16,4) + sqr(-x50)*POWER(x17,4) + sqr(-x50)*POWER(x18,4) + sqr(-
     x50)*POWER(x19,4) + sqr(-x50)*POWER(x20,4) + sqr(-x50)*POWER(x21,4) + sqr(
     -x50)*POWER(x22,4) + sqr(-x50)*POWER(x23,4) + sqr(-x50)*POWER(x24,4) + 
     sqr(-x50)*POWER(x25,4) + sqr(-x50)*POWER(x26,4) + sqr(-x50)*POWER(x27,4)
      + sqr(-x50)*POWER(x28,4) + sqr(-x50)*POWER(x29,4) + sqr(-x50)*POWER(x30,4
     ) + sqr(-x50)*POWER(x31,4) + sqr(-x50)*POWER(x32,4) + sqr(-x50)*POWER(x33,
     4) + sqr(-x50)*POWER(x34,4) + sqr(-x50)*POWER(x35,4) + sqr(-x50)*POWER(x36
     ,4) + sqr(-x50)*POWER(x37,4) + sqr(-x50)*POWER(x38,4) + sqr(-x50)*POWER(
     x39,4) + sqr(-x50)*POWER(x40,4) + sqr(-x50)*POWER(x41,4) + sqr(-x50)*
     POWER(x42,4) + sqr(-x50)*POWER(x43,4) + sqr(-x50)*POWER(x44,4) + sqr(-x50)
     *POWER(x45,4) + sqr(-x50)*POWER(x46,4) + sqr(-x50)*POWER(x47,4) + sqr(-x50
     )*POWER(x48,4) + sqr(-x50)*POWER(x49,4) + sqr(-x50)*POWER(x50,4) + sqr(-
     x50)*POWER(x51,4) + sqr(-x50)*POWER(x52,4) + sqr(-x50)*POWER(x53,4) + sqr(
     -x50)*POWER(x54,4) + sqr(-x50)*POWER(x55,4) + sqr(-x50)*POWER(x56,4) + 
     sqr(-x50)*POWER(x57,4) + sqr(-x50)*POWER(x58,4) + sqr(-x50)*POWER(x59,4)
      + sqr(-x50)*POWER(x60,4) + sqr(-x50)*POWER(x61,4) + sqr(-x50)*POWER(x62,4
     ) + sqr(-x50)*POWER(x63,4) + sqr(-x50)*POWER(x64,4) + sqr(-x50)*POWER(x65,
     4) + sqr(-x50)*POWER(x66,4) + sqr(-x50)*POWER(x67,4) + sqr(-x50)*POWER(x68
     ,4) + sqr(-x50)*POWER(x69,4) + sqr(-x50)*POWER(x70,4) + sqr(-x50)*POWER(
     x71,4) + sqr(-x50)*POWER(x72,4) + sqr(-x50)*POWER(x73,4) + sqr(-x50)*
     POWER(x74,4) + sqr(-x50)*POWER(x75,4) + sqr(-x50)*POWER(x76,4) + sqr(-x50)
     *POWER(x77,4) + sqr(-x50)*POWER(x78,4) + sqr(-x50)*POWER(x79,4) + sqr(-x50
     )*POWER(x80,4) + sqr(-x50)*POWER(x81,4) + sqr(-x50)*POWER(x82,4) + sqr(-
     x50)*POWER(x83,4) + sqr(-x50)*POWER(x84,4) + sqr(-x50)*POWER(x85,4) + sqr(
     -x50)*POWER(x86,4) + sqr(-x50)*POWER(x87,4) + sqr(-x50)*POWER(x88,4) + 
     sqr(-x50)*POWER(x89,4) + sqr(-x50)*POWER(x90,4) + sqr(-x50)*POWER(x91,4)
      + sqr(-x50)*POWER(x92,4) + sqr(-x50)*POWER(x93,4) + sqr(-x50)*POWER(x94,4
     ) + sqr(-x50)*POWER(x95,4) + sqr(-x50)*POWER(x96,4) + sqr(-x50)*POWER(x97,
     4) + sqr(-x50)*POWER(x98,4) + sqr(-x50)*POWER(x99,4) + sqr(-x50)*POWER(
     x100,4) + sqr(-x51)*POWER(x1,4) + sqr(-x51)*POWER(x2,4) + sqr(-x51)*POWER(
     x3,4) + sqr(-x51)*POWER(x4,4) + sqr(-x51)*POWER(x5,4) + sqr(-x51)*POWER(x6
     ,4) + sqr(-x51)*POWER(x7,4) + sqr(-x51)*POWER(x8,4) + sqr(-x51)*POWER(x9,4
     ) + sqr(-x51)*POWER(x10,4) + sqr(-x51)*POWER(x11,4) + sqr(-x51)*POWER(x12,
     4) + sqr(-x51)*POWER(x13,4) + sqr(-x51)*POWER(x14,4) + sqr(-x51)*POWER(x15
     ,4) + sqr(-x51)*POWER(x16,4) + sqr(-x51)*POWER(x17,4) + sqr(-x51)*POWER(
     x18,4) + sqr(-x51)*POWER(x19,4) + sqr(-x51)*POWER(x20,4) + sqr(-x51)*
     POWER(x21,4) + sqr(-x51)*POWER(x22,4) + sqr(-x51)*POWER(x23,4) + sqr(-x51)
     *POWER(x24,4) + sqr(-x51)*POWER(x25,4) + sqr(-x51)*POWER(x26,4) + sqr(-x51
     )*POWER(x27,4) + sqr(-x51)*POWER(x28,4) + sqr(-x51)*POWER(x29,4) + sqr(-
     x51)*POWER(x30,4) + sqr(-x51)*POWER(x31,4) + sqr(-x51)*POWER(x32,4) + sqr(
     -x51)*POWER(x33,4) + sqr(-x51)*POWER(x34,4) + sqr(-x51)*POWER(x35,4) + 
     sqr(-x51)*POWER(x36,4) + sqr(-x51)*POWER(x37,4) + sqr(-x51)*POWER(x38,4)
      + sqr(-x51)*POWER(x39,4) + sqr(-x51)*POWER(x40,4) + sqr(-x51)*POWER(x41,4
     ) + sqr(-x51)*POWER(x42,4) + sqr(-x51)*POWER(x43,4) + sqr(-x51)*POWER(x44,
     4) + sqr(-x51)*POWER(x45,4) + sqr(-x51)*POWER(x46,4) + sqr(-x51)*POWER(x47
     ,4) + sqr(-x51)*POWER(x48,4) + sqr(-x51)*POWER(x49,4) + sqr(-x51)*POWER(
     x50,4) + sqr(-x51)*POWER(x51,4) + sqr(-x51)*POWER(x52,4) + sqr(-x51)*
     POWER(x53,4) + sqr(-x51)*POWER(x54,4) + sqr(-x51)*POWER(x55,4) + sqr(-x51)
     *POWER(x56,4) + sqr(-x51)*POWER(x57,4) + sqr(-x51)*POWER(x58,4) + sqr(-x51
     )*POWER(x59,4) + sqr(-x51)*POWER(x60,4) + sqr(-x51)*POWER(x61,4) + sqr(-
     x51)*POWER(x62,4) + sqr(-x51)*POWER(x63,4) + sqr(-x51)*POWER(x64,4) + sqr(
     -x51)*POWER(x65,4) + sqr(-x51)*POWER(x66,4) + sqr(-x51)*POWER(x67,4) + 
     sqr(-x51)*POWER(x68,4) + sqr(-x51)*POWER(x69,4) + sqr(-x51)*POWER(x70,4)
      + sqr(-x51)*POWER(x71,4) + sqr(-x51)*POWER(x72,4) + sqr(-x51)*POWER(x73,4
     ) + sqr(-x51)*POWER(x74,4) + sqr(-x51)*POWER(x75,4) + sqr(-x51)*POWER(x76,
     4) + sqr(-x51)*POWER(x77,4) + sqr(-x51)*POWER(x78,4) + sqr(-x51)*POWER(x79
     ,4) + sqr(-x51)*POWER(x80,4) + sqr(-x51)*POWER(x81,4) + sqr(-x51)*POWER(
     x82,4) + sqr(-x51)*POWER(x83,4) + sqr(-x51)*POWER(x84,4) + sqr(-x51)*
     POWER(x85,4) + sqr(-x51)*POWER(x86,4) + sqr(-x51)*POWER(x87,4) + sqr(-x51)
     *POWER(x88,4) + sqr(-x51)*POWER(x89,4) + sqr(-x51)*POWER(x90,4) + sqr(-x51
     )*POWER(x91,4) + sqr(-x51)*POWER(x92,4) + sqr(-x51)*POWER(x93,4) + sqr(-
     x51)*POWER(x94,4) + sqr(-x51)*POWER(x95,4) + sqr(-x51)*POWER(x96,4) + sqr(
     -x51)*POWER(x97,4) + sqr(-x51)*POWER(x98,4) + sqr(-x51)*POWER(x99,4) + 
     sqr(-x51)*POWER(x100,4) + sqr(-x52)*POWER(x1,4) + sqr(-x52)*POWER(x2,4) + 
     sqr(-x52)*POWER(x3,4) + sqr(-x52)*POWER(x4,4) + sqr(-x52)*POWER(x5,4) + 
     sqr(-x52)*POWER(x6,4) + sqr(-x52)*POWER(x7,4) + sqr(-x52)*POWER(x8,4) + 
     sqr(-x52)*POWER(x9,4) + sqr(-x52)*POWER(x10,4) + sqr(-x52)*POWER(x11,4) + 
     sqr(-x52)*POWER(x12,4) + sqr(-x52)*POWER(x13,4) + sqr(-x52)*POWER(x14,4)
      + sqr(-x52)*POWER(x15,4) + sqr(-x52)*POWER(x16,4) + sqr(-x52)*POWER(x17,4
     ) + sqr(-x52)*POWER(x18,4) + sqr(-x52)*POWER(x19,4) + sqr(-x52)*POWER(x20,
     4) + sqr(-x52)*POWER(x21,4) + sqr(-x52)*POWER(x22,4) + sqr(-x52)*POWER(x23
     ,4) + sqr(-x52)*POWER(x24,4) + sqr(-x52)*POWER(x25,4) + sqr(-x52)*POWER(
     x26,4) + sqr(-x52)*POWER(x27,4) + sqr(-x52)*POWER(x28,4) + sqr(-x52)*
     POWER(x29,4) + sqr(-x52)*POWER(x30,4) + sqr(-x52)*POWER(x31,4) + sqr(-x52)
     *POWER(x32,4) + sqr(-x52)*POWER(x33,4) + sqr(-x52)*POWER(x34,4) + sqr(-x52
     )*POWER(x35,4) + sqr(-x52)*POWER(x36,4) + sqr(-x52)*POWER(x37,4) + sqr(-
     x52)*POWER(x38,4) + sqr(-x52)*POWER(x39,4) + sqr(-x52)*POWER(x40,4) + sqr(
     -x52)*POWER(x41,4) + sqr(-x52)*POWER(x42,4) + sqr(-x52)*POWER(x43,4) + 
     sqr(-x52)*POWER(x44,4) + sqr(-x52)*POWER(x45,4) + sqr(-x52)*POWER(x46,4)
      + sqr(-x52)*POWER(x47,4) + sqr(-x52)*POWER(x48,4) + sqr(-x52)*POWER(x49,4
     ) + sqr(-x52)*POWER(x50,4) + sqr(-x52)*POWER(x51,4) + sqr(-x52)*POWER(x52,
     4) + sqr(-x52)*POWER(x53,4) + sqr(-x52)*POWER(x54,4) + sqr(-x52)*POWER(x55
     ,4) + sqr(-x52)*POWER(x56,4) + sqr(-x52)*POWER(x57,4) + sqr(-x52)*POWER(
     x58,4) + sqr(-x52)*POWER(x59,4) + sqr(-x52)*POWER(x60,4) + sqr(-x52)*
     POWER(x61,4) + sqr(-x52)*POWER(x62,4) + sqr(-x52)*POWER(x63,4) + sqr(-x52)
     *POWER(x64,4) + sqr(-x52)*POWER(x65,4) + sqr(-x52)*POWER(x66,4) + sqr(-x52
     )*POWER(x67,4) + sqr(-x52)*POWER(x68,4) + sqr(-x52)*POWER(x69,4) + sqr(-
     x52)*POWER(x70,4) + sqr(-x52)*POWER(x71,4) + sqr(-x52)*POWER(x72,4) + sqr(
     -x52)*POWER(x73,4) + sqr(-x52)*POWER(x74,4) + sqr(-x52)*POWER(x75,4) + 
     sqr(-x52)*POWER(x76,4) + sqr(-x52)*POWER(x77,4) + sqr(-x52)*POWER(x78,4)
      + sqr(-x52)*POWER(x79,4) + sqr(-x52)*POWER(x80,4) + sqr(-x52)*POWER(x81,4
     ) + sqr(-x52)*POWER(x82,4) + sqr(-x52)*POWER(x83,4) + sqr(-x52)*POWER(x84,
     4) + sqr(-x52)*POWER(x85,4) + sqr(-x52)*POWER(x86,4) + sqr(-x52)*POWER(x87
     ,4) + sqr(-x52)*POWER(x88,4) + sqr(-x52)*POWER(x89,4) + sqr(-x52)*POWER(
     x90,4) + sqr(-x52)*POWER(x91,4) + sqr(-x52)*POWER(x92,4) + sqr(-x52)*
     POWER(x93,4) + sqr(-x52)*POWER(x94,4) + sqr(-x52)*POWER(x95,4) + sqr(-x52)
     *POWER(x96,4) + sqr(-x52)*POWER(x97,4) + sqr(-x52)*POWER(x98,4) + sqr(-x52
     )*POWER(x99,4) + sqr(-x52)*POWER(x100,4) + sqr(-x53)*POWER(x1,4) + sqr(-
     x53)*POWER(x2,4) + sqr(-x53)*POWER(x3,4) + sqr(-x53)*POWER(x4,4) + sqr(-
     x53)*POWER(x5,4) + sqr(-x53)*POWER(x6,4) + sqr(-x53)*POWER(x7,4) + sqr(-
     x53)*POWER(x8,4) + sqr(-x53)*POWER(x9,4) + sqr(-x53)*POWER(x10,4) + sqr(-
     x53)*POWER(x11,4) + sqr(-x53)*POWER(x12,4) + sqr(-x53)*POWER(x13,4) + sqr(
     -x53)*POWER(x14,4) + sqr(-x53)*POWER(x15,4) + sqr(-x53)*POWER(x16,4) + 
     sqr(-x53)*POWER(x17,4) + sqr(-x53)*POWER(x18,4) + sqr(-x53)*POWER(x19,4)
      + sqr(-x53)*POWER(x20,4) + sqr(-x53)*POWER(x21,4) + sqr(-x53)*POWER(x22,4
     ) + sqr(-x53)*POWER(x23,4) + sqr(-x53)*POWER(x24,4) + sqr(-x53)*POWER(x25,
     4) + sqr(-x53)*POWER(x26,4) + sqr(-x53)*POWER(x27,4) + sqr(-x53)*POWER(x28
     ,4) + sqr(-x53)*POWER(x29,4) + sqr(-x53)*POWER(x30,4) + sqr(-x53)*POWER(
     x31,4) + sqr(-x53)*POWER(x32,4) + sqr(-x53)*POWER(x33,4) + sqr(-x53)*
     POWER(x34,4) + sqr(-x53)*POWER(x35,4) + sqr(-x53)*POWER(x36,4) + sqr(-x53)
     *POWER(x37,4) + sqr(-x53)*POWER(x38,4) + sqr(-x53)*POWER(x39,4) + sqr(-x53
     )*POWER(x40,4) + sqr(-x53)*POWER(x41,4) + sqr(-x53)*POWER(x42,4) + sqr(-
     x53)*POWER(x43,4) + sqr(-x53)*POWER(x44,4) + sqr(-x53)*POWER(x45,4) + sqr(
     -x53)*POWER(x46,4) + sqr(-x53)*POWER(x47,4) + sqr(-x53)*POWER(x48,4) + 
     sqr(-x53)*POWER(x49,4) + sqr(-x53)*POWER(x50,4) + sqr(-x53)*POWER(x51,4)
      + sqr(-x53)*POWER(x52,4) + sqr(-x53)*POWER(x53,4) + sqr(-x53)*POWER(x54,4
     ) + sqr(-x53)*POWER(x55,4) + sqr(-x53)*POWER(x56,4) + sqr(-x53)*POWER(x57,
     4) + sqr(-x53)*POWER(x58,4) + sqr(-x53)*POWER(x59,4) + sqr(-x53)*POWER(x60
     ,4) + sqr(-x53)*POWER(x61,4) + sqr(-x53)*POWER(x62,4) + sqr(-x53)*POWER(
     x63,4) + sqr(-x53)*POWER(x64,4) + sqr(-x53)*POWER(x65,4) + sqr(-x53)*
     POWER(x66,4) + sqr(-x53)*POWER(x67,4) + sqr(-x53)*POWER(x68,4) + sqr(-x53)
     *POWER(x69,4) + sqr(-x53)*POWER(x70,4) + sqr(-x53)*POWER(x71,4) + sqr(-x53
     )*POWER(x72,4) + sqr(-x53)*POWER(x73,4) + sqr(-x53)*POWER(x74,4) + sqr(-
     x53)*POWER(x75,4) + sqr(-x53)*POWER(x76,4) + sqr(-x53)*POWER(x77,4) + sqr(
     -x53)*POWER(x78,4) + sqr(-x53)*POWER(x79,4) + sqr(-x53)*POWER(x80,4) + 
     sqr(-x53)*POWER(x81,4) + sqr(-x53)*POWER(x82,4) + sqr(-x53)*POWER(x83,4)
      + sqr(-x53)*POWER(x84,4) + sqr(-x53)*POWER(x85,4) + sqr(-x53)*POWER(x86,4
     ) + sqr(-x53)*POWER(x87,4) + sqr(-x53)*POWER(x88,4) + sqr(-x53)*POWER(x89,
     4) + sqr(-x53)*POWER(x90,4) + sqr(-x53)*POWER(x91,4) + sqr(-x53)*POWER(x92
     ,4) + sqr(-x53)*POWER(x93,4) + sqr(-x53)*POWER(x94,4) + sqr(-x53)*POWER(
     x95,4) + sqr(-x53)*POWER(x96,4) + sqr(-x53)*POWER(x97,4) + sqr(-x53)*
     POWER(x98,4) + sqr(-x53)*POWER(x99,4) + sqr(-x53)*POWER(x100,4) + sqr(-x54
     )*POWER(x1,4) + sqr(-x54)*POWER(x2,4) + sqr(-x54)*POWER(x3,4) + sqr(-x54)*
     POWER(x4,4) + sqr(-x54)*POWER(x5,4) + sqr(-x54)*POWER(x6,4) + sqr(-x54)*
     POWER(x7,4) + sqr(-x54)*POWER(x8,4) + sqr(-x54)*POWER(x9,4) + sqr(-x54)*
     POWER(x10,4) + sqr(-x54)*POWER(x11,4) + sqr(-x54)*POWER(x12,4) + sqr(-x54)
     *POWER(x13,4) + sqr(-x54)*POWER(x14,4) + sqr(-x54)*POWER(x15,4) + sqr(-x54
     )*POWER(x16,4) + sqr(-x54)*POWER(x17,4) + sqr(-x54)*POWER(x18,4) + sqr(-
     x54)*POWER(x19,4) + sqr(-x54)*POWER(x20,4) + sqr(-x54)*POWER(x21,4) + sqr(
     -x54)*POWER(x22,4) + sqr(-x54)*POWER(x23,4) + sqr(-x54)*POWER(x24,4) + 
     sqr(-x54)*POWER(x25,4) + sqr(-x54)*POWER(x26,4) + sqr(-x54)*POWER(x27,4)
      + sqr(-x54)*POWER(x28,4) + sqr(-x54)*POWER(x29,4) + sqr(-x54)*POWER(x30,4
     ) + sqr(-x54)*POWER(x31,4) + sqr(-x54)*POWER(x32,4) + sqr(-x54)*POWER(x33,
     4) + sqr(-x54)*POWER(x34,4) + sqr(-x54)*POWER(x35,4) + sqr(-x54)*POWER(x36
     ,4) + sqr(-x54)*POWER(x37,4) + sqr(-x54)*POWER(x38,4) + sqr(-x54)*POWER(
     x39,4) + sqr(-x54)*POWER(x40,4) + sqr(-x54)*POWER(x41,4) + sqr(-x54)*
     POWER(x42,4) + sqr(-x54)*POWER(x43,4) + sqr(-x54)*POWER(x44,4) + sqr(-x54)
     *POWER(x45,4) + sqr(-x54)*POWER(x46,4) + sqr(-x54)*POWER(x47,4) + sqr(-x54
     )*POWER(x48,4) + sqr(-x54)*POWER(x49,4) + sqr(-x54)*POWER(x50,4) + sqr(-
     x54)*POWER(x51,4) + sqr(-x54)*POWER(x52,4) + sqr(-x54)*POWER(x53,4) + sqr(
     -x54)*POWER(x54,4) + sqr(-x54)*POWER(x55,4) + sqr(-x54)*POWER(x56,4) + 
     sqr(-x54)*POWER(x57,4) + sqr(-x54)*POWER(x58,4) + sqr(-x54)*POWER(x59,4)
      + sqr(-x54)*POWER(x60,4) + sqr(-x54)*POWER(x61,4) + sqr(-x54)*POWER(x62,4
     ) + sqr(-x54)*POWER(x63,4) + sqr(-x54)*POWER(x64,4) + sqr(-x54)*POWER(x65,
     4) + sqr(-x54)*POWER(x66,4) + sqr(-x54)*POWER(x67,4) + sqr(-x54)*POWER(x68
     ,4) + sqr(-x54)*POWER(x69,4) + sqr(-x54)*POWER(x70,4) + sqr(-x54)*POWER(
     x71,4) + sqr(-x54)*POWER(x72,4) + sqr(-x54)*POWER(x73,4) + sqr(-x54)*
     POWER(x74,4) + sqr(-x54)*POWER(x75,4) + sqr(-x54)*POWER(x76,4) + sqr(-x54)
     *POWER(x77,4) + sqr(-x54)*POWER(x78,4) + sqr(-x54)*POWER(x79,4) + sqr(-x54
     )*POWER(x80,4) + sqr(-x54)*POWER(x81,4) + sqr(-x54)*POWER(x82,4) + sqr(-
     x54)*POWER(x83,4) + sqr(-x54)*POWER(x84,4) + sqr(-x54)*POWER(x85,4) + sqr(
     -x54)*POWER(x86,4) + sqr(-x54)*POWER(x87,4) + sqr(-x54)*POWER(x88,4) + 
     sqr(-x54)*POWER(x89,4) + sqr(-x54)*POWER(x90,4) + sqr(-x54)*POWER(x91,4)
      + sqr(-x54)*POWER(x92,4) + sqr(-x54)*POWER(x93,4) + sqr(-x54)*POWER(x94,4
     ) + sqr(-x54)*POWER(x95,4) + sqr(-x54)*POWER(x96,4) + sqr(-x54)*POWER(x97,
     4) + sqr(-x54)*POWER(x98,4) + sqr(-x54)*POWER(x99,4) + sqr(-x54)*POWER(
     x100,4) + sqr(-x55)*POWER(x1,4) + sqr(-x55)*POWER(x2,4) + sqr(-x55)*POWER(
     x3,4) + sqr(-x55)*POWER(x4,4) + sqr(-x55)*POWER(x5,4) + sqr(-x55)*POWER(x6
     ,4) + sqr(-x55)*POWER(x7,4) + sqr(-x55)*POWER(x8,4) + sqr(-x55)*POWER(x9,4
     ) + sqr(-x55)*POWER(x10,4) + sqr(-x55)*POWER(x11,4) + sqr(-x55)*POWER(x12,
     4) + sqr(-x55)*POWER(x13,4) + sqr(-x55)*POWER(x14,4) + sqr(-x55)*POWER(x15
     ,4) + sqr(-x55)*POWER(x16,4) + sqr(-x55)*POWER(x17,4) + sqr(-x55)*POWER(
     x18,4) + sqr(-x55)*POWER(x19,4) + sqr(-x55)*POWER(x20,4) + sqr(-x55)*
     POWER(x21,4) + sqr(-x55)*POWER(x22,4) + sqr(-x55)*POWER(x23,4) + sqr(-x55)
     *POWER(x24,4) + sqr(-x55)*POWER(x25,4) + sqr(-x55)*POWER(x26,4) + sqr(-x55
     )*POWER(x27,4) + sqr(-x55)*POWER(x28,4) + sqr(-x55)*POWER(x29,4) + sqr(-
     x55)*POWER(x30,4) + sqr(-x55)*POWER(x31,4) + sqr(-x55)*POWER(x32,4) + sqr(
     -x55)*POWER(x33,4) + sqr(-x55)*POWER(x34,4) + sqr(-x55)*POWER(x35,4) + 
     sqr(-x55)*POWER(x36,4) + sqr(-x55)*POWER(x37,4) + sqr(-x55)*POWER(x38,4)
      + sqr(-x55)*POWER(x39,4) + sqr(-x55)*POWER(x40,4) + sqr(-x55)*POWER(x41,4
     ) + sqr(-x55)*POWER(x42,4) + sqr(-x55)*POWER(x43,4) + sqr(-x55)*POWER(x44,
     4) + sqr(-x55)*POWER(x45,4) + sqr(-x55)*POWER(x46,4) + sqr(-x55)*POWER(x47
     ,4) + sqr(-x55)*POWER(x48,4) + sqr(-x55)*POWER(x49,4) + sqr(-x55)*POWER(
     x50,4) + sqr(-x55)*POWER(x51,4) + sqr(-x55)*POWER(x52,4) + sqr(-x55)*
     POWER(x53,4) + sqr(-x55)*POWER(x54,4) + sqr(-x55)*POWER(x55,4) + sqr(-x55)
     *POWER(x56,4) + sqr(-x55)*POWER(x57,4) + sqr(-x55)*POWER(x58,4) + sqr(-x55
     )*POWER(x59,4) + sqr(-x55)*POWER(x60,4) + sqr(-x55)*POWER(x61,4) + sqr(-
     x55)*POWER(x62,4) + sqr(-x55)*POWER(x63,4) + sqr(-x55)*POWER(x64,4) + sqr(
     -x55)*POWER(x65,4) + sqr(-x55)*POWER(x66,4) + sqr(-x55)*POWER(x67,4) + 
     sqr(-x55)*POWER(x68,4) + sqr(-x55)*POWER(x69,4) + sqr(-x55)*POWER(x70,4)
      + sqr(-x55)*POWER(x71,4) + sqr(-x55)*POWER(x72,4) + sqr(-x55)*POWER(x73,4
     ) + sqr(-x55)*POWER(x74,4) + sqr(-x55)*POWER(x75,4) + sqr(-x55)*POWER(x76,
     4) + sqr(-x55)*POWER(x77,4) + sqr(-x55)*POWER(x78,4) + sqr(-x55)*POWER(x79
     ,4) + sqr(-x55)*POWER(x80,4) + sqr(-x55)*POWER(x81,4) + sqr(-x55)*POWER(
     x82,4) + sqr(-x55)*POWER(x83,4) + sqr(-x55)*POWER(x84,4) + sqr(-x55)*
     POWER(x85,4) + sqr(-x55)*POWER(x86,4) + sqr(-x55)*POWER(x87,4) + sqr(-x55)
     *POWER(x88,4) + sqr(-x55)*POWER(x89,4) + sqr(-x55)*POWER(x90,4) + sqr(-x55
     )*POWER(x91,4) + sqr(-x55)*POWER(x92,4) + sqr(-x55)*POWER(x93,4) + sqr(-
     x55)*POWER(x94,4) + sqr(-x55)*POWER(x95,4) + sqr(-x55)*POWER(x96,4) + sqr(
     -x55)*POWER(x97,4) + sqr(-x55)*POWER(x98,4) + sqr(-x55)*POWER(x99,4) + 
     sqr(-x55)*POWER(x100,4) + sqr(-x56)*POWER(x1,4) + sqr(-x56)*POWER(x2,4) + 
     sqr(-x56)*POWER(x3,4) + sqr(-x56)*POWER(x4,4) + sqr(-x56)*POWER(x5,4) + 
     sqr(-x56)*POWER(x6,4) + sqr(-x56)*POWER(x7,4) + sqr(-x56)*POWER(x8,4) + 
     sqr(-x56)*POWER(x9,4) + sqr(-x56)*POWER(x10,4) + sqr(-x56)*POWER(x11,4) + 
     sqr(-x56)*POWER(x12,4) + sqr(-x56)*POWER(x13,4) + sqr(-x56)*POWER(x14,4)
      + sqr(-x56)*POWER(x15,4) + sqr(-x56)*POWER(x16,4) + sqr(-x56)*POWER(x17,4
     ) + sqr(-x56)*POWER(x18,4) + sqr(-x56)*POWER(x19,4) + sqr(-x56)*POWER(x20,
     4) + sqr(-x56)*POWER(x21,4) + sqr(-x56)*POWER(x22,4) + sqr(-x56)*POWER(x23
     ,4) + sqr(-x56)*POWER(x24,4) + sqr(-x56)*POWER(x25,4) + sqr(-x56)*POWER(
     x26,4) + sqr(-x56)*POWER(x27,4) + sqr(-x56)*POWER(x28,4) + sqr(-x56)*
     POWER(x29,4) + sqr(-x56)*POWER(x30,4) + sqr(-x56)*POWER(x31,4) + sqr(-x56)
     *POWER(x32,4) + sqr(-x56)*POWER(x33,4) + sqr(-x56)*POWER(x34,4) + sqr(-x56
     )*POWER(x35,4) + sqr(-x56)*POWER(x36,4) + sqr(-x56)*POWER(x37,4) + sqr(-
     x56)*POWER(x38,4) + sqr(-x56)*POWER(x39,4) + sqr(-x56)*POWER(x40,4) + sqr(
     -x56)*POWER(x41,4) + sqr(-x56)*POWER(x42,4) + sqr(-x56)*POWER(x43,4) + 
     sqr(-x56)*POWER(x44,4) + sqr(-x56)*POWER(x45,4) + sqr(-x56)*POWER(x46,4)
      + sqr(-x56)*POWER(x47,4) + sqr(-x56)*POWER(x48,4) + sqr(-x56)*POWER(x49,4
     ) + sqr(-x56)*POWER(x50,4) + sqr(-x56)*POWER(x51,4) + sqr(-x56)*POWER(x52,
     4) + sqr(-x56)*POWER(x53,4) + sqr(-x56)*POWER(x54,4) + sqr(-x56)*POWER(x55
     ,4) + sqr(-x56)*POWER(x56,4) + sqr(-x56)*POWER(x57,4) + sqr(-x56)*POWER(
     x58,4) + sqr(-x56)*POWER(x59,4) + sqr(-x56)*POWER(x60,4) + sqr(-x56)*
     POWER(x61,4) + sqr(-x56)*POWER(x62,4) + sqr(-x56)*POWER(x63,4) + sqr(-x56)
     *POWER(x64,4) + sqr(-x56)*POWER(x65,4) + sqr(-x56)*POWER(x66,4) + sqr(-x56
     )*POWER(x67,4) + sqr(-x56)*POWER(x68,4) + sqr(-x56)*POWER(x69,4) + sqr(-
     x56)*POWER(x70,4) + sqr(-x56)*POWER(x71,4) + sqr(-x56)*POWER(x72,4) + sqr(
     -x56)*POWER(x73,4) + sqr(-x56)*POWER(x74,4) + sqr(-x56)*POWER(x75,4) + 
     sqr(-x56)*POWER(x76,4) + sqr(-x56)*POWER(x77,4) + sqr(-x56)*POWER(x78,4)
      + sqr(-x56)*POWER(x79,4) + sqr(-x56)*POWER(x80,4) + sqr(-x56)*POWER(x81,4
     ) + sqr(-x56)*POWER(x82,4) + sqr(-x56)*POWER(x83,4) + sqr(-x56)*POWER(x84,
     4) + sqr(-x56)*POWER(x85,4) + sqr(-x56)*POWER(x86,4) + sqr(-x56)*POWER(x87
     ,4) + sqr(-x56)*POWER(x88,4) + sqr(-x56)*POWER(x89,4) + sqr(-x56)*POWER(
     x90,4) + sqr(-x56)*POWER(x91,4) + sqr(-x56)*POWER(x92,4) + sqr(-x56)*
     POWER(x93,4) + sqr(-x56)*POWER(x94,4) + sqr(-x56)*POWER(x95,4) + sqr(-x56)
     *POWER(x96,4) + sqr(-x56)*POWER(x97,4) + sqr(-x56)*POWER(x98,4) + sqr(-x56
     )*POWER(x99,4) + sqr(-x56)*POWER(x100,4) + sqr(-x57)*POWER(x1,4) + sqr(-
     x57)*POWER(x2,4) + sqr(-x57)*POWER(x3,4) + sqr(-x57)*POWER(x4,4) + sqr(-
     x57)*POWER(x5,4) + sqr(-x57)*POWER(x6,4) + sqr(-x57)*POWER(x7,4) + sqr(-
     x57)*POWER(x8,4) + sqr(-x57)*POWER(x9,4) + sqr(-x57)*POWER(x10,4) + sqr(-
     x57)*POWER(x11,4) + sqr(-x57)*POWER(x12,4) + sqr(-x57)*POWER(x13,4) + sqr(
     -x57)*POWER(x14,4) + sqr(-x57)*POWER(x15,4) + sqr(-x57)*POWER(x16,4) + 
     sqr(-x57)*POWER(x17,4) + sqr(-x57)*POWER(x18,4) + sqr(-x57)*POWER(x19,4)
      + sqr(-x57)*POWER(x20,4) + sqr(-x57)*POWER(x21,4) + sqr(-x57)*POWER(x22,4
     ) + sqr(-x57)*POWER(x23,4) + sqr(-x57)*POWER(x24,4) + sqr(-x57)*POWER(x25,
     4) + sqr(-x57)*POWER(x26,4) + sqr(-x57)*POWER(x27,4) + sqr(-x57)*POWER(x28
     ,4) + sqr(-x57)*POWER(x29,4) + sqr(-x57)*POWER(x30,4) + sqr(-x57)*POWER(
     x31,4) + sqr(-x57)*POWER(x32,4) + sqr(-x57)*POWER(x33,4) + sqr(-x57)*
     POWER(x34,4) + sqr(-x57)*POWER(x35,4) + sqr(-x57)*POWER(x36,4) + sqr(-x57)
     *POWER(x37,4) + sqr(-x57)*POWER(x38,4) + sqr(-x57)*POWER(x39,4) + sqr(-x57
     )*POWER(x40,4) + sqr(-x57)*POWER(x41,4) + sqr(-x57)*POWER(x42,4) + sqr(-
     x57)*POWER(x43,4) + sqr(-x57)*POWER(x44,4) + sqr(-x57)*POWER(x45,4) + sqr(
     -x57)*POWER(x46,4) + sqr(-x57)*POWER(x47,4) + sqr(-x57)*POWER(x48,4) + 
     sqr(-x57)*POWER(x49,4) + sqr(-x57)*POWER(x50,4) + sqr(-x57)*POWER(x51,4)
      + sqr(-x57)*POWER(x52,4) + sqr(-x57)*POWER(x53,4) + sqr(-x57)*POWER(x54,4
     ) + sqr(-x57)*POWER(x55,4) + sqr(-x57)*POWER(x56,4) + sqr(-x57)*POWER(x57,
     4) + sqr(-x57)*POWER(x58,4) + sqr(-x57)*POWER(x59,4) + sqr(-x57)*POWER(x60
     ,4) + sqr(-x57)*POWER(x61,4) + sqr(-x57)*POWER(x62,4) + sqr(-x57)*POWER(
     x63,4) + sqr(-x57)*POWER(x64,4) + sqr(-x57)*POWER(x65,4) + sqr(-x57)*
     POWER(x66,4) + sqr(-x57)*POWER(x67,4) + sqr(-x57)*POWER(x68,4) + sqr(-x57)
     *POWER(x69,4) + sqr(-x57)*POWER(x70,4) + sqr(-x57)*POWER(x71,4) + sqr(-x57
     )*POWER(x72,4) + sqr(-x57)*POWER(x73,4) + sqr(-x57)*POWER(x74,4) + sqr(-
     x57)*POWER(x75,4) + sqr(-x57)*POWER(x76,4) + sqr(-x57)*POWER(x77,4) + sqr(
     -x57)*POWER(x78,4) + sqr(-x57)*POWER(x79,4) + sqr(-x57)*POWER(x80,4) + 
     sqr(-x57)*POWER(x81,4) + sqr(-x57)*POWER(x82,4) + sqr(-x57)*POWER(x83,4)
      + sqr(-x57)*POWER(x84,4) + sqr(-x57)*POWER(x85,4) + sqr(-x57)*POWER(x86,4
     ) + sqr(-x57)*POWER(x87,4) + sqr(-x57)*POWER(x88,4) + sqr(-x57)*POWER(x89,
     4) + sqr(-x57)*POWER(x90,4) + sqr(-x57)*POWER(x91,4) + sqr(-x57)*POWER(x92
     ,4) + sqr(-x57)*POWER(x93,4) + sqr(-x57)*POWER(x94,4) + sqr(-x57)*POWER(
     x95,4) + sqr(-x57)*POWER(x96,4) + sqr(-x57)*POWER(x97,4) + sqr(-x57)*
     POWER(x98,4) + sqr(-x57)*POWER(x99,4) + sqr(-x57)*POWER(x100,4) + sqr(-x58
     )*POWER(x1,4) + sqr(-x58)*POWER(x2,4) + sqr(-x58)*POWER(x3,4) + sqr(-x58)*
     POWER(x4,4) + sqr(-x58)*POWER(x5,4) + sqr(-x58)*POWER(x6,4) + sqr(-x58)*
     POWER(x7,4) + sqr(-x58)*POWER(x8,4) + sqr(-x58)*POWER(x9,4) + sqr(-x58)*
     POWER(x10,4) + sqr(-x58)*POWER(x11,4) + sqr(-x58)*POWER(x12,4) + sqr(-x58)
     *POWER(x13,4) + sqr(-x58)*POWER(x14,4) + sqr(-x58)*POWER(x15,4) + sqr(-x58
     )*POWER(x16,4) + sqr(-x58)*POWER(x17,4) + sqr(-x58)*POWER(x18,4) + sqr(-
     x58)*POWER(x19,4) + sqr(-x58)*POWER(x20,4) + sqr(-x58)*POWER(x21,4) + sqr(
     -x58)*POWER(x22,4) + sqr(-x58)*POWER(x23,4) + sqr(-x58)*POWER(x24,4) + 
     sqr(-x58)*POWER(x25,4) + sqr(-x58)*POWER(x26,4) + sqr(-x58)*POWER(x27,4)
      + sqr(-x58)*POWER(x28,4) + sqr(-x58)*POWER(x29,4) + sqr(-x58)*POWER(x30,4
     ) + sqr(-x58)*POWER(x31,4) + sqr(-x58)*POWER(x32,4) + sqr(-x58)*POWER(x33,
     4) + sqr(-x58)*POWER(x34,4) + sqr(-x58)*POWER(x35,4) + sqr(-x58)*POWER(x36
     ,4) + sqr(-x58)*POWER(x37,4) + sqr(-x58)*POWER(x38,4) + sqr(-x58)*POWER(
     x39,4) + sqr(-x58)*POWER(x40,4) + sqr(-x58)*POWER(x41,4) + sqr(-x58)*
     POWER(x42,4) + sqr(-x58)*POWER(x43,4) + sqr(-x58)*POWER(x44,4) + sqr(-x58)
     *POWER(x45,4) + sqr(-x58)*POWER(x46,4) + sqr(-x58)*POWER(x47,4) + sqr(-x58
     )*POWER(x48,4) + sqr(-x58)*POWER(x49,4) + sqr(-x58)*POWER(x50,4) + sqr(-
     x58)*POWER(x51,4) + sqr(-x58)*POWER(x52,4) + sqr(-x58)*POWER(x53,4) + sqr(
     -x58)*POWER(x54,4) + sqr(-x58)*POWER(x55,4) + sqr(-x58)*POWER(x56,4) + 
     sqr(-x58)*POWER(x57,4) + sqr(-x58)*POWER(x58,4) + sqr(-x58)*POWER(x59,4)
      + sqr(-x58)*POWER(x60,4) + sqr(-x58)*POWER(x61,4) + sqr(-x58)*POWER(x62,4
     ) + sqr(-x58)*POWER(x63,4) + sqr(-x58)*POWER(x64,4) + sqr(-x58)*POWER(x65,
     4) + sqr(-x58)*POWER(x66,4) + sqr(-x58)*POWER(x67,4) + sqr(-x58)*POWER(x68
     ,4) + sqr(-x58)*POWER(x69,4) + sqr(-x58)*POWER(x70,4) + sqr(-x58)*POWER(
     x71,4) + sqr(-x58)*POWER(x72,4) + sqr(-x58)*POWER(x73,4) + sqr(-x58)*
     POWER(x74,4) + sqr(-x58)*POWER(x75,4) + sqr(-x58)*POWER(x76,4) + sqr(-x58)
     *POWER(x77,4) + sqr(-x58)*POWER(x78,4) + sqr(-x58)*POWER(x79,4) + sqr(-x58
     )*POWER(x80,4) + sqr(-x58)*POWER(x81,4) + sqr(-x58)*POWER(x82,4) + sqr(-
     x58)*POWER(x83,4) + sqr(-x58)*POWER(x84,4) + sqr(-x58)*POWER(x85,4) + sqr(
     -x58)*POWER(x86,4) + sqr(-x58)*POWER(x87,4) + sqr(-x58)*POWER(x88,4) + 
     sqr(-x58)*POWER(x89,4) + sqr(-x58)*POWER(x90,4) + sqr(-x58)*POWER(x91,4)
      + sqr(-x58)*POWER(x92,4) + sqr(-x58)*POWER(x93,4) + sqr(-x58)*POWER(x94,4
     ) + sqr(-x58)*POWER(x95,4) + sqr(-x58)*POWER(x96,4) + sqr(-x58)*POWER(x97,
     4) + sqr(-x58)*POWER(x98,4) + sqr(-x58)*POWER(x99,4) + sqr(-x58)*POWER(
     x100,4) + sqr(-x59)*POWER(x1,4) + sqr(-x59)*POWER(x2,4) + sqr(-x59)*POWER(
     x3,4) + sqr(-x59)*POWER(x4,4) + sqr(-x59)*POWER(x5,4) + sqr(-x59)*POWER(x6
     ,4) + sqr(-x59)*POWER(x7,4) + sqr(-x59)*POWER(x8,4) + sqr(-x59)*POWER(x9,4
     ) + sqr(-x59)*POWER(x10,4) + sqr(-x59)*POWER(x11,4) + sqr(-x59)*POWER(x12,
     4) + sqr(-x59)*POWER(x13,4) + sqr(-x59)*POWER(x14,4) + sqr(-x59)*POWER(x15
     ,4) + sqr(-x59)*POWER(x16,4) + sqr(-x59)*POWER(x17,4) + sqr(-x59)*POWER(
     x18,4) + sqr(-x59)*POWER(x19,4) + sqr(-x59)*POWER(x20,4) + sqr(-x59)*
     POWER(x21,4) + sqr(-x59)*POWER(x22,4) + sqr(-x59)*POWER(x23,4) + sqr(-x59)
     *POWER(x24,4) + sqr(-x59)*POWER(x25,4) + sqr(-x59)*POWER(x26,4) + sqr(-x59
     )*POWER(x27,4) + sqr(-x59)*POWER(x28,4) + sqr(-x59)*POWER(x29,4) + sqr(-
     x59)*POWER(x30,4) + sqr(-x59)*POWER(x31,4) + sqr(-x59)*POWER(x32,4) + sqr(
     -x59)*POWER(x33,4) + sqr(-x59)*POWER(x34,4) + sqr(-x59)*POWER(x35,4) + 
     sqr(-x59)*POWER(x36,4) + sqr(-x59)*POWER(x37,4) + sqr(-x59)*POWER(x38,4)
      + sqr(-x59)*POWER(x39,4) + sqr(-x59)*POWER(x40,4) + sqr(-x59)*POWER(x41,4
     ) + sqr(-x59)*POWER(x42,4) + sqr(-x59)*POWER(x43,4) + sqr(-x59)*POWER(x44,
     4) + sqr(-x59)*POWER(x45,4) + sqr(-x59)*POWER(x46,4) + sqr(-x59)*POWER(x47
     ,4) + sqr(-x59)*POWER(x48,4) + sqr(-x59)*POWER(x49,4) + sqr(-x59)*POWER(
     x50,4) + sqr(-x59)*POWER(x51,4) + sqr(-x59)*POWER(x52,4) + sqr(-x59)*
     POWER(x53,4) + sqr(-x59)*POWER(x54,4) + sqr(-x59)*POWER(x55,4) + sqr(-x59)
     *POWER(x56,4) + sqr(-x59)*POWER(x57,4) + sqr(-x59)*POWER(x58,4) + sqr(-x59
     )*POWER(x59,4) + sqr(-x59)*POWER(x60,4) + sqr(-x59)*POWER(x61,4) + sqr(-
     x59)*POWER(x62,4) + sqr(-x59)*POWER(x63,4) + sqr(-x59)*POWER(x64,4) + sqr(
     -x59)*POWER(x65,4) + sqr(-x59)*POWER(x66,4) + sqr(-x59)*POWER(x67,4) + 
     sqr(-x59)*POWER(x68,4) + sqr(-x59)*POWER(x69,4) + sqr(-x59)*POWER(x70,4)
      + sqr(-x59)*POWER(x71,4) + sqr(-x59)*POWER(x72,4) + sqr(-x59)*POWER(x73,4
     ) + sqr(-x59)*POWER(x74,4) + sqr(-x59)*POWER(x75,4) + sqr(-x59)*POWER(x76,
     4) + sqr(-x59)*POWER(x77,4) + sqr(-x59)*POWER(x78,4) + sqr(-x59)*POWER(x79
     ,4) + sqr(-x59)*POWER(x80,4) + sqr(-x59)*POWER(x81,4) + sqr(-x59)*POWER(
     x82,4) + sqr(-x59)*POWER(x83,4) + sqr(-x59)*POWER(x84,4) + sqr(-x59)*
     POWER(x85,4) + sqr(-x59)*POWER(x86,4) + sqr(-x59)*POWER(x87,4) + sqr(-x59)
     *POWER(x88,4) + sqr(-x59)*POWER(x89,4) + sqr(-x59)*POWER(x90,4) + sqr(-x59
     )*POWER(x91,4) + sqr(-x59)*POWER(x92,4) + sqr(-x59)*POWER(x93,4) + sqr(-
     x59)*POWER(x94,4) + sqr(-x59)*POWER(x95,4) + sqr(-x59)*POWER(x96,4) + sqr(
     -x59)*POWER(x97,4) + sqr(-x59)*POWER(x98,4) + sqr(-x59)*POWER(x99,4) + 
     sqr(-x59)*POWER(x100,4) + sqr(-x60)*POWER(x1,4) + sqr(-x60)*POWER(x2,4) + 
     sqr(-x60)*POWER(x3,4) + sqr(-x60)*POWER(x4,4) + sqr(-x60)*POWER(x5,4) + 
     sqr(-x60)*POWER(x6,4) + sqr(-x60)*POWER(x7,4) + sqr(-x60)*POWER(x8,4) + 
     sqr(-x60)*POWER(x9,4) + sqr(-x60)*POWER(x10,4) + sqr(-x60)*POWER(x11,4) + 
     sqr(-x60)*POWER(x12,4) + sqr(-x60)*POWER(x13,4) + sqr(-x60)*POWER(x14,4)
      + sqr(-x60)*POWER(x15,4) + sqr(-x60)*POWER(x16,4) + sqr(-x60)*POWER(x17,4
     ) + sqr(-x60)*POWER(x18,4) + sqr(-x60)*POWER(x19,4) + sqr(-x60)*POWER(x20,
     4) + sqr(-x60)*POWER(x21,4) + sqr(-x60)*POWER(x22,4) + sqr(-x60)*POWER(x23
     ,4) + sqr(-x60)*POWER(x24,4) + sqr(-x60)*POWER(x25,4) + sqr(-x60)*POWER(
     x26,4) + sqr(-x60)*POWER(x27,4) + sqr(-x60)*POWER(x28,4) + sqr(-x60)*
     POWER(x29,4) + sqr(-x60)*POWER(x30,4) + sqr(-x60)*POWER(x31,4) + sqr(-x60)
     *POWER(x32,4) + sqr(-x60)*POWER(x33,4) + sqr(-x60)*POWER(x34,4) + sqr(-x60
     )*POWER(x35,4) + sqr(-x60)*POWER(x36,4) + sqr(-x60)*POWER(x37,4) + sqr(-
     x60)*POWER(x38,4) + sqr(-x60)*POWER(x39,4) + sqr(-x60)*POWER(x40,4) + sqr(
     -x60)*POWER(x41,4) + sqr(-x60)*POWER(x42,4) + sqr(-x60)*POWER(x43,4) + 
     sqr(-x60)*POWER(x44,4) + sqr(-x60)*POWER(x45,4) + sqr(-x60)*POWER(x46,4)
      + sqr(-x60)*POWER(x47,4) + sqr(-x60)*POWER(x48,4) + sqr(-x60)*POWER(x49,4
     ) + sqr(-x60)*POWER(x50,4) + sqr(-x60)*POWER(x51,4) + sqr(-x60)*POWER(x52,
     4) + sqr(-x60)*POWER(x53,4) + sqr(-x60)*POWER(x54,4) + sqr(-x60)*POWER(x55
     ,4) + sqr(-x60)*POWER(x56,4) + sqr(-x60)*POWER(x57,4) + sqr(-x60)*POWER(
     x58,4) + sqr(-x60)*POWER(x59,4) + sqr(-x60)*POWER(x60,4) + sqr(-x60)*
     POWER(x61,4) + sqr(-x60)*POWER(x62,4) + sqr(-x60)*POWER(x63,4) + sqr(-x60)
     *POWER(x64,4) + sqr(-x60)*POWER(x65,4) + sqr(-x60)*POWER(x66,4) + sqr(-x60
     )*POWER(x67,4) + sqr(-x60)*POWER(x68,4) + sqr(-x60)*POWER(x69,4) + sqr(-
     x60)*POWER(x70,4) + sqr(-x60)*POWER(x71,4) + sqr(-x60)*POWER(x72,4) + sqr(
     -x60)*POWER(x73,4) + sqr(-x60)*POWER(x74,4) + sqr(-x60)*POWER(x75,4) + 
     sqr(-x60)*POWER(x76,4) + sqr(-x60)*POWER(x77,4) + sqr(-x60)*POWER(x78,4)
      + sqr(-x60)*POWER(x79,4) + sqr(-x60)*POWER(x80,4) + sqr(-x60)*POWER(x81,4
     ) + sqr(-x60)*POWER(x82,4) + sqr(-x60)*POWER(x83,4) + sqr(-x60)*POWER(x84,
     4) + sqr(-x60)*POWER(x85,4) + sqr(-x60)*POWER(x86,4) + sqr(-x60)*POWER(x87
     ,4) + sqr(-x60)*POWER(x88,4) + sqr(-x60)*POWER(x89,4) + sqr(-x60)*POWER(
     x90,4) + sqr(-x60)*POWER(x91,4) + sqr(-x60)*POWER(x92,4) + sqr(-x60)*
     POWER(x93,4) + sqr(-x60)*POWER(x94,4) + sqr(-x60)*POWER(x95,4) + sqr(-x60)
     *POWER(x96,4) + sqr(-x60)*POWER(x97,4) + sqr(-x60)*POWER(x98,4) + sqr(-x60
     )*POWER(x99,4) + sqr(-x60)*POWER(x100,4) + sqr(-x61)*POWER(x1,4) + sqr(-
     x61)*POWER(x2,4) + sqr(-x61)*POWER(x3,4) + sqr(-x61)*POWER(x4,4) + sqr(-
     x61)*POWER(x5,4) + sqr(-x61)*POWER(x6,4) + sqr(-x61)*POWER(x7,4) + sqr(-
     x61)*POWER(x8,4) + sqr(-x61)*POWER(x9,4) + sqr(-x61)*POWER(x10,4) + sqr(-
     x61)*POWER(x11,4) + sqr(-x61)*POWER(x12,4) + sqr(-x61)*POWER(x13,4) + sqr(
     -x61)*POWER(x14,4) + sqr(-x61)*POWER(x15,4) + sqr(-x61)*POWER(x16,4) + 
     sqr(-x61)*POWER(x17,4) + sqr(-x61)*POWER(x18,4) + sqr(-x61)*POWER(x19,4)
      + sqr(-x61)*POWER(x20,4) + sqr(-x61)*POWER(x21,4) + sqr(-x61)*POWER(x22,4
     ) + sqr(-x61)*POWER(x23,4) + sqr(-x61)*POWER(x24,4) + sqr(-x61)*POWER(x25,
     4) + sqr(-x61)*POWER(x26,4) + sqr(-x61)*POWER(x27,4) + sqr(-x61)*POWER(x28
     ,4) + sqr(-x61)*POWER(x29,4) + sqr(-x61)*POWER(x30,4) + sqr(-x61)*POWER(
     x31,4) + sqr(-x61)*POWER(x32,4) + sqr(-x61)*POWER(x33,4) + sqr(-x61)*
     POWER(x34,4) + sqr(-x61)*POWER(x35,4) + sqr(-x61)*POWER(x36,4) + sqr(-x61)
     *POWER(x37,4) + sqr(-x61)*POWER(x38,4) + sqr(-x61)*POWER(x39,4) + sqr(-x61
     )*POWER(x40,4) + sqr(-x61)*POWER(x41,4) + sqr(-x61)*POWER(x42,4) + sqr(-
     x61)*POWER(x43,4) + sqr(-x61)*POWER(x44,4) + sqr(-x61)*POWER(x45,4) + sqr(
     -x61)*POWER(x46,4) + sqr(-x61)*POWER(x47,4) + sqr(-x61)*POWER(x48,4) + 
     sqr(-x61)*POWER(x49,4) + sqr(-x61)*POWER(x50,4) + sqr(-x61)*POWER(x51,4)
      + sqr(-x61)*POWER(x52,4) + sqr(-x61)*POWER(x53,4) + sqr(-x61)*POWER(x54,4
     ) + sqr(-x61)*POWER(x55,4) + sqr(-x61)*POWER(x56,4) + sqr(-x61)*POWER(x57,
     4) + sqr(-x61)*POWER(x58,4) + sqr(-x61)*POWER(x59,4) + sqr(-x61)*POWER(x60
     ,4) + sqr(-x61)*POWER(x61,4) + sqr(-x61)*POWER(x62,4) + sqr(-x61)*POWER(
     x63,4) + sqr(-x61)*POWER(x64,4) + sqr(-x61)*POWER(x65,4) + sqr(-x61)*
     POWER(x66,4) + sqr(-x61)*POWER(x67,4) + sqr(-x61)*POWER(x68,4) + sqr(-x61)
     *POWER(x69,4) + sqr(-x61)*POWER(x70,4) + sqr(-x61)*POWER(x71,4) + sqr(-x61
     )*POWER(x72,4) + sqr(-x61)*POWER(x73,4) + sqr(-x61)*POWER(x74,4) + sqr(-
     x61)*POWER(x75,4) + sqr(-x61)*POWER(x76,4) + sqr(-x61)*POWER(x77,4) + sqr(
     -x61)*POWER(x78,4) + sqr(-x61)*POWER(x79,4) + sqr(-x61)*POWER(x80,4) + 
     sqr(-x61)*POWER(x81,4) + sqr(-x61)*POWER(x82,4) + sqr(-x61)*POWER(x83,4)
      + sqr(-x61)*POWER(x84,4) + sqr(-x61)*POWER(x85,4) + sqr(-x61)*POWER(x86,4
     ) + sqr(-x61)*POWER(x87,4) + sqr(-x61)*POWER(x88,4) + sqr(-x61)*POWER(x89,
     4) + sqr(-x61)*POWER(x90,4) + sqr(-x61)*POWER(x91,4) + sqr(-x61)*POWER(x92
     ,4) + sqr(-x61)*POWER(x93,4) + sqr(-x61)*POWER(x94,4) + sqr(-x61)*POWER(
     x95,4) + sqr(-x61)*POWER(x96,4) + sqr(-x61)*POWER(x97,4) + sqr(-x61)*
     POWER(x98,4) + sqr(-x61)*POWER(x99,4) + sqr(-x61)*POWER(x100,4) + sqr(-x62
     )*POWER(x1,4) + sqr(-x62)*POWER(x2,4) + sqr(-x62)*POWER(x3,4) + sqr(-x62)*
     POWER(x4,4) + sqr(-x62)*POWER(x5,4) + sqr(-x62)*POWER(x6,4) + sqr(-x62)*
     POWER(x7,4) + sqr(-x62)*POWER(x8,4) + sqr(-x62)*POWER(x9,4) + sqr(-x62)*
     POWER(x10,4) + sqr(-x62)*POWER(x11,4) + sqr(-x62)*POWER(x12,4) + sqr(-x62)
     *POWER(x13,4) + sqr(-x62)*POWER(x14,4) + sqr(-x62)*POWER(x15,4) + sqr(-x62
     )*POWER(x16,4) + sqr(-x62)*POWER(x17,4) + sqr(-x62)*POWER(x18,4) + sqr(-
     x62)*POWER(x19,4) + sqr(-x62)*POWER(x20,4) + sqr(-x62)*POWER(x21,4) + sqr(
     -x62)*POWER(x22,4) + sqr(-x62)*POWER(x23,4) + sqr(-x62)*POWER(x24,4) + 
     sqr(-x62)*POWER(x25,4) + sqr(-x62)*POWER(x26,4) + sqr(-x62)*POWER(x27,4)
      + sqr(-x62)*POWER(x28,4) + sqr(-x62)*POWER(x29,4) + sqr(-x62)*POWER(x30,4
     ) + sqr(-x62)*POWER(x31,4) + sqr(-x62)*POWER(x32,4) + sqr(-x62)*POWER(x33,
     4) + sqr(-x62)*POWER(x34,4) + sqr(-x62)*POWER(x35,4) + sqr(-x62)*POWER(x36
     ,4) + sqr(-x62)*POWER(x37,4) + sqr(-x62)*POWER(x38,4) + sqr(-x62)*POWER(
     x39,4) + sqr(-x62)*POWER(x40,4) + sqr(-x62)*POWER(x41,4) + sqr(-x62)*
     POWER(x42,4) + sqr(-x62)*POWER(x43,4) + sqr(-x62)*POWER(x44,4) + sqr(-x62)
     *POWER(x45,4) + sqr(-x62)*POWER(x46,4) + sqr(-x62)*POWER(x47,4) + sqr(-x62
     )*POWER(x48,4) + sqr(-x62)*POWER(x49,4) + sqr(-x62)*POWER(x50,4) + sqr(-
     x62)*POWER(x51,4) + sqr(-x62)*POWER(x52,4) + sqr(-x62)*POWER(x53,4) + sqr(
     -x62)*POWER(x54,4) + sqr(-x62)*POWER(x55,4) + sqr(-x62)*POWER(x56,4) + 
     sqr(-x62)*POWER(x57,4) + sqr(-x62)*POWER(x58,4) + sqr(-x62)*POWER(x59,4)
      + sqr(-x62)*POWER(x60,4) + sqr(-x62)*POWER(x61,4) + sqr(-x62)*POWER(x62,4
     ) + sqr(-x62)*POWER(x63,4) + sqr(-x62)*POWER(x64,4) + sqr(-x62)*POWER(x65,
     4) + sqr(-x62)*POWER(x66,4) + sqr(-x62)*POWER(x67,4) + sqr(-x62)*POWER(x68
     ,4) + sqr(-x62)*POWER(x69,4) + sqr(-x62)*POWER(x70,4) + sqr(-x62)*POWER(
     x71,4) + sqr(-x62)*POWER(x72,4) + sqr(-x62)*POWER(x73,4) + sqr(-x62)*
     POWER(x74,4) + sqr(-x62)*POWER(x75,4) + sqr(-x62)*POWER(x76,4) + sqr(-x62)
     *POWER(x77,4) + sqr(-x62)*POWER(x78,4) + sqr(-x62)*POWER(x79,4) + sqr(-x62
     )*POWER(x80,4) + sqr(-x62)*POWER(x81,4) + sqr(-x62)*POWER(x82,4) + sqr(-
     x62)*POWER(x83,4) + sqr(-x62)*POWER(x84,4) + sqr(-x62)*POWER(x85,4) + sqr(
     -x62)*POWER(x86,4) + sqr(-x62)*POWER(x87,4) + sqr(-x62)*POWER(x88,4) + 
     sqr(-x62)*POWER(x89,4) + sqr(-x62)*POWER(x90,4) + sqr(-x62)*POWER(x91,4)
      + sqr(-x62)*POWER(x92,4) + sqr(-x62)*POWER(x93,4) + sqr(-x62)*POWER(x94,4
     ) + sqr(-x62)*POWER(x95,4) + sqr(-x62)*POWER(x96,4) + sqr(-x62)*POWER(x97,
     4) + sqr(-x62)*POWER(x98,4) + sqr(-x62)*POWER(x99,4) + sqr(-x62)*POWER(
     x100,4) + sqr(-x63)*POWER(x1,4) + sqr(-x63)*POWER(x2,4) + sqr(-x63)*POWER(
     x3,4) + sqr(-x63)*POWER(x4,4) + sqr(-x63)*POWER(x5,4) + sqr(-x63)*POWER(x6
     ,4) + sqr(-x63)*POWER(x7,4) + sqr(-x63)*POWER(x8,4) + sqr(-x63)*POWER(x9,4
     ) + sqr(-x63)*POWER(x10,4) + sqr(-x63)*POWER(x11,4) + sqr(-x63)*POWER(x12,
     4) + sqr(-x63)*POWER(x13,4) + sqr(-x63)*POWER(x14,4) + sqr(-x63)*POWER(x15
     ,4) + sqr(-x63)*POWER(x16,4) + sqr(-x63)*POWER(x17,4) + sqr(-x63)*POWER(
     x18,4) + sqr(-x63)*POWER(x19,4) + sqr(-x63)*POWER(x20,4) + sqr(-x63)*
     POWER(x21,4) + sqr(-x63)*POWER(x22,4) + sqr(-x63)*POWER(x23,4) + sqr(-x63)
     *POWER(x24,4) + sqr(-x63)*POWER(x25,4) + sqr(-x63)*POWER(x26,4) + sqr(-x63
     )*POWER(x27,4) + sqr(-x63)*POWER(x28,4) + sqr(-x63)*POWER(x29,4) + sqr(-
     x63)*POWER(x30,4) + sqr(-x63)*POWER(x31,4) + sqr(-x63)*POWER(x32,4) + sqr(
     -x63)*POWER(x33,4) + sqr(-x63)*POWER(x34,4) + sqr(-x63)*POWER(x35,4) + 
     sqr(-x63)*POWER(x36,4) + sqr(-x63)*POWER(x37,4) + sqr(-x63)*POWER(x38,4)
      + sqr(-x63)*POWER(x39,4) + sqr(-x63)*POWER(x40,4) + sqr(-x63)*POWER(x41,4
     ) + sqr(-x63)*POWER(x42,4) + sqr(-x63)*POWER(x43,4) + sqr(-x63)*POWER(x44,
     4) + sqr(-x63)*POWER(x45,4) + sqr(-x63)*POWER(x46,4) + sqr(-x63)*POWER(x47
     ,4) + sqr(-x63)*POWER(x48,4) + sqr(-x63)*POWER(x49,4) + sqr(-x63)*POWER(
     x50,4) + sqr(-x63)*POWER(x51,4) + sqr(-x63)*POWER(x52,4) + sqr(-x63)*
     POWER(x53,4) + sqr(-x63)*POWER(x54,4) + sqr(-x63)*POWER(x55,4) + sqr(-x63)
     *POWER(x56,4) + sqr(-x63)*POWER(x57,4) + sqr(-x63)*POWER(x58,4) + sqr(-x63
     )*POWER(x59,4) + sqr(-x63)*POWER(x60,4) + sqr(-x63)*POWER(x61,4) + sqr(-
     x63)*POWER(x62,4) + sqr(-x63)*POWER(x63,4) + sqr(-x63)*POWER(x64,4) + sqr(
     -x63)*POWER(x65,4) + sqr(-x63)*POWER(x66,4) + sqr(-x63)*POWER(x67,4) + 
     sqr(-x63)*POWER(x68,4) + sqr(-x63)*POWER(x69,4) + sqr(-x63)*POWER(x70,4)
      + sqr(-x63)*POWER(x71,4) + sqr(-x63)*POWER(x72,4) + sqr(-x63)*POWER(x73,4
     ) + sqr(-x63)*POWER(x74,4) + sqr(-x63)*POWER(x75,4) + sqr(-x63)*POWER(x76,
     4) + sqr(-x63)*POWER(x77,4) + sqr(-x63)*POWER(x78,4) + sqr(-x63)*POWER(x79
     ,4) + sqr(-x63)*POWER(x80,4) + sqr(-x63)*POWER(x81,4) + sqr(-x63)*POWER(
     x82,4) + sqr(-x63)*POWER(x83,4) + sqr(-x63)*POWER(x84,4) + sqr(-x63)*
     POWER(x85,4) + sqr(-x63)*POWER(x86,4) + sqr(-x63)*POWER(x87,4) + sqr(-x63)
     *POWER(x88,4) + sqr(-x63)*POWER(x89,4) + sqr(-x63)*POWER(x90,4) + sqr(-x63
     )*POWER(x91,4) + sqr(-x63)*POWER(x92,4) + sqr(-x63)*POWER(x93,4) + sqr(-
     x63)*POWER(x94,4) + sqr(-x63)*POWER(x95,4) + sqr(-x63)*POWER(x96,4) + sqr(
     -x63)*POWER(x97,4) + sqr(-x63)*POWER(x98,4) + sqr(-x63)*POWER(x99,4) + 
     sqr(-x63)*POWER(x100,4) + sqr(-x64)*POWER(x1,4) + sqr(-x64)*POWER(x2,4) + 
     sqr(-x64)*POWER(x3,4) + sqr(-x64)*POWER(x4,4) + sqr(-x64)*POWER(x5,4) + 
     sqr(-x64)*POWER(x6,4) + sqr(-x64)*POWER(x7,4) + sqr(-x64)*POWER(x8,4) + 
     sqr(-x64)*POWER(x9,4) + sqr(-x64)*POWER(x10,4) + sqr(-x64)*POWER(x11,4) + 
     sqr(-x64)*POWER(x12,4) + sqr(-x64)*POWER(x13,4) + sqr(-x64)*POWER(x14,4)
      + sqr(-x64)*POWER(x15,4) + sqr(-x64)*POWER(x16,4) + sqr(-x64)*POWER(x17,4
     ) + sqr(-x64)*POWER(x18,4) + sqr(-x64)*POWER(x19,4) + sqr(-x64)*POWER(x20,
     4) + sqr(-x64)*POWER(x21,4) + sqr(-x64)*POWER(x22,4) + sqr(-x64)*POWER(x23
     ,4) + sqr(-x64)*POWER(x24,4) + sqr(-x64)*POWER(x25,4) + sqr(-x64)*POWER(
     x26,4) + sqr(-x64)*POWER(x27,4) + sqr(-x64)*POWER(x28,4) + sqr(-x64)*
     POWER(x29,4) + sqr(-x64)*POWER(x30,4) + sqr(-x64)*POWER(x31,4) + sqr(-x64)
     *POWER(x32,4) + sqr(-x64)*POWER(x33,4) + sqr(-x64)*POWER(x34,4) + sqr(-x64
     )*POWER(x35,4) + sqr(-x64)*POWER(x36,4) + sqr(-x64)*POWER(x37,4) + sqr(-
     x64)*POWER(x38,4) + sqr(-x64)*POWER(x39,4) + sqr(-x64)*POWER(x40,4) + sqr(
     -x64)*POWER(x41,4) + sqr(-x64)*POWER(x42,4) + sqr(-x64)*POWER(x43,4) + 
     sqr(-x64)*POWER(x44,4) + sqr(-x64)*POWER(x45,4) + sqr(-x64)*POWER(x46,4)
      + sqr(-x64)*POWER(x47,4) + sqr(-x64)*POWER(x48,4) + sqr(-x64)*POWER(x49,4
     ) + sqr(-x64)*POWER(x50,4) + sqr(-x64)*POWER(x51,4) + sqr(-x64)*POWER(x52,
     4) + sqr(-x64)*POWER(x53,4) + sqr(-x64)*POWER(x54,4) + sqr(-x64)*POWER(x55
     ,4) + sqr(-x64)*POWER(x56,4) + sqr(-x64)*POWER(x57,4) + sqr(-x64)*POWER(
     x58,4) + sqr(-x64)*POWER(x59,4) + sqr(-x64)*POWER(x60,4) + sqr(-x64)*
     POWER(x61,4) + sqr(-x64)*POWER(x62,4) + sqr(-x64)*POWER(x63,4) + sqr(-x64)
     *POWER(x64,4) + sqr(-x64)*POWER(x65,4) + sqr(-x64)*POWER(x66,4) + sqr(-x64
     )*POWER(x67,4) + sqr(-x64)*POWER(x68,4) + sqr(-x64)*POWER(x69,4) + sqr(-
     x64)*POWER(x70,4) + sqr(-x64)*POWER(x71,4) + sqr(-x64)*POWER(x72,4) + sqr(
     -x64)*POWER(x73,4) + sqr(-x64)*POWER(x74,4) + sqr(-x64)*POWER(x75,4) + 
     sqr(-x64)*POWER(x76,4) + sqr(-x64)*POWER(x77,4) + sqr(-x64)*POWER(x78,4)
      + sqr(-x64)*POWER(x79,4) + sqr(-x64)*POWER(x80,4) + sqr(-x64)*POWER(x81,4
     ) + sqr(-x64)*POWER(x82,4) + sqr(-x64)*POWER(x83,4) + sqr(-x64)*POWER(x84,
     4) + sqr(-x64)*POWER(x85,4) + sqr(-x64)*POWER(x86,4) + sqr(-x64)*POWER(x87
     ,4) + sqr(-x64)*POWER(x88,4) + sqr(-x64)*POWER(x89,4) + sqr(-x64)*POWER(
     x90,4) + sqr(-x64)*POWER(x91,4) + sqr(-x64)*POWER(x92,4) + sqr(-x64)*
     POWER(x93,4) + sqr(-x64)*POWER(x94,4) + sqr(-x64)*POWER(x95,4) + sqr(-x64)
     *POWER(x96,4) + sqr(-x64)*POWER(x97,4) + sqr(-x64)*POWER(x98,4) + sqr(-x64
     )*POWER(x99,4) + sqr(-x64)*POWER(x100,4) + sqr(-x65)*POWER(x1,4) + sqr(-
     x65)*POWER(x2,4) + sqr(-x65)*POWER(x3,4) + sqr(-x65)*POWER(x4,4) + sqr(-
     x65)*POWER(x5,4) + sqr(-x65)*POWER(x6,4) + sqr(-x65)*POWER(x7,4) + sqr(-
     x65)*POWER(x8,4) + sqr(-x65)*POWER(x9,4) + sqr(-x65)*POWER(x10,4) + sqr(-
     x65)*POWER(x11,4) + sqr(-x65)*POWER(x12,4) + sqr(-x65)*POWER(x13,4) + sqr(
     -x65)*POWER(x14,4) + sqr(-x65)*POWER(x15,4) + sqr(-x65)*POWER(x16,4) + 
     sqr(-x65)*POWER(x17,4) + sqr(-x65)*POWER(x18,4) + sqr(-x65)*POWER(x19,4)
      + sqr(-x65)*POWER(x20,4) + sqr(-x65)*POWER(x21,4) + sqr(-x65)*POWER(x22,4
     ) + sqr(-x65)*POWER(x23,4) + sqr(-x65)*POWER(x24,4) + sqr(-x65)*POWER(x25,
     4) + sqr(-x65)*POWER(x26,4) + sqr(-x65)*POWER(x27,4) + sqr(-x65)*POWER(x28
     ,4) + sqr(-x65)*POWER(x29,4) + sqr(-x65)*POWER(x30,4) + sqr(-x65)*POWER(
     x31,4) + sqr(-x65)*POWER(x32,4) + sqr(-x65)*POWER(x33,4) + sqr(-x65)*
     POWER(x34,4) + sqr(-x65)*POWER(x35,4) + sqr(-x65)*POWER(x36,4) + sqr(-x65)
     *POWER(x37,4) + sqr(-x65)*POWER(x38,4) + sqr(-x65)*POWER(x39,4) + sqr(-x65
     )*POWER(x40,4) + sqr(-x65)*POWER(x41,4) + sqr(-x65)*POWER(x42,4) + sqr(-
     x65)*POWER(x43,4) + sqr(-x65)*POWER(x44,4) + sqr(-x65)*POWER(x45,4) + sqr(
     -x65)*POWER(x46,4) + sqr(-x65)*POWER(x47,4) + sqr(-x65)*POWER(x48,4) + 
     sqr(-x65)*POWER(x49,4) + sqr(-x65)*POWER(x50,4) + sqr(-x65)*POWER(x51,4)
      + sqr(-x65)*POWER(x52,4) + sqr(-x65)*POWER(x53,4) + sqr(-x65)*POWER(x54,4
     ) + sqr(-x65)*POWER(x55,4) + sqr(-x65)*POWER(x56,4) + sqr(-x65)*POWER(x57,
     4) + sqr(-x65)*POWER(x58,4) + sqr(-x65)*POWER(x59,4) + sqr(-x65)*POWER(x60
     ,4) + sqr(-x65)*POWER(x61,4) + sqr(-x65)*POWER(x62,4) + sqr(-x65)*POWER(
     x63,4) + sqr(-x65)*POWER(x64,4) + sqr(-x65)*POWER(x65,4) + sqr(-x65)*
     POWER(x66,4) + sqr(-x65)*POWER(x67,4) + sqr(-x65)*POWER(x68,4) + sqr(-x65)
     *POWER(x69,4) + sqr(-x65)*POWER(x70,4) + sqr(-x65)*POWER(x71,4) + sqr(-x65
     )*POWER(x72,4) + sqr(-x65)*POWER(x73,4) + sqr(-x65)*POWER(x74,4) + sqr(-
     x65)*POWER(x75,4) + sqr(-x65)*POWER(x76,4) + sqr(-x65)*POWER(x77,4) + sqr(
     -x65)*POWER(x78,4) + sqr(-x65)*POWER(x79,4) + sqr(-x65)*POWER(x80,4) + 
     sqr(-x65)*POWER(x81,4) + sqr(-x65)*POWER(x82,4) + sqr(-x65)*POWER(x83,4)
      + sqr(-x65)*POWER(x84,4) + sqr(-x65)*POWER(x85,4) + sqr(-x65)*POWER(x86,4
     ) + sqr(-x65)*POWER(x87,4) + sqr(-x65)*POWER(x88,4) + sqr(-x65)*POWER(x89,
     4) + sqr(-x65)*POWER(x90,4) + sqr(-x65)*POWER(x91,4) + sqr(-x65)*POWER(x92
     ,4) + sqr(-x65)*POWER(x93,4) + sqr(-x65)*POWER(x94,4) + sqr(-x65)*POWER(
     x95,4) + sqr(-x65)*POWER(x96,4) + sqr(-x65)*POWER(x97,4) + sqr(-x65)*
     POWER(x98,4) + sqr(-x65)*POWER(x99,4) + sqr(-x65)*POWER(x100,4) + sqr(-x66
     )*POWER(x1,4) + sqr(-x66)*POWER(x2,4) + sqr(-x66)*POWER(x3,4) + sqr(-x66)*
     POWER(x4,4) + sqr(-x66)*POWER(x5,4) + sqr(-x66)*POWER(x6,4) + sqr(-x66)*
     POWER(x7,4) + sqr(-x66)*POWER(x8,4) + sqr(-x66)*POWER(x9,4) + sqr(-x66)*
     POWER(x10,4) + sqr(-x66)*POWER(x11,4) + sqr(-x66)*POWER(x12,4) + sqr(-x66)
     *POWER(x13,4) + sqr(-x66)*POWER(x14,4) + sqr(-x66)*POWER(x15,4) + sqr(-x66
     )*POWER(x16,4) + sqr(-x66)*POWER(x17,4) + sqr(-x66)*POWER(x18,4) + sqr(-
     x66)*POWER(x19,4) + sqr(-x66)*POWER(x20,4) + sqr(-x66)*POWER(x21,4) + sqr(
     -x66)*POWER(x22,4) + sqr(-x66)*POWER(x23,4) + sqr(-x66)*POWER(x24,4) + 
     sqr(-x66)*POWER(x25,4) + sqr(-x66)*POWER(x26,4) + sqr(-x66)*POWER(x27,4)
      + sqr(-x66)*POWER(x28,4) + sqr(-x66)*POWER(x29,4) + sqr(-x66)*POWER(x30,4
     ) + sqr(-x66)*POWER(x31,4) + sqr(-x66)*POWER(x32,4) + sqr(-x66)*POWER(x33,
     4) + sqr(-x66)*POWER(x34,4) + sqr(-x66)*POWER(x35,4) + sqr(-x66)*POWER(x36
     ,4) + sqr(-x66)*POWER(x37,4) + sqr(-x66)*POWER(x38,4) + sqr(-x66)*POWER(
     x39,4) + sqr(-x66)*POWER(x40,4) + sqr(-x66)*POWER(x41,4) + sqr(-x66)*
     POWER(x42,4) + sqr(-x66)*POWER(x43,4) + sqr(-x66)*POWER(x44,4) + sqr(-x66)
     *POWER(x45,4) + sqr(-x66)*POWER(x46,4) + sqr(-x66)*POWER(x47,4) + sqr(-x66
     )*POWER(x48,4) + sqr(-x66)*POWER(x49,4) + sqr(-x66)*POWER(x50,4) + sqr(-
     x66)*POWER(x51,4) + sqr(-x66)*POWER(x52,4) + sqr(-x66)*POWER(x53,4) + sqr(
     -x66)*POWER(x54,4) + sqr(-x66)*POWER(x55,4) + sqr(-x66)*POWER(x56,4) + 
     sqr(-x66)*POWER(x57,4) + sqr(-x66)*POWER(x58,4) + sqr(-x66)*POWER(x59,4)
      + sqr(-x66)*POWER(x60,4) + sqr(-x66)*POWER(x61,4) + sqr(-x66)*POWER(x62,4
     ) + sqr(-x66)*POWER(x63,4) + sqr(-x66)*POWER(x64,4) + sqr(-x66)*POWER(x65,
     4) + sqr(-x66)*POWER(x66,4) + sqr(-x66)*POWER(x67,4) + sqr(-x66)*POWER(x68
     ,4) + sqr(-x66)*POWER(x69,4) + sqr(-x66)*POWER(x70,4) + sqr(-x66)*POWER(
     x71,4) + sqr(-x66)*POWER(x72,4) + sqr(-x66)*POWER(x73,4) + sqr(-x66)*
     POWER(x74,4) + sqr(-x66)*POWER(x75,4) + sqr(-x66)*POWER(x76,4) + sqr(-x66)
     *POWER(x77,4) + sqr(-x66)*POWER(x78,4) + sqr(-x66)*POWER(x79,4) + sqr(-x66
     )*POWER(x80,4) + sqr(-x66)*POWER(x81,4) + sqr(-x66)*POWER(x82,4) + sqr(-
     x66)*POWER(x83,4) + sqr(-x66)*POWER(x84,4) + sqr(-x66)*POWER(x85,4) + sqr(
     -x66)*POWER(x86,4) + sqr(-x66)*POWER(x87,4) + sqr(-x66)*POWER(x88,4) + 
     sqr(-x66)*POWER(x89,4) + sqr(-x66)*POWER(x90,4) + sqr(-x66)*POWER(x91,4)
      + sqr(-x66)*POWER(x92,4) + sqr(-x66)*POWER(x93,4) + sqr(-x66)*POWER(x94,4
     ) + sqr(-x66)*POWER(x95,4) + sqr(-x66)*POWER(x96,4) + sqr(-x66)*POWER(x97,
     4) + sqr(-x66)*POWER(x98,4) + sqr(-x66)*POWER(x99,4) + sqr(-x66)*POWER(
     x100,4) + sqr(-x67)*POWER(x1,4) + sqr(-x67)*POWER(x2,4) + sqr(-x67)*POWER(
     x3,4) + sqr(-x67)*POWER(x4,4) + sqr(-x67)*POWER(x5,4) + sqr(-x67)*POWER(x6
     ,4) + sqr(-x67)*POWER(x7,4) + sqr(-x67)*POWER(x8,4) + sqr(-x67)*POWER(x9,4
     ) + sqr(-x67)*POWER(x10,4) + sqr(-x67)*POWER(x11,4) + sqr(-x67)*POWER(x12,
     4) + sqr(-x67)*POWER(x13,4) + sqr(-x67)*POWER(x14,4) + sqr(-x67)*POWER(x15
     ,4) + sqr(-x67)*POWER(x16,4) + sqr(-x67)*POWER(x17,4) + sqr(-x67)*POWER(
     x18,4) + sqr(-x67)*POWER(x19,4) + sqr(-x67)*POWER(x20,4) + sqr(-x67)*
     POWER(x21,4) + sqr(-x67)*POWER(x22,4) + sqr(-x67)*POWER(x23,4) + sqr(-x67)
     *POWER(x24,4) + sqr(-x67)*POWER(x25,4) + sqr(-x67)*POWER(x26,4) + sqr(-x67
     )*POWER(x27,4) + sqr(-x67)*POWER(x28,4) + sqr(-x67)*POWER(x29,4) + sqr(-
     x67)*POWER(x30,4) + sqr(-x67)*POWER(x31,4) + sqr(-x67)*POWER(x32,4) + sqr(
     -x67)*POWER(x33,4) + sqr(-x67)*POWER(x34,4) + sqr(-x67)*POWER(x35,4) + 
     sqr(-x67)*POWER(x36,4) + sqr(-x67)*POWER(x37,4) + sqr(-x67)*POWER(x38,4)
      + sqr(-x67)*POWER(x39,4) + sqr(-x67)*POWER(x40,4) + sqr(-x67)*POWER(x41,4
     ) + sqr(-x67)*POWER(x42,4) + sqr(-x67)*POWER(x43,4) + sqr(-x67)*POWER(x44,
     4) + sqr(-x67)*POWER(x45,4) + sqr(-x67)*POWER(x46,4) + sqr(-x67)*POWER(x47
     ,4) + sqr(-x67)*POWER(x48,4) + sqr(-x67)*POWER(x49,4) + sqr(-x67)*POWER(
     x50,4) + sqr(-x67)*POWER(x51,4) + sqr(-x67)*POWER(x52,4) + sqr(-x67)*
     POWER(x53,4) + sqr(-x67)*POWER(x54,4) + sqr(-x67)*POWER(x55,4) + sqr(-x67)
     *POWER(x56,4) + sqr(-x67)*POWER(x57,4) + sqr(-x67)*POWER(x58,4) + sqr(-x67
     )*POWER(x59,4) + sqr(-x67)*POWER(x60,4) + sqr(-x67)*POWER(x61,4) + sqr(-
     x67)*POWER(x62,4) + sqr(-x67)*POWER(x63,4) + sqr(-x67)*POWER(x64,4) + sqr(
     -x67)*POWER(x65,4) + sqr(-x67)*POWER(x66,4) + sqr(-x67)*POWER(x67,4) + 
     sqr(-x67)*POWER(x68,4) + sqr(-x67)*POWER(x69,4) + sqr(-x67)*POWER(x70,4)
      + sqr(-x67)*POWER(x71,4) + sqr(-x67)*POWER(x72,4) + sqr(-x67)*POWER(x73,4
     ) + sqr(-x67)*POWER(x74,4) + sqr(-x67)*POWER(x75,4) + sqr(-x67)*POWER(x76,
     4) + sqr(-x67)*POWER(x77,4) + sqr(-x67)*POWER(x78,4) + sqr(-x67)*POWER(x79
     ,4) + sqr(-x67)*POWER(x80,4) + sqr(-x67)*POWER(x81,4) + sqr(-x67)*POWER(
     x82,4) + sqr(-x67)*POWER(x83,4) + sqr(-x67)*POWER(x84,4) + sqr(-x67)*
     POWER(x85,4) + sqr(-x67)*POWER(x86,4) + sqr(-x67)*POWER(x87,4) + sqr(-x67)
     *POWER(x88,4) + sqr(-x67)*POWER(x89,4) + sqr(-x67)*POWER(x90,4) + sqr(-x67
     )*POWER(x91,4) + sqr(-x67)*POWER(x92,4) + sqr(-x67)*POWER(x93,4) + sqr(-
     x67)*POWER(x94,4) + sqr(-x67)*POWER(x95,4) + sqr(-x67)*POWER(x96,4) + sqr(
     -x67)*POWER(x97,4) + sqr(-x67)*POWER(x98,4) + sqr(-x67)*POWER(x99,4) + 
     sqr(-x67)*POWER(x100,4) + sqr(-x68)*POWER(x1,4) + sqr(-x68)*POWER(x2,4) + 
     sqr(-x68)*POWER(x3,4) + sqr(-x68)*POWER(x4,4) + sqr(-x68)*POWER(x5,4) + 
     sqr(-x68)*POWER(x6,4) + sqr(-x68)*POWER(x7,4) + sqr(-x68)*POWER(x8,4) + 
     sqr(-x68)*POWER(x9,4) + sqr(-x68)*POWER(x10,4) + sqr(-x68)*POWER(x11,4) + 
     sqr(-x68)*POWER(x12,4) + sqr(-x68)*POWER(x13,4) + sqr(-x68)*POWER(x14,4)
      + sqr(-x68)*POWER(x15,4) + sqr(-x68)*POWER(x16,4) + sqr(-x68)*POWER(x17,4
     ) + sqr(-x68)*POWER(x18,4) + sqr(-x68)*POWER(x19,4) + sqr(-x68)*POWER(x20,
     4) + sqr(-x68)*POWER(x21,4) + sqr(-x68)*POWER(x22,4) + sqr(-x68)*POWER(x23
     ,4) + sqr(-x68)*POWER(x24,4) + sqr(-x68)*POWER(x25,4) + sqr(-x68)*POWER(
     x26,4) + sqr(-x68)*POWER(x27,4) + sqr(-x68)*POWER(x28,4) + sqr(-x68)*
     POWER(x29,4) + sqr(-x68)*POWER(x30,4) + sqr(-x68)*POWER(x31,4) + sqr(-x68)
     *POWER(x32,4) + sqr(-x68)*POWER(x33,4) + sqr(-x68)*POWER(x34,4) + sqr(-x68
     )*POWER(x35,4) + sqr(-x68)*POWER(x36,4) + sqr(-x68)*POWER(x37,4) + sqr(-
     x68)*POWER(x38,4) + sqr(-x68)*POWER(x39,4) + sqr(-x68)*POWER(x40,4) + sqr(
     -x68)*POWER(x41,4) + sqr(-x68)*POWER(x42,4) + sqr(-x68)*POWER(x43,4) + 
     sqr(-x68)*POWER(x44,4) + sqr(-x68)*POWER(x45,4) + sqr(-x68)*POWER(x46,4)
      + sqr(-x68)*POWER(x47,4) + sqr(-x68)*POWER(x48,4) + sqr(-x68)*POWER(x49,4
     ) + sqr(-x68)*POWER(x50,4) + sqr(-x68)*POWER(x51,4) + sqr(-x68)*POWER(x52,
     4) + sqr(-x68)*POWER(x53,4) + sqr(-x68)*POWER(x54,4) + sqr(-x68)*POWER(x55
     ,4) + sqr(-x68)*POWER(x56,4) + sqr(-x68)*POWER(x57,4) + sqr(-x68)*POWER(
     x58,4) + sqr(-x68)*POWER(x59,4) + sqr(-x68)*POWER(x60,4) + sqr(-x68)*
     POWER(x61,4) + sqr(-x68)*POWER(x62,4) + sqr(-x68)*POWER(x63,4) + sqr(-x68)
     *POWER(x64,4) + sqr(-x68)*POWER(x65,4) + sqr(-x68)*POWER(x66,4) + sqr(-x68
     )*POWER(x67,4) + sqr(-x68)*POWER(x68,4) + sqr(-x68)*POWER(x69,4) + sqr(-
     x68)*POWER(x70,4) + sqr(-x68)*POWER(x71,4) + sqr(-x68)*POWER(x72,4) + sqr(
     -x68)*POWER(x73,4) + sqr(-x68)*POWER(x74,4) + sqr(-x68)*POWER(x75,4) + 
     sqr(-x68)*POWER(x76,4) + sqr(-x68)*POWER(x77,4) + sqr(-x68)*POWER(x78,4)
      + sqr(-x68)*POWER(x79,4) + sqr(-x68)*POWER(x80,4) + sqr(-x68)*POWER(x81,4
     ) + sqr(-x68)*POWER(x82,4) + sqr(-x68)*POWER(x83,4) + sqr(-x68)*POWER(x84,
     4) + sqr(-x68)*POWER(x85,4) + sqr(-x68)*POWER(x86,4) + sqr(-x68)*POWER(x87
     ,4) + sqr(-x68)*POWER(x88,4) + sqr(-x68)*POWER(x89,4) + sqr(-x68)*POWER(
     x90,4) + sqr(-x68)*POWER(x91,4) + sqr(-x68)*POWER(x92,4) + sqr(-x68)*
     POWER(x93,4) + sqr(-x68)*POWER(x94,4) + sqr(-x68)*POWER(x95,4) + sqr(-x68)
     *POWER(x96,4) + sqr(-x68)*POWER(x97,4) + sqr(-x68)*POWER(x98,4) + sqr(-x68
     )*POWER(x99,4) + sqr(-x68)*POWER(x100,4) + sqr(-x69)*POWER(x1,4) + sqr(-
     x69)*POWER(x2,4) + sqr(-x69)*POWER(x3,4) + sqr(-x69)*POWER(x4,4) + sqr(-
     x69)*POWER(x5,4) + sqr(-x69)*POWER(x6,4) + sqr(-x69)*POWER(x7,4) + sqr(-
     x69)*POWER(x8,4) + sqr(-x69)*POWER(x9,4) + sqr(-x69)*POWER(x10,4) + sqr(-
     x69)*POWER(x11,4) + sqr(-x69)*POWER(x12,4) + sqr(-x69)*POWER(x13,4) + sqr(
     -x69)*POWER(x14,4) + sqr(-x69)*POWER(x15,4) + sqr(-x69)*POWER(x16,4) + 
     sqr(-x69)*POWER(x17,4) + sqr(-x69)*POWER(x18,4) + sqr(-x69)*POWER(x19,4)
      + sqr(-x69)*POWER(x20,4) + sqr(-x69)*POWER(x21,4) + sqr(-x69)*POWER(x22,4
     ) + sqr(-x69)*POWER(x23,4) + sqr(-x69)*POWER(x24,4) + sqr(-x69)*POWER(x25,
     4) + sqr(-x69)*POWER(x26,4) + sqr(-x69)*POWER(x27,4) + sqr(-x69)*POWER(x28
     ,4) + sqr(-x69)*POWER(x29,4) + sqr(-x69)*POWER(x30,4) + sqr(-x69)*POWER(
     x31,4) + sqr(-x69)*POWER(x32,4) + sqr(-x69)*POWER(x33,4) + sqr(-x69)*
     POWER(x34,4) + sqr(-x69)*POWER(x35,4) + sqr(-x69)*POWER(x36,4) + sqr(-x69)
     *POWER(x37,4) + sqr(-x69)*POWER(x38,4) + sqr(-x69)*POWER(x39,4) + sqr(-x69
     )*POWER(x40,4) + sqr(-x69)*POWER(x41,4) + sqr(-x69)*POWER(x42,4) + sqr(-
     x69)*POWER(x43,4) + sqr(-x69)*POWER(x44,4) + sqr(-x69)*POWER(x45,4) + sqr(
     -x69)*POWER(x46,4) + sqr(-x69)*POWER(x47,4) + sqr(-x69)*POWER(x48,4) + 
     sqr(-x69)*POWER(x49,4) + sqr(-x69)*POWER(x50,4) + sqr(-x69)*POWER(x51,4)
      + sqr(-x69)*POWER(x52,4) + sqr(-x69)*POWER(x53,4) + sqr(-x69)*POWER(x54,4
     ) + sqr(-x69)*POWER(x55,4) + sqr(-x69)*POWER(x56,4) + sqr(-x69)*POWER(x57,
     4) + sqr(-x69)*POWER(x58,4) + sqr(-x69)*POWER(x59,4) + sqr(-x69)*POWER(x60
     ,4) + sqr(-x69)*POWER(x61,4) + sqr(-x69)*POWER(x62,4) + sqr(-x69)*POWER(
     x63,4) + sqr(-x69)*POWER(x64,4) + sqr(-x69)*POWER(x65,4) + sqr(-x69)*
     POWER(x66,4) + sqr(-x69)*POWER(x67,4) + sqr(-x69)*POWER(x68,4) + sqr(-x69)
     *POWER(x69,4) + sqr(-x69)*POWER(x70,4) + sqr(-x69)*POWER(x71,4) + sqr(-x69
     )*POWER(x72,4) + sqr(-x69)*POWER(x73,4) + sqr(-x69)*POWER(x74,4) + sqr(-
     x69)*POWER(x75,4) + sqr(-x69)*POWER(x76,4) + sqr(-x69)*POWER(x77,4) + sqr(
     -x69)*POWER(x78,4) + sqr(-x69)*POWER(x79,4) + sqr(-x69)*POWER(x80,4) + 
     sqr(-x69)*POWER(x81,4) + sqr(-x69)*POWER(x82,4) + sqr(-x69)*POWER(x83,4)
      + sqr(-x69)*POWER(x84,4) + sqr(-x69)*POWER(x85,4) + sqr(-x69)*POWER(x86,4
     ) + sqr(-x69)*POWER(x87,4) + sqr(-x69)*POWER(x88,4) + sqr(-x69)*POWER(x89,
     4) + sqr(-x69)*POWER(x90,4) + sqr(-x69)*POWER(x91,4) + sqr(-x69)*POWER(x92
     ,4) + sqr(-x69)*POWER(x93,4) + sqr(-x69)*POWER(x94,4) + sqr(-x69)*POWER(
     x95,4) + sqr(-x69)*POWER(x96,4) + sqr(-x69)*POWER(x97,4) + sqr(-x69)*
     POWER(x98,4) + sqr(-x69)*POWER(x99,4) + sqr(-x69)*POWER(x100,4) + sqr(-x70
     )*POWER(x1,4) + sqr(-x70)*POWER(x2,4) + sqr(-x70)*POWER(x3,4) + sqr(-x70)*
     POWER(x4,4) + sqr(-x70)*POWER(x5,4) + sqr(-x70)*POWER(x6,4) + sqr(-x70)*
     POWER(x7,4) + sqr(-x70)*POWER(x8,4) + sqr(-x70)*POWER(x9,4) + sqr(-x70)*
     POWER(x10,4) + sqr(-x70)*POWER(x11,4) + sqr(-x70)*POWER(x12,4) + sqr(-x70)
     *POWER(x13,4) + sqr(-x70)*POWER(x14,4) + sqr(-x70)*POWER(x15,4) + sqr(-x70
     )*POWER(x16,4) + sqr(-x70)*POWER(x17,4) + sqr(-x70)*POWER(x18,4) + sqr(-
     x70)*POWER(x19,4) + sqr(-x70)*POWER(x20,4) + sqr(-x70)*POWER(x21,4) + sqr(
     -x70)*POWER(x22,4) + sqr(-x70)*POWER(x23,4) + sqr(-x70)*POWER(x24,4) + 
     sqr(-x70)*POWER(x25,4) + sqr(-x70)*POWER(x26,4) + sqr(-x70)*POWER(x27,4)
      + sqr(-x70)*POWER(x28,4) + sqr(-x70)*POWER(x29,4) + sqr(-x70)*POWER(x30,4
     ) + sqr(-x70)*POWER(x31,4) + sqr(-x70)*POWER(x32,4) + sqr(-x70)*POWER(x33,
     4) + sqr(-x70)*POWER(x34,4) + sqr(-x70)*POWER(x35,4) + sqr(-x70)*POWER(x36
     ,4) + sqr(-x70)*POWER(x37,4) + sqr(-x70)*POWER(x38,4) + sqr(-x70)*POWER(
     x39,4) + sqr(-x70)*POWER(x40,4) + sqr(-x70)*POWER(x41,4) + sqr(-x70)*
     POWER(x42,4) + sqr(-x70)*POWER(x43,4) + sqr(-x70)*POWER(x44,4) + sqr(-x70)
     *POWER(x45,4) + sqr(-x70)*POWER(x46,4) + sqr(-x70)*POWER(x47,4) + sqr(-x70
     )*POWER(x48,4) + sqr(-x70)*POWER(x49,4) + sqr(-x70)*POWER(x50,4) + sqr(-
     x70)*POWER(x51,4) + sqr(-x70)*POWER(x52,4) + sqr(-x70)*POWER(x53,4) + sqr(
     -x70)*POWER(x54,4) + sqr(-x70)*POWER(x55,4) + sqr(-x70)*POWER(x56,4) + 
     sqr(-x70)*POWER(x57,4) + sqr(-x70)*POWER(x58,4) + sqr(-x70)*POWER(x59,4)
      + sqr(-x70)*POWER(x60,4) + sqr(-x70)*POWER(x61,4) + sqr(-x70)*POWER(x62,4
     ) + sqr(-x70)*POWER(x63,4) + sqr(-x70)*POWER(x64,4) + sqr(-x70)*POWER(x65,
     4) + sqr(-x70)*POWER(x66,4) + sqr(-x70)*POWER(x67,4) + sqr(-x70)*POWER(x68
     ,4) + sqr(-x70)*POWER(x69,4) + sqr(-x70)*POWER(x70,4) + sqr(-x70)*POWER(
     x71,4) + sqr(-x70)*POWER(x72,4) + sqr(-x70)*POWER(x73,4) + sqr(-x70)*
     POWER(x74,4) + sqr(-x70)*POWER(x75,4) + sqr(-x70)*POWER(x76,4) + sqr(-x70)
     *POWER(x77,4) + sqr(-x70)*POWER(x78,4) + sqr(-x70)*POWER(x79,4) + sqr(-x70
     )*POWER(x80,4) + sqr(-x70)*POWER(x81,4) + sqr(-x70)*POWER(x82,4) + sqr(-
     x70)*POWER(x83,4) + sqr(-x70)*POWER(x84,4) + sqr(-x70)*POWER(x85,4) + sqr(
     -x70)*POWER(x86,4) + sqr(-x70)*POWER(x87,4) + sqr(-x70)*POWER(x88,4) + 
     sqr(-x70)*POWER(x89,4) + sqr(-x70)*POWER(x90,4) + sqr(-x70)*POWER(x91,4)
      + sqr(-x70)*POWER(x92,4) + sqr(-x70)*POWER(x93,4) + sqr(-x70)*POWER(x94,4
     ) + sqr(-x70)*POWER(x95,4) + sqr(-x70)*POWER(x96,4) + sqr(-x70)*POWER(x97,
     4) + sqr(-x70)*POWER(x98,4) + sqr(-x70)*POWER(x99,4) + sqr(-x70)*POWER(
     x100,4) + sqr(-x71)*POWER(x1,4) + sqr(-x71)*POWER(x2,4) + sqr(-x71)*POWER(
     x3,4) + sqr(-x71)*POWER(x4,4) + sqr(-x71)*POWER(x5,4) + sqr(-x71)*POWER(x6
     ,4) + sqr(-x71)*POWER(x7,4) + sqr(-x71)*POWER(x8,4) + sqr(-x71)*POWER(x9,4
     ) + sqr(-x71)*POWER(x10,4) + sqr(-x71)*POWER(x11,4) + sqr(-x71)*POWER(x12,
     4) + sqr(-x71)*POWER(x13,4) + sqr(-x71)*POWER(x14,4) + sqr(-x71)*POWER(x15
     ,4) + sqr(-x71)*POWER(x16,4) + sqr(-x71)*POWER(x17,4) + sqr(-x71)*POWER(
     x18,4) + sqr(-x71)*POWER(x19,4) + sqr(-x71)*POWER(x20,4) + sqr(-x71)*
     POWER(x21,4) + sqr(-x71)*POWER(x22,4) + sqr(-x71)*POWER(x23,4) + sqr(-x71)
     *POWER(x24,4) + sqr(-x71)*POWER(x25,4) + sqr(-x71)*POWER(x26,4) + sqr(-x71
     )*POWER(x27,4) + sqr(-x71)*POWER(x28,4) + sqr(-x71)*POWER(x29,4) + sqr(-
     x71)*POWER(x30,4) + sqr(-x71)*POWER(x31,4) + sqr(-x71)*POWER(x32,4) + sqr(
     -x71)*POWER(x33,4) + sqr(-x71)*POWER(x34,4) + sqr(-x71)*POWER(x35,4) + 
     sqr(-x71)*POWER(x36,4) + sqr(-x71)*POWER(x37,4) + sqr(-x71)*POWER(x38,4)
      + sqr(-x71)*POWER(x39,4) + sqr(-x71)*POWER(x40,4) + sqr(-x71)*POWER(x41,4
     ) + sqr(-x71)*POWER(x42,4) + sqr(-x71)*POWER(x43,4) + sqr(-x71)*POWER(x44,
     4) + sqr(-x71)*POWER(x45,4) + sqr(-x71)*POWER(x46,4) + sqr(-x71)*POWER(x47
     ,4) + sqr(-x71)*POWER(x48,4) + sqr(-x71)*POWER(x49,4) + sqr(-x71)*POWER(
     x50,4) + sqr(-x71)*POWER(x51,4) + sqr(-x71)*POWER(x52,4) + sqr(-x71)*
     POWER(x53,4) + sqr(-x71)*POWER(x54,4) + sqr(-x71)*POWER(x55,4) + sqr(-x71)
     *POWER(x56,4) + sqr(-x71)*POWER(x57,4) + sqr(-x71)*POWER(x58,4) + sqr(-x71
     )*POWER(x59,4) + sqr(-x71)*POWER(x60,4) + sqr(-x71)*POWER(x61,4) + sqr(-
     x71)*POWER(x62,4) + sqr(-x71)*POWER(x63,4) + sqr(-x71)*POWER(x64,4) + sqr(
     -x71)*POWER(x65,4) + sqr(-x71)*POWER(x66,4) + sqr(-x71)*POWER(x67,4) + 
     sqr(-x71)*POWER(x68,4) + sqr(-x71)*POWER(x69,4) + sqr(-x71)*POWER(x70,4)
      + sqr(-x71)*POWER(x71,4) + sqr(-x71)*POWER(x72,4) + sqr(-x71)*POWER(x73,4
     ) + sqr(-x71)*POWER(x74,4) + sqr(-x71)*POWER(x75,4) + sqr(-x71)*POWER(x76,
     4) + sqr(-x71)*POWER(x77,4) + sqr(-x71)*POWER(x78,4) + sqr(-x71)*POWER(x79
     ,4) + sqr(-x71)*POWER(x80,4) + sqr(-x71)*POWER(x81,4) + sqr(-x71)*POWER(
     x82,4) + sqr(-x71)*POWER(x83,4) + sqr(-x71)*POWER(x84,4) + sqr(-x71)*
     POWER(x85,4) + sqr(-x71)*POWER(x86,4) + sqr(-x71)*POWER(x87,4) + sqr(-x71)
     *POWER(x88,4) + sqr(-x71)*POWER(x89,4) + sqr(-x71)*POWER(x90,4) + sqr(-x71
     )*POWER(x91,4) + sqr(-x71)*POWER(x92,4) + sqr(-x71)*POWER(x93,4) + sqr(-
     x71)*POWER(x94,4) + sqr(-x71)*POWER(x95,4) + sqr(-x71)*POWER(x96,4) + sqr(
     -x71)*POWER(x97,4) + sqr(-x71)*POWER(x98,4) + sqr(-x71)*POWER(x99,4) + 
     sqr(-x71)*POWER(x100,4) + sqr(-x72)*POWER(x1,4) + sqr(-x72)*POWER(x2,4) + 
     sqr(-x72)*POWER(x3,4) + sqr(-x72)*POWER(x4,4) + sqr(-x72)*POWER(x5,4) + 
     sqr(-x72)*POWER(x6,4) + sqr(-x72)*POWER(x7,4) + sqr(-x72)*POWER(x8,4) + 
     sqr(-x72)*POWER(x9,4) + sqr(-x72)*POWER(x10,4) + sqr(-x72)*POWER(x11,4) + 
     sqr(-x72)*POWER(x12,4) + sqr(-x72)*POWER(x13,4) + sqr(-x72)*POWER(x14,4)
      + sqr(-x72)*POWER(x15,4) + sqr(-x72)*POWER(x16,4) + sqr(-x72)*POWER(x17,4
     ) + sqr(-x72)*POWER(x18,4) + sqr(-x72)*POWER(x19,4) + sqr(-x72)*POWER(x20,
     4) + sqr(-x72)*POWER(x21,4) + sqr(-x72)*POWER(x22,4) + sqr(-x72)*POWER(x23
     ,4) + sqr(-x72)*POWER(x24,4) + sqr(-x72)*POWER(x25,4) + sqr(-x72)*POWER(
     x26,4) + sqr(-x72)*POWER(x27,4) + sqr(-x72)*POWER(x28,4) + sqr(-x72)*
     POWER(x29,4) + sqr(-x72)*POWER(x30,4) + sqr(-x72)*POWER(x31,4) + sqr(-x72)
     *POWER(x32,4) + sqr(-x72)*POWER(x33,4) + sqr(-x72)*POWER(x34,4) + sqr(-x72
     )*POWER(x35,4) + sqr(-x72)*POWER(x36,4) + sqr(-x72)*POWER(x37,4) + sqr(-
     x72)*POWER(x38,4) + sqr(-x72)*POWER(x39,4) + sqr(-x72)*POWER(x40,4) + sqr(
     -x72)*POWER(x41,4) + sqr(-x72)*POWER(x42,4) + sqr(-x72)*POWER(x43,4) + 
     sqr(-x72)*POWER(x44,4) + sqr(-x72)*POWER(x45,4) + sqr(-x72)*POWER(x46,4)
      + sqr(-x72)*POWER(x47,4) + sqr(-x72)*POWER(x48,4) + sqr(-x72)*POWER(x49,4
     ) + sqr(-x72)*POWER(x50,4) + sqr(-x72)*POWER(x51,4) + sqr(-x72)*POWER(x52,
     4) + sqr(-x72)*POWER(x53,4) + sqr(-x72)*POWER(x54,4) + sqr(-x72)*POWER(x55
     ,4) + sqr(-x72)*POWER(x56,4) + sqr(-x72)*POWER(x57,4) + sqr(-x72)*POWER(
     x58,4) + sqr(-x72)*POWER(x59,4) + sqr(-x72)*POWER(x60,4) + sqr(-x72)*
     POWER(x61,4) + sqr(-x72)*POWER(x62,4) + sqr(-x72)*POWER(x63,4) + sqr(-x72)
     *POWER(x64,4) + sqr(-x72)*POWER(x65,4) + sqr(-x72)*POWER(x66,4) + sqr(-x72
     )*POWER(x67,4) + sqr(-x72)*POWER(x68,4) + sqr(-x72)*POWER(x69,4) + sqr(-
     x72)*POWER(x70,4) + sqr(-x72)*POWER(x71,4) + sqr(-x72)*POWER(x72,4) + sqr(
     -x72)*POWER(x73,4) + sqr(-x72)*POWER(x74,4) + sqr(-x72)*POWER(x75,4) + 
     sqr(-x72)*POWER(x76,4) + sqr(-x72)*POWER(x77,4) + sqr(-x72)*POWER(x78,4)
      + sqr(-x72)*POWER(x79,4) + sqr(-x72)*POWER(x80,4) + sqr(-x72)*POWER(x81,4
     ) + sqr(-x72)*POWER(x82,4) + sqr(-x72)*POWER(x83,4) + sqr(-x72)*POWER(x84,
     4) + sqr(-x72)*POWER(x85,4) + sqr(-x72)*POWER(x86,4) + sqr(-x72)*POWER(x87
     ,4) + sqr(-x72)*POWER(x88,4) + sqr(-x72)*POWER(x89,4) + sqr(-x72)*POWER(
     x90,4) + sqr(-x72)*POWER(x91,4) + sqr(-x72)*POWER(x92,4) + sqr(-x72)*
     POWER(x93,4) + sqr(-x72)*POWER(x94,4) + sqr(-x72)*POWER(x95,4) + sqr(-x72)
     *POWER(x96,4) + sqr(-x72)*POWER(x97,4) + sqr(-x72)*POWER(x98,4) + sqr(-x72
     )*POWER(x99,4) + sqr(-x72)*POWER(x100,4) + sqr(-x73)*POWER(x1,4) + sqr(-
     x73)*POWER(x2,4) + sqr(-x73)*POWER(x3,4) + sqr(-x73)*POWER(x4,4) + sqr(-
     x73)*POWER(x5,4) + sqr(-x73)*POWER(x6,4) + sqr(-x73)*POWER(x7,4) + sqr(-
     x73)*POWER(x8,4) + sqr(-x73)*POWER(x9,4) + sqr(-x73)*POWER(x10,4) + sqr(-
     x73)*POWER(x11,4) + sqr(-x73)*POWER(x12,4) + sqr(-x73)*POWER(x13,4) + sqr(
     -x73)*POWER(x14,4) + sqr(-x73)*POWER(x15,4) + sqr(-x73)*POWER(x16,4) + 
     sqr(-x73)*POWER(x17,4) + sqr(-x73)*POWER(x18,4) + sqr(-x73)*POWER(x19,4)
      + sqr(-x73)*POWER(x20,4) + sqr(-x73)*POWER(x21,4) + sqr(-x73)*POWER(x22,4
     ) + sqr(-x73)*POWER(x23,4) + sqr(-x73)*POWER(x24,4) + sqr(-x73)*POWER(x25,
     4) + sqr(-x73)*POWER(x26,4) + sqr(-x73)*POWER(x27,4) + sqr(-x73)*POWER(x28
     ,4) + sqr(-x73)*POWER(x29,4) + sqr(-x73)*POWER(x30,4) + sqr(-x73)*POWER(
     x31,4) + sqr(-x73)*POWER(x32,4) + sqr(-x73)*POWER(x33,4) + sqr(-x73)*
     POWER(x34,4) + sqr(-x73)*POWER(x35,4) + sqr(-x73)*POWER(x36,4) + sqr(-x73)
     *POWER(x37,4) + sqr(-x73)*POWER(x38,4) + sqr(-x73)*POWER(x39,4) + sqr(-x73
     )*POWER(x40,4) + sqr(-x73)*POWER(x41,4) + sqr(-x73)*POWER(x42,4) + sqr(-
     x73)*POWER(x43,4) + sqr(-x73)*POWER(x44,4) + sqr(-x73)*POWER(x45,4) + sqr(
     -x73)*POWER(x46,4) + sqr(-x73)*POWER(x47,4) + sqr(-x73)*POWER(x48,4) + 
     sqr(-x73)*POWER(x49,4) + sqr(-x73)*POWER(x50,4) + sqr(-x73)*POWER(x51,4)
      + sqr(-x73)*POWER(x52,4) + sqr(-x73)*POWER(x53,4) + sqr(-x73)*POWER(x54,4
     ) + sqr(-x73)*POWER(x55,4) + sqr(-x73)*POWER(x56,4) + sqr(-x73)*POWER(x57,
     4) + sqr(-x73)*POWER(x58,4) + sqr(-x73)*POWER(x59,4) + sqr(-x73)*POWER(x60
     ,4) + sqr(-x73)*POWER(x61,4) + sqr(-x73)*POWER(x62,4) + sqr(-x73)*POWER(
     x63,4) + sqr(-x73)*POWER(x64,4) + sqr(-x73)*POWER(x65,4) + sqr(-x73)*
     POWER(x66,4) + sqr(-x73)*POWER(x67,4) + sqr(-x73)*POWER(x68,4) + sqr(-x73)
     *POWER(x69,4) + sqr(-x73)*POWER(x70,4) + sqr(-x73)*POWER(x71,4) + sqr(-x73
     )*POWER(x72,4) + sqr(-x73)*POWER(x73,4) + sqr(-x73)*POWER(x74,4) + sqr(-
     x73)*POWER(x75,4) + sqr(-x73)*POWER(x76,4) + sqr(-x73)*POWER(x77,4) + sqr(
     -x73)*POWER(x78,4) + sqr(-x73)*POWER(x79,4) + sqr(-x73)*POWER(x80,4) + 
     sqr(-x73)*POWER(x81,4) + sqr(-x73)*POWER(x82,4) + sqr(-x73)*POWER(x83,4)
      + sqr(-x73)*POWER(x84,4) + sqr(-x73)*POWER(x85,4) + sqr(-x73)*POWER(x86,4
     ) + sqr(-x73)*POWER(x87,4) + sqr(-x73)*POWER(x88,4) + sqr(-x73)*POWER(x89,
     4) + sqr(-x73)*POWER(x90,4) + sqr(-x73)*POWER(x91,4) + sqr(-x73)*POWER(x92
     ,4) + sqr(-x73)*POWER(x93,4) + sqr(-x73)*POWER(x94,4) + sqr(-x73)*POWER(
     x95,4) + sqr(-x73)*POWER(x96,4) + sqr(-x73)*POWER(x97,4) + sqr(-x73)*
     POWER(x98,4) + sqr(-x73)*POWER(x99,4) + sqr(-x73)*POWER(x100,4) + sqr(-x74
     )*POWER(x1,4) + sqr(-x74)*POWER(x2,4) + sqr(-x74)*POWER(x3,4) + sqr(-x74)*
     POWER(x4,4) + sqr(-x74)*POWER(x5,4) + sqr(-x74)*POWER(x6,4) + sqr(-x74)*
     POWER(x7,4) + sqr(-x74)*POWER(x8,4) + sqr(-x74)*POWER(x9,4) + sqr(-x74)*
     POWER(x10,4) + sqr(-x74)*POWER(x11,4) + sqr(-x74)*POWER(x12,4) + sqr(-x74)
     *POWER(x13,4) + sqr(-x74)*POWER(x14,4) + sqr(-x74)*POWER(x15,4) + sqr(-x74
     )*POWER(x16,4) + sqr(-x74)*POWER(x17,4) + sqr(-x74)*POWER(x18,4) + sqr(-
     x74)*POWER(x19,4) + sqr(-x74)*POWER(x20,4) + sqr(-x74)*POWER(x21,4) + sqr(
     -x74)*POWER(x22,4) + sqr(-x74)*POWER(x23,4) + sqr(-x74)*POWER(x24,4) + 
     sqr(-x74)*POWER(x25,4) + sqr(-x74)*POWER(x26,4) + sqr(-x74)*POWER(x27,4)
      + sqr(-x74)*POWER(x28,4) + sqr(-x74)*POWER(x29,4) + sqr(-x74)*POWER(x30,4
     ) + sqr(-x74)*POWER(x31,4) + sqr(-x74)*POWER(x32,4) + sqr(-x74)*POWER(x33,
     4) + sqr(-x74)*POWER(x34,4) + sqr(-x74)*POWER(x35,4) + sqr(-x74)*POWER(x36
     ,4) + sqr(-x74)*POWER(x37,4) + sqr(-x74)*POWER(x38,4) + sqr(-x74)*POWER(
     x39,4) + sqr(-x74)*POWER(x40,4) + sqr(-x74)*POWER(x41,4) + sqr(-x74)*
     POWER(x42,4) + sqr(-x74)*POWER(x43,4) + sqr(-x74)*POWER(x44,4) + sqr(-x74)
     *POWER(x45,4) + sqr(-x74)*POWER(x46,4) + sqr(-x74)*POWER(x47,4) + sqr(-x74
     )*POWER(x48,4) + sqr(-x74)*POWER(x49,4) + sqr(-x74)*POWER(x50,4) + sqr(-
     x74)*POWER(x51,4) + sqr(-x74)*POWER(x52,4) + sqr(-x74)*POWER(x53,4) + sqr(
     -x74)*POWER(x54,4) + sqr(-x74)*POWER(x55,4) + sqr(-x74)*POWER(x56,4) + 
     sqr(-x74)*POWER(x57,4) + sqr(-x74)*POWER(x58,4) + sqr(-x74)*POWER(x59,4)
      + sqr(-x74)*POWER(x60,4) + sqr(-x74)*POWER(x61,4) + sqr(-x74)*POWER(x62,4
     ) + sqr(-x74)*POWER(x63,4) + sqr(-x74)*POWER(x64,4) + sqr(-x74)*POWER(x65,
     4) + sqr(-x74)*POWER(x66,4) + sqr(-x74)*POWER(x67,4) + sqr(-x74)*POWER(x68
     ,4) + sqr(-x74)*POWER(x69,4) + sqr(-x74)*POWER(x70,4) + sqr(-x74)*POWER(
     x71,4) + sqr(-x74)*POWER(x72,4) + sqr(-x74)*POWER(x73,4) + sqr(-x74)*
     POWER(x74,4) + sqr(-x74)*POWER(x75,4) + sqr(-x74)*POWER(x76,4) + sqr(-x74)
     *POWER(x77,4) + sqr(-x74)*POWER(x78,4) + sqr(-x74)*POWER(x79,4) + sqr(-x74
     )*POWER(x80,4) + sqr(-x74)*POWER(x81,4) + sqr(-x74)*POWER(x82,4) + sqr(-
     x74)*POWER(x83,4) + sqr(-x74)*POWER(x84,4) + sqr(-x74)*POWER(x85,4) + sqr(
     -x74)*POWER(x86,4) + sqr(-x74)*POWER(x87,4) + sqr(-x74)*POWER(x88,4) + 
     sqr(-x74)*POWER(x89,4) + sqr(-x74)*POWER(x90,4) + sqr(-x74)*POWER(x91,4)
      + sqr(-x74)*POWER(x92,4) + sqr(-x74)*POWER(x93,4) + sqr(-x74)*POWER(x94,4
     ) + sqr(-x74)*POWER(x95,4) + sqr(-x74)*POWER(x96,4) + sqr(-x74)*POWER(x97,
     4) + sqr(-x74)*POWER(x98,4) + sqr(-x74)*POWER(x99,4) + sqr(-x74)*POWER(
     x100,4) + sqr(-x75)*POWER(x1,4) + sqr(-x75)*POWER(x2,4) + sqr(-x75)*POWER(
     x3,4) + sqr(-x75)*POWER(x4,4) + sqr(-x75)*POWER(x5,4) + sqr(-x75)*POWER(x6
     ,4) + sqr(-x75)*POWER(x7,4) + sqr(-x75)*POWER(x8,4) + sqr(-x75)*POWER(x9,4
     ) + sqr(-x75)*POWER(x10,4) + sqr(-x75)*POWER(x11,4) + sqr(-x75)*POWER(x12,
     4) + sqr(-x75)*POWER(x13,4) + sqr(-x75)*POWER(x14,4) + sqr(-x75)*POWER(x15
     ,4) + sqr(-x75)*POWER(x16,4) + sqr(-x75)*POWER(x17,4) + sqr(-x75)*POWER(
     x18,4) + sqr(-x75)*POWER(x19,4) + sqr(-x75)*POWER(x20,4) + sqr(-x75)*
     POWER(x21,4) + sqr(-x75)*POWER(x22,4) + sqr(-x75)*POWER(x23,4) + sqr(-x75)
     *POWER(x24,4) + sqr(-x75)*POWER(x25,4) + sqr(-x75)*POWER(x26,4) + sqr(-x75
     )*POWER(x27,4) + sqr(-x75)*POWER(x28,4) + sqr(-x75)*POWER(x29,4) + sqr(-
     x75)*POWER(x30,4) + sqr(-x75)*POWER(x31,4) + sqr(-x75)*POWER(x32,4) + sqr(
     -x75)*POWER(x33,4) + sqr(-x75)*POWER(x34,4) + sqr(-x75)*POWER(x35,4) + 
     sqr(-x75)*POWER(x36,4) + sqr(-x75)*POWER(x37,4) + sqr(-x75)*POWER(x38,4)
      + sqr(-x75)*POWER(x39,4) + sqr(-x75)*POWER(x40,4) + sqr(-x75)*POWER(x41,4
     ) + sqr(-x75)*POWER(x42,4) + sqr(-x75)*POWER(x43,4) + sqr(-x75)*POWER(x44,
     4) + sqr(-x75)*POWER(x45,4) + sqr(-x75)*POWER(x46,4) + sqr(-x75)*POWER(x47
     ,4) + sqr(-x75)*POWER(x48,4) + sqr(-x75)*POWER(x49,4) + sqr(-x75)*POWER(
     x50,4) + sqr(-x75)*POWER(x51,4) + sqr(-x75)*POWER(x52,4) + sqr(-x75)*
     POWER(x53,4) + sqr(-x75)*POWER(x54,4) + sqr(-x75)*POWER(x55,4) + sqr(-x75)
     *POWER(x56,4) + sqr(-x75)*POWER(x57,4) + sqr(-x75)*POWER(x58,4) + sqr(-x75
     )*POWER(x59,4) + sqr(-x75)*POWER(x60,4) + sqr(-x75)*POWER(x61,4) + sqr(-
     x75)*POWER(x62,4) + sqr(-x75)*POWER(x63,4) + sqr(-x75)*POWER(x64,4) + sqr(
     -x75)*POWER(x65,4) + sqr(-x75)*POWER(x66,4) + sqr(-x75)*POWER(x67,4) + 
     sqr(-x75)*POWER(x68,4) + sqr(-x75)*POWER(x69,4) + sqr(-x75)*POWER(x70,4)
      + sqr(-x75)*POWER(x71,4) + sqr(-x75)*POWER(x72,4) + sqr(-x75)*POWER(x73,4
     ) + sqr(-x75)*POWER(x74,4) + sqr(-x75)*POWER(x75,4) + sqr(-x75)*POWER(x76,
     4) + sqr(-x75)*POWER(x77,4) + sqr(-x75)*POWER(x78,4) + sqr(-x75)*POWER(x79
     ,4) + sqr(-x75)*POWER(x80,4) + sqr(-x75)*POWER(x81,4) + sqr(-x75)*POWER(
     x82,4) + sqr(-x75)*POWER(x83,4) + sqr(-x75)*POWER(x84,4) + sqr(-x75)*
     POWER(x85,4) + sqr(-x75)*POWER(x86,4) + sqr(-x75)*POWER(x87,4) + sqr(-x75)
     *POWER(x88,4) + sqr(-x75)*POWER(x89,4) + sqr(-x75)*POWER(x90,4) + sqr(-x75
     )*POWER(x91,4) + sqr(-x75)*POWER(x92,4) + sqr(-x75)*POWER(x93,4) + sqr(-
     x75)*POWER(x94,4) + sqr(-x75)*POWER(x95,4) + sqr(-x75)*POWER(x96,4) + sqr(
     -x75)*POWER(x97,4) + sqr(-x75)*POWER(x98,4) + sqr(-x75)*POWER(x99,4) + 
     sqr(-x75)*POWER(x100,4) + sqr(-x76)*POWER(x1,4) + sqr(-x76)*POWER(x2,4) + 
     sqr(-x76)*POWER(x3,4) + sqr(-x76)*POWER(x4,4) + sqr(-x76)*POWER(x5,4) + 
     sqr(-x76)*POWER(x6,4) + sqr(-x76)*POWER(x7,4) + sqr(-x76)*POWER(x8,4) + 
     sqr(-x76)*POWER(x9,4) + sqr(-x76)*POWER(x10,4) + sqr(-x76)*POWER(x11,4) + 
     sqr(-x76)*POWER(x12,4) + sqr(-x76)*POWER(x13,4) + sqr(-x76)*POWER(x14,4)
      + sqr(-x76)*POWER(x15,4) + sqr(-x76)*POWER(x16,4) + sqr(-x76)*POWER(x17,4
     ) + sqr(-x76)*POWER(x18,4) + sqr(-x76)*POWER(x19,4) + sqr(-x76)*POWER(x20,
     4) + sqr(-x76)*POWER(x21,4) + sqr(-x76)*POWER(x22,4) + sqr(-x76)*POWER(x23
     ,4) + sqr(-x76)*POWER(x24,4) + sqr(-x76)*POWER(x25,4) + sqr(-x76)*POWER(
     x26,4) + sqr(-x76)*POWER(x27,4) + sqr(-x76)*POWER(x28,4) + sqr(-x76)*
     POWER(x29,4) + sqr(-x76)*POWER(x30,4) + sqr(-x76)*POWER(x31,4) + sqr(-x76)
     *POWER(x32,4) + sqr(-x76)*POWER(x33,4) + sqr(-x76)*POWER(x34,4) + sqr(-x76
     )*POWER(x35,4) + sqr(-x76)*POWER(x36,4) + sqr(-x76)*POWER(x37,4) + sqr(-
     x76)*POWER(x38,4) + sqr(-x76)*POWER(x39,4) + sqr(-x76)*POWER(x40,4) + sqr(
     -x76)*POWER(x41,4) + sqr(-x76)*POWER(x42,4) + sqr(-x76)*POWER(x43,4) + 
     sqr(-x76)*POWER(x44,4) + sqr(-x76)*POWER(x45,4) + sqr(-x76)*POWER(x46,4)
      + sqr(-x76)*POWER(x47,4) + sqr(-x76)*POWER(x48,4) + sqr(-x76)*POWER(x49,4
     ) + sqr(-x76)*POWER(x50,4) + sqr(-x76)*POWER(x51,4) + sqr(-x76)*POWER(x52,
     4) + sqr(-x76)*POWER(x53,4) + sqr(-x76)*POWER(x54,4) + sqr(-x76)*POWER(x55
     ,4) + sqr(-x76)*POWER(x56,4) + sqr(-x76)*POWER(x57,4) + sqr(-x76)*POWER(
     x58,4) + sqr(-x76)*POWER(x59,4) + sqr(-x76)*POWER(x60,4) + sqr(-x76)*
     POWER(x61,4) + sqr(-x76)*POWER(x62,4) + sqr(-x76)*POWER(x63,4) + sqr(-x76)
     *POWER(x64,4) + sqr(-x76)*POWER(x65,4) + sqr(-x76)*POWER(x66,4) + sqr(-x76
     )*POWER(x67,4) + sqr(-x76)*POWER(x68,4) + sqr(-x76)*POWER(x69,4) + sqr(-
     x76)*POWER(x70,4) + sqr(-x76)*POWER(x71,4) + sqr(-x76)*POWER(x72,4) + sqr(
     -x76)*POWER(x73,4) + sqr(-x76)*POWER(x74,4) + sqr(-x76)*POWER(x75,4) + 
     sqr(-x76)*POWER(x76,4) + sqr(-x76)*POWER(x77,4) + sqr(-x76)*POWER(x78,4)
      + sqr(-x76)*POWER(x79,4) + sqr(-x76)*POWER(x80,4) + sqr(-x76)*POWER(x81,4
     ) + sqr(-x76)*POWER(x82,4) + sqr(-x76)*POWER(x83,4) + sqr(-x76)*POWER(x84,
     4) + sqr(-x76)*POWER(x85,4) + sqr(-x76)*POWER(x86,4) + sqr(-x76)*POWER(x87
     ,4) + sqr(-x76)*POWER(x88,4) + sqr(-x76)*POWER(x89,4) + sqr(-x76)*POWER(
     x90,4) + sqr(-x76)*POWER(x91,4) + sqr(-x76)*POWER(x92,4) + sqr(-x76)*
     POWER(x93,4) + sqr(-x76)*POWER(x94,4) + sqr(-x76)*POWER(x95,4) + sqr(-x76)
     *POWER(x96,4) + sqr(-x76)*POWER(x97,4) + sqr(-x76)*POWER(x98,4) + sqr(-x76
     )*POWER(x99,4) + sqr(-x76)*POWER(x100,4) + sqr(-x77)*POWER(x1,4) + sqr(-
     x77)*POWER(x2,4) + sqr(-x77)*POWER(x3,4) + sqr(-x77)*POWER(x4,4) + sqr(-
     x77)*POWER(x5,4) + sqr(-x77)*POWER(x6,4) + sqr(-x77)*POWER(x7,4) + sqr(-
     x77)*POWER(x8,4) + sqr(-x77)*POWER(x9,4) + sqr(-x77)*POWER(x10,4) + sqr(-
     x77)*POWER(x11,4) + sqr(-x77)*POWER(x12,4) + sqr(-x77)*POWER(x13,4) + sqr(
     -x77)*POWER(x14,4) + sqr(-x77)*POWER(x15,4) + sqr(-x77)*POWER(x16,4) + 
     sqr(-x77)*POWER(x17,4) + sqr(-x77)*POWER(x18,4) + sqr(-x77)*POWER(x19,4)
      + sqr(-x77)*POWER(x20,4) + sqr(-x77)*POWER(x21,4) + sqr(-x77)*POWER(x22,4
     ) + sqr(-x77)*POWER(x23,4) + sqr(-x77)*POWER(x24,4) + sqr(-x77)*POWER(x25,
     4) + sqr(-x77)*POWER(x26,4) + sqr(-x77)*POWER(x27,4) + sqr(-x77)*POWER(x28
     ,4) + sqr(-x77)*POWER(x29,4) + sqr(-x77)*POWER(x30,4) + sqr(-x77)*POWER(
     x31,4) + sqr(-x77)*POWER(x32,4) + sqr(-x77)*POWER(x33,4) + sqr(-x77)*
     POWER(x34,4) + sqr(-x77)*POWER(x35,4) + sqr(-x77)*POWER(x36,4) + sqr(-x77)
     *POWER(x37,4) + sqr(-x77)*POWER(x38,4) + sqr(-x77)*POWER(x39,4) + sqr(-x77
     )*POWER(x40,4) + sqr(-x77)*POWER(x41,4) + sqr(-x77)*POWER(x42,4) + sqr(-
     x77)*POWER(x43,4) + sqr(-x77)*POWER(x44,4) + sqr(-x77)*POWER(x45,4) + sqr(
     -x77)*POWER(x46,4) + sqr(-x77)*POWER(x47,4) + sqr(-x77)*POWER(x48,4) + 
     sqr(-x77)*POWER(x49,4) + sqr(-x77)*POWER(x50,4) + sqr(-x77)*POWER(x51,4)
      + sqr(-x77)*POWER(x52,4) + sqr(-x77)*POWER(x53,4) + sqr(-x77)*POWER(x54,4
     ) + sqr(-x77)*POWER(x55,4) + sqr(-x77)*POWER(x56,4) + sqr(-x77)*POWER(x57,
     4) + sqr(-x77)*POWER(x58,4) + sqr(-x77)*POWER(x59,4) + sqr(-x77)*POWER(x60
     ,4) + sqr(-x77)*POWER(x61,4) + sqr(-x77)*POWER(x62,4) + sqr(-x77)*POWER(
     x63,4) + sqr(-x77)*POWER(x64,4) + sqr(-x77)*POWER(x65,4) + sqr(-x77)*
     POWER(x66,4) + sqr(-x77)*POWER(x67,4) + sqr(-x77)*POWER(x68,4) + sqr(-x77)
     *POWER(x69,4) + sqr(-x77)*POWER(x70,4) + sqr(-x77)*POWER(x71,4) + sqr(-x77
     )*POWER(x72,4) + sqr(-x77)*POWER(x73,4) + sqr(-x77)*POWER(x74,4) + sqr(-
     x77)*POWER(x75,4) + sqr(-x77)*POWER(x76,4) + sqr(-x77)*POWER(x77,4) + sqr(
     -x77)*POWER(x78,4) + sqr(-x77)*POWER(x79,4) + sqr(-x77)*POWER(x80,4) + 
     sqr(-x77)*POWER(x81,4) + sqr(-x77)*POWER(x82,4) + sqr(-x77)*POWER(x83,4)
      + sqr(-x77)*POWER(x84,4) + sqr(-x77)*POWER(x85,4) + sqr(-x77)*POWER(x86,4
     ) + sqr(-x77)*POWER(x87,4) + sqr(-x77)*POWER(x88,4) + sqr(-x77)*POWER(x89,
     4) + sqr(-x77)*POWER(x90,4) + sqr(-x77)*POWER(x91,4) + sqr(-x77)*POWER(x92
     ,4) + sqr(-x77)*POWER(x93,4) + sqr(-x77)*POWER(x94,4) + sqr(-x77)*POWER(
     x95,4) + sqr(-x77)*POWER(x96,4) + sqr(-x77)*POWER(x97,4) + sqr(-x77)*
     POWER(x98,4) + sqr(-x77)*POWER(x99,4) + sqr(-x77)*POWER(x100,4) + sqr(-x78
     )*POWER(x1,4) + sqr(-x78)*POWER(x2,4) + sqr(-x78)*POWER(x3,4) + sqr(-x78)*
     POWER(x4,4) + sqr(-x78)*POWER(x5,4) + sqr(-x78)*POWER(x6,4) + sqr(-x78)*
     POWER(x7,4) + sqr(-x78)*POWER(x8,4) + sqr(-x78)*POWER(x9,4) + sqr(-x78)*
     POWER(x10,4) + sqr(-x78)*POWER(x11,4) + sqr(-x78)*POWER(x12,4) + sqr(-x78)
     *POWER(x13,4) + sqr(-x78)*POWER(x14,4) + sqr(-x78)*POWER(x15,4) + sqr(-x78
     )*POWER(x16,4) + sqr(-x78)*POWER(x17,4) + sqr(-x78)*POWER(x18,4) + sqr(-
     x78)*POWER(x19,4) + sqr(-x78)*POWER(x20,4) + sqr(-x78)*POWER(x21,4) + sqr(
     -x78)*POWER(x22,4) + sqr(-x78)*POWER(x23,4) + sqr(-x78)*POWER(x24,4) + 
     sqr(-x78)*POWER(x25,4) + sqr(-x78)*POWER(x26,4) + sqr(-x78)*POWER(x27,4)
      + sqr(-x78)*POWER(x28,4) + sqr(-x78)*POWER(x29,4) + sqr(-x78)*POWER(x30,4
     ) + sqr(-x78)*POWER(x31,4) + sqr(-x78)*POWER(x32,4) + sqr(-x78)*POWER(x33,
     4) + sqr(-x78)*POWER(x34,4) + sqr(-x78)*POWER(x35,4) + sqr(-x78)*POWER(x36
     ,4) + sqr(-x78)*POWER(x37,4) + sqr(-x78)*POWER(x38,4) + sqr(-x78)*POWER(
     x39,4) + sqr(-x78)*POWER(x40,4) + sqr(-x78)*POWER(x41,4) + sqr(-x78)*
     POWER(x42,4) + sqr(-x78)*POWER(x43,4) + sqr(-x78)*POWER(x44,4) + sqr(-x78)
     *POWER(x45,4) + sqr(-x78)*POWER(x46,4) + sqr(-x78)*POWER(x47,4) + sqr(-x78
     )*POWER(x48,4) + sqr(-x78)*POWER(x49,4) + sqr(-x78)*POWER(x50,4) + sqr(-
     x78)*POWER(x51,4) + sqr(-x78)*POWER(x52,4) + sqr(-x78)*POWER(x53,4) + sqr(
     -x78)*POWER(x54,4) + sqr(-x78)*POWER(x55,4) + sqr(-x78)*POWER(x56,4) + 
     sqr(-x78)*POWER(x57,4) + sqr(-x78)*POWER(x58,4) + sqr(-x78)*POWER(x59,4)
      + sqr(-x78)*POWER(x60,4) + sqr(-x78)*POWER(x61,4) + sqr(-x78)*POWER(x62,4
     ) + sqr(-x78)*POWER(x63,4) + sqr(-x78)*POWER(x64,4) + sqr(-x78)*POWER(x65,
     4) + sqr(-x78)*POWER(x66,4) + sqr(-x78)*POWER(x67,4) + sqr(-x78)*POWER(x68
     ,4) + sqr(-x78)*POWER(x69,4) + sqr(-x78)*POWER(x70,4) + sqr(-x78)*POWER(
     x71,4) + sqr(-x78)*POWER(x72,4) + sqr(-x78)*POWER(x73,4) + sqr(-x78)*
     POWER(x74,4) + sqr(-x78)*POWER(x75,4) + sqr(-x78)*POWER(x76,4) + sqr(-x78)
     *POWER(x77,4) + sqr(-x78)*POWER(x78,4) + sqr(-x78)*POWER(x79,4) + sqr(-x78
     )*POWER(x80,4) + sqr(-x78)*POWER(x81,4) + sqr(-x78)*POWER(x82,4) + sqr(-
     x78)*POWER(x83,4) + sqr(-x78)*POWER(x84,4) + sqr(-x78)*POWER(x85,4) + sqr(
     -x78)*POWER(x86,4) + sqr(-x78)*POWER(x87,4) + sqr(-x78)*POWER(x88,4) + 
     sqr(-x78)*POWER(x89,4) + sqr(-x78)*POWER(x90,4) + sqr(-x78)*POWER(x91,4)
      + sqr(-x78)*POWER(x92,4) + sqr(-x78)*POWER(x93,4) + sqr(-x78)*POWER(x94,4
     ) + sqr(-x78)*POWER(x95,4) + sqr(-x78)*POWER(x96,4) + sqr(-x78)*POWER(x97,
     4) + sqr(-x78)*POWER(x98,4) + sqr(-x78)*POWER(x99,4) + sqr(-x78)*POWER(
     x100,4) + sqr(-x79)*POWER(x1,4) + sqr(-x79)*POWER(x2,4) + sqr(-x79)*POWER(
     x3,4) + sqr(-x79)*POWER(x4,4) + sqr(-x79)*POWER(x5,4) + sqr(-x79)*POWER(x6
     ,4) + sqr(-x79)*POWER(x7,4) + sqr(-x79)*POWER(x8,4) + sqr(-x79)*POWER(x9,4
     ) + sqr(-x79)*POWER(x10,4) + sqr(-x79)*POWER(x11,4) + sqr(-x79)*POWER(x12,
     4) + sqr(-x79)*POWER(x13,4) + sqr(-x79)*POWER(x14,4) + sqr(-x79)*POWER(x15
     ,4) + sqr(-x79)*POWER(x16,4) + sqr(-x79)*POWER(x17,4) + sqr(-x79)*POWER(
     x18,4) + sqr(-x79)*POWER(x19,4) + sqr(-x79)*POWER(x20,4) + sqr(-x79)*
     POWER(x21,4) + sqr(-x79)*POWER(x22,4) + sqr(-x79)*POWER(x23,4) + sqr(-x79)
     *POWER(x24,4) + sqr(-x79)*POWER(x25,4) + sqr(-x79)*POWER(x26,4) + sqr(-x79
     )*POWER(x27,4) + sqr(-x79)*POWER(x28,4) + sqr(-x79)*POWER(x29,4) + sqr(-
     x79)*POWER(x30,4) + sqr(-x79)*POWER(x31,4) + sqr(-x79)*POWER(x32,4) + sqr(
     -x79)*POWER(x33,4) + sqr(-x79)*POWER(x34,4) + sqr(-x79)*POWER(x35,4) + 
     sqr(-x79)*POWER(x36,4) + sqr(-x79)*POWER(x37,4) + sqr(-x79)*POWER(x38,4)
      + sqr(-x79)*POWER(x39,4) + sqr(-x79)*POWER(x40,4) + sqr(-x79)*POWER(x41,4
     ) + sqr(-x79)*POWER(x42,4) + sqr(-x79)*POWER(x43,4) + sqr(-x79)*POWER(x44,
     4) + sqr(-x79)*POWER(x45,4) + sqr(-x79)*POWER(x46,4) + sqr(-x79)*POWER(x47
     ,4) + sqr(-x79)*POWER(x48,4) + sqr(-x79)*POWER(x49,4) + sqr(-x79)*POWER(
     x50,4) + sqr(-x79)*POWER(x51,4) + sqr(-x79)*POWER(x52,4) + sqr(-x79)*
     POWER(x53,4) + sqr(-x79)*POWER(x54,4) + sqr(-x79)*POWER(x55,4) + sqr(-x79)
     *POWER(x56,4) + sqr(-x79)*POWER(x57,4) + sqr(-x79)*POWER(x58,4) + sqr(-x79
     )*POWER(x59,4) + sqr(-x79)*POWER(x60,4) + sqr(-x79)*POWER(x61,4) + sqr(-
     x79)*POWER(x62,4) + sqr(-x79)*POWER(x63,4) + sqr(-x79)*POWER(x64,4) + sqr(
     -x79)*POWER(x65,4) + sqr(-x79)*POWER(x66,4) + sqr(-x79)*POWER(x67,4) + 
     sqr(-x79)*POWER(x68,4) + sqr(-x79)*POWER(x69,4) + sqr(-x79)*POWER(x70,4)
      + sqr(-x79)*POWER(x71,4) + sqr(-x79)*POWER(x72,4) + sqr(-x79)*POWER(x73,4
     ) + sqr(-x79)*POWER(x74,4) + sqr(-x79)*POWER(x75,4) + sqr(-x79)*POWER(x76,
     4) + sqr(-x79)*POWER(x77,4) + sqr(-x79)*POWER(x78,4) + sqr(-x79)*POWER(x79
     ,4) + sqr(-x79)*POWER(x80,4) + sqr(-x79)*POWER(x81,4) + sqr(-x79)*POWER(
     x82,4) + sqr(-x79)*POWER(x83,4) + sqr(-x79)*POWER(x84,4) + sqr(-x79)*
     POWER(x85,4) + sqr(-x79)*POWER(x86,4) + sqr(-x79)*POWER(x87,4) + sqr(-x79)
     *POWER(x88,4) + sqr(-x79)*POWER(x89,4) + sqr(-x79)*POWER(x90,4) + sqr(-x79
     )*POWER(x91,4) + sqr(-x79)*POWER(x92,4) + sqr(-x79)*POWER(x93,4) + sqr(-
     x79)*POWER(x94,4) + sqr(-x79)*POWER(x95,4) + sqr(-x79)*POWER(x96,4) + sqr(
     -x79)*POWER(x97,4) + sqr(-x79)*POWER(x98,4) + sqr(-x79)*POWER(x99,4) + 
     sqr(-x79)*POWER(x100,4) + sqr(-x80)*POWER(x1,4) + sqr(-x80)*POWER(x2,4) + 
     sqr(-x80)*POWER(x3,4) + sqr(-x80)*POWER(x4,4) + sqr(-x80)*POWER(x5,4) + 
     sqr(-x80)*POWER(x6,4) + sqr(-x80)*POWER(x7,4) + sqr(-x80)*POWER(x8,4) + 
     sqr(-x80)*POWER(x9,4) + sqr(-x80)*POWER(x10,4) + sqr(-x80)*POWER(x11,4) + 
     sqr(-x80)*POWER(x12,4) + sqr(-x80)*POWER(x13,4) + sqr(-x80)*POWER(x14,4)
      + sqr(-x80)*POWER(x15,4) + sqr(-x80)*POWER(x16,4) + sqr(-x80)*POWER(x17,4
     ) + sqr(-x80)*POWER(x18,4) + sqr(-x80)*POWER(x19,4) + sqr(-x80)*POWER(x20,
     4) + sqr(-x80)*POWER(x21,4) + sqr(-x80)*POWER(x22,4) + sqr(-x80)*POWER(x23
     ,4) + sqr(-x80)*POWER(x24,4) + sqr(-x80)*POWER(x25,4) + sqr(-x80)*POWER(
     x26,4) + sqr(-x80)*POWER(x27,4) + sqr(-x80)*POWER(x28,4) + sqr(-x80)*
     POWER(x29,4) + sqr(-x80)*POWER(x30,4) + sqr(-x80)*POWER(x31,4) + sqr(-x80)
     *POWER(x32,4) + sqr(-x80)*POWER(x33,4) + sqr(-x80)*POWER(x34,4) + sqr(-x80
     )*POWER(x35,4) + sqr(-x80)*POWER(x36,4) + sqr(-x80)*POWER(x37,4) + sqr(-
     x80)*POWER(x38,4) + sqr(-x80)*POWER(x39,4) + sqr(-x80)*POWER(x40,4) + sqr(
     -x80)*POWER(x41,4) + sqr(-x80)*POWER(x42,4) + sqr(-x80)*POWER(x43,4) + 
     sqr(-x80)*POWER(x44,4) + sqr(-x80)*POWER(x45,4) + sqr(-x80)*POWER(x46,4)
      + sqr(-x80)*POWER(x47,4) + sqr(-x80)*POWER(x48,4) + sqr(-x80)*POWER(x49,4
     ) + sqr(-x80)*POWER(x50,4) + sqr(-x80)*POWER(x51,4) + sqr(-x80)*POWER(x52,
     4) + sqr(-x80)*POWER(x53,4) + sqr(-x80)*POWER(x54,4) + sqr(-x80)*POWER(x55
     ,4) + sqr(-x80)*POWER(x56,4) + sqr(-x80)*POWER(x57,4) + sqr(-x80)*POWER(
     x58,4) + sqr(-x80)*POWER(x59,4) + sqr(-x80)*POWER(x60,4) + sqr(-x80)*
     POWER(x61,4) + sqr(-x80)*POWER(x62,4) + sqr(-x80)*POWER(x63,4) + sqr(-x80)
     *POWER(x64,4) + sqr(-x80)*POWER(x65,4) + sqr(-x80)*POWER(x66,4) + sqr(-x80
     )*POWER(x67,4) + sqr(-x80)*POWER(x68,4) + sqr(-x80)*POWER(x69,4) + sqr(-
     x80)*POWER(x70,4) + sqr(-x80)*POWER(x71,4) + sqr(-x80)*POWER(x72,4) + sqr(
     -x80)*POWER(x73,4) + sqr(-x80)*POWER(x74,4) + sqr(-x80)*POWER(x75,4) + 
     sqr(-x80)*POWER(x76,4) + sqr(-x80)*POWER(x77,4) + sqr(-x80)*POWER(x78,4)
      + sqr(-x80)*POWER(x79,4) + sqr(-x80)*POWER(x80,4) + sqr(-x80)*POWER(x81,4
     ) + sqr(-x80)*POWER(x82,4) + sqr(-x80)*POWER(x83,4) + sqr(-x80)*POWER(x84,
     4) + sqr(-x80)*POWER(x85,4) + sqr(-x80)*POWER(x86,4) + sqr(-x80)*POWER(x87
     ,4) + sqr(-x80)*POWER(x88,4) + sqr(-x80)*POWER(x89,4) + sqr(-x80)*POWER(
     x90,4) + sqr(-x80)*POWER(x91,4) + sqr(-x80)*POWER(x92,4) + sqr(-x80)*
     POWER(x93,4) + sqr(-x80)*POWER(x94,4) + sqr(-x80)*POWER(x95,4) + sqr(-x80)
     *POWER(x96,4) + sqr(-x80)*POWER(x97,4) + sqr(-x80)*POWER(x98,4) + sqr(-x80
     )*POWER(x99,4) + sqr(-x80)*POWER(x100,4) + sqr(-x81)*POWER(x1,4) + sqr(-
     x81)*POWER(x2,4) + sqr(-x81)*POWER(x3,4) + sqr(-x81)*POWER(x4,4) + sqr(-
     x81)*POWER(x5,4) + sqr(-x81)*POWER(x6,4) + sqr(-x81)*POWER(x7,4) + sqr(-
     x81)*POWER(x8,4) + sqr(-x81)*POWER(x9,4) + sqr(-x81)*POWER(x10,4) + sqr(-
     x81)*POWER(x11,4) + sqr(-x81)*POWER(x12,4) + sqr(-x81)*POWER(x13,4) + sqr(
     -x81)*POWER(x14,4) + sqr(-x81)*POWER(x15,4) + sqr(-x81)*POWER(x16,4) + 
     sqr(-x81)*POWER(x17,4) + sqr(-x81)*POWER(x18,4) + sqr(-x81)*POWER(x19,4)
      + sqr(-x81)*POWER(x20,4) + sqr(-x81)*POWER(x21,4) + sqr(-x81)*POWER(x22,4
     ) + sqr(-x81)*POWER(x23,4) + sqr(-x81)*POWER(x24,4) + sqr(-x81)*POWER(x25,
     4) + sqr(-x81)*POWER(x26,4) + sqr(-x81)*POWER(x27,4) + sqr(-x81)*POWER(x28
     ,4) + sqr(-x81)*POWER(x29,4) + sqr(-x81)*POWER(x30,4) + sqr(-x81)*POWER(
     x31,4) + sqr(-x81)*POWER(x32,4) + sqr(-x81)*POWER(x33,4) + sqr(-x81)*
     POWER(x34,4) + sqr(-x81)*POWER(x35,4) + sqr(-x81)*POWER(x36,4) + sqr(-x81)
     *POWER(x37,4) + sqr(-x81)*POWER(x38,4) + sqr(-x81)*POWER(x39,4) + sqr(-x81
     )*POWER(x40,4) + sqr(-x81)*POWER(x41,4) + sqr(-x81)*POWER(x42,4) + sqr(-
     x81)*POWER(x43,4) + sqr(-x81)*POWER(x44,4) + sqr(-x81)*POWER(x45,4) + sqr(
     -x81)*POWER(x46,4) + sqr(-x81)*POWER(x47,4) + sqr(-x81)*POWER(x48,4) + 
     sqr(-x81)*POWER(x49,4) + sqr(-x81)*POWER(x50,4) + sqr(-x81)*POWER(x51,4)
      + sqr(-x81)*POWER(x52,4) + sqr(-x81)*POWER(x53,4) + sqr(-x81)*POWER(x54,4
     ) + sqr(-x81)*POWER(x55,4) + sqr(-x81)*POWER(x56,4) + sqr(-x81)*POWER(x57,
     4) + sqr(-x81)*POWER(x58,4) + sqr(-x81)*POWER(x59,4) + sqr(-x81)*POWER(x60
     ,4) + sqr(-x81)*POWER(x61,4) + sqr(-x81)*POWER(x62,4) + sqr(-x81)*POWER(
     x63,4) + sqr(-x81)*POWER(x64,4) + sqr(-x81)*POWER(x65,4) + sqr(-x81)*
     POWER(x66,4) + sqr(-x81)*POWER(x67,4) + sqr(-x81)*POWER(x68,4) + sqr(-x81)
     *POWER(x69,4) + sqr(-x81)*POWER(x70,4) + sqr(-x81)*POWER(x71,4) + sqr(-x81
     )*POWER(x72,4) + sqr(-x81)*POWER(x73,4) + sqr(-x81)*POWER(x74,4) + sqr(-
     x81)*POWER(x75,4) + sqr(-x81)*POWER(x76,4) + sqr(-x81)*POWER(x77,4) + sqr(
     -x81)*POWER(x78,4) + sqr(-x81)*POWER(x79,4) + sqr(-x81)*POWER(x80,4) + 
     sqr(-x81)*POWER(x81,4) + sqr(-x81)*POWER(x82,4) + sqr(-x81)*POWER(x83,4)
      + sqr(-x81)*POWER(x84,4) + sqr(-x81)*POWER(x85,4) + sqr(-x81)*POWER(x86,4
     ) + sqr(-x81)*POWER(x87,4) + sqr(-x81)*POWER(x88,4) + sqr(-x81)*POWER(x89,
     4) + sqr(-x81)*POWER(x90,4) + sqr(-x81)*POWER(x91,4) + sqr(-x81)*POWER(x92
     ,4) + sqr(-x81)*POWER(x93,4) + sqr(-x81)*POWER(x94,4) + sqr(-x81)*POWER(
     x95,4) + sqr(-x81)*POWER(x96,4) + sqr(-x81)*POWER(x97,4) + sqr(-x81)*
     POWER(x98,4) + sqr(-x81)*POWER(x99,4) + sqr(-x81)*POWER(x100,4) + sqr(-x82
     )*POWER(x1,4) + sqr(-x82)*POWER(x2,4) + sqr(-x82)*POWER(x3,4) + sqr(-x82)*
     POWER(x4,4) + sqr(-x82)*POWER(x5,4) + sqr(-x82)*POWER(x6,4) + sqr(-x82)*
     POWER(x7,4) + sqr(-x82)*POWER(x8,4) + sqr(-x82)*POWER(x9,4) + sqr(-x82)*
     POWER(x10,4) + sqr(-x82)*POWER(x11,4) + sqr(-x82)*POWER(x12,4) + sqr(-x82)
     *POWER(x13,4) + sqr(-x82)*POWER(x14,4) + sqr(-x82)*POWER(x15,4) + sqr(-x82
     )*POWER(x16,4) + sqr(-x82)*POWER(x17,4) + sqr(-x82)*POWER(x18,4) + sqr(-
     x82)*POWER(x19,4) + sqr(-x82)*POWER(x20,4) + sqr(-x82)*POWER(x21,4) + sqr(
     -x82)*POWER(x22,4) + sqr(-x82)*POWER(x23,4) + sqr(-x82)*POWER(x24,4) + 
     sqr(-x82)*POWER(x25,4) + sqr(-x82)*POWER(x26,4) + sqr(-x82)*POWER(x27,4)
      + sqr(-x82)*POWER(x28,4) + sqr(-x82)*POWER(x29,4) + sqr(-x82)*POWER(x30,4
     ) + sqr(-x82)*POWER(x31,4) + sqr(-x82)*POWER(x32,4) + sqr(-x82)*POWER(x33,
     4) + sqr(-x82)*POWER(x34,4) + sqr(-x82)*POWER(x35,4) + sqr(-x82)*POWER(x36
     ,4) + sqr(-x82)*POWER(x37,4) + sqr(-x82)*POWER(x38,4) + sqr(-x82)*POWER(
     x39,4) + sqr(-x82)*POWER(x40,4) + sqr(-x82)*POWER(x41,4) + sqr(-x82)*
     POWER(x42,4) + sqr(-x82)*POWER(x43,4) + sqr(-x82)*POWER(x44,4) + sqr(-x82)
     *POWER(x45,4) + sqr(-x82)*POWER(x46,4) + sqr(-x82)*POWER(x47,4) + sqr(-x82
     )*POWER(x48,4) + sqr(-x82)*POWER(x49,4) + sqr(-x82)*POWER(x50,4) + sqr(-
     x82)*POWER(x51,4) + sqr(-x82)*POWER(x52,4) + sqr(-x82)*POWER(x53,4) + sqr(
     -x82)*POWER(x54,4) + sqr(-x82)*POWER(x55,4) + sqr(-x82)*POWER(x56,4) + 
     sqr(-x82)*POWER(x57,4) + sqr(-x82)*POWER(x58,4) + sqr(-x82)*POWER(x59,4)
      + sqr(-x82)*POWER(x60,4) + sqr(-x82)*POWER(x61,4) + sqr(-x82)*POWER(x62,4
     ) + sqr(-x82)*POWER(x63,4) + sqr(-x82)*POWER(x64,4) + sqr(-x82)*POWER(x65,
     4) + sqr(-x82)*POWER(x66,4) + sqr(-x82)*POWER(x67,4) + sqr(-x82)*POWER(x68
     ,4) + sqr(-x82)*POWER(x69,4) + sqr(-x82)*POWER(x70,4) + sqr(-x82)*POWER(
     x71,4) + sqr(-x82)*POWER(x72,4) + sqr(-x82)*POWER(x73,4) + sqr(-x82)*
     POWER(x74,4) + sqr(-x82)*POWER(x75,4) + sqr(-x82)*POWER(x76,4) + sqr(-x82)
     *POWER(x77,4) + sqr(-x82)*POWER(x78,4) + sqr(-x82)*POWER(x79,4) + sqr(-x82
     )*POWER(x80,4) + sqr(-x82)*POWER(x81,4) + sqr(-x82)*POWER(x82,4) + sqr(-
     x82)*POWER(x83,4) + sqr(-x82)*POWER(x84,4) + sqr(-x82)*POWER(x85,4) + sqr(
     -x82)*POWER(x86,4) + sqr(-x82)*POWER(x87,4) + sqr(-x82)*POWER(x88,4) + 
     sqr(-x82)*POWER(x89,4) + sqr(-x82)*POWER(x90,4) + sqr(-x82)*POWER(x91,4)
      + sqr(-x82)*POWER(x92,4) + sqr(-x82)*POWER(x93,4) + sqr(-x82)*POWER(x94,4
     ) + sqr(-x82)*POWER(x95,4) + sqr(-x82)*POWER(x96,4) + sqr(-x82)*POWER(x97,
     4) + sqr(-x82)*POWER(x98,4) + sqr(-x82)*POWER(x99,4) + sqr(-x82)*POWER(
     x100,4) + sqr(-x83)*POWER(x1,4) + sqr(-x83)*POWER(x2,4) + sqr(-x83)*POWER(
     x3,4) + sqr(-x83)*POWER(x4,4) + sqr(-x83)*POWER(x5,4) + sqr(-x83)*POWER(x6
     ,4) + sqr(-x83)*POWER(x7,4) + sqr(-x83)*POWER(x8,4) + sqr(-x83)*POWER(x9,4
     ) + sqr(-x83)*POWER(x10,4) + sqr(-x83)*POWER(x11,4) + sqr(-x83)*POWER(x12,
     4) + sqr(-x83)*POWER(x13,4) + sqr(-x83)*POWER(x14,4) + sqr(-x83)*POWER(x15
     ,4) + sqr(-x83)*POWER(x16,4) + sqr(-x83)*POWER(x17,4) + sqr(-x83)*POWER(
     x18,4) + sqr(-x83)*POWER(x19,4) + sqr(-x83)*POWER(x20,4) + sqr(-x83)*
     POWER(x21,4) + sqr(-x83)*POWER(x22,4) + sqr(-x83)*POWER(x23,4) + sqr(-x83)
     *POWER(x24,4) + sqr(-x83)*POWER(x25,4) + sqr(-x83)*POWER(x26,4) + sqr(-x83
     )*POWER(x27,4) + sqr(-x83)*POWER(x28,4) + sqr(-x83)*POWER(x29,4) + sqr(-
     x83)*POWER(x30,4) + sqr(-x83)*POWER(x31,4) + sqr(-x83)*POWER(x32,4) + sqr(
     -x83)*POWER(x33,4) + sqr(-x83)*POWER(x34,4) + sqr(-x83)*POWER(x35,4) + 
     sqr(-x83)*POWER(x36,4) + sqr(-x83)*POWER(x37,4) + sqr(-x83)*POWER(x38,4)
      + sqr(-x83)*POWER(x39,4) + sqr(-x83)*POWER(x40,4) + sqr(-x83)*POWER(x41,4
     ) + sqr(-x83)*POWER(x42,4) + sqr(-x83)*POWER(x43,4) + sqr(-x83)*POWER(x44,
     4) + sqr(-x83)*POWER(x45,4) + sqr(-x83)*POWER(x46,4) + sqr(-x83)*POWER(x47
     ,4) + sqr(-x83)*POWER(x48,4) + sqr(-x83)*POWER(x49,4) + sqr(-x83)*POWER(
     x50,4) + sqr(-x83)*POWER(x51,4) + sqr(-x83)*POWER(x52,4) + sqr(-x83)*
     POWER(x53,4) + sqr(-x83)*POWER(x54,4) + sqr(-x83)*POWER(x55,4) + sqr(-x83)
     *POWER(x56,4) + sqr(-x83)*POWER(x57,4) + sqr(-x83)*POWER(x58,4) + sqr(-x83
     )*POWER(x59,4) + sqr(-x83)*POWER(x60,4) + sqr(-x83)*POWER(x61,4) + sqr(-
     x83)*POWER(x62,4) + sqr(-x83)*POWER(x63,4) + sqr(-x83)*POWER(x64,4) + sqr(
     -x83)*POWER(x65,4) + sqr(-x83)*POWER(x66,4) + sqr(-x83)*POWER(x67,4) + 
     sqr(-x83)*POWER(x68,4) + sqr(-x83)*POWER(x69,4) + sqr(-x83)*POWER(x70,4)
      + sqr(-x83)*POWER(x71,4) + sqr(-x83)*POWER(x72,4) + sqr(-x83)*POWER(x73,4
     ) + sqr(-x83)*POWER(x74,4) + sqr(-x83)*POWER(x75,4) + sqr(-x83)*POWER(x76,
     4) + sqr(-x83)*POWER(x77,4) + sqr(-x83)*POWER(x78,4) + sqr(-x83)*POWER(x79
     ,4) + sqr(-x83)*POWER(x80,4) + sqr(-x83)*POWER(x81,4) + sqr(-x83)*POWER(
     x82,4) + sqr(-x83)*POWER(x83,4) + sqr(-x83)*POWER(x84,4) + sqr(-x83)*
     POWER(x85,4) + sqr(-x83)*POWER(x86,4) + sqr(-x83)*POWER(x87,4) + sqr(-x83)
     *POWER(x88,4) + sqr(-x83)*POWER(x89,4) + sqr(-x83)*POWER(x90,4) + sqr(-x83
     )*POWER(x91,4) + sqr(-x83)*POWER(x92,4) + sqr(-x83)*POWER(x93,4) + sqr(-
     x83)*POWER(x94,4) + sqr(-x83)*POWER(x95,4) + sqr(-x83)*POWER(x96,4) + sqr(
     -x83)*POWER(x97,4) + sqr(-x83)*POWER(x98,4) + sqr(-x83)*POWER(x99,4) + 
     sqr(-x83)*POWER(x100,4) + sqr(-x84)*POWER(x1,4) + sqr(-x84)*POWER(x2,4) + 
     sqr(-x84)*POWER(x3,4) + sqr(-x84)*POWER(x4,4) + sqr(-x84)*POWER(x5,4) + 
     sqr(-x84)*POWER(x6,4) + sqr(-x84)*POWER(x7,4) + sqr(-x84)*POWER(x8,4) + 
     sqr(-x84)*POWER(x9,4) + sqr(-x84)*POWER(x10,4) + sqr(-x84)*POWER(x11,4) + 
     sqr(-x84)*POWER(x12,4) + sqr(-x84)*POWER(x13,4) + sqr(-x84)*POWER(x14,4)
      + sqr(-x84)*POWER(x15,4) + sqr(-x84)*POWER(x16,4) + sqr(-x84)*POWER(x17,4
     ) + sqr(-x84)*POWER(x18,4) + sqr(-x84)*POWER(x19,4) + sqr(-x84)*POWER(x20,
     4) + sqr(-x84)*POWER(x21,4) + sqr(-x84)*POWER(x22,4) + sqr(-x84)*POWER(x23
     ,4) + sqr(-x84)*POWER(x24,4) + sqr(-x84)*POWER(x25,4) + sqr(-x84)*POWER(
     x26,4) + sqr(-x84)*POWER(x27,4) + sqr(-x84)*POWER(x28,4) + sqr(-x84)*
     POWER(x29,4) + sqr(-x84)*POWER(x30,4) + sqr(-x84)*POWER(x31,4) + sqr(-x84)
     *POWER(x32,4) + sqr(-x84)*POWER(x33,4) + sqr(-x84)*POWER(x34,4) + sqr(-x84
     )*POWER(x35,4) + sqr(-x84)*POWER(x36,4) + sqr(-x84)*POWER(x37,4) + sqr(-
     x84)*POWER(x38,4) + sqr(-x84)*POWER(x39,4) + sqr(-x84)*POWER(x40,4) + sqr(
     -x84)*POWER(x41,4) + sqr(-x84)*POWER(x42,4) + sqr(-x84)*POWER(x43,4) + 
     sqr(-x84)*POWER(x44,4) + sqr(-x84)*POWER(x45,4) + sqr(-x84)*POWER(x46,4)
      + sqr(-x84)*POWER(x47,4) + sqr(-x84)*POWER(x48,4) + sqr(-x84)*POWER(x49,4
     ) + sqr(-x84)*POWER(x50,4) + sqr(-x84)*POWER(x51,4) + sqr(-x84)*POWER(x52,
     4) + sqr(-x84)*POWER(x53,4) + sqr(-x84)*POWER(x54,4) + sqr(-x84)*POWER(x55
     ,4) + sqr(-x84)*POWER(x56,4) + sqr(-x84)*POWER(x57,4) + sqr(-x84)*POWER(
     x58,4) + sqr(-x84)*POWER(x59,4) + sqr(-x84)*POWER(x60,4) + sqr(-x84)*
     POWER(x61,4) + sqr(-x84)*POWER(x62,4) + sqr(-x84)*POWER(x63,4) + sqr(-x84)
     *POWER(x64,4) + sqr(-x84)*POWER(x65,4) + sqr(-x84)*POWER(x66,4) + sqr(-x84
     )*POWER(x67,4) + sqr(-x84)*POWER(x68,4) + sqr(-x84)*POWER(x69,4) + sqr(-
     x84)*POWER(x70,4) + sqr(-x84)*POWER(x71,4) + sqr(-x84)*POWER(x72,4) + sqr(
     -x84)*POWER(x73,4) + sqr(-x84)*POWER(x74,4) + sqr(-x84)*POWER(x75,4) + 
     sqr(-x84)*POWER(x76,4) + sqr(-x84)*POWER(x77,4) + sqr(-x84)*POWER(x78,4)
      + sqr(-x84)*POWER(x79,4) + sqr(-x84)*POWER(x80,4) + sqr(-x84)*POWER(x81,4
     ) + sqr(-x84)*POWER(x82,4) + sqr(-x84)*POWER(x83,4) + sqr(-x84)*POWER(x84,
     4) + sqr(-x84)*POWER(x85,4) + sqr(-x84)*POWER(x86,4) + sqr(-x84)*POWER(x87
     ,4) + sqr(-x84)*POWER(x88,4) + sqr(-x84)*POWER(x89,4) + sqr(-x84)*POWER(
     x90,4) + sqr(-x84)*POWER(x91,4) + sqr(-x84)*POWER(x92,4) + sqr(-x84)*
     POWER(x93,4) + sqr(-x84)*POWER(x94,4) + sqr(-x84)*POWER(x95,4) + sqr(-x84)
     *POWER(x96,4) + sqr(-x84)*POWER(x97,4) + sqr(-x84)*POWER(x98,4) + sqr(-x84
     )*POWER(x99,4) + sqr(-x84)*POWER(x100,4) + sqr(-x85)*POWER(x1,4) + sqr(-
     x85)*POWER(x2,4) + sqr(-x85)*POWER(x3,4) + sqr(-x85)*POWER(x4,4) + sqr(-
     x85)*POWER(x5,4) + sqr(-x85)*POWER(x6,4) + sqr(-x85)*POWER(x7,4) + sqr(-
     x85)*POWER(x8,4) + sqr(-x85)*POWER(x9,4) + sqr(-x85)*POWER(x10,4) + sqr(-
     x85)*POWER(x11,4) + sqr(-x85)*POWER(x12,4) + sqr(-x85)*POWER(x13,4) + sqr(
     -x85)*POWER(x14,4) + sqr(-x85)*POWER(x15,4) + sqr(-x85)*POWER(x16,4) + 
     sqr(-x85)*POWER(x17,4) + sqr(-x85)*POWER(x18,4) + sqr(-x85)*POWER(x19,4)
      + sqr(-x85)*POWER(x20,4) + sqr(-x85)*POWER(x21,4) + sqr(-x85)*POWER(x22,4
     ) + sqr(-x85)*POWER(x23,4) + sqr(-x85)*POWER(x24,4) + sqr(-x85)*POWER(x25,
     4) + sqr(-x85)*POWER(x26,4) + sqr(-x85)*POWER(x27,4) + sqr(-x85)*POWER(x28
     ,4) + sqr(-x85)*POWER(x29,4) + sqr(-x85)*POWER(x30,4) + sqr(-x85)*POWER(
     x31,4) + sqr(-x85)*POWER(x32,4) + sqr(-x85)*POWER(x33,4) + sqr(-x85)*
     POWER(x34,4) + sqr(-x85)*POWER(x35,4) + sqr(-x85)*POWER(x36,4) + sqr(-x85)
     *POWER(x37,4) + sqr(-x85)*POWER(x38,4) + sqr(-x85)*POWER(x39,4) + sqr(-x85
     )*POWER(x40,4) + sqr(-x85)*POWER(x41,4) + sqr(-x85)*POWER(x42,4) + sqr(-
     x85)*POWER(x43,4) + sqr(-x85)*POWER(x44,4) + sqr(-x85)*POWER(x45,4) + sqr(
     -x85)*POWER(x46,4) + sqr(-x85)*POWER(x47,4) + sqr(-x85)*POWER(x48,4) + 
     sqr(-x85)*POWER(x49,4) + sqr(-x85)*POWER(x50,4) + sqr(-x85)*POWER(x51,4)
      + sqr(-x85)*POWER(x52,4) + sqr(-x85)*POWER(x53,4) + sqr(-x85)*POWER(x54,4
     ) + sqr(-x85)*POWER(x55,4) + sqr(-x85)*POWER(x56,4) + sqr(-x85)*POWER(x57,
     4) + sqr(-x85)*POWER(x58,4) + sqr(-x85)*POWER(x59,4) + sqr(-x85)*POWER(x60
     ,4) + sqr(-x85)*POWER(x61,4) + sqr(-x85)*POWER(x62,4) + sqr(-x85)*POWER(
     x63,4) + sqr(-x85)*POWER(x64,4) + sqr(-x85)*POWER(x65,4) + sqr(-x85)*
     POWER(x66,4) + sqr(-x85)*POWER(x67,4) + sqr(-x85)*POWER(x68,4) + sqr(-x85)
     *POWER(x69,4) + sqr(-x85)*POWER(x70,4) + sqr(-x85)*POWER(x71,4) + sqr(-x85
     )*POWER(x72,4) + sqr(-x85)*POWER(x73,4) + sqr(-x85)*POWER(x74,4) + sqr(-
     x85)*POWER(x75,4) + sqr(-x85)*POWER(x76,4) + sqr(-x85)*POWER(x77,4) + sqr(
     -x85)*POWER(x78,4) + sqr(-x85)*POWER(x79,4) + sqr(-x85)*POWER(x80,4) + 
     sqr(-x85)*POWER(x81,4) + sqr(-x85)*POWER(x82,4) + sqr(-x85)*POWER(x83,4)
      + sqr(-x85)*POWER(x84,4) + sqr(-x85)*POWER(x85,4) + sqr(-x85)*POWER(x86,4
     ) + sqr(-x85)*POWER(x87,4) + sqr(-x85)*POWER(x88,4) + sqr(-x85)*POWER(x89,
     4) + sqr(-x85)*POWER(x90,4) + sqr(-x85)*POWER(x91,4) + sqr(-x85)*POWER(x92
     ,4) + sqr(-x85)*POWER(x93,4) + sqr(-x85)*POWER(x94,4) + sqr(-x85)*POWER(
     x95,4) + sqr(-x85)*POWER(x96,4) + sqr(-x85)*POWER(x97,4) + sqr(-x85)*
     POWER(x98,4) + sqr(-x85)*POWER(x99,4) + sqr(-x85)*POWER(x100,4) + sqr(-x86
     )*POWER(x1,4) + sqr(-x86)*POWER(x2,4) + sqr(-x86)*POWER(x3,4) + sqr(-x86)*
     POWER(x4,4) + sqr(-x86)*POWER(x5,4) + sqr(-x86)*POWER(x6,4) + sqr(-x86)*
     POWER(x7,4) + sqr(-x86)*POWER(x8,4) + sqr(-x86)*POWER(x9,4) + sqr(-x86)*
     POWER(x10,4) + sqr(-x86)*POWER(x11,4) + sqr(-x86)*POWER(x12,4) + sqr(-x86)
     *POWER(x13,4) + sqr(-x86)*POWER(x14,4) + sqr(-x86)*POWER(x15,4) + sqr(-x86
     )*POWER(x16,4) + sqr(-x86)*POWER(x17,4) + sqr(-x86)*POWER(x18,4) + sqr(-
     x86)*POWER(x19,4) + sqr(-x86)*POWER(x20,4) + sqr(-x86)*POWER(x21,4) + sqr(
     -x86)*POWER(x22,4) + sqr(-x86)*POWER(x23,4) + sqr(-x86)*POWER(x24,4) + 
     sqr(-x86)*POWER(x25,4) + sqr(-x86)*POWER(x26,4) + sqr(-x86)*POWER(x27,4)
      + sqr(-x86)*POWER(x28,4) + sqr(-x86)*POWER(x29,4) + sqr(-x86)*POWER(x30,4
     ) + sqr(-x86)*POWER(x31,4) + sqr(-x86)*POWER(x32,4) + sqr(-x86)*POWER(x33,
     4) + sqr(-x86)*POWER(x34,4) + sqr(-x86)*POWER(x35,4) + sqr(-x86)*POWER(x36
     ,4) + sqr(-x86)*POWER(x37,4) + sqr(-x86)*POWER(x38,4) + sqr(-x86)*POWER(
     x39,4) + sqr(-x86)*POWER(x40,4) + sqr(-x86)*POWER(x41,4) + sqr(-x86)*
     POWER(x42,4) + sqr(-x86)*POWER(x43,4) + sqr(-x86)*POWER(x44,4) + sqr(-x86)
     *POWER(x45,4) + sqr(-x86)*POWER(x46,4) + sqr(-x86)*POWER(x47,4) + sqr(-x86
     )*POWER(x48,4) + sqr(-x86)*POWER(x49,4) + sqr(-x86)*POWER(x50,4) + sqr(-
     x86)*POWER(x51,4) + sqr(-x86)*POWER(x52,4) + sqr(-x86)*POWER(x53,4) + sqr(
     -x86)*POWER(x54,4) + sqr(-x86)*POWER(x55,4) + sqr(-x86)*POWER(x56,4) + 
     sqr(-x86)*POWER(x57,4) + sqr(-x86)*POWER(x58,4) + sqr(-x86)*POWER(x59,4)
      + sqr(-x86)*POWER(x60,4) + sqr(-x86)*POWER(x61,4) + sqr(-x86)*POWER(x62,4
     ) + sqr(-x86)*POWER(x63,4) + sqr(-x86)*POWER(x64,4) + sqr(-x86)*POWER(x65,
     4) + sqr(-x86)*POWER(x66,4) + sqr(-x86)*POWER(x67,4) + sqr(-x86)*POWER(x68
     ,4) + sqr(-x86)*POWER(x69,4) + sqr(-x86)*POWER(x70,4) + sqr(-x86)*POWER(
     x71,4) + sqr(-x86)*POWER(x72,4) + sqr(-x86)*POWER(x73,4) + sqr(-x86)*
     POWER(x74,4) + sqr(-x86)*POWER(x75,4) + sqr(-x86)*POWER(x76,4) + sqr(-x86)
     *POWER(x77,4) + sqr(-x86)*POWER(x78,4) + sqr(-x86)*POWER(x79,4) + sqr(-x86
     )*POWER(x80,4) + sqr(-x86)*POWER(x81,4) + sqr(-x86)*POWER(x82,4) + sqr(-
     x86)*POWER(x83,4) + sqr(-x86)*POWER(x84,4) + sqr(-x86)*POWER(x85,4) + sqr(
     -x86)*POWER(x86,4) + sqr(-x86)*POWER(x87,4) + sqr(-x86)*POWER(x88,4) + 
     sqr(-x86)*POWER(x89,4) + sqr(-x86)*POWER(x90,4) + sqr(-x86)*POWER(x91,4)
      + sqr(-x86)*POWER(x92,4) + sqr(-x86)*POWER(x93,4) + sqr(-x86)*POWER(x94,4
     ) + sqr(-x86)*POWER(x95,4) + sqr(-x86)*POWER(x96,4) + sqr(-x86)*POWER(x97,
     4) + sqr(-x86)*POWER(x98,4) + sqr(-x86)*POWER(x99,4) + sqr(-x86)*POWER(
     x100,4) + sqr(-x87)*POWER(x1,4) + sqr(-x87)*POWER(x2,4) + sqr(-x87)*POWER(
     x3,4) + sqr(-x87)*POWER(x4,4) + sqr(-x87)*POWER(x5,4) + sqr(-x87)*POWER(x6
     ,4) + sqr(-x87)*POWER(x7,4) + sqr(-x87)*POWER(x8,4) + sqr(-x87)*POWER(x9,4
     ) + sqr(-x87)*POWER(x10,4) + sqr(-x87)*POWER(x11,4) + sqr(-x87)*POWER(x12,
     4) + sqr(-x87)*POWER(x13,4) + sqr(-x87)*POWER(x14,4) + sqr(-x87)*POWER(x15
     ,4) + sqr(-x87)*POWER(x16,4) + sqr(-x87)*POWER(x17,4) + sqr(-x87)*POWER(
     x18,4) + sqr(-x87)*POWER(x19,4) + sqr(-x87)*POWER(x20,4) + sqr(-x87)*
     POWER(x21,4) + sqr(-x87)*POWER(x22,4) + sqr(-x87)*POWER(x23,4) + sqr(-x87)
     *POWER(x24,4) + sqr(-x87)*POWER(x25,4) + sqr(-x87)*POWER(x26,4) + sqr(-x87
     )*POWER(x27,4) + sqr(-x87)*POWER(x28,4) + sqr(-x87)*POWER(x29,4) + sqr(-
     x87)*POWER(x30,4) + sqr(-x87)*POWER(x31,4) + sqr(-x87)*POWER(x32,4) + sqr(
     -x87)*POWER(x33,4) + sqr(-x87)*POWER(x34,4) + sqr(-x87)*POWER(x35,4) + 
     sqr(-x87)*POWER(x36,4) + sqr(-x87)*POWER(x37,4) + sqr(-x87)*POWER(x38,4)
      + sqr(-x87)*POWER(x39,4) + sqr(-x87)*POWER(x40,4) + sqr(-x87)*POWER(x41,4
     ) + sqr(-x87)*POWER(x42,4) + sqr(-x87)*POWER(x43,4) + sqr(-x87)*POWER(x44,
     4) + sqr(-x87)*POWER(x45,4) + sqr(-x87)*POWER(x46,4) + sqr(-x87)*POWER(x47
     ,4) + sqr(-x87)*POWER(x48,4) + sqr(-x87)*POWER(x49,4) + sqr(-x87)*POWER(
     x50,4) + sqr(-x87)*POWER(x51,4) + sqr(-x87)*POWER(x52,4) + sqr(-x87)*
     POWER(x53,4) + sqr(-x87)*POWER(x54,4) + sqr(-x87)*POWER(x55,4) + sqr(-x87)
     *POWER(x56,4) + sqr(-x87)*POWER(x57,4) + sqr(-x87)*POWER(x58,4) + sqr(-x87
     )*POWER(x59,4) + sqr(-x87)*POWER(x60,4) + sqr(-x87)*POWER(x61,4) + sqr(-
     x87)*POWER(x62,4) + sqr(-x87)*POWER(x63,4) + sqr(-x87)*POWER(x64,4) + sqr(
     -x87)*POWER(x65,4) + sqr(-x87)*POWER(x66,4) + sqr(-x87)*POWER(x67,4) + 
     sqr(-x87)*POWER(x68,4) + sqr(-x87)*POWER(x69,4) + sqr(-x87)*POWER(x70,4)
      + sqr(-x87)*POWER(x71,4) + sqr(-x87)*POWER(x72,4) + sqr(-x87)*POWER(x73,4
     ) + sqr(-x87)*POWER(x74,4) + sqr(-x87)*POWER(x75,4) + sqr(-x87)*POWER(x76,
     4) + sqr(-x87)*POWER(x77,4) + sqr(-x87)*POWER(x78,4) + sqr(-x87)*POWER(x79
     ,4) + sqr(-x87)*POWER(x80,4) + sqr(-x87)*POWER(x81,4) + sqr(-x87)*POWER(
     x82,4) + sqr(-x87)*POWER(x83,4) + sqr(-x87)*POWER(x84,4) + sqr(-x87)*
     POWER(x85,4) + sqr(-x87)*POWER(x86,4) + sqr(-x87)*POWER(x87,4) + sqr(-x87)
     *POWER(x88,4) + sqr(-x87)*POWER(x89,4) + sqr(-x87)*POWER(x90,4) + sqr(-x87
     )*POWER(x91,4) + sqr(-x87)*POWER(x92,4) + sqr(-x87)*POWER(x93,4) + sqr(-
     x87)*POWER(x94,4) + sqr(-x87)*POWER(x95,4) + sqr(-x87)*POWER(x96,4) + sqr(
     -x87)*POWER(x97,4) + sqr(-x87)*POWER(x98,4) + sqr(-x87)*POWER(x99,4) + 
     sqr(-x87)*POWER(x100,4) + sqr(-x88)*POWER(x1,4) + sqr(-x88)*POWER(x2,4) + 
     sqr(-x88)*POWER(x3,4) + sqr(-x88)*POWER(x4,4) + sqr(-x88)*POWER(x5,4) + 
     sqr(-x88)*POWER(x6,4) + sqr(-x88)*POWER(x7,4) + sqr(-x88)*POWER(x8,4) + 
     sqr(-x88)*POWER(x9,4) + sqr(-x88)*POWER(x10,4) + sqr(-x88)*POWER(x11,4) + 
     sqr(-x88)*POWER(x12,4) + sqr(-x88)*POWER(x13,4) + sqr(-x88)*POWER(x14,4)
      + sqr(-x88)*POWER(x15,4) + sqr(-x88)*POWER(x16,4) + sqr(-x88)*POWER(x17,4
     ) + sqr(-x88)*POWER(x18,4) + sqr(-x88)*POWER(x19,4) + sqr(-x88)*POWER(x20,
     4) + sqr(-x88)*POWER(x21,4) + sqr(-x88)*POWER(x22,4) + sqr(-x88)*POWER(x23
     ,4) + sqr(-x88)*POWER(x24,4) + sqr(-x88)*POWER(x25,4) + sqr(-x88)*POWER(
     x26,4) + sqr(-x88)*POWER(x27,4) + sqr(-x88)*POWER(x28,4) + sqr(-x88)*
     POWER(x29,4) + sqr(-x88)*POWER(x30,4) + sqr(-x88)*POWER(x31,4) + sqr(-x88)
     *POWER(x32,4) + sqr(-x88)*POWER(x33,4) + sqr(-x88)*POWER(x34,4) + sqr(-x88
     )*POWER(x35,4) + sqr(-x88)*POWER(x36,4) + sqr(-x88)*POWER(x37,4) + sqr(-
     x88)*POWER(x38,4) + sqr(-x88)*POWER(x39,4) + sqr(-x88)*POWER(x40,4) + sqr(
     -x88)*POWER(x41,4) + sqr(-x88)*POWER(x42,4) + sqr(-x88)*POWER(x43,4) + 
     sqr(-x88)*POWER(x44,4) + sqr(-x88)*POWER(x45,4) + sqr(-x88)*POWER(x46,4)
      + sqr(-x88)*POWER(x47,4) + sqr(-x88)*POWER(x48,4) + sqr(-x88)*POWER(x49,4
     ) + sqr(-x88)*POWER(x50,4) + sqr(-x88)*POWER(x51,4) + sqr(-x88)*POWER(x52,
     4) + sqr(-x88)*POWER(x53,4) + sqr(-x88)*POWER(x54,4) + sqr(-x88)*POWER(x55
     ,4) + sqr(-x88)*POWER(x56,4) + sqr(-x88)*POWER(x57,4) + sqr(-x88)*POWER(
     x58,4) + sqr(-x88)*POWER(x59,4) + sqr(-x88)*POWER(x60,4) + sqr(-x88)*
     POWER(x61,4) + sqr(-x88)*POWER(x62,4) + sqr(-x88)*POWER(x63,4) + sqr(-x88)
     *POWER(x64,4) + sqr(-x88)*POWER(x65,4) + sqr(-x88)*POWER(x66,4) + sqr(-x88
     )*POWER(x67,4) + sqr(-x88)*POWER(x68,4) + sqr(-x88)*POWER(x69,4) + sqr(-
     x88)*POWER(x70,4) + sqr(-x88)*POWER(x71,4) + sqr(-x88)*POWER(x72,4) + sqr(
     -x88)*POWER(x73,4) + sqr(-x88)*POWER(x74,4) + sqr(-x88)*POWER(x75,4) + 
     sqr(-x88)*POWER(x76,4) + sqr(-x88)*POWER(x77,4) + sqr(-x88)*POWER(x78,4)
      + sqr(-x88)*POWER(x79,4) + sqr(-x88)*POWER(x80,4) + sqr(-x88)*POWER(x81,4
     ) + sqr(-x88)*POWER(x82,4) + sqr(-x88)*POWER(x83,4) + sqr(-x88)*POWER(x84,
     4) + sqr(-x88)*POWER(x85,4) + sqr(-x88)*POWER(x86,4) + sqr(-x88)*POWER(x87
     ,4) + sqr(-x88)*POWER(x88,4) + sqr(-x88)*POWER(x89,4) + sqr(-x88)*POWER(
     x90,4) + sqr(-x88)*POWER(x91,4) + sqr(-x88)*POWER(x92,4) + sqr(-x88)*
     POWER(x93,4) + sqr(-x88)*POWER(x94,4) + sqr(-x88)*POWER(x95,4) + sqr(-x88)
     *POWER(x96,4) + sqr(-x88)*POWER(x97,4) + sqr(-x88)*POWER(x98,4) + sqr(-x88
     )*POWER(x99,4) + sqr(-x88)*POWER(x100,4) + sqr(-x89)*POWER(x1,4) + sqr(-
     x89)*POWER(x2,4) + sqr(-x89)*POWER(x3,4) + sqr(-x89)*POWER(x4,4) + sqr(-
     x89)*POWER(x5,4) + sqr(-x89)*POWER(x6,4) + sqr(-x89)*POWER(x7,4) + sqr(-
     x89)*POWER(x8,4) + sqr(-x89)*POWER(x9,4) + sqr(-x89)*POWER(x10,4) + sqr(-
     x89)*POWER(x11,4) + sqr(-x89)*POWER(x12,4) + sqr(-x89)*POWER(x13,4) + sqr(
     -x89)*POWER(x14,4) + sqr(-x89)*POWER(x15,4) + sqr(-x89)*POWER(x16,4) + 
     sqr(-x89)*POWER(x17,4) + sqr(-x89)*POWER(x18,4) + sqr(-x89)*POWER(x19,4)
      + sqr(-x89)*POWER(x20,4) + sqr(-x89)*POWER(x21,4) + sqr(-x89)*POWER(x22,4
     ) + sqr(-x89)*POWER(x23,4) + sqr(-x89)*POWER(x24,4) + sqr(-x89)*POWER(x25,
     4) + sqr(-x89)*POWER(x26,4) + sqr(-x89)*POWER(x27,4) + sqr(-x89)*POWER(x28
     ,4) + sqr(-x89)*POWER(x29,4) + sqr(-x89)*POWER(x30,4) + sqr(-x89)*POWER(
     x31,4) + sqr(-x89)*POWER(x32,4) + sqr(-x89)*POWER(x33,4) + sqr(-x89)*
     POWER(x34,4) + sqr(-x89)*POWER(x35,4) + sqr(-x89)*POWER(x36,4) + sqr(-x89)
     *POWER(x37,4) + sqr(-x89)*POWER(x38,4) + sqr(-x89)*POWER(x39,4) + sqr(-x89
     )*POWER(x40,4) + sqr(-x89)*POWER(x41,4) + sqr(-x89)*POWER(x42,4) + sqr(-
     x89)*POWER(x43,4) + sqr(-x89)*POWER(x44,4) + sqr(-x89)*POWER(x45,4) + sqr(
     -x89)*POWER(x46,4) + sqr(-x89)*POWER(x47,4) + sqr(-x89)*POWER(x48,4) + 
     sqr(-x89)*POWER(x49,4) + sqr(-x89)*POWER(x50,4) + sqr(-x89)*POWER(x51,4)
      + sqr(-x89)*POWER(x52,4) + sqr(-x89)*POWER(x53,4) + sqr(-x89)*POWER(x54,4
     ) + sqr(-x89)*POWER(x55,4) + sqr(-x89)*POWER(x56,4) + sqr(-x89)*POWER(x57,
     4) + sqr(-x89)*POWER(x58,4) + sqr(-x89)*POWER(x59,4) + sqr(-x89)*POWER(x60
     ,4) + sqr(-x89)*POWER(x61,4) + sqr(-x89)*POWER(x62,4) + sqr(-x89)*POWER(
     x63,4) + sqr(-x89)*POWER(x64,4) + sqr(-x89)*POWER(x65,4) + sqr(-x89)*
     POWER(x66,4) + sqr(-x89)*POWER(x67,4) + sqr(-x89)*POWER(x68,4) + sqr(-x89)
     *POWER(x69,4) + sqr(-x89)*POWER(x70,4) + sqr(-x89)*POWER(x71,4) + sqr(-x89
     )*POWER(x72,4) + sqr(-x89)*POWER(x73,4) + sqr(-x89)*POWER(x74,4) + sqr(-
     x89)*POWER(x75,4) + sqr(-x89)*POWER(x76,4) + sqr(-x89)*POWER(x77,4) + sqr(
     -x89)*POWER(x78,4) + sqr(-x89)*POWER(x79,4) + sqr(-x89)*POWER(x80,4) + 
     sqr(-x89)*POWER(x81,4) + sqr(-x89)*POWER(x82,4) + sqr(-x89)*POWER(x83,4)
      + sqr(-x89)*POWER(x84,4) + sqr(-x89)*POWER(x85,4) + sqr(-x89)*POWER(x86,4
     ) + sqr(-x89)*POWER(x87,4) + sqr(-x89)*POWER(x88,4) + sqr(-x89)*POWER(x89,
     4) + sqr(-x89)*POWER(x90,4) + sqr(-x89)*POWER(x91,4) + sqr(-x89)*POWER(x92
     ,4) + sqr(-x89)*POWER(x93,4) + sqr(-x89)*POWER(x94,4) + sqr(-x89)*POWER(
     x95,4) + sqr(-x89)*POWER(x96,4) + sqr(-x89)*POWER(x97,4) + sqr(-x89)*
     POWER(x98,4) + sqr(-x89)*POWER(x99,4) + sqr(-x89)*POWER(x100,4) + sqr(-x90
     )*POWER(x1,4) + sqr(-x90)*POWER(x2,4) + sqr(-x90)*POWER(x3,4) + sqr(-x90)*
     POWER(x4,4) + sqr(-x90)*POWER(x5,4) + sqr(-x90)*POWER(x6,4) + sqr(-x90)*
     POWER(x7,4) + sqr(-x90)*POWER(x8,4) + sqr(-x90)*POWER(x9,4) + sqr(-x90)*
     POWER(x10,4) + sqr(-x90)*POWER(x11,4) + sqr(-x90)*POWER(x12,4) + sqr(-x90)
     *POWER(x13,4) + sqr(-x90)*POWER(x14,4) + sqr(-x90)*POWER(x15,4) + sqr(-x90
     )*POWER(x16,4) + sqr(-x90)*POWER(x17,4) + sqr(-x90)*POWER(x18,4) + sqr(-
     x90)*POWER(x19,4) + sqr(-x90)*POWER(x20,4) + sqr(-x90)*POWER(x21,4) + sqr(
     -x90)*POWER(x22,4) + sqr(-x90)*POWER(x23,4) + sqr(-x90)*POWER(x24,4) + 
     sqr(-x90)*POWER(x25,4) + sqr(-x90)*POWER(x26,4) + sqr(-x90)*POWER(x27,4)
      + sqr(-x90)*POWER(x28,4) + sqr(-x90)*POWER(x29,4) + sqr(-x90)*POWER(x30,4
     ) + sqr(-x90)*POWER(x31,4) + sqr(-x90)*POWER(x32,4) + sqr(-x90)*POWER(x33,
     4) + sqr(-x90)*POWER(x34,4) + sqr(-x90)*POWER(x35,4) + sqr(-x90)*POWER(x36
     ,4) + sqr(-x90)*POWER(x37,4) + sqr(-x90)*POWER(x38,4) + sqr(-x90)*POWER(
     x39,4) + sqr(-x90)*POWER(x40,4) + sqr(-x90)*POWER(x41,4) + sqr(-x90)*
     POWER(x42,4) + sqr(-x90)*POWER(x43,4) + sqr(-x90)*POWER(x44,4) + sqr(-x90)
     *POWER(x45,4) + sqr(-x90)*POWER(x46,4) + sqr(-x90)*POWER(x47,4) + sqr(-x90
     )*POWER(x48,4) + sqr(-x90)*POWER(x49,4) + sqr(-x90)*POWER(x50,4) + sqr(-
     x90)*POWER(x51,4) + sqr(-x90)*POWER(x52,4) + sqr(-x90)*POWER(x53,4) + sqr(
     -x90)*POWER(x54,4) + sqr(-x90)*POWER(x55,4) + sqr(-x90)*POWER(x56,4) + 
     sqr(-x90)*POWER(x57,4) + sqr(-x90)*POWER(x58,4) + sqr(-x90)*POWER(x59,4)
      + sqr(-x90)*POWER(x60,4) + sqr(-x90)*POWER(x61,4) + sqr(-x90)*POWER(x62,4
     ) + sqr(-x90)*POWER(x63,4) + sqr(-x90)*POWER(x64,4) + sqr(-x90)*POWER(x65,
     4) + sqr(-x90)*POWER(x66,4) + sqr(-x90)*POWER(x67,4) + sqr(-x90)*POWER(x68
     ,4) + sqr(-x90)*POWER(x69,4) + sqr(-x90)*POWER(x70,4) + sqr(-x90)*POWER(
     x71,4) + sqr(-x90)*POWER(x72,4) + sqr(-x90)*POWER(x73,4) + sqr(-x90)*
     POWER(x74,4) + sqr(-x90)*POWER(x75,4) + sqr(-x90)*POWER(x76,4) + sqr(-x90)
     *POWER(x77,4) + sqr(-x90)*POWER(x78,4) + sqr(-x90)*POWER(x79,4) + sqr(-x90
     )*POWER(x80,4) + sqr(-x90)*POWER(x81,4) + sqr(-x90)*POWER(x82,4) + sqr(-
     x90)*POWER(x83,4) + sqr(-x90)*POWER(x84,4) + sqr(-x90)*POWER(x85,4) + sqr(
     -x90)*POWER(x86,4) + sqr(-x90)*POWER(x87,4) + sqr(-x90)*POWER(x88,4) + 
     sqr(-x90)*POWER(x89,4) + sqr(-x90)*POWER(x90,4) + sqr(-x90)*POWER(x91,4)
      + sqr(-x90)*POWER(x92,4) + sqr(-x90)*POWER(x93,4) + sqr(-x90)*POWER(x94,4
     ) + sqr(-x90)*POWER(x95,4) + sqr(-x90)*POWER(x96,4) + sqr(-x90)*POWER(x97,
     4) + sqr(-x90)*POWER(x98,4) + sqr(-x90)*POWER(x99,4) + sqr(-x90)*POWER(
     x100,4) + sqr(-x91)*POWER(x1,4) + sqr(-x91)*POWER(x2,4) + sqr(-x91)*POWER(
     x3,4) + sqr(-x91)*POWER(x4,4) + sqr(-x91)*POWER(x5,4) + sqr(-x91)*POWER(x6
     ,4) + sqr(-x91)*POWER(x7,4) + sqr(-x91)*POWER(x8,4) + sqr(-x91)*POWER(x9,4
     ) + sqr(-x91)*POWER(x10,4) + sqr(-x91)*POWER(x11,4) + sqr(-x91)*POWER(x12,
     4) + sqr(-x91)*POWER(x13,4) + sqr(-x91)*POWER(x14,4) + sqr(-x91)*POWER(x15
     ,4) + sqr(-x91)*POWER(x16,4) + sqr(-x91)*POWER(x17,4) + sqr(-x91)*POWER(
     x18,4) + sqr(-x91)*POWER(x19,4) + sqr(-x91)*POWER(x20,4) + sqr(-x91)*
     POWER(x21,4) + sqr(-x91)*POWER(x22,4) + sqr(-x91)*POWER(x23,4) + sqr(-x91)
     *POWER(x24,4) + sqr(-x91)*POWER(x25,4) + sqr(-x91)*POWER(x26,4) + sqr(-x91
     )*POWER(x27,4) + sqr(-x91)*POWER(x28,4) + sqr(-x91)*POWER(x29,4) + sqr(-
     x91)*POWER(x30,4) + sqr(-x91)*POWER(x31,4) + sqr(-x91)*POWER(x32,4) + sqr(
     -x91)*POWER(x33,4) + sqr(-x91)*POWER(x34,4) + sqr(-x91)*POWER(x35,4) + 
     sqr(-x91)*POWER(x36,4) + sqr(-x91)*POWER(x37,4) + sqr(-x91)*POWER(x38,4)
      + sqr(-x91)*POWER(x39,4) + sqr(-x91)*POWER(x40,4) + sqr(-x91)*POWER(x41,4
     ) + sqr(-x91)*POWER(x42,4) + sqr(-x91)*POWER(x43,4) + sqr(-x91)*POWER(x44,
     4) + sqr(-x91)*POWER(x45,4) + sqr(-x91)*POWER(x46,4) + sqr(-x91)*POWER(x47
     ,4) + sqr(-x91)*POWER(x48,4) + sqr(-x91)*POWER(x49,4) + sqr(-x91)*POWER(
     x50,4) + sqr(-x91)*POWER(x51,4) + sqr(-x91)*POWER(x52,4) + sqr(-x91)*
     POWER(x53,4) + sqr(-x91)*POWER(x54,4) + sqr(-x91)*POWER(x55,4) + sqr(-x91)
     *POWER(x56,4) + sqr(-x91)*POWER(x57,4) + sqr(-x91)*POWER(x58,4) + sqr(-x91
     )*POWER(x59,4) + sqr(-x91)*POWER(x60,4) + sqr(-x91)*POWER(x61,4) + sqr(-
     x91)*POWER(x62,4) + sqr(-x91)*POWER(x63,4) + sqr(-x91)*POWER(x64,4) + sqr(
     -x91)*POWER(x65,4) + sqr(-x91)*POWER(x66,4) + sqr(-x91)*POWER(x67,4) + 
     sqr(-x91)*POWER(x68,4) + sqr(-x91)*POWER(x69,4) + sqr(-x91)*POWER(x70,4)
      + sqr(-x91)*POWER(x71,4) + sqr(-x91)*POWER(x72,4) + sqr(-x91)*POWER(x73,4
     ) + sqr(-x91)*POWER(x74,4) + sqr(-x91)*POWER(x75,4) + sqr(-x91)*POWER(x76,
     4) + sqr(-x91)*POWER(x77,4) + sqr(-x91)*POWER(x78,4) + sqr(-x91)*POWER(x79
     ,4) + sqr(-x91)*POWER(x80,4) + sqr(-x91)*POWER(x81,4) + sqr(-x91)*POWER(
     x82,4) + sqr(-x91)*POWER(x83,4) + sqr(-x91)*POWER(x84,4) + sqr(-x91)*
     POWER(x85,4) + sqr(-x91)*POWER(x86,4) + sqr(-x91)*POWER(x87,4) + sqr(-x91)
     *POWER(x88,4) + sqr(-x91)*POWER(x89,4) + sqr(-x91)*POWER(x90,4) + sqr(-x91
     )*POWER(x91,4) + sqr(-x91)*POWER(x92,4) + sqr(-x91)*POWER(x93,4) + sqr(-
     x91)*POWER(x94,4) + sqr(-x91)*POWER(x95,4) + sqr(-x91)*POWER(x96,4) + sqr(
     -x91)*POWER(x97,4) + sqr(-x91)*POWER(x98,4) + sqr(-x91)*POWER(x99,4) + 
     sqr(-x91)*POWER(x100,4) + sqr(-x92)*POWER(x1,4) + sqr(-x92)*POWER(x2,4) + 
     sqr(-x92)*POWER(x3,4) + sqr(-x92)*POWER(x4,4) + sqr(-x92)*POWER(x5,4) + 
     sqr(-x92)*POWER(x6,4) + sqr(-x92)*POWER(x7,4) + sqr(-x92)*POWER(x8,4) + 
     sqr(-x92)*POWER(x9,4) + sqr(-x92)*POWER(x10,4) + sqr(-x92)*POWER(x11,4) + 
     sqr(-x92)*POWER(x12,4) + sqr(-x92)*POWER(x13,4) + sqr(-x92)*POWER(x14,4)
      + sqr(-x92)*POWER(x15,4) + sqr(-x92)*POWER(x16,4) + sqr(-x92)*POWER(x17,4
     ) + sqr(-x92)*POWER(x18,4) + sqr(-x92)*POWER(x19,4) + sqr(-x92)*POWER(x20,
     4) + sqr(-x92)*POWER(x21,4) + sqr(-x92)*POWER(x22,4) + sqr(-x92)*POWER(x23
     ,4) + sqr(-x92)*POWER(x24,4) + sqr(-x92)*POWER(x25,4) + sqr(-x92)*POWER(
     x26,4) + sqr(-x92)*POWER(x27,4) + sqr(-x92)*POWER(x28,4) + sqr(-x92)*
     POWER(x29,4) + sqr(-x92)*POWER(x30,4) + sqr(-x92)*POWER(x31,4) + sqr(-x92)
     *POWER(x32,4) + sqr(-x92)*POWER(x33,4) + sqr(-x92)*POWER(x34,4) + sqr(-x92
     )*POWER(x35,4) + sqr(-x92)*POWER(x36,4) + sqr(-x92)*POWER(x37,4) + sqr(-
     x92)*POWER(x38,4) + sqr(-x92)*POWER(x39,4) + sqr(-x92)*POWER(x40,4) + sqr(
     -x92)*POWER(x41,4) + sqr(-x92)*POWER(x42,4) + sqr(-x92)*POWER(x43,4) + 
     sqr(-x92)*POWER(x44,4) + sqr(-x92)*POWER(x45,4) + sqr(-x92)*POWER(x46,4)
      + sqr(-x92)*POWER(x47,4) + sqr(-x92)*POWER(x48,4) + sqr(-x92)*POWER(x49,4
     ) + sqr(-x92)*POWER(x50,4) + sqr(-x92)*POWER(x51,4) + sqr(-x92)*POWER(x52,
     4) + sqr(-x92)*POWER(x53,4) + sqr(-x92)*POWER(x54,4) + sqr(-x92)*POWER(x55
     ,4) + sqr(-x92)*POWER(x56,4) + sqr(-x92)*POWER(x57,4) + sqr(-x92)*POWER(
     x58,4) + sqr(-x92)*POWER(x59,4) + sqr(-x92)*POWER(x60,4) + sqr(-x92)*
     POWER(x61,4) + sqr(-x92)*POWER(x62,4) + sqr(-x92)*POWER(x63,4) + sqr(-x92)
     *POWER(x64,4) + sqr(-x92)*POWER(x65,4) + sqr(-x92)*POWER(x66,4) + sqr(-x92
     )*POWER(x67,4) + sqr(-x92)*POWER(x68,4) + sqr(-x92)*POWER(x69,4) + sqr(-
     x92)*POWER(x70,4) + sqr(-x92)*POWER(x71,4) + sqr(-x92)*POWER(x72,4) + sqr(
     -x92)*POWER(x73,4) + sqr(-x92)*POWER(x74,4) + sqr(-x92)*POWER(x75,4) + 
     sqr(-x92)*POWER(x76,4) + sqr(-x92)*POWER(x77,4) + sqr(-x92)*POWER(x78,4)
      + sqr(-x92)*POWER(x79,4) + sqr(-x92)*POWER(x80,4) + sqr(-x92)*POWER(x81,4
     ) + sqr(-x92)*POWER(x82,4) + sqr(-x92)*POWER(x83,4) + sqr(-x92)*POWER(x84,
     4) + sqr(-x92)*POWER(x85,4) + sqr(-x92)*POWER(x86,4) + sqr(-x92)*POWER(x87
     ,4) + sqr(-x92)*POWER(x88,4) + sqr(-x92)*POWER(x89,4) + sqr(-x92)*POWER(
     x90,4) + sqr(-x92)*POWER(x91,4) + sqr(-x92)*POWER(x92,4) + sqr(-x92)*
     POWER(x93,4) + sqr(-x92)*POWER(x94,4) + sqr(-x92)*POWER(x95,4) + sqr(-x92)
     *POWER(x96,4) + sqr(-x92)*POWER(x97,4) + sqr(-x92)*POWER(x98,4) + sqr(-x92
     )*POWER(x99,4) + sqr(-x92)*POWER(x100,4) + sqr(-x93)*POWER(x1,4) + sqr(-
     x93)*POWER(x2,4) + sqr(-x93)*POWER(x3,4) + sqr(-x93)*POWER(x4,4) + sqr(-
     x93)*POWER(x5,4) + sqr(-x93)*POWER(x6,4) + sqr(-x93)*POWER(x7,4) + sqr(-
     x93)*POWER(x8,4) + sqr(-x93)*POWER(x9,4) + sqr(-x93)*POWER(x10,4) + sqr(-
     x93)*POWER(x11,4) + sqr(-x93)*POWER(x12,4) + sqr(-x93)*POWER(x13,4) + sqr(
     -x93)*POWER(x14,4) + sqr(-x93)*POWER(x15,4) + sqr(-x93)*POWER(x16,4) + 
     sqr(-x93)*POWER(x17,4) + sqr(-x93)*POWER(x18,4) + sqr(-x93)*POWER(x19,4)
      + sqr(-x93)*POWER(x20,4) + sqr(-x93)*POWER(x21,4) + sqr(-x93)*POWER(x22,4
     ) + sqr(-x93)*POWER(x23,4) + sqr(-x93)*POWER(x24,4) + sqr(-x93)*POWER(x25,
     4) + sqr(-x93)*POWER(x26,4) + sqr(-x93)*POWER(x27,4) + sqr(-x93)*POWER(x28
     ,4) + sqr(-x93)*POWER(x29,4) + sqr(-x93)*POWER(x30,4) + sqr(-x93)*POWER(
     x31,4) + sqr(-x93)*POWER(x32,4) + sqr(-x93)*POWER(x33,4) + sqr(-x93)*
     POWER(x34,4) + sqr(-x93)*POWER(x35,4) + sqr(-x93)*POWER(x36,4) + sqr(-x93)
     *POWER(x37,4) + sqr(-x93)*POWER(x38,4) + sqr(-x93)*POWER(x39,4) + sqr(-x93
     )*POWER(x40,4) + sqr(-x93)*POWER(x41,4) + sqr(-x93)*POWER(x42,4) + sqr(-
     x93)*POWER(x43,4) + sqr(-x93)*POWER(x44,4) + sqr(-x93)*POWER(x45,4) + sqr(
     -x93)*POWER(x46,4) + sqr(-x93)*POWER(x47,4) + sqr(-x93)*POWER(x48,4) + 
     sqr(-x93)*POWER(x49,4) + sqr(-x93)*POWER(x50,4) + sqr(-x93)*POWER(x51,4)
      + sqr(-x93)*POWER(x52,4) + sqr(-x93)*POWER(x53,4) + sqr(-x93)*POWER(x54,4
     ) + sqr(-x93)*POWER(x55,4) + sqr(-x93)*POWER(x56,4) + sqr(-x93)*POWER(x57,
     4) + sqr(-x93)*POWER(x58,4) + sqr(-x93)*POWER(x59,4) + sqr(-x93)*POWER(x60
     ,4) + sqr(-x93)*POWER(x61,4) + sqr(-x93)*POWER(x62,4) + sqr(-x93)*POWER(
     x63,4) + sqr(-x93)*POWER(x64,4) + sqr(-x93)*POWER(x65,4) + sqr(-x93)*
     POWER(x66,4) + sqr(-x93)*POWER(x67,4) + sqr(-x93)*POWER(x68,4) + sqr(-x93)
     *POWER(x69,4) + sqr(-x93)*POWER(x70,4) + sqr(-x93)*POWER(x71,4) + sqr(-x93
     )*POWER(x72,4) + sqr(-x93)*POWER(x73,4) + sqr(-x93)*POWER(x74,4) + sqr(-
     x93)*POWER(x75,4) + sqr(-x93)*POWER(x76,4) + sqr(-x93)*POWER(x77,4) + sqr(
     -x93)*POWER(x78,4) + sqr(-x93)*POWER(x79,4) + sqr(-x93)*POWER(x80,4) + 
     sqr(-x93)*POWER(x81,4) + sqr(-x93)*POWER(x82,4) + sqr(-x93)*POWER(x83,4)
      + sqr(-x93)*POWER(x84,4) + sqr(-x93)*POWER(x85,4) + sqr(-x93)*POWER(x86,4
     ) + sqr(-x93)*POWER(x87,4) + sqr(-x93)*POWER(x88,4) + sqr(-x93)*POWER(x89,
     4) + sqr(-x93)*POWER(x90,4) + sqr(-x93)*POWER(x91,4) + sqr(-x93)*POWER(x92
     ,4) + sqr(-x93)*POWER(x93,4) + sqr(-x93)*POWER(x94,4) + sqr(-x93)*POWER(
     x95,4) + sqr(-x93)*POWER(x96,4) + sqr(-x93)*POWER(x97,4) + sqr(-x93)*
     POWER(x98,4) + sqr(-x93)*POWER(x99,4) + sqr(-x93)*POWER(x100,4) + sqr(-x94
     )*POWER(x1,4) + sqr(-x94)*POWER(x2,4) + sqr(-x94)*POWER(x3,4) + sqr(-x94)*
     POWER(x4,4) + sqr(-x94)*POWER(x5,4) + sqr(-x94)*POWER(x6,4) + sqr(-x94)*
     POWER(x7,4) + sqr(-x94)*POWER(x8,4) + sqr(-x94)*POWER(x9,4) + sqr(-x94)*
     POWER(x10,4) + sqr(-x94)*POWER(x11,4) + sqr(-x94)*POWER(x12,4) + sqr(-x94)
     *POWER(x13,4) + sqr(-x94)*POWER(x14,4) + sqr(-x94)*POWER(x15,4) + sqr(-x94
     )*POWER(x16,4) + sqr(-x94)*POWER(x17,4) + sqr(-x94)*POWER(x18,4) + sqr(-
     x94)*POWER(x19,4) + sqr(-x94)*POWER(x20,4) + sqr(-x94)*POWER(x21,4) + sqr(
     -x94)*POWER(x22,4) + sqr(-x94)*POWER(x23,4) + sqr(-x94)*POWER(x24,4) + 
     sqr(-x94)*POWER(x25,4) + sqr(-x94)*POWER(x26,4) + sqr(-x94)*POWER(x27,4)
      + sqr(-x94)*POWER(x28,4) + sqr(-x94)*POWER(x29,4) + sqr(-x94)*POWER(x30,4
     ) + sqr(-x94)*POWER(x31,4) + sqr(-x94)*POWER(x32,4) + sqr(-x94)*POWER(x33,
     4) + sqr(-x94)*POWER(x34,4) + sqr(-x94)*POWER(x35,4) + sqr(-x94)*POWER(x36
     ,4) + sqr(-x94)*POWER(x37,4) + sqr(-x94)*POWER(x38,4) + sqr(-x94)*POWER(
     x39,4) + sqr(-x94)*POWER(x40,4) + sqr(-x94)*POWER(x41,4) + sqr(-x94)*
     POWER(x42,4) + sqr(-x94)*POWER(x43,4) + sqr(-x94)*POWER(x44,4) + sqr(-x94)
     *POWER(x45,4) + sqr(-x94)*POWER(x46,4) + sqr(-x94)*POWER(x47,4) + sqr(-x94
     )*POWER(x48,4) + sqr(-x94)*POWER(x49,4) + sqr(-x94)*POWER(x50,4) + sqr(-
     x94)*POWER(x51,4) + sqr(-x94)*POWER(x52,4) + sqr(-x94)*POWER(x53,4) + sqr(
     -x94)*POWER(x54,4) + sqr(-x94)*POWER(x55,4) + sqr(-x94)*POWER(x56,4) + 
     sqr(-x94)*POWER(x57,4) + sqr(-x94)*POWER(x58,4) + sqr(-x94)*POWER(x59,4)
      + sqr(-x94)*POWER(x60,4) + sqr(-x94)*POWER(x61,4) + sqr(-x94)*POWER(x62,4
     ) + sqr(-x94)*POWER(x63,4) + sqr(-x94)*POWER(x64,4) + sqr(-x94)*POWER(x65,
     4) + sqr(-x94)*POWER(x66,4) + sqr(-x94)*POWER(x67,4) + sqr(-x94)*POWER(x68
     ,4) + sqr(-x94)*POWER(x69,4) + sqr(-x94)*POWER(x70,4) + sqr(-x94)*POWER(
     x71,4) + sqr(-x94)*POWER(x72,4) + sqr(-x94)*POWER(x73,4) + sqr(-x94)*
     POWER(x74,4) + sqr(-x94)*POWER(x75,4) + sqr(-x94)*POWER(x76,4) + sqr(-x94)
     *POWER(x77,4) + sqr(-x94)*POWER(x78,4) + sqr(-x94)*POWER(x79,4) + sqr(-x94
     )*POWER(x80,4) + sqr(-x94)*POWER(x81,4) + sqr(-x94)*POWER(x82,4) + sqr(-
     x94)*POWER(x83,4) + sqr(-x94)*POWER(x84,4) + sqr(-x94)*POWER(x85,4) + sqr(
     -x94)*POWER(x86,4) + sqr(-x94)*POWER(x87,4) + sqr(-x94)*POWER(x88,4) + 
     sqr(-x94)*POWER(x89,4) + sqr(-x94)*POWER(x90,4) + sqr(-x94)*POWER(x91,4)
      + sqr(-x94)*POWER(x92,4) + sqr(-x94)*POWER(x93,4) + sqr(-x94)*POWER(x94,4
     ) + sqr(-x94)*POWER(x95,4) + sqr(-x94)*POWER(x96,4) + sqr(-x94)*POWER(x97,
     4) + sqr(-x94)*POWER(x98,4) + sqr(-x94)*POWER(x99,4) + sqr(-x94)*POWER(
     x100,4) + sqr(-x95)*POWER(x1,4) + sqr(-x95)*POWER(x2,4) + sqr(-x95)*POWER(
     x3,4) + sqr(-x95)*POWER(x4,4) + sqr(-x95)*POWER(x5,4) + sqr(-x95)*POWER(x6
     ,4) + sqr(-x95)*POWER(x7,4) + sqr(-x95)*POWER(x8,4) + sqr(-x95)*POWER(x9,4
     ) + sqr(-x95)*POWER(x10,4) + sqr(-x95)*POWER(x11,4) + sqr(-x95)*POWER(x12,
     4) + sqr(-x95)*POWER(x13,4) + sqr(-x95)*POWER(x14,4) + sqr(-x95)*POWER(x15
     ,4) + sqr(-x95)*POWER(x16,4) + sqr(-x95)*POWER(x17,4) + sqr(-x95)*POWER(
     x18,4) + sqr(-x95)*POWER(x19,4) + sqr(-x95)*POWER(x20,4) + sqr(-x95)*
     POWER(x21,4) + sqr(-x95)*POWER(x22,4) + sqr(-x95)*POWER(x23,4) + sqr(-x95)
     *POWER(x24,4) + sqr(-x95)*POWER(x25,4) + sqr(-x95)*POWER(x26,4) + sqr(-x95
     )*POWER(x27,4) + sqr(-x95)*POWER(x28,4) + sqr(-x95)*POWER(x29,4) + sqr(-
     x95)*POWER(x30,4) + sqr(-x95)*POWER(x31,4) + sqr(-x95)*POWER(x32,4) + sqr(
     -x95)*POWER(x33,4) + sqr(-x95)*POWER(x34,4) + sqr(-x95)*POWER(x35,4) + 
     sqr(-x95)*POWER(x36,4) + sqr(-x95)*POWER(x37,4) + sqr(-x95)*POWER(x38,4)
      + sqr(-x95)*POWER(x39,4) + sqr(-x95)*POWER(x40,4) + sqr(-x95)*POWER(x41,4
     ) + sqr(-x95)*POWER(x42,4) + sqr(-x95)*POWER(x43,4) + sqr(-x95)*POWER(x44,
     4) + sqr(-x95)*POWER(x45,4) + sqr(-x95)*POWER(x46,4) + sqr(-x95)*POWER(x47
     ,4) + sqr(-x95)*POWER(x48,4) + sqr(-x95)*POWER(x49,4) + sqr(-x95)*POWER(
     x50,4) + sqr(-x95)*POWER(x51,4) + sqr(-x95)*POWER(x52,4) + sqr(-x95)*
     POWER(x53,4) + sqr(-x95)*POWER(x54,4) + sqr(-x95)*POWER(x55,4) + sqr(-x95)
     *POWER(x56,4) + sqr(-x95)*POWER(x57,4) + sqr(-x95)*POWER(x58,4) + sqr(-x95
     )*POWER(x59,4) + sqr(-x95)*POWER(x60,4) + sqr(-x95)*POWER(x61,4) + sqr(-
     x95)*POWER(x62,4) + sqr(-x95)*POWER(x63,4) + sqr(-x95)*POWER(x64,4) + sqr(
     -x95)*POWER(x65,4) + sqr(-x95)*POWER(x66,4) + sqr(-x95)*POWER(x67,4) + 
     sqr(-x95)*POWER(x68,4) + sqr(-x95)*POWER(x69,4) + sqr(-x95)*POWER(x70,4)
      + sqr(-x95)*POWER(x71,4) + sqr(-x95)*POWER(x72,4) + sqr(-x95)*POWER(x73,4
     ) + sqr(-x95)*POWER(x74,4) + sqr(-x95)*POWER(x75,4) + sqr(-x95)*POWER(x76,
     4) + sqr(-x95)*POWER(x77,4) + sqr(-x95)*POWER(x78,4) + sqr(-x95)*POWER(x79
     ,4) + sqr(-x95)*POWER(x80,4) + sqr(-x95)*POWER(x81,4) + sqr(-x95)*POWER(
     x82,4) + sqr(-x95)*POWER(x83,4) + sqr(-x95)*POWER(x84,4) + sqr(-x95)*
     POWER(x85,4) + sqr(-x95)*POWER(x86,4) + sqr(-x95)*POWER(x87,4) + sqr(-x95)
     *POWER(x88,4) + sqr(-x95)*POWER(x89,4) + sqr(-x95)*POWER(x90,4) + sqr(-x95
     )*POWER(x91,4) + sqr(-x95)*POWER(x92,4) + sqr(-x95)*POWER(x93,4) + sqr(-
     x95)*POWER(x94,4) + sqr(-x95)*POWER(x95,4) + sqr(-x95)*POWER(x96,4) + sqr(
     -x95)*POWER(x97,4) + sqr(-x95)*POWER(x98,4) + sqr(-x95)*POWER(x99,4) + 
     sqr(-x95)*POWER(x100,4) + sqr(-x96)*POWER(x1,4) + sqr(-x96)*POWER(x2,4) + 
     sqr(-x96)*POWER(x3,4) + sqr(-x96)*POWER(x4,4) + sqr(-x96)*POWER(x5,4) + 
     sqr(-x96)*POWER(x6,4) + sqr(-x96)*POWER(x7,4) + sqr(-x96)*POWER(x8,4) + 
     sqr(-x96)*POWER(x9,4) + sqr(-x96)*POWER(x10,4) + sqr(-x96)*POWER(x11,4) + 
     sqr(-x96)*POWER(x12,4) + sqr(-x96)*POWER(x13,4) + sqr(-x96)*POWER(x14,4)
      + sqr(-x96)*POWER(x15,4) + sqr(-x96)*POWER(x16,4) + sqr(-x96)*POWER(x17,4
     ) + sqr(-x96)*POWER(x18,4) + sqr(-x96)*POWER(x19,4) + sqr(-x96)*POWER(x20,
     4) + sqr(-x96)*POWER(x21,4) + sqr(-x96)*POWER(x22,4) + sqr(-x96)*POWER(x23
     ,4) + sqr(-x96)*POWER(x24,4) + sqr(-x96)*POWER(x25,4) + sqr(-x96)*POWER(
     x26,4) + sqr(-x96)*POWER(x27,4) + sqr(-x96)*POWER(x28,4) + sqr(-x96)*
     POWER(x29,4) + sqr(-x96)*POWER(x30,4) + sqr(-x96)*POWER(x31,4) + sqr(-x96)
     *POWER(x32,4) + sqr(-x96)*POWER(x33,4) + sqr(-x96)*POWER(x34,4) + sqr(-x96
     )*POWER(x35,4) + sqr(-x96)*POWER(x36,4) + sqr(-x96)*POWER(x37,4) + sqr(-
     x96)*POWER(x38,4) + sqr(-x96)*POWER(x39,4) + sqr(-x96)*POWER(x40,4) + sqr(
     -x96)*POWER(x41,4) + sqr(-x96)*POWER(x42,4) + sqr(-x96)*POWER(x43,4) + 
     sqr(-x96)*POWER(x44,4) + sqr(-x96)*POWER(x45,4) + sqr(-x96)*POWER(x46,4)
      + sqr(-x96)*POWER(x47,4) + sqr(-x96)*POWER(x48,4) + sqr(-x96)*POWER(x49,4
     ) + sqr(-x96)*POWER(x50,4) + sqr(-x96)*POWER(x51,4) + sqr(-x96)*POWER(x52,
     4) + sqr(-x96)*POWER(x53,4) + sqr(-x96)*POWER(x54,4) + sqr(-x96)*POWER(x55
     ,4) + sqr(-x96)*POWER(x56,4) + sqr(-x96)*POWER(x57,4) + sqr(-x96)*POWER(
     x58,4) + sqr(-x96)*POWER(x59,4) + sqr(-x96)*POWER(x60,4) + sqr(-x96)*
     POWER(x61,4) + sqr(-x96)*POWER(x62,4) + sqr(-x96)*POWER(x63,4) + sqr(-x96)
     *POWER(x64,4) + sqr(-x96)*POWER(x65,4) + sqr(-x96)*POWER(x66,4) + sqr(-x96
     )*POWER(x67,4) + sqr(-x96)*POWER(x68,4) + sqr(-x96)*POWER(x69,4) + sqr(-
     x96)*POWER(x70,4) + sqr(-x96)*POWER(x71,4) + sqr(-x96)*POWER(x72,4) + sqr(
     -x96)*POWER(x73,4) + sqr(-x96)*POWER(x74,4) + sqr(-x96)*POWER(x75,4) + 
     sqr(-x96)*POWER(x76,4) + sqr(-x96)*POWER(x77,4) + sqr(-x96)*POWER(x78,4)
      + sqr(-x96)*POWER(x79,4) + sqr(-x96)*POWER(x80,4) + sqr(-x96)*POWER(x81,4
     ) + sqr(-x96)*POWER(x82,4) + sqr(-x96)*POWER(x83,4) + sqr(-x96)*POWER(x84,
     4) + sqr(-x96)*POWER(x85,4) + sqr(-x96)*POWER(x86,4) + sqr(-x96)*POWER(x87
     ,4) + sqr(-x96)*POWER(x88,4) + sqr(-x96)*POWER(x89,4) + sqr(-x96)*POWER(
     x90,4) + sqr(-x96)*POWER(x91,4) + sqr(-x96)*POWER(x92,4) + sqr(-x96)*
     POWER(x93,4) + sqr(-x96)*POWER(x94,4) + sqr(-x96)*POWER(x95,4) + sqr(-x96)
     *POWER(x96,4) + sqr(-x96)*POWER(x97,4) + sqr(-x96)*POWER(x98,4) + sqr(-x96
     )*POWER(x99,4) + sqr(-x96)*POWER(x100,4) + sqr(-x97)*POWER(x1,4) + sqr(-
     x97)*POWER(x2,4) + sqr(-x97)*POWER(x3,4) + sqr(-x97)*POWER(x4,4) + sqr(-
     x97)*POWER(x5,4) + sqr(-x97)*POWER(x6,4) + sqr(-x97)*POWER(x7,4) + sqr(-
     x97)*POWER(x8,4) + sqr(-x97)*POWER(x9,4) + sqr(-x97)*POWER(x10,4) + sqr(-
     x97)*POWER(x11,4) + sqr(-x97)*POWER(x12,4) + sqr(-x97)*POWER(x13,4) + sqr(
     -x97)*POWER(x14,4) + sqr(-x97)*POWER(x15,4) + sqr(-x97)*POWER(x16,4) + 
     sqr(-x97)*POWER(x17,4) + sqr(-x97)*POWER(x18,4) + sqr(-x97)*POWER(x19,4)
      + sqr(-x97)*POWER(x20,4) + sqr(-x97)*POWER(x21,4) + sqr(-x97)*POWER(x22,4
     ) + sqr(-x97)*POWER(x23,4) + sqr(-x97)*POWER(x24,4) + sqr(-x97)*POWER(x25,
     4) + sqr(-x97)*POWER(x26,4) + sqr(-x97)*POWER(x27,4) + sqr(-x97)*POWER(x28
     ,4) + sqr(-x97)*POWER(x29,4) + sqr(-x97)*POWER(x30,4) + sqr(-x97)*POWER(
     x31,4) + sqr(-x97)*POWER(x32,4) + sqr(-x97)*POWER(x33,4) + sqr(-x97)*
     POWER(x34,4) + sqr(-x97)*POWER(x35,4) + sqr(-x97)*POWER(x36,4) + sqr(-x97)
     *POWER(x37,4) + sqr(-x97)*POWER(x38,4) + sqr(-x97)*POWER(x39,4) + sqr(-x97
     )*POWER(x40,4) + sqr(-x97)*POWER(x41,4) + sqr(-x97)*POWER(x42,4) + sqr(-
     x97)*POWER(x43,4) + sqr(-x97)*POWER(x44,4) + sqr(-x97)*POWER(x45,4) + sqr(
     -x97)*POWER(x46,4) + sqr(-x97)*POWER(x47,4) + sqr(-x97)*POWER(x48,4) + 
     sqr(-x97)*POWER(x49,4) + sqr(-x97)*POWER(x50,4) + sqr(-x97)*POWER(x51,4)
      + sqr(-x97)*POWER(x52,4) + sqr(-x97)*POWER(x53,4) + sqr(-x97)*POWER(x54,4
     ) + sqr(-x97)*POWER(x55,4) + sqr(-x97)*POWER(x56,4) + sqr(-x97)*POWER(x57,
     4) + sqr(-x97)*POWER(x58,4) + sqr(-x97)*POWER(x59,4) + sqr(-x97)*POWER(x60
     ,4) + sqr(-x97)*POWER(x61,4) + sqr(-x97)*POWER(x62,4) + sqr(-x97)*POWER(
     x63,4) + sqr(-x97)*POWER(x64,4) + sqr(-x97)*POWER(x65,4) + sqr(-x97)*
     POWER(x66,4) + sqr(-x97)*POWER(x67,4) + sqr(-x97)*POWER(x68,4) + sqr(-x97)
     *POWER(x69,4) + sqr(-x97)*POWER(x70,4) + sqr(-x97)*POWER(x71,4) + sqr(-x97
     )*POWER(x72,4) + sqr(-x97)*POWER(x73,4) + sqr(-x97)*POWER(x74,4) + sqr(-
     x97)*POWER(x75,4) + sqr(-x97)*POWER(x76,4) + sqr(-x97)*POWER(x77,4) + sqr(
     -x97)*POWER(x78,4) + sqr(-x97)*POWER(x79,4) + sqr(-x97)*POWER(x80,4) + 
     sqr(-x97)*POWER(x81,4) + sqr(-x97)*POWER(x82,4) + sqr(-x97)*POWER(x83,4)
      + sqr(-x97)*POWER(x84,4) + sqr(-x97)*POWER(x85,4) + sqr(-x97)*POWER(x86,4
     ) + sqr(-x97)*POWER(x87,4) + sqr(-x97)*POWER(x88,4) + sqr(-x97)*POWER(x89,
     4) + sqr(-x97)*POWER(x90,4) + sqr(-x97)*POWER(x91,4) + sqr(-x97)*POWER(x92
     ,4) + sqr(-x97)*POWER(x93,4) + sqr(-x97)*POWER(x94,4) + sqr(-x97)*POWER(
     x95,4) + sqr(-x97)*POWER(x96,4) + sqr(-x97)*POWER(x97,4) + sqr(-x97)*
     POWER(x98,4) + sqr(-x97)*POWER(x99,4) + sqr(-x97)*POWER(x100,4) + sqr(-x98
     )*POWER(x1,4) + sqr(-x98)*POWER(x2,4) + sqr(-x98)*POWER(x3,4) + sqr(-x98)*
     POWER(x4,4) + sqr(-x98)*POWER(x5,4) + sqr(-x98)*POWER(x6,4) + sqr(-x98)*
     POWER(x7,4) + sqr(-x98)*POWER(x8,4) + sqr(-x98)*POWER(x9,4) + sqr(-x98)*
     POWER(x10,4) + sqr(-x98)*POWER(x11,4) + sqr(-x98)*POWER(x12,4) + sqr(-x98)
     *POWER(x13,4) + sqr(-x98)*POWER(x14,4) + sqr(-x98)*POWER(x15,4) + sqr(-x98
     )*POWER(x16,4) + sqr(-x98)*POWER(x17,4) + sqr(-x98)*POWER(x18,4) + sqr(-
     x98)*POWER(x19,4) + sqr(-x98)*POWER(x20,4) + sqr(-x98)*POWER(x21,4) + sqr(
     -x98)*POWER(x22,4) + sqr(-x98)*POWER(x23,4) + sqr(-x98)*POWER(x24,4) + 
     sqr(-x98)*POWER(x25,4) + sqr(-x98)*POWER(x26,4) + sqr(-x98)*POWER(x27,4)
      + sqr(-x98)*POWER(x28,4) + sqr(-x98)*POWER(x29,4) + sqr(-x98)*POWER(x30,4
     ) + sqr(-x98)*POWER(x31,4) + sqr(-x98)*POWER(x32,4) + sqr(-x98)*POWER(x33,
     4) + sqr(-x98)*POWER(x34,4) + sqr(-x98)*POWER(x35,4) + sqr(-x98)*POWER(x36
     ,4) + sqr(-x98)*POWER(x37,4) + sqr(-x98)*POWER(x38,4) + sqr(-x98)*POWER(
     x39,4) + sqr(-x98)*POWER(x40,4) + sqr(-x98)*POWER(x41,4) + sqr(-x98)*
     POWER(x42,4) + sqr(-x98)*POWER(x43,4) + sqr(-x98)*POWER(x44,4) + sqr(-x98)
     *POWER(x45,4) + sqr(-x98)*POWER(x46,4) + sqr(-x98)*POWER(x47,4) + sqr(-x98
     )*POWER(x48,4) + sqr(-x98)*POWER(x49,4) + sqr(-x98)*POWER(x50,4) + sqr(-
     x98)*POWER(x51,4) + sqr(-x98)*POWER(x52,4) + sqr(-x98)*POWER(x53,4) + sqr(
     -x98)*POWER(x54,4) + sqr(-x98)*POWER(x55,4) + sqr(-x98)*POWER(x56,4) + 
     sqr(-x98)*POWER(x57,4) + sqr(-x98)*POWER(x58,4) + sqr(-x98)*POWER(x59,4)
      + sqr(-x98)*POWER(x60,4) + sqr(-x98)*POWER(x61,4) + sqr(-x98)*POWER(x62,4
     ) + sqr(-x98)*POWER(x63,4) + sqr(-x98)*POWER(x64,4) + sqr(-x98)*POWER(x65,
     4) + sqr(-x98)*POWER(x66,4) + sqr(-x98)*POWER(x67,4) + sqr(-x98)*POWER(x68
     ,4) + sqr(-x98)*POWER(x69,4) + sqr(-x98)*POWER(x70,4) + sqr(-x98)*POWER(
     x71,4) + sqr(-x98)*POWER(x72,4) + sqr(-x98)*POWER(x73,4) + sqr(-x98)*
     POWER(x74,4) + sqr(-x98)*POWER(x75,4) + sqr(-x98)*POWER(x76,4) + sqr(-x98)
     *POWER(x77,4) + sqr(-x98)*POWER(x78,4) + sqr(-x98)*POWER(x79,4) + sqr(-x98
     )*POWER(x80,4) + sqr(-x98)*POWER(x81,4) + sqr(-x98)*POWER(x82,4) + sqr(-
     x98)*POWER(x83,4) + sqr(-x98)*POWER(x84,4) + sqr(-x98)*POWER(x85,4) + sqr(
     -x98)*POWER(x86,4) + sqr(-x98)*POWER(x87,4) + sqr(-x98)*POWER(x88,4) + 
     sqr(-x98)*POWER(x89,4) + sqr(-x98)*POWER(x90,4) + sqr(-x98)*POWER(x91,4)
      + sqr(-x98)*POWER(x92,4) + sqr(-x98)*POWER(x93,4) + sqr(-x98)*POWER(x94,4
     ) + sqr(-x98)*POWER(x95,4) + sqr(-x98)*POWER(x96,4) + sqr(-x98)*POWER(x97,
     4) + sqr(-x98)*POWER(x98,4) + sqr(-x98)*POWER(x99,4) + sqr(-x98)*POWER(
     x100,4) + sqr(-x99)*POWER(x1,4) + sqr(-x99)*POWER(x2,4) + sqr(-x99)*POWER(
     x3,4) + sqr(-x99)*POWER(x4,4) + sqr(-x99)*POWER(x5,4) + sqr(-x99)*POWER(x6
     ,4) + sqr(-x99)*POWER(x7,4) + sqr(-x99)*POWER(x8,4) + sqr(-x99)*POWER(x9,4
     ) + sqr(-x99)*POWER(x10,4) + sqr(-x99)*POWER(x11,4) + sqr(-x99)*POWER(x12,
     4) + sqr(-x99)*POWER(x13,4) + sqr(-x99)*POWER(x14,4) + sqr(-x99)*POWER(x15
     ,4) + sqr(-x99)*POWER(x16,4) + sqr(-x99)*POWER(x17,4) + sqr(-x99)*POWER(
     x18,4) + sqr(-x99)*POWER(x19,4) + sqr(-x99)*POWER(x20,4) + sqr(-x99)*
     POWER(x21,4) + sqr(-x99)*POWER(x22,4) + sqr(-x99)*POWER(x23,4) + sqr(-x99)
     *POWER(x24,4) + sqr(-x99)*POWER(x25,4) + sqr(-x99)*POWER(x26,4) + sqr(-x99
     )*POWER(x27,4) + sqr(-x99)*POWER(x28,4) + sqr(-x99)*POWER(x29,4) + sqr(-
     x99)*POWER(x30,4) + sqr(-x99)*POWER(x31,4) + sqr(-x99)*POWER(x32,4) + sqr(
     -x99)*POWER(x33,4) + sqr(-x99)*POWER(x34,4) + sqr(-x99)*POWER(x35,4) + 
     sqr(-x99)*POWER(x36,4) + sqr(-x99)*POWER(x37,4) + sqr(-x99)*POWER(x38,4)
      + sqr(-x99)*POWER(x39,4) + sqr(-x99)*POWER(x40,4) + sqr(-x99)*POWER(x41,4
     ) + sqr(-x99)*POWER(x42,4) + sqr(-x99)*POWER(x43,4) + sqr(-x99)*POWER(x44,
     4) + sqr(-x99)*POWER(x45,4) + sqr(-x99)*POWER(x46,4) + sqr(-x99)*POWER(x47
     ,4) + sqr(-x99)*POWER(x48,4) + sqr(-x99)*POWER(x49,4) + sqr(-x99)*POWER(
     x50,4) + sqr(-x99)*POWER(x51,4) + sqr(-x99)*POWER(x52,4) + sqr(-x99)*
     POWER(x53,4) + sqr(-x99)*POWER(x54,4) + sqr(-x99)*POWER(x55,4) + sqr(-x99)
     *POWER(x56,4) + sqr(-x99)*POWER(x57,4) + sqr(-x99)*POWER(x58,4) + sqr(-x99
     )*POWER(x59,4) + sqr(-x99)*POWER(x60,4) + sqr(-x99)*POWER(x61,4) + sqr(-
     x99)*POWER(x62,4) + sqr(-x99)*POWER(x63,4) + sqr(-x99)*POWER(x64,4) + sqr(
     -x99)*POWER(x65,4) + sqr(-x99)*POWER(x66,4) + sqr(-x99)*POWER(x67,4) + 
     sqr(-x99)*POWER(x68,4) + sqr(-x99)*POWER(x69,4) + sqr(-x99)*POWER(x70,4)
      + sqr(-x99)*POWER(x71,4) + sqr(-x99)*POWER(x72,4) + sqr(-x99)*POWER(x73,4
     ) + sqr(-x99)*POWER(x74,4) + sqr(-x99)*POWER(x75,4) + sqr(-x99)*POWER(x76,
     4) + sqr(-x99)*POWER(x77,4) + sqr(-x99)*POWER(x78,4) + sqr(-x99)*POWER(x79
     ,4) + sqr(-x99)*POWER(x80,4) + sqr(-x99)*POWER(x81,4) + sqr(-x99)*POWER(
     x82,4) + sqr(-x99)*POWER(x83,4) + sqr(-x99)*POWER(x84,4) + sqr(-x99)*
     POWER(x85,4) + sqr(-x99)*POWER(x86,4) + sqr(-x99)*POWER(x87,4) + sqr(-x99)
     *POWER(x88,4) + sqr(-x99)*POWER(x89,4) + sqr(-x99)*POWER(x90,4) + sqr(-x99
     )*POWER(x91,4) + sqr(-x99)*POWER(x92,4) + sqr(-x99)*POWER(x93,4) + sqr(-
     x99)*POWER(x94,4) + sqr(-x99)*POWER(x95,4) + sqr(-x99)*POWER(x96,4) + sqr(
     -x99)*POWER(x97,4) + sqr(-x99)*POWER(x98,4) + sqr(-x99)*POWER(x99,4) + 
     sqr(-x99)*POWER(x100,4) + sqr(-x100)*POWER(x1,4) + sqr(-x100)*POWER(x2,4)
      + sqr(-x100)*POWER(x3,4) + sqr(-x100)*POWER(x4,4) + sqr(-x100)*POWER(x5,4
     ) + sqr(-x100)*POWER(x6,4) + sqr(-x100)*POWER(x7,4) + sqr(-x100)*POWER(x8,
     4) + sqr(-x100)*POWER(x9,4) + sqr(-x100)*POWER(x10,4) + sqr(-x100)*POWER(
     x11,4) + sqr(-x100)*POWER(x12,4) + sqr(-x100)*POWER(x13,4) + sqr(-x100)*
     POWER(x14,4) + sqr(-x100)*POWER(x15,4) + sqr(-x100)*POWER(x16,4) + sqr(-
     x100)*POWER(x17,4) + sqr(-x100)*POWER(x18,4) + sqr(-x100)*POWER(x19,4) + 
     sqr(-x100)*POWER(x20,4) + sqr(-x100)*POWER(x21,4) + sqr(-x100)*POWER(x22,4
     ) + sqr(-x100)*POWER(x23,4) + sqr(-x100)*POWER(x24,4) + sqr(-x100)*POWER(
     x25,4) + sqr(-x100)*POWER(x26,4) + sqr(-x100)*POWER(x27,4) + sqr(-x100)*
     POWER(x28,4) + sqr(-x100)*POWER(x29,4) + sqr(-x100)*POWER(x30,4) + sqr(-
     x100)*POWER(x31,4) + sqr(-x100)*POWER(x32,4) + sqr(-x100)*POWER(x33,4) + 
     sqr(-x100)*POWER(x34,4) + sqr(-x100)*POWER(x35,4) + sqr(-x100)*POWER(x36,4
     ) + sqr(-x100)*POWER(x37,4) + sqr(-x100)*POWER(x38,4) + sqr(-x100)*POWER(
     x39,4) + sqr(-x100)*POWER(x40,4) + sqr(-x100)*POWER(x41,4) + sqr(-x100)*
     POWER(x42,4) + sqr(-x100)*POWER(x43,4) + sqr(-x100)*POWER(x44,4) + sqr(-
     x100)*POWER(x45,4) + sqr(-x100)*POWER(x46,4) + sqr(-x100)*POWER(x47,4) + 
     sqr(-x100)*POWER(x48,4) + sqr(-x100)*POWER(x49,4) + sqr(-x100)*POWER(x50,4
     ) + sqr(-x100)*POWER(x51,4) + sqr(-x100)*POWER(x52,4) + sqr(-x100)*POWER(
     x53,4) + sqr(-x100)*POWER(x54,4) + sqr(-x100)*POWER(x55,4) + sqr(-x100)*
     POWER(x56,4) + sqr(-x100)*POWER(x57,4) + sqr(-x100)*POWER(x58,4) + sqr(-
     x100)*POWER(x59,4) + sqr(-x100)*POWER(x60,4) + sqr(-x100)*POWER(x61,4) + 
     sqr(-x100)*POWER(x62,4) + sqr(-x100)*POWER(x63,4) + sqr(-x100)*POWER(x64,4
     ) + sqr(-x100)*POWER(x65,4) + sqr(-x100)*POWER(x66,4) + sqr(-x100)*POWER(
     x67,4) + sqr(-x100)*POWER(x68,4) + sqr(-x100)*POWER(x69,4) + sqr(-x100)*
     POWER(x70,4) + sqr(-x100)*POWER(x71,4) + sqr(-x100)*POWER(x72,4) + sqr(-
     x100)*POWER(x73,4) + sqr(-x100)*POWER(x74,4) + sqr(-x100)*POWER(x75,4) + 
     sqr(-x100)*POWER(x76,4) + sqr(-x100)*POWER(x77,4) + sqr(-x100)*POWER(x78,4
     ) + sqr(-x100)*POWER(x79,4) + sqr(-x100)*POWER(x80,4) + sqr(-x100)*POWER(
     x81,4) + sqr(-x100)*POWER(x82,4) + sqr(-x100)*POWER(x83,4) + sqr(-x100)*
     POWER(x84,4) + sqr(-x100)*POWER(x85,4) + sqr(-x100)*POWER(x86,4) + sqr(-
     x100)*POWER(x87,4) + sqr(-x100)*POWER(x88,4) + sqr(-x100)*POWER(x89,4) + 
     sqr(-x100)*POWER(x90,4) + sqr(-x100)*POWER(x91,4) + sqr(-x100)*POWER(x92,4
     ) + sqr(-x100)*POWER(x93,4) + sqr(-x100)*POWER(x94,4) + sqr(-x100)*POWER(
     x95,4) + sqr(-x100)*POWER(x96,4) + sqr(-x100)*POWER(x97,4) + sqr(-x100)*
     POWER(x98,4) + sqr(-x100)*POWER(x99,4) + sqr(-x100)*POWER(x100,4) + POWER(
     x1,3)*POWER(x1,3) + POWER(x1,3)*POWER(x2,3) + POWER(x1,3)*POWER(x3,3) + 
     POWER(x1,3)*POWER(x4,3) + POWER(x1,3)*POWER(x5,3) + POWER(x1,3)*POWER(x6,3
     ) + POWER(x1,3)*POWER(x7,3) + POWER(x1,3)*POWER(x8,3) + POWER(x1,3)*POWER(
     x9,3) + POWER(x1,3)*POWER(x10,3) + POWER(x1,3)*POWER(x11,3) + POWER(x1,3)*
     POWER(x12,3) + POWER(x1,3)*POWER(x13,3) + POWER(x1,3)*POWER(x14,3) + 
     POWER(x1,3)*POWER(x15,3) + POWER(x1,3)*POWER(x16,3) + POWER(x1,3)*POWER(
     x17,3) + POWER(x1,3)*POWER(x18,3) + POWER(x1,3)*POWER(x19,3) + POWER(x1,3)
     *POWER(x20,3) + POWER(x1,3)*POWER(x21,3) + POWER(x1,3)*POWER(x22,3) + 
     POWER(x1,3)*POWER(x23,3) + POWER(x1,3)*POWER(x24,3) + POWER(x1,3)*POWER(
     x25,3) + POWER(x1,3)*POWER(x26,3) + POWER(x1,3)*POWER(x27,3) + POWER(x1,3)
     *POWER(x28,3) + POWER(x1,3)*POWER(x29,3) + POWER(x1,3)*POWER(x30,3) + 
     POWER(x1,3)*POWER(x31,3) + POWER(x1,3)*POWER(x32,3) + POWER(x1,3)*POWER(
     x33,3) + POWER(x1,3)*POWER(x34,3) + POWER(x1,3)*POWER(x35,3) + POWER(x1,3)
     *POWER(x36,3) + POWER(x1,3)*POWER(x37,3) + POWER(x1,3)*POWER(x38,3) + 
     POWER(x1,3)*POWER(x39,3) + POWER(x1,3)*POWER(x40,3) + POWER(x1,3)*POWER(
     x41,3) + POWER(x1,3)*POWER(x42,3) + POWER(x1,3)*POWER(x43,3) + POWER(x1,3)
     *POWER(x44,3) + POWER(x1,3)*POWER(x45,3) + POWER(x1,3)*POWER(x46,3) + 
     POWER(x1,3)*POWER(x47,3) + POWER(x1,3)*POWER(x48,3) + POWER(x1,3)*POWER(
     x49,3) + POWER(x1,3)*POWER(x50,3) + POWER(x1,3)*POWER(x51,3) + POWER(x1,3)
     *POWER(x52,3) + POWER(x1,3)*POWER(x53,3) + POWER(x1,3)*POWER(x54,3) + 
     POWER(x1,3)*POWER(x55,3) + POWER(x1,3)*POWER(x56,3) + POWER(x1,3)*POWER(
     x57,3) + POWER(x1,3)*POWER(x58,3) + POWER(x1,3)*POWER(x59,3) + POWER(x1,3)
     *POWER(x60,3) + POWER(x1,3)*POWER(x61,3) + POWER(x1,3)*POWER(x62,3) + 
     POWER(x1,3)*POWER(x63,3) + POWER(x1,3)*POWER(x64,3) + POWER(x1,3)*POWER(
     x65,3) + POWER(x1,3)*POWER(x66,3) + POWER(x1,3)*POWER(x67,3) + POWER(x1,3)
     *POWER(x68,3) + POWER(x1,3)*POWER(x69,3) + POWER(x1,3)*POWER(x70,3) + 
     POWER(x1,3)*POWER(x71,3) + POWER(x1,3)*POWER(x72,3) + POWER(x1,3)*POWER(
     x73,3) + POWER(x1,3)*POWER(x74,3) + POWER(x1,3)*POWER(x75,3) + POWER(x1,3)
     *POWER(x76,3) + POWER(x1,3)*POWER(x77,3) + POWER(x1,3)*POWER(x78,3) + 
     POWER(x1,3)*POWER(x79,3) + POWER(x1,3)*POWER(x80,3) + POWER(x1,3)*POWER(
     x81,3) + POWER(x1,3)*POWER(x82,3) + POWER(x1,3)*POWER(x83,3) + POWER(x1,3)
     *POWER(x84,3) + POWER(x1,3)*POWER(x85,3) + POWER(x1,3)*POWER(x86,3) + 
     POWER(x1,3)*POWER(x87,3) + POWER(x1,3)*POWER(x88,3) + POWER(x1,3)*POWER(
     x89,3) + POWER(x1,3)*POWER(x90,3) + POWER(x1,3)*POWER(x91,3) + POWER(x1,3)
     *POWER(x92,3) + POWER(x1,3)*POWER(x93,3) + POWER(x1,3)*POWER(x94,3) + 
     POWER(x1,3)*POWER(x95,3) + POWER(x1,3)*POWER(x96,3) + POWER(x1,3)*POWER(
     x97,3) + POWER(x1,3)*POWER(x98,3) + POWER(x1,3)*POWER(x99,3) + POWER(x1,3)
     *POWER(x100,3) + POWER(x2,3)*POWER(x1,3) + POWER(x2,3)*POWER(x2,3) + 
     POWER(x2,3)*POWER(x3,3) + POWER(x2,3)*POWER(x4,3) + POWER(x2,3)*POWER(x5,3
     ) + POWER(x2,3)*POWER(x6,3) + POWER(x2,3)*POWER(x7,3) + POWER(x2,3)*POWER(
     x8,3) + POWER(x2,3)*POWER(x9,3) + POWER(x2,3)*POWER(x10,3) + POWER(x2,3)*
     POWER(x11,3) + POWER(x2,3)*POWER(x12,3) + POWER(x2,3)*POWER(x13,3) + 
     POWER(x2,3)*POWER(x14,3) + POWER(x2,3)*POWER(x15,3) + POWER(x2,3)*POWER(
     x16,3) + POWER(x2,3)*POWER(x17,3) + POWER(x2,3)*POWER(x18,3) + POWER(x2,3)
     *POWER(x19,3) + POWER(x2,3)*POWER(x20,3) + POWER(x2,3)*POWER(x21,3) + 
     POWER(x2,3)*POWER(x22,3) + POWER(x2,3)*POWER(x23,3) + POWER(x2,3)*POWER(
     x24,3) + POWER(x2,3)*POWER(x25,3) + POWER(x2,3)*POWER(x26,3) + POWER(x2,3)
     *POWER(x27,3) + POWER(x2,3)*POWER(x28,3) + POWER(x2,3)*POWER(x29,3) + 
     POWER(x2,3)*POWER(x30,3) + POWER(x2,3)*POWER(x31,3) + POWER(x2,3)*POWER(
     x32,3) + POWER(x2,3)*POWER(x33,3) + POWER(x2,3)*POWER(x34,3) + POWER(x2,3)
     *POWER(x35,3) + POWER(x2,3)*POWER(x36,3) + POWER(x2,3)*POWER(x37,3) + 
     POWER(x2,3)*POWER(x38,3) + POWER(x2,3)*POWER(x39,3) + POWER(x2,3)*POWER(
     x40,3) + POWER(x2,3)*POWER(x41,3) + POWER(x2,3)*POWER(x42,3) + POWER(x2,3)
     *POWER(x43,3) + POWER(x2,3)*POWER(x44,3) + POWER(x2,3)*POWER(x45,3) + 
     POWER(x2,3)*POWER(x46,3) + POWER(x2,3)*POWER(x47,3) + POWER(x2,3)*POWER(
     x48,3) + POWER(x2,3)*POWER(x49,3) + POWER(x2,3)*POWER(x50,3) + POWER(x2,3)
     *POWER(x51,3) + POWER(x2,3)*POWER(x52,3) + POWER(x2,3)*POWER(x53,3) + 
     POWER(x2,3)*POWER(x54,3) + POWER(x2,3)*POWER(x55,3) + POWER(x2,3)*POWER(
     x56,3) + POWER(x2,3)*POWER(x57,3) + POWER(x2,3)*POWER(x58,3) + POWER(x2,3)
     *POWER(x59,3) + POWER(x2,3)*POWER(x60,3) + POWER(x2,3)*POWER(x61,3) + 
     POWER(x2,3)*POWER(x62,3) + POWER(x2,3)*POWER(x63,3) + POWER(x2,3)*POWER(
     x64,3) + POWER(x2,3)*POWER(x65,3) + POWER(x2,3)*POWER(x66,3) + POWER(x2,3)
     *POWER(x67,3) + POWER(x2,3)*POWER(x68,3) + POWER(x2,3)*POWER(x69,3) + 
     POWER(x2,3)*POWER(x70,3) + POWER(x2,3)*POWER(x71,3) + POWER(x2,3)*POWER(
     x72,3) + POWER(x2,3)*POWER(x73,3) + POWER(x2,3)*POWER(x74,3) + POWER(x2,3)
     *POWER(x75,3) + POWER(x2,3)*POWER(x76,3) + POWER(x2,3)*POWER(x77,3) + 
     POWER(x2,3)*POWER(x78,3) + POWER(x2,3)*POWER(x79,3) + POWER(x2,3)*POWER(
     x80,3) + POWER(x2,3)*POWER(x81,3) + POWER(x2,3)*POWER(x82,3) + POWER(x2,3)
     *POWER(x83,3) + POWER(x2,3)*POWER(x84,3) + POWER(x2,3)*POWER(x85,3) + 
     POWER(x2,3)*POWER(x86,3) + POWER(x2,3)*POWER(x87,3) + POWER(x2,3)*POWER(
     x88,3) + POWER(x2,3)*POWER(x89,3) + POWER(x2,3)*POWER(x90,3) + POWER(x2,3)
     *POWER(x91,3) + POWER(x2,3)*POWER(x92,3) + POWER(x2,3)*POWER(x93,3) + 
     POWER(x2,3)*POWER(x94,3) + POWER(x2,3)*POWER(x95,3) + POWER(x2,3)*POWER(
     x96,3) + POWER(x2,3)*POWER(x97,3) + POWER(x2,3)*POWER(x98,3) + POWER(x2,3)
     *POWER(x99,3) + POWER(x2,3)*POWER(x100,3) + POWER(x3,3)*POWER(x1,3) + 
     POWER(x3,3)*POWER(x2,3) + POWER(x3,3)*POWER(x3,3) + POWER(x3,3)*POWER(x4,3
     ) + POWER(x3,3)*POWER(x5,3) + POWER(x3,3)*POWER(x6,3) + POWER(x3,3)*POWER(
     x7,3) + POWER(x3,3)*POWER(x8,3) + POWER(x3,3)*POWER(x9,3) + POWER(x3,3)*
     POWER(x10,3) + POWER(x3,3)*POWER(x11,3) + POWER(x3,3)*POWER(x12,3) + 
     POWER(x3,3)*POWER(x13,3) + POWER(x3,3)*POWER(x14,3) + POWER(x3,3)*POWER(
     x15,3) + POWER(x3,3)*POWER(x16,3) + POWER(x3,3)*POWER(x17,3) + POWER(x3,3)
     *POWER(x18,3) + POWER(x3,3)*POWER(x19,3) + POWER(x3,3)*POWER(x20,3) + 
     POWER(x3,3)*POWER(x21,3) + POWER(x3,3)*POWER(x22,3) + POWER(x3,3)*POWER(
     x23,3) + POWER(x3,3)*POWER(x24,3) + POWER(x3,3)*POWER(x25,3) + POWER(x3,3)
     *POWER(x26,3) + POWER(x3,3)*POWER(x27,3) + POWER(x3,3)*POWER(x28,3) + 
     POWER(x3,3)*POWER(x29,3) + POWER(x3,3)*POWER(x30,3) + POWER(x3,3)*POWER(
     x31,3) + POWER(x3,3)*POWER(x32,3) + POWER(x3,3)*POWER(x33,3) + POWER(x3,3)
     *POWER(x34,3) + POWER(x3,3)*POWER(x35,3) + POWER(x3,3)*POWER(x36,3) + 
     POWER(x3,3)*POWER(x37,3) + POWER(x3,3)*POWER(x38,3) + POWER(x3,3)*POWER(
     x39,3) + POWER(x3,3)*POWER(x40,3) + POWER(x3,3)*POWER(x41,3) + POWER(x3,3)
     *POWER(x42,3) + POWER(x3,3)*POWER(x43,3) + POWER(x3,3)*POWER(x44,3) + 
     POWER(x3,3)*POWER(x45,3) + POWER(x3,3)*POWER(x46,3) + POWER(x3,3)*POWER(
     x47,3) + POWER(x3,3)*POWER(x48,3) + POWER(x3,3)*POWER(x49,3) + POWER(x3,3)
     *POWER(x50,3) + POWER(x3,3)*POWER(x51,3) + POWER(x3,3)*POWER(x52,3) + 
     POWER(x3,3)*POWER(x53,3) + POWER(x3,3)*POWER(x54,3) + POWER(x3,3)*POWER(
     x55,3) + POWER(x3,3)*POWER(x56,3) + POWER(x3,3)*POWER(x57,3) + POWER(x3,3)
     *POWER(x58,3) + POWER(x3,3)*POWER(x59,3) + POWER(x3,3)*POWER(x60,3) + 
     POWER(x3,3)*POWER(x61,3) + POWER(x3,3)*POWER(x62,3) + POWER(x3,3)*POWER(
     x63,3) + POWER(x3,3)*POWER(x64,3) + POWER(x3,3)*POWER(x65,3) + POWER(x3,3)
     *POWER(x66,3) + POWER(x3,3)*POWER(x67,3) + POWER(x3,3)*POWER(x68,3) + 
     POWER(x3,3)*POWER(x69,3) + POWER(x3,3)*POWER(x70,3) + POWER(x3,3)*POWER(
     x71,3) + POWER(x3,3)*POWER(x72,3) + POWER(x3,3)*POWER(x73,3) + POWER(x3,3)
     *POWER(x74,3) + POWER(x3,3)*POWER(x75,3) + POWER(x3,3)*POWER(x76,3) + 
     POWER(x3,3)*POWER(x77,3) + POWER(x3,3)*POWER(x78,3) + POWER(x3,3)*POWER(
     x79,3) + POWER(x3,3)*POWER(x80,3) + POWER(x3,3)*POWER(x81,3) + POWER(x3,3)
     *POWER(x82,3) + POWER(x3,3)*POWER(x83,3) + POWER(x3,3)*POWER(x84,3) + 
     POWER(x3,3)*POWER(x85,3) + POWER(x3,3)*POWER(x86,3) + POWER(x3,3)*POWER(
     x87,3) + POWER(x3,3)*POWER(x88,3) + POWER(x3,3)*POWER(x89,3) + POWER(x3,3)
     *POWER(x90,3) + POWER(x3,3)*POWER(x91,3) + POWER(x3,3)*POWER(x92,3) + 
     POWER(x3,3)*POWER(x93,3) + POWER(x3,3)*POWER(x94,3) + POWER(x3,3)*POWER(
     x95,3) + POWER(x3,3)*POWER(x96,3) + POWER(x3,3)*POWER(x97,3) + POWER(x3,3)
     *POWER(x98,3) + POWER(x3,3)*POWER(x99,3) + POWER(x3,3)*POWER(x100,3) + 
     POWER(x4,3)*POWER(x1,3) + POWER(x4,3)*POWER(x2,3) + POWER(x4,3)*POWER(x3,3
     ) + POWER(x4,3)*POWER(x4,3) + POWER(x4,3)*POWER(x5,3) + POWER(x4,3)*POWER(
     x6,3) + POWER(x4,3)*POWER(x7,3) + POWER(x4,3)*POWER(x8,3) + POWER(x4,3)*
     POWER(x9,3) + POWER(x4,3)*POWER(x10,3) + POWER(x4,3)*POWER(x11,3) + POWER(
     x4,3)*POWER(x12,3) + POWER(x4,3)*POWER(x13,3) + POWER(x4,3)*POWER(x14,3)
      + POWER(x4,3)*POWER(x15,3) + POWER(x4,3)*POWER(x16,3) + POWER(x4,3)*
     POWER(x17,3) + POWER(x4,3)*POWER(x18,3) + POWER(x4,3)*POWER(x19,3) + 
     POWER(x4,3)*POWER(x20,3) + POWER(x4,3)*POWER(x21,3) + POWER(x4,3)*POWER(
     x22,3) + POWER(x4,3)*POWER(x23,3) + POWER(x4,3)*POWER(x24,3) + POWER(x4,3)
     *POWER(x25,3) + POWER(x4,3)*POWER(x26,3) + POWER(x4,3)*POWER(x27,3) + 
     POWER(x4,3)*POWER(x28,3) + POWER(x4,3)*POWER(x29,3) + POWER(x4,3)*POWER(
     x30,3) + POWER(x4,3)*POWER(x31,3) + POWER(x4,3)*POWER(x32,3) + POWER(x4,3)
     *POWER(x33,3) + POWER(x4,3)*POWER(x34,3) + POWER(x4,3)*POWER(x35,3) + 
     POWER(x4,3)*POWER(x36,3) + POWER(x4,3)*POWER(x37,3) + POWER(x4,3)*POWER(
     x38,3) + POWER(x4,3)*POWER(x39,3) + POWER(x4,3)*POWER(x40,3) + POWER(x4,3)
     *POWER(x41,3) + POWER(x4,3)*POWER(x42,3) + POWER(x4,3)*POWER(x43,3) + 
     POWER(x4,3)*POWER(x44,3) + POWER(x4,3)*POWER(x45,3) + POWER(x4,3)*POWER(
     x46,3) + POWER(x4,3)*POWER(x47,3) + POWER(x4,3)*POWER(x48,3) + POWER(x4,3)
     *POWER(x49,3) + POWER(x4,3)*POWER(x50,3) + POWER(x4,3)*POWER(x51,3) + 
     POWER(x4,3)*POWER(x52,3) + POWER(x4,3)*POWER(x53,3) + POWER(x4,3)*POWER(
     x54,3) + POWER(x4,3)*POWER(x55,3) + POWER(x4,3)*POWER(x56,3) + POWER(x4,3)
     *POWER(x57,3) + POWER(x4,3)*POWER(x58,3) + POWER(x4,3)*POWER(x59,3) + 
     POWER(x4,3)*POWER(x60,3) + POWER(x4,3)*POWER(x61,3) + POWER(x4,3)*POWER(
     x62,3) + POWER(x4,3)*POWER(x63,3) + POWER(x4,3)*POWER(x64,3) + POWER(x4,3)
     *POWER(x65,3) + POWER(x4,3)*POWER(x66,3) + POWER(x4,3)*POWER(x67,3) + 
     POWER(x4,3)*POWER(x68,3) + POWER(x4,3)*POWER(x69,3) + POWER(x4,3)*POWER(
     x70,3) + POWER(x4,3)*POWER(x71,3) + POWER(x4,3)*POWER(x72,3) + POWER(x4,3)
     *POWER(x73,3) + POWER(x4,3)*POWER(x74,3) + POWER(x4,3)*POWER(x75,3) + 
     POWER(x4,3)*POWER(x76,3) + POWER(x4,3)*POWER(x77,3) + POWER(x4,3)*POWER(
     x78,3) + POWER(x4,3)*POWER(x79,3) + POWER(x4,3)*POWER(x80,3) + POWER(x4,3)
     *POWER(x81,3) + POWER(x4,3)*POWER(x82,3) + POWER(x4,3)*POWER(x83,3) + 
     POWER(x4,3)*POWER(x84,3) + POWER(x4,3)*POWER(x85,3) + POWER(x4,3)*POWER(
     x86,3) + POWER(x4,3)*POWER(x87,3) + POWER(x4,3)*POWER(x88,3) + POWER(x4,3)
     *POWER(x89,3) + POWER(x4,3)*POWER(x90,3) + POWER(x4,3)*POWER(x91,3) + 
     POWER(x4,3)*POWER(x92,3) + POWER(x4,3)*POWER(x93,3) + POWER(x4,3)*POWER(
     x94,3) + POWER(x4,3)*POWER(x95,3) + POWER(x4,3)*POWER(x96,3) + POWER(x4,3)
     *POWER(x97,3) + POWER(x4,3)*POWER(x98,3) + POWER(x4,3)*POWER(x99,3) + 
     POWER(x4,3)*POWER(x100,3) + POWER(x5,3)*POWER(x1,3) + POWER(x5,3)*POWER(x2
     ,3) + POWER(x5,3)*POWER(x3,3) + POWER(x5,3)*POWER(x4,3) + POWER(x5,3)*
     POWER(x5,3) + POWER(x5,3)*POWER(x6,3) + POWER(x5,3)*POWER(x7,3) + POWER(x5
     ,3)*POWER(x8,3) + POWER(x5,3)*POWER(x9,3) + POWER(x5,3)*POWER(x10,3) + 
     POWER(x5,3)*POWER(x11,3) + POWER(x5,3)*POWER(x12,3) + POWER(x5,3)*POWER(
     x13,3) + POWER(x5,3)*POWER(x14,3) + POWER(x5,3)*POWER(x15,3) + POWER(x5,3)
     *POWER(x16,3) + POWER(x5,3)*POWER(x17,3) + POWER(x5,3)*POWER(x18,3) + 
     POWER(x5,3)*POWER(x19,3) + POWER(x5,3)*POWER(x20,3) + POWER(x5,3)*POWER(
     x21,3) + POWER(x5,3)*POWER(x22,3) + POWER(x5,3)*POWER(x23,3) + POWER(x5,3)
     *POWER(x24,3) + POWER(x5,3)*POWER(x25,3) + POWER(x5,3)*POWER(x26,3) + 
     POWER(x5,3)*POWER(x27,3) + POWER(x5,3)*POWER(x28,3) + POWER(x5,3)*POWER(
     x29,3) + POWER(x5,3)*POWER(x30,3) + POWER(x5,3)*POWER(x31,3) + POWER(x5,3)
     *POWER(x32,3) + POWER(x5,3)*POWER(x33,3) + POWER(x5,3)*POWER(x34,3) + 
     POWER(x5,3)*POWER(x35,3) + POWER(x5,3)*POWER(x36,3) + POWER(x5,3)*POWER(
     x37,3) + POWER(x5,3)*POWER(x38,3) + POWER(x5,3)*POWER(x39,3) + POWER(x5,3)
     *POWER(x40,3) + POWER(x5,3)*POWER(x41,3) + POWER(x5,3)*POWER(x42,3) + 
     POWER(x5,3)*POWER(x43,3) + POWER(x5,3)*POWER(x44,3) + POWER(x5,3)*POWER(
     x45,3) + POWER(x5,3)*POWER(x46,3) + POWER(x5,3)*POWER(x47,3) + POWER(x5,3)
     *POWER(x48,3) + POWER(x5,3)*POWER(x49,3) + POWER(x5,3)*POWER(x50,3) + 
     POWER(x5,3)*POWER(x51,3) + POWER(x5,3)*POWER(x52,3) + POWER(x5,3)*POWER(
     x53,3) + POWER(x5,3)*POWER(x54,3) + POWER(x5,3)*POWER(x55,3) + POWER(x5,3)
     *POWER(x56,3) + POWER(x5,3)*POWER(x57,3) + POWER(x5,3)*POWER(x58,3) + 
     POWER(x5,3)*POWER(x59,3) + POWER(x5,3)*POWER(x60,3) + POWER(x5,3)*POWER(
     x61,3) + POWER(x5,3)*POWER(x62,3) + POWER(x5,3)*POWER(x63,3) + POWER(x5,3)
     *POWER(x64,3) + POWER(x5,3)*POWER(x65,3) + POWER(x5,3)*POWER(x66,3) + 
     POWER(x5,3)*POWER(x67,3) + POWER(x5,3)*POWER(x68,3) + POWER(x5,3)*POWER(
     x69,3) + POWER(x5,3)*POWER(x70,3) + POWER(x5,3)*POWER(x71,3) + POWER(x5,3)
     *POWER(x72,3) + POWER(x5,3)*POWER(x73,3) + POWER(x5,3)*POWER(x74,3) + 
     POWER(x5,3)*POWER(x75,3) + POWER(x5,3)*POWER(x76,3) + POWER(x5,3)*POWER(
     x77,3) + POWER(x5,3)*POWER(x78,3) + POWER(x5,3)*POWER(x79,3) + POWER(x5,3)
     *POWER(x80,3) + POWER(x5,3)*POWER(x81,3) + POWER(x5,3)*POWER(x82,3) + 
     POWER(x5,3)*POWER(x83,3) + POWER(x5,3)*POWER(x84,3) + POWER(x5,3)*POWER(
     x85,3) + POWER(x5,3)*POWER(x86,3) + POWER(x5,3)*POWER(x87,3) + POWER(x5,3)
     *POWER(x88,3) + POWER(x5,3)*POWER(x89,3) + POWER(x5,3)*POWER(x90,3) + 
     POWER(x5,3)*POWER(x91,3) + POWER(x5,3)*POWER(x92,3) + POWER(x5,3)*POWER(
     x93,3) + POWER(x5,3)*POWER(x94,3) + POWER(x5,3)*POWER(x95,3) + POWER(x5,3)
     *POWER(x96,3) + POWER(x5,3)*POWER(x97,3) + POWER(x5,3)*POWER(x98,3) + 
     POWER(x5,3)*POWER(x99,3) + POWER(x5,3)*POWER(x100,3) + POWER(x6,3)*POWER(
     x1,3) + POWER(x6,3)*POWER(x2,3) + POWER(x6,3)*POWER(x3,3) + POWER(x6,3)*
     POWER(x4,3) + POWER(x6,3)*POWER(x5,3) + POWER(x6,3)*POWER(x6,3) + POWER(x6
     ,3)*POWER(x7,3) + POWER(x6,3)*POWER(x8,3) + POWER(x6,3)*POWER(x9,3) + 
     POWER(x6,3)*POWER(x10,3) + POWER(x6,3)*POWER(x11,3) + POWER(x6,3)*POWER(
     x12,3) + POWER(x6,3)*POWER(x13,3) + POWER(x6,3)*POWER(x14,3) + POWER(x6,3)
     *POWER(x15,3) + POWER(x6,3)*POWER(x16,3) + POWER(x6,3)*POWER(x17,3) + 
     POWER(x6,3)*POWER(x18,3) + POWER(x6,3)*POWER(x19,3) + POWER(x6,3)*POWER(
     x20,3) + POWER(x6,3)*POWER(x21,3) + POWER(x6,3)*POWER(x22,3) + POWER(x6,3)
     *POWER(x23,3) + POWER(x6,3)*POWER(x24,3) + POWER(x6,3)*POWER(x25,3) + 
     POWER(x6,3)*POWER(x26,3) + POWER(x6,3)*POWER(x27,3) + POWER(x6,3)*POWER(
     x28,3) + POWER(x6,3)*POWER(x29,3) + POWER(x6,3)*POWER(x30,3) + POWER(x6,3)
     *POWER(x31,3) + POWER(x6,3)*POWER(x32,3) + POWER(x6,3)*POWER(x33,3) + 
     POWER(x6,3)*POWER(x34,3) + POWER(x6,3)*POWER(x35,3) + POWER(x6,3)*POWER(
     x36,3) + POWER(x6,3)*POWER(x37,3) + POWER(x6,3)*POWER(x38,3) + POWER(x6,3)
     *POWER(x39,3) + POWER(x6,3)*POWER(x40,3) + POWER(x6,3)*POWER(x41,3) + 
     POWER(x6,3)*POWER(x42,3) + POWER(x6,3)*POWER(x43,3) + POWER(x6,3)*POWER(
     x44,3) + POWER(x6,3)*POWER(x45,3) + POWER(x6,3)*POWER(x46,3) + POWER(x6,3)
     *POWER(x47,3) + POWER(x6,3)*POWER(x48,3) + POWER(x6,3)*POWER(x49,3) + 
     POWER(x6,3)*POWER(x50,3) + POWER(x6,3)*POWER(x51,3) + POWER(x6,3)*POWER(
     x52,3) + POWER(x6,3)*POWER(x53,3) + POWER(x6,3)*POWER(x54,3) + POWER(x6,3)
     *POWER(x55,3) + POWER(x6,3)*POWER(x56,3) + POWER(x6,3)*POWER(x57,3) + 
     POWER(x6,3)*POWER(x58,3) + POWER(x6,3)*POWER(x59,3) + POWER(x6,3)*POWER(
     x60,3) + POWER(x6,3)*POWER(x61,3) + POWER(x6,3)*POWER(x62,3) + POWER(x6,3)
     *POWER(x63,3) + POWER(x6,3)*POWER(x64,3) + POWER(x6,3)*POWER(x65,3) + 
     POWER(x6,3)*POWER(x66,3) + POWER(x6,3)*POWER(x67,3) + POWER(x6,3)*POWER(
     x68,3) + POWER(x6,3)*POWER(x69,3) + POWER(x6,3)*POWER(x70,3) + POWER(x6,3)
     *POWER(x71,3) + POWER(x6,3)*POWER(x72,3) + POWER(x6,3)*POWER(x73,3) + 
     POWER(x6,3)*POWER(x74,3) + POWER(x6,3)*POWER(x75,3) + POWER(x6,3)*POWER(
     x76,3) + POWER(x6,3)*POWER(x77,3) + POWER(x6,3)*POWER(x78,3) + POWER(x6,3)
     *POWER(x79,3) + POWER(x6,3)*POWER(x80,3) + POWER(x6,3)*POWER(x81,3) + 
     POWER(x6,3)*POWER(x82,3) + POWER(x6,3)*POWER(x83,3) + POWER(x6,3)*POWER(
     x84,3) + POWER(x6,3)*POWER(x85,3) + POWER(x6,3)*POWER(x86,3) + POWER(x6,3)
     *POWER(x87,3) + POWER(x6,3)*POWER(x88,3) + POWER(x6,3)*POWER(x89,3) + 
     POWER(x6,3)*POWER(x90,3) + POWER(x6,3)*POWER(x91,3) + POWER(x6,3)*POWER(
     x92,3) + POWER(x6,3)*POWER(x93,3) + POWER(x6,3)*POWER(x94,3) + POWER(x6,3)
     *POWER(x95,3) + POWER(x6,3)*POWER(x96,3) + POWER(x6,3)*POWER(x97,3) + 
     POWER(x6,3)*POWER(x98,3) + POWER(x6,3)*POWER(x99,3) + POWER(x6,3)*POWER(
     x100,3) + POWER(x7,3)*POWER(x1,3) + POWER(x7,3)*POWER(x2,3) + POWER(x7,3)*
     POWER(x3,3) + POWER(x7,3)*POWER(x4,3) + POWER(x7,3)*POWER(x5,3) + POWER(x7
     ,3)*POWER(x6,3) + POWER(x7,3)*POWER(x7,3) + POWER(x7,3)*POWER(x8,3) + 
     POWER(x7,3)*POWER(x9,3) + POWER(x7,3)*POWER(x10,3) + POWER(x7,3)*POWER(x11
     ,3) + POWER(x7,3)*POWER(x12,3) + POWER(x7,3)*POWER(x13,3) + POWER(x7,3)*
     POWER(x14,3) + POWER(x7,3)*POWER(x15,3) + POWER(x7,3)*POWER(x16,3) + 
     POWER(x7,3)*POWER(x17,3) + POWER(x7,3)*POWER(x18,3) + POWER(x7,3)*POWER(
     x19,3) + POWER(x7,3)*POWER(x20,3) + POWER(x7,3)*POWER(x21,3) + POWER(x7,3)
     *POWER(x22,3) + POWER(x7,3)*POWER(x23,3) + POWER(x7,3)*POWER(x24,3) + 
     POWER(x7,3)*POWER(x25,3) + POWER(x7,3)*POWER(x26,3) + POWER(x7,3)*POWER(
     x27,3) + POWER(x7,3)*POWER(x28,3) + POWER(x7,3)*POWER(x29,3) + POWER(x7,3)
     *POWER(x30,3) + POWER(x7,3)*POWER(x31,3) + POWER(x7,3)*POWER(x32,3) + 
     POWER(x7,3)*POWER(x33,3) + POWER(x7,3)*POWER(x34,3) + POWER(x7,3)*POWER(
     x35,3) + POWER(x7,3)*POWER(x36,3) + POWER(x7,3)*POWER(x37,3) + POWER(x7,3)
     *POWER(x38,3) + POWER(x7,3)*POWER(x39,3) + POWER(x7,3)*POWER(x40,3) + 
     POWER(x7,3)*POWER(x41,3) + POWER(x7,3)*POWER(x42,3) + POWER(x7,3)*POWER(
     x43,3) + POWER(x7,3)*POWER(x44,3) + POWER(x7,3)*POWER(x45,3) + POWER(x7,3)
     *POWER(x46,3) + POWER(x7,3)*POWER(x47,3) + POWER(x7,3)*POWER(x48,3) + 
     POWER(x7,3)*POWER(x49,3) + POWER(x7,3)*POWER(x50,3) + POWER(x7,3)*POWER(
     x51,3) + POWER(x7,3)*POWER(x52,3) + POWER(x7,3)*POWER(x53,3) + POWER(x7,3)
     *POWER(x54,3) + POWER(x7,3)*POWER(x55,3) + POWER(x7,3)*POWER(x56,3) + 
     POWER(x7,3)*POWER(x57,3) + POWER(x7,3)*POWER(x58,3) + POWER(x7,3)*POWER(
     x59,3) + POWER(x7,3)*POWER(x60,3) + POWER(x7,3)*POWER(x61,3) + POWER(x7,3)
     *POWER(x62,3) + POWER(x7,3)*POWER(x63,3) + POWER(x7,3)*POWER(x64,3) + 
     POWER(x7,3)*POWER(x65,3) + POWER(x7,3)*POWER(x66,3) + POWER(x7,3)*POWER(
     x67,3) + POWER(x7,3)*POWER(x68,3) + POWER(x7,3)*POWER(x69,3) + POWER(x7,3)
     *POWER(x70,3) + POWER(x7,3)*POWER(x71,3) + POWER(x7,3)*POWER(x72,3) + 
     POWER(x7,3)*POWER(x73,3) + POWER(x7,3)*POWER(x74,3) + POWER(x7,3)*POWER(
     x75,3) + POWER(x7,3)*POWER(x76,3) + POWER(x7,3)*POWER(x77,3) + POWER(x7,3)
     *POWER(x78,3) + POWER(x7,3)*POWER(x79,3) + POWER(x7,3)*POWER(x80,3) + 
     POWER(x7,3)*POWER(x81,3) + POWER(x7,3)*POWER(x82,3) + POWER(x7,3)*POWER(
     x83,3) + POWER(x7,3)*POWER(x84,3) + POWER(x7,3)*POWER(x85,3) + POWER(x7,3)
     *POWER(x86,3) + POWER(x7,3)*POWER(x87,3) + POWER(x7,3)*POWER(x88,3) + 
     POWER(x7,3)*POWER(x89,3) + POWER(x7,3)*POWER(x90,3) + POWER(x7,3)*POWER(
     x91,3) + POWER(x7,3)*POWER(x92,3) + POWER(x7,3)*POWER(x93,3) + POWER(x7,3)
     *POWER(x94,3) + POWER(x7,3)*POWER(x95,3) + POWER(x7,3)*POWER(x96,3) + 
     POWER(x7,3)*POWER(x97,3) + POWER(x7,3)*POWER(x98,3) + POWER(x7,3)*POWER(
     x99,3) + POWER(x7,3)*POWER(x100,3) + POWER(x8,3)*POWER(x1,3) + POWER(x8,3)
     *POWER(x2,3) + POWER(x8,3)*POWER(x3,3) + POWER(x8,3)*POWER(x4,3) + POWER(
     x8,3)*POWER(x5,3) + POWER(x8,3)*POWER(x6,3) + POWER(x8,3)*POWER(x7,3) + 
     POWER(x8,3)*POWER(x8,3) + POWER(x8,3)*POWER(x9,3) + POWER(x8,3)*POWER(x10,
     3) + POWER(x8,3)*POWER(x11,3) + POWER(x8,3)*POWER(x12,3) + POWER(x8,3)*
     POWER(x13,3) + POWER(x8,3)*POWER(x14,3) + POWER(x8,3)*POWER(x15,3) + 
     POWER(x8,3)*POWER(x16,3) + POWER(x8,3)*POWER(x17,3) + POWER(x8,3)*POWER(
     x18,3) + POWER(x8,3)*POWER(x19,3) + POWER(x8,3)*POWER(x20,3) + POWER(x8,3)
     *POWER(x21,3) + POWER(x8,3)*POWER(x22,3) + POWER(x8,3)*POWER(x23,3) + 
     POWER(x8,3)*POWER(x24,3) + POWER(x8,3)*POWER(x25,3) + POWER(x8,3)*POWER(
     x26,3) + POWER(x8,3)*POWER(x27,3) + POWER(x8,3)*POWER(x28,3) + POWER(x8,3)
     *POWER(x29,3) + POWER(x8,3)*POWER(x30,3) + POWER(x8,3)*POWER(x31,3) + 
     POWER(x8,3)*POWER(x32,3) + POWER(x8,3)*POWER(x33,3) + POWER(x8,3)*POWER(
     x34,3) + POWER(x8,3)*POWER(x35,3) + POWER(x8,3)*POWER(x36,3) + POWER(x8,3)
     *POWER(x37,3) + POWER(x8,3)*POWER(x38,3) + POWER(x8,3)*POWER(x39,3) + 
     POWER(x8,3)*POWER(x40,3) + POWER(x8,3)*POWER(x41,3) + POWER(x8,3)*POWER(
     x42,3) + POWER(x8,3)*POWER(x43,3) + POWER(x8,3)*POWER(x44,3) + POWER(x8,3)
     *POWER(x45,3) + POWER(x8,3)*POWER(x46,3) + POWER(x8,3)*POWER(x47,3) + 
     POWER(x8,3)*POWER(x48,3) + POWER(x8,3)*POWER(x49,3) + POWER(x8,3)*POWER(
     x50,3) + POWER(x8,3)*POWER(x51,3) + POWER(x8,3)*POWER(x52,3) + POWER(x8,3)
     *POWER(x53,3) + POWER(x8,3)*POWER(x54,3) + POWER(x8,3)*POWER(x55,3) + 
     POWER(x8,3)*POWER(x56,3) + POWER(x8,3)*POWER(x57,3) + POWER(x8,3)*POWER(
     x58,3) + POWER(x8,3)*POWER(x59,3) + POWER(x8,3)*POWER(x60,3) + POWER(x8,3)
     *POWER(x61,3) + POWER(x8,3)*POWER(x62,3) + POWER(x8,3)*POWER(x63,3) + 
     POWER(x8,3)*POWER(x64,3) + POWER(x8,3)*POWER(x65,3) + POWER(x8,3)*POWER(
     x66,3) + POWER(x8,3)*POWER(x67,3) + POWER(x8,3)*POWER(x68,3) + POWER(x8,3)
     *POWER(x69,3) + POWER(x8,3)*POWER(x70,3) + POWER(x8,3)*POWER(x71,3) + 
     POWER(x8,3)*POWER(x72,3) + POWER(x8,3)*POWER(x73,3) + POWER(x8,3)*POWER(
     x74,3) + POWER(x8,3)*POWER(x75,3) + POWER(x8,3)*POWER(x76,3) + POWER(x8,3)
     *POWER(x77,3) + POWER(x8,3)*POWER(x78,3) + POWER(x8,3)*POWER(x79,3) + 
     POWER(x8,3)*POWER(x80,3) + POWER(x8,3)*POWER(x81,3) + POWER(x8,3)*POWER(
     x82,3) + POWER(x8,3)*POWER(x83,3) + POWER(x8,3)*POWER(x84,3) + POWER(x8,3)
     *POWER(x85,3) + POWER(x8,3)*POWER(x86,3) + POWER(x8,3)*POWER(x87,3) + 
     POWER(x8,3)*POWER(x88,3) + POWER(x8,3)*POWER(x89,3) + POWER(x8,3)*POWER(
     x90,3) + POWER(x8,3)*POWER(x91,3) + POWER(x8,3)*POWER(x92,3) + POWER(x8,3)
     *POWER(x93,3) + POWER(x8,3)*POWER(x94,3) + POWER(x8,3)*POWER(x95,3) + 
     POWER(x8,3)*POWER(x96,3) + POWER(x8,3)*POWER(x97,3) + POWER(x8,3)*POWER(
     x98,3) + POWER(x8,3)*POWER(x99,3) + POWER(x8,3)*POWER(x100,3) + POWER(x9,3
     )*POWER(x1,3) + POWER(x9,3)*POWER(x2,3) + POWER(x9,3)*POWER(x3,3) + POWER(
     x9,3)*POWER(x4,3) + POWER(x9,3)*POWER(x5,3) + POWER(x9,3)*POWER(x6,3) + 
     POWER(x9,3)*POWER(x7,3) + POWER(x9,3)*POWER(x8,3) + POWER(x9,3)*POWER(x9,3
     ) + POWER(x9,3)*POWER(x10,3) + POWER(x9,3)*POWER(x11,3) + POWER(x9,3)*
     POWER(x12,3) + POWER(x9,3)*POWER(x13,3) + POWER(x9,3)*POWER(x14,3) + 
     POWER(x9,3)*POWER(x15,3) + POWER(x9,3)*POWER(x16,3) + POWER(x9,3)*POWER(
     x17,3) + POWER(x9,3)*POWER(x18,3) + POWER(x9,3)*POWER(x19,3) + POWER(x9,3)
     *POWER(x20,3) + POWER(x9,3)*POWER(x21,3) + POWER(x9,3)*POWER(x22,3) + 
     POWER(x9,3)*POWER(x23,3) + POWER(x9,3)*POWER(x24,3) + POWER(x9,3)*POWER(
     x25,3) + POWER(x9,3)*POWER(x26,3) + POWER(x9,3)*POWER(x27,3) + POWER(x9,3)
     *POWER(x28,3) + POWER(x9,3)*POWER(x29,3) + POWER(x9,3)*POWER(x30,3) + 
     POWER(x9,3)*POWER(x31,3) + POWER(x9,3)*POWER(x32,3) + POWER(x9,3)*POWER(
     x33,3) + POWER(x9,3)*POWER(x34,3) + POWER(x9,3)*POWER(x35,3) + POWER(x9,3)
     *POWER(x36,3) + POWER(x9,3)*POWER(x37,3) + POWER(x9,3)*POWER(x38,3) + 
     POWER(x9,3)*POWER(x39,3) + POWER(x9,3)*POWER(x40,3) + POWER(x9,3)*POWER(
     x41,3) + POWER(x9,3)*POWER(x42,3) + POWER(x9,3)*POWER(x43,3) + POWER(x9,3)
     *POWER(x44,3) + POWER(x9,3)*POWER(x45,3) + POWER(x9,3)*POWER(x46,3) + 
     POWER(x9,3)*POWER(x47,3) + POWER(x9,3)*POWER(x48,3) + POWER(x9,3)*POWER(
     x49,3) + POWER(x9,3)*POWER(x50,3) + POWER(x9,3)*POWER(x51,3) + POWER(x9,3)
     *POWER(x52,3) + POWER(x9,3)*POWER(x53,3) + POWER(x9,3)*POWER(x54,3) + 
     POWER(x9,3)*POWER(x55,3) + POWER(x9,3)*POWER(x56,3) + POWER(x9,3)*POWER(
     x57,3) + POWER(x9,3)*POWER(x58,3) + POWER(x9,3)*POWER(x59,3) + POWER(x9,3)
     *POWER(x60,3) + POWER(x9,3)*POWER(x61,3) + POWER(x9,3)*POWER(x62,3) + 
     POWER(x9,3)*POWER(x63,3) + POWER(x9,3)*POWER(x64,3) + POWER(x9,3)*POWER(
     x65,3) + POWER(x9,3)*POWER(x66,3) + POWER(x9,3)*POWER(x67,3) + POWER(x9,3)
     *POWER(x68,3) + POWER(x9,3)*POWER(x69,3) + POWER(x9,3)*POWER(x70,3) + 
     POWER(x9,3)*POWER(x71,3) + POWER(x9,3)*POWER(x72,3) + POWER(x9,3)*POWER(
     x73,3) + POWER(x9,3)*POWER(x74,3) + POWER(x9,3)*POWER(x75,3) + POWER(x9,3)
     *POWER(x76,3) + POWER(x9,3)*POWER(x77,3) + POWER(x9,3)*POWER(x78,3) + 
     POWER(x9,3)*POWER(x79,3) + POWER(x9,3)*POWER(x80,3) + POWER(x9,3)*POWER(
     x81,3) + POWER(x9,3)*POWER(x82,3) + POWER(x9,3)*POWER(x83,3) + POWER(x9,3)
     *POWER(x84,3) + POWER(x9,3)*POWER(x85,3) + POWER(x9,3)*POWER(x86,3) + 
     POWER(x9,3)*POWER(x87,3) + POWER(x9,3)*POWER(x88,3) + POWER(x9,3)*POWER(
     x89,3) + POWER(x9,3)*POWER(x90,3) + POWER(x9,3)*POWER(x91,3) + POWER(x9,3)
     *POWER(x92,3) + POWER(x9,3)*POWER(x93,3) + POWER(x9,3)*POWER(x94,3) + 
     POWER(x9,3)*POWER(x95,3) + POWER(x9,3)*POWER(x96,3) + POWER(x9,3)*POWER(
     x97,3) + POWER(x9,3)*POWER(x98,3) + POWER(x9,3)*POWER(x99,3) + POWER(x9,3)
     *POWER(x100,3) + POWER(x10,3)*POWER(x1,3) + POWER(x10,3)*POWER(x2,3) + 
     POWER(x10,3)*POWER(x3,3) + POWER(x10,3)*POWER(x4,3) + POWER(x10,3)*POWER(
     x5,3) + POWER(x10,3)*POWER(x6,3) + POWER(x10,3)*POWER(x7,3) + POWER(x10,3)
     *POWER(x8,3) + POWER(x10,3)*POWER(x9,3) + POWER(x10,3)*POWER(x10,3) + 
     POWER(x10,3)*POWER(x11,3) + POWER(x10,3)*POWER(x12,3) + POWER(x10,3)*
     POWER(x13,3) + POWER(x10,3)*POWER(x14,3) + POWER(x10,3)*POWER(x15,3) + 
     POWER(x10,3)*POWER(x16,3) + POWER(x10,3)*POWER(x17,3) + POWER(x10,3)*
     POWER(x18,3) + POWER(x10,3)*POWER(x19,3) + POWER(x10,3)*POWER(x20,3) + 
     POWER(x10,3)*POWER(x21,3) + POWER(x10,3)*POWER(x22,3) + POWER(x10,3)*
     POWER(x23,3) + POWER(x10,3)*POWER(x24,3) + POWER(x10,3)*POWER(x25,3) + 
     POWER(x10,3)*POWER(x26,3) + POWER(x10,3)*POWER(x27,3) + POWER(x10,3)*
     POWER(x28,3) + POWER(x10,3)*POWER(x29,3) + POWER(x10,3)*POWER(x30,3) + 
     POWER(x10,3)*POWER(x31,3) + POWER(x10,3)*POWER(x32,3) + POWER(x10,3)*
     POWER(x33,3) + POWER(x10,3)*POWER(x34,3) + POWER(x10,3)*POWER(x35,3) + 
     POWER(x10,3)*POWER(x36,3) + POWER(x10,3)*POWER(x37,3) + POWER(x10,3)*
     POWER(x38,3) + POWER(x10,3)*POWER(x39,3) + POWER(x10,3)*POWER(x40,3) + 
     POWER(x10,3)*POWER(x41,3) + POWER(x10,3)*POWER(x42,3) + POWER(x10,3)*
     POWER(x43,3) + POWER(x10,3)*POWER(x44,3) + POWER(x10,3)*POWER(x45,3) + 
     POWER(x10,3)*POWER(x46,3) + POWER(x10,3)*POWER(x47,3) + POWER(x10,3)*
     POWER(x48,3) + POWER(x10,3)*POWER(x49,3) + POWER(x10,3)*POWER(x50,3) + 
     POWER(x10,3)*POWER(x51,3) + POWER(x10,3)*POWER(x52,3) + POWER(x10,3)*
     POWER(x53,3) + POWER(x10,3)*POWER(x54,3) + POWER(x10,3)*POWER(x55,3) + 
     POWER(x10,3)*POWER(x56,3) + POWER(x10,3)*POWER(x57,3) + POWER(x10,3)*
     POWER(x58,3) + POWER(x10,3)*POWER(x59,3) + POWER(x10,3)*POWER(x60,3) + 
     POWER(x10,3)*POWER(x61,3) + POWER(x10,3)*POWER(x62,3) + POWER(x10,3)*
     POWER(x63,3) + POWER(x10,3)*POWER(x64,3) + POWER(x10,3)*POWER(x65,3) + 
     POWER(x10,3)*POWER(x66,3) + POWER(x10,3)*POWER(x67,3) + POWER(x10,3)*
     POWER(x68,3) + POWER(x10,3)*POWER(x69,3) + POWER(x10,3)*POWER(x70,3) + 
     POWER(x10,3)*POWER(x71,3) + POWER(x10,3)*POWER(x72,3) + POWER(x10,3)*
     POWER(x73,3) + POWER(x10,3)*POWER(x74,3) + POWER(x10,3)*POWER(x75,3) + 
     POWER(x10,3)*POWER(x76,3) + POWER(x10,3)*POWER(x77,3) + POWER(x10,3)*
     POWER(x78,3) + POWER(x10,3)*POWER(x79,3) + POWER(x10,3)*POWER(x80,3) + 
     POWER(x10,3)*POWER(x81,3) + POWER(x10,3)*POWER(x82,3) + POWER(x10,3)*
     POWER(x83,3) + POWER(x10,3)*POWER(x84,3) + POWER(x10,3)*POWER(x85,3) + 
     POWER(x10,3)*POWER(x86,3) + POWER(x10,3)*POWER(x87,3) + POWER(x10,3)*
     POWER(x88,3) + POWER(x10,3)*POWER(x89,3) + POWER(x10,3)*POWER(x90,3) + 
     POWER(x10,3)*POWER(x91,3) + POWER(x10,3)*POWER(x92,3) + POWER(x10,3)*
     POWER(x93,3) + POWER(x10,3)*POWER(x94,3) + POWER(x10,3)*POWER(x95,3) + 
     POWER(x10,3)*POWER(x96,3) + POWER(x10,3)*POWER(x97,3) + POWER(x10,3)*
     POWER(x98,3) + POWER(x10,3)*POWER(x99,3) + POWER(x10,3)*POWER(x100,3) + 
     POWER(x11,3)*POWER(x1,3) + POWER(x11,3)*POWER(x2,3) + POWER(x11,3)*POWER(
     x3,3) + POWER(x11,3)*POWER(x4,3) + POWER(x11,3)*POWER(x5,3) + POWER(x11,3)
     *POWER(x6,3) + POWER(x11,3)*POWER(x7,3) + POWER(x11,3)*POWER(x8,3) + 
     POWER(x11,3)*POWER(x9,3) + POWER(x11,3)*POWER(x10,3) + POWER(x11,3)*POWER(
     x11,3) + POWER(x11,3)*POWER(x12,3) + POWER(x11,3)*POWER(x13,3) + POWER(x11
     ,3)*POWER(x14,3) + POWER(x11,3)*POWER(x15,3) + POWER(x11,3)*POWER(x16,3)
      + POWER(x11,3)*POWER(x17,3) + POWER(x11,3)*POWER(x18,3) + POWER(x11,3)*
     POWER(x19,3) + POWER(x11,3)*POWER(x20,3) + POWER(x11,3)*POWER(x21,3) + 
     POWER(x11,3)*POWER(x22,3) + POWER(x11,3)*POWER(x23,3) + POWER(x11,3)*
     POWER(x24,3) + POWER(x11,3)*POWER(x25,3) + POWER(x11,3)*POWER(x26,3) + 
     POWER(x11,3)*POWER(x27,3) + POWER(x11,3)*POWER(x28,3) + POWER(x11,3)*
     POWER(x29,3) + POWER(x11,3)*POWER(x30,3) + POWER(x11,3)*POWER(x31,3) + 
     POWER(x11,3)*POWER(x32,3) + POWER(x11,3)*POWER(x33,3) + POWER(x11,3)*
     POWER(x34,3) + POWER(x11,3)*POWER(x35,3) + POWER(x11,3)*POWER(x36,3) + 
     POWER(x11,3)*POWER(x37,3) + POWER(x11,3)*POWER(x38,3) + POWER(x11,3)*
     POWER(x39,3) + POWER(x11,3)*POWER(x40,3) + POWER(x11,3)*POWER(x41,3) + 
     POWER(x11,3)*POWER(x42,3) + POWER(x11,3)*POWER(x43,3) + POWER(x11,3)*
     POWER(x44,3) + POWER(x11,3)*POWER(x45,3) + POWER(x11,3)*POWER(x46,3) + 
     POWER(x11,3)*POWER(x47,3) + POWER(x11,3)*POWER(x48,3) + POWER(x11,3)*
     POWER(x49,3) + POWER(x11,3)*POWER(x50,3) + POWER(x11,3)*POWER(x51,3) + 
     POWER(x11,3)*POWER(x52,3) + POWER(x11,3)*POWER(x53,3) + POWER(x11,3)*
     POWER(x54,3) + POWER(x11,3)*POWER(x55,3) + POWER(x11,3)*POWER(x56,3) + 
     POWER(x11,3)*POWER(x57,3) + POWER(x11,3)*POWER(x58,3) + POWER(x11,3)*
     POWER(x59,3) + POWER(x11,3)*POWER(x60,3) + POWER(x11,3)*POWER(x61,3) + 
     POWER(x11,3)*POWER(x62,3) + POWER(x11,3)*POWER(x63,3) + POWER(x11,3)*
     POWER(x64,3) + POWER(x11,3)*POWER(x65,3) + POWER(x11,3)*POWER(x66,3) + 
     POWER(x11,3)*POWER(x67,3) + POWER(x11,3)*POWER(x68,3) + POWER(x11,3)*
     POWER(x69,3) + POWER(x11,3)*POWER(x70,3) + POWER(x11,3)*POWER(x71,3) + 
     POWER(x11,3)*POWER(x72,3) + POWER(x11,3)*POWER(x73,3) + POWER(x11,3)*
     POWER(x74,3) + POWER(x11,3)*POWER(x75,3) + POWER(x11,3)*POWER(x76,3) + 
     POWER(x11,3)*POWER(x77,3) + POWER(x11,3)*POWER(x78,3) + POWER(x11,3)*
     POWER(x79,3) + POWER(x11,3)*POWER(x80,3) + POWER(x11,3)*POWER(x81,3) + 
     POWER(x11,3)*POWER(x82,3) + POWER(x11,3)*POWER(x83,3) + POWER(x11,3)*
     POWER(x84,3) + POWER(x11,3)*POWER(x85,3) + POWER(x11,3)*POWER(x86,3) + 
     POWER(x11,3)*POWER(x87,3) + POWER(x11,3)*POWER(x88,3) + POWER(x11,3)*
     POWER(x89,3) + POWER(x11,3)*POWER(x90,3) + POWER(x11,3)*POWER(x91,3) + 
     POWER(x11,3)*POWER(x92,3) + POWER(x11,3)*POWER(x93,3) + POWER(x11,3)*
     POWER(x94,3) + POWER(x11,3)*POWER(x95,3) + POWER(x11,3)*POWER(x96,3) + 
     POWER(x11,3)*POWER(x97,3) + POWER(x11,3)*POWER(x98,3) + POWER(x11,3)*
     POWER(x99,3) + POWER(x11,3)*POWER(x100,3) + POWER(x12,3)*POWER(x1,3) + 
     POWER(x12,3)*POWER(x2,3) + POWER(x12,3)*POWER(x3,3) + POWER(x12,3)*POWER(
     x4,3) + POWER(x12,3)*POWER(x5,3) + POWER(x12,3)*POWER(x6,3) + POWER(x12,3)
     *POWER(x7,3) + POWER(x12,3)*POWER(x8,3) + POWER(x12,3)*POWER(x9,3) + 
     POWER(x12,3)*POWER(x10,3) + POWER(x12,3)*POWER(x11,3) + POWER(x12,3)*
     POWER(x12,3) + POWER(x12,3)*POWER(x13,3) + POWER(x12,3)*POWER(x14,3) + 
     POWER(x12,3)*POWER(x15,3) + POWER(x12,3)*POWER(x16,3) + POWER(x12,3)*
     POWER(x17,3) + POWER(x12,3)*POWER(x18,3) + POWER(x12,3)*POWER(x19,3) + 
     POWER(x12,3)*POWER(x20,3) + POWER(x12,3)*POWER(x21,3) + POWER(x12,3)*
     POWER(x22,3) + POWER(x12,3)*POWER(x23,3) + POWER(x12,3)*POWER(x24,3) + 
     POWER(x12,3)*POWER(x25,3) + POWER(x12,3)*POWER(x26,3) + POWER(x12,3)*
     POWER(x27,3) + POWER(x12,3)*POWER(x28,3) + POWER(x12,3)*POWER(x29,3) + 
     POWER(x12,3)*POWER(x30,3) + POWER(x12,3)*POWER(x31,3) + POWER(x12,3)*
     POWER(x32,3) + POWER(x12,3)*POWER(x33,3) + POWER(x12,3)*POWER(x34,3) + 
     POWER(x12,3)*POWER(x35,3) + POWER(x12,3)*POWER(x36,3) + POWER(x12,3)*
     POWER(x37,3) + POWER(x12,3)*POWER(x38,3) + POWER(x12,3)*POWER(x39,3) + 
     POWER(x12,3)*POWER(x40,3) + POWER(x12,3)*POWER(x41,3) + POWER(x12,3)*
     POWER(x42,3) + POWER(x12,3)*POWER(x43,3) + POWER(x12,3)*POWER(x44,3) + 
     POWER(x12,3)*POWER(x45,3) + POWER(x12,3)*POWER(x46,3) + POWER(x12,3)*
     POWER(x47,3) + POWER(x12,3)*POWER(x48,3) + POWER(x12,3)*POWER(x49,3) + 
     POWER(x12,3)*POWER(x50,3) + POWER(x12,3)*POWER(x51,3) + POWER(x12,3)*
     POWER(x52,3) + POWER(x12,3)*POWER(x53,3) + POWER(x12,3)*POWER(x54,3) + 
     POWER(x12,3)*POWER(x55,3) + POWER(x12,3)*POWER(x56,3) + POWER(x12,3)*
     POWER(x57,3) + POWER(x12,3)*POWER(x58,3) + POWER(x12,3)*POWER(x59,3) + 
     POWER(x12,3)*POWER(x60,3) + POWER(x12,3)*POWER(x61,3) + POWER(x12,3)*
     POWER(x62,3) + POWER(x12,3)*POWER(x63,3) + POWER(x12,3)*POWER(x64,3) + 
     POWER(x12,3)*POWER(x65,3) + POWER(x12,3)*POWER(x66,3) + POWER(x12,3)*
     POWER(x67,3) + POWER(x12,3)*POWER(x68,3) + POWER(x12,3)*POWER(x69,3) + 
     POWER(x12,3)*POWER(x70,3) + POWER(x12,3)*POWER(x71,3) + POWER(x12,3)*
     POWER(x72,3) + POWER(x12,3)*POWER(x73,3) + POWER(x12,3)*POWER(x74,3) + 
     POWER(x12,3)*POWER(x75,3) + POWER(x12,3)*POWER(x76,3) + POWER(x12,3)*
     POWER(x77,3) + POWER(x12,3)*POWER(x78,3) + POWER(x12,3)*POWER(x79,3) + 
     POWER(x12,3)*POWER(x80,3) + POWER(x12,3)*POWER(x81,3) + POWER(x12,3)*
     POWER(x82,3) + POWER(x12,3)*POWER(x83,3) + POWER(x12,3)*POWER(x84,3) + 
     POWER(x12,3)*POWER(x85,3) + POWER(x12,3)*POWER(x86,3) + POWER(x12,3)*
     POWER(x87,3) + POWER(x12,3)*POWER(x88,3) + POWER(x12,3)*POWER(x89,3) + 
     POWER(x12,3)*POWER(x90,3) + POWER(x12,3)*POWER(x91,3) + POWER(x12,3)*
     POWER(x92,3) + POWER(x12,3)*POWER(x93,3) + POWER(x12,3)*POWER(x94,3) + 
     POWER(x12,3)*POWER(x95,3) + POWER(x12,3)*POWER(x96,3) + POWER(x12,3)*
     POWER(x97,3) + POWER(x12,3)*POWER(x98,3) + POWER(x12,3)*POWER(x99,3) + 
     POWER(x12,3)*POWER(x100,3) + POWER(x13,3)*POWER(x1,3) + POWER(x13,3)*
     POWER(x2,3) + POWER(x13,3)*POWER(x3,3) + POWER(x13,3)*POWER(x4,3) + POWER(
     x13,3)*POWER(x5,3) + POWER(x13,3)*POWER(x6,3) + POWER(x13,3)*POWER(x7,3)
      + POWER(x13,3)*POWER(x8,3) + POWER(x13,3)*POWER(x9,3) + POWER(x13,3)*
     POWER(x10,3) + POWER(x13,3)*POWER(x11,3) + POWER(x13,3)*POWER(x12,3) + 
     POWER(x13,3)*POWER(x13,3) + POWER(x13,3)*POWER(x14,3) + POWER(x13,3)*
     POWER(x15,3) + POWER(x13,3)*POWER(x16,3) + POWER(x13,3)*POWER(x17,3) + 
     POWER(x13,3)*POWER(x18,3) + POWER(x13,3)*POWER(x19,3) + POWER(x13,3)*
     POWER(x20,3) + POWER(x13,3)*POWER(x21,3) + POWER(x13,3)*POWER(x22,3) + 
     POWER(x13,3)*POWER(x23,3) + POWER(x13,3)*POWER(x24,3) + POWER(x13,3)*
     POWER(x25,3) + POWER(x13,3)*POWER(x26,3) + POWER(x13,3)*POWER(x27,3) + 
     POWER(x13,3)*POWER(x28,3) + POWER(x13,3)*POWER(x29,3) + POWER(x13,3)*
     POWER(x30,3) + POWER(x13,3)*POWER(x31,3) + POWER(x13,3)*POWER(x32,3) + 
     POWER(x13,3)*POWER(x33,3) + POWER(x13,3)*POWER(x34,3) + POWER(x13,3)*
     POWER(x35,3) + POWER(x13,3)*POWER(x36,3) + POWER(x13,3)*POWER(x37,3) + 
     POWER(x13,3)*POWER(x38,3) + POWER(x13,3)*POWER(x39,3) + POWER(x13,3)*
     POWER(x40,3) + POWER(x13,3)*POWER(x41,3) + POWER(x13,3)*POWER(x42,3) + 
     POWER(x13,3)*POWER(x43,3) + POWER(x13,3)*POWER(x44,3) + POWER(x13,3)*
     POWER(x45,3) + POWER(x13,3)*POWER(x46,3) + POWER(x13,3)*POWER(x47,3) + 
     POWER(x13,3)*POWER(x48,3) + POWER(x13,3)*POWER(x49,3) + POWER(x13,3)*
     POWER(x50,3) + POWER(x13,3)*POWER(x51,3) + POWER(x13,3)*POWER(x52,3) + 
     POWER(x13,3)*POWER(x53,3) + POWER(x13,3)*POWER(x54,3) + POWER(x13,3)*
     POWER(x55,3) + POWER(x13,3)*POWER(x56,3) + POWER(x13,3)*POWER(x57,3) + 
     POWER(x13,3)*POWER(x58,3) + POWER(x13,3)*POWER(x59,3) + POWER(x13,3)*
     POWER(x60,3) + POWER(x13,3)*POWER(x61,3) + POWER(x13,3)*POWER(x62,3) + 
     POWER(x13,3)*POWER(x63,3) + POWER(x13,3)*POWER(x64,3) + POWER(x13,3)*
     POWER(x65,3) + POWER(x13,3)*POWER(x66,3) + POWER(x13,3)*POWER(x67,3) + 
     POWER(x13,3)*POWER(x68,3) + POWER(x13,3)*POWER(x69,3) + POWER(x13,3)*
     POWER(x70,3) + POWER(x13,3)*POWER(x71,3) + POWER(x13,3)*POWER(x72,3) + 
     POWER(x13,3)*POWER(x73,3) + POWER(x13,3)*POWER(x74,3) + POWER(x13,3)*
     POWER(x75,3) + POWER(x13,3)*POWER(x76,3) + POWER(x13,3)*POWER(x77,3) + 
     POWER(x13,3)*POWER(x78,3) + POWER(x13,3)*POWER(x79,3) + POWER(x13,3)*
     POWER(x80,3) + POWER(x13,3)*POWER(x81,3) + POWER(x13,3)*POWER(x82,3) + 
     POWER(x13,3)*POWER(x83,3) + POWER(x13,3)*POWER(x84,3) + POWER(x13,3)*
     POWER(x85,3) + POWER(x13,3)*POWER(x86,3) + POWER(x13,3)*POWER(x87,3) + 
     POWER(x13,3)*POWER(x88,3) + POWER(x13,3)*POWER(x89,3) + POWER(x13,3)*
     POWER(x90,3) + POWER(x13,3)*POWER(x91,3) + POWER(x13,3)*POWER(x92,3) + 
     POWER(x13,3)*POWER(x93,3) + POWER(x13,3)*POWER(x94,3) + POWER(x13,3)*
     POWER(x95,3) + POWER(x13,3)*POWER(x96,3) + POWER(x13,3)*POWER(x97,3) + 
     POWER(x13,3)*POWER(x98,3) + POWER(x13,3)*POWER(x99,3) + POWER(x13,3)*
     POWER(x100,3) + POWER(x14,3)*POWER(x1,3) + POWER(x14,3)*POWER(x2,3) + 
     POWER(x14,3)*POWER(x3,3) + POWER(x14,3)*POWER(x4,3) + POWER(x14,3)*POWER(
     x5,3) + POWER(x14,3)*POWER(x6,3) + POWER(x14,3)*POWER(x7,3) + POWER(x14,3)
     *POWER(x8,3) + POWER(x14,3)*POWER(x9,3) + POWER(x14,3)*POWER(x10,3) + 
     POWER(x14,3)*POWER(x11,3) + POWER(x14,3)*POWER(x12,3) + POWER(x14,3)*
     POWER(x13,3) + POWER(x14,3)*POWER(x14,3) + POWER(x14,3)*POWER(x15,3) + 
     POWER(x14,3)*POWER(x16,3) + POWER(x14,3)*POWER(x17,3) + POWER(x14,3)*
     POWER(x18,3) + POWER(x14,3)*POWER(x19,3) + POWER(x14,3)*POWER(x20,3) + 
     POWER(x14,3)*POWER(x21,3) + POWER(x14,3)*POWER(x22,3) + POWER(x14,3)*
     POWER(x23,3) + POWER(x14,3)*POWER(x24,3) + POWER(x14,3)*POWER(x25,3) + 
     POWER(x14,3)*POWER(x26,3) + POWER(x14,3)*POWER(x27,3) + POWER(x14,3)*
     POWER(x28,3) + POWER(x14,3)*POWER(x29,3) + POWER(x14,3)*POWER(x30,3) + 
     POWER(x14,3)*POWER(x31,3) + POWER(x14,3)*POWER(x32,3) + POWER(x14,3)*
     POWER(x33,3) + POWER(x14,3)*POWER(x34,3) + POWER(x14,3)*POWER(x35,3) + 
     POWER(x14,3)*POWER(x36,3) + POWER(x14,3)*POWER(x37,3) + POWER(x14,3)*
     POWER(x38,3) + POWER(x14,3)*POWER(x39,3) + POWER(x14,3)*POWER(x40,3) + 
     POWER(x14,3)*POWER(x41,3) + POWER(x14,3)*POWER(x42,3) + POWER(x14,3)*
     POWER(x43,3) + POWER(x14,3)*POWER(x44,3) + POWER(x14,3)*POWER(x45,3) + 
     POWER(x14,3)*POWER(x46,3) + POWER(x14,3)*POWER(x47,3) + POWER(x14,3)*
     POWER(x48,3) + POWER(x14,3)*POWER(x49,3) + POWER(x14,3)*POWER(x50,3) + 
     POWER(x14,3)*POWER(x51,3) + POWER(x14,3)*POWER(x52,3) + POWER(x14,3)*
     POWER(x53,3) + POWER(x14,3)*POWER(x54,3) + POWER(x14,3)*POWER(x55,3) + 
     POWER(x14,3)*POWER(x56,3) + POWER(x14,3)*POWER(x57,3) + POWER(x14,3)*
     POWER(x58,3) + POWER(x14,3)*POWER(x59,3) + POWER(x14,3)*POWER(x60,3) + 
     POWER(x14,3)*POWER(x61,3) + POWER(x14,3)*POWER(x62,3) + POWER(x14,3)*
     POWER(x63,3) + POWER(x14,3)*POWER(x64,3) + POWER(x14,3)*POWER(x65,3) + 
     POWER(x14,3)*POWER(x66,3) + POWER(x14,3)*POWER(x67,3) + POWER(x14,3)*
     POWER(x68,3) + POWER(x14,3)*POWER(x69,3) + POWER(x14,3)*POWER(x70,3) + 
     POWER(x14,3)*POWER(x71,3) + POWER(x14,3)*POWER(x72,3) + POWER(x14,3)*
     POWER(x73,3) + POWER(x14,3)*POWER(x74,3) + POWER(x14,3)*POWER(x75,3) + 
     POWER(x14,3)*POWER(x76,3) + POWER(x14,3)*POWER(x77,3) + POWER(x14,3)*
     POWER(x78,3) + POWER(x14,3)*POWER(x79,3) + POWER(x14,3)*POWER(x80,3) + 
     POWER(x14,3)*POWER(x81,3) + POWER(x14,3)*POWER(x82,3) + POWER(x14,3)*
     POWER(x83,3) + POWER(x14,3)*POWER(x84,3) + POWER(x14,3)*POWER(x85,3) + 
     POWER(x14,3)*POWER(x86,3) + POWER(x14,3)*POWER(x87,3) + POWER(x14,3)*
     POWER(x88,3) + POWER(x14,3)*POWER(x89,3) + POWER(x14,3)*POWER(x90,3) + 
     POWER(x14,3)*POWER(x91,3) + POWER(x14,3)*POWER(x92,3) + POWER(x14,3)*
     POWER(x93,3) + POWER(x14,3)*POWER(x94,3) + POWER(x14,3)*POWER(x95,3) + 
     POWER(x14,3)*POWER(x96,3) + POWER(x14,3)*POWER(x97,3) + POWER(x14,3)*
     POWER(x98,3) + POWER(x14,3)*POWER(x99,3) + POWER(x14,3)*POWER(x100,3) + 
     POWER(x15,3)*POWER(x1,3) + POWER(x15,3)*POWER(x2,3) + POWER(x15,3)*POWER(
     x3,3) + POWER(x15,3)*POWER(x4,3) + POWER(x15,3)*POWER(x5,3) + POWER(x15,3)
     *POWER(x6,3) + POWER(x15,3)*POWER(x7,3) + POWER(x15,3)*POWER(x8,3) + 
     POWER(x15,3)*POWER(x9,3) + POWER(x15,3)*POWER(x10,3) + POWER(x15,3)*POWER(
     x11,3) + POWER(x15,3)*POWER(x12,3) + POWER(x15,3)*POWER(x13,3) + POWER(x15
     ,3)*POWER(x14,3) + POWER(x15,3)*POWER(x15,3) + POWER(x15,3)*POWER(x16,3)
      + POWER(x15,3)*POWER(x17,3) + POWER(x15,3)*POWER(x18,3) + POWER(x15,3)*
     POWER(x19,3) + POWER(x15,3)*POWER(x20,3) + POWER(x15,3)*POWER(x21,3) + 
     POWER(x15,3)*POWER(x22,3) + POWER(x15,3)*POWER(x23,3) + POWER(x15,3)*
     POWER(x24,3) + POWER(x15,3)*POWER(x25,3) + POWER(x15,3)*POWER(x26,3) + 
     POWER(x15,3)*POWER(x27,3) + POWER(x15,3)*POWER(x28,3) + POWER(x15,3)*
     POWER(x29,3) + POWER(x15,3)*POWER(x30,3) + POWER(x15,3)*POWER(x31,3) + 
     POWER(x15,3)*POWER(x32,3) + POWER(x15,3)*POWER(x33,3) + POWER(x15,3)*
     POWER(x34,3) + POWER(x15,3)*POWER(x35,3) + POWER(x15,3)*POWER(x36,3) + 
     POWER(x15,3)*POWER(x37,3) + POWER(x15,3)*POWER(x38,3) + POWER(x15,3)*
     POWER(x39,3) + POWER(x15,3)*POWER(x40,3) + POWER(x15,3)*POWER(x41,3) + 
     POWER(x15,3)*POWER(x42,3) + POWER(x15,3)*POWER(x43,3) + POWER(x15,3)*
     POWER(x44,3) + POWER(x15,3)*POWER(x45,3) + POWER(x15,3)*POWER(x46,3) + 
     POWER(x15,3)*POWER(x47,3) + POWER(x15,3)*POWER(x48,3) + POWER(x15,3)*
     POWER(x49,3) + POWER(x15,3)*POWER(x50,3) + POWER(x15,3)*POWER(x51,3) + 
     POWER(x15,3)*POWER(x52,3) + POWER(x15,3)*POWER(x53,3) + POWER(x15,3)*
     POWER(x54,3) + POWER(x15,3)*POWER(x55,3) + POWER(x15,3)*POWER(x56,3) + 
     POWER(x15,3)*POWER(x57,3) + POWER(x15,3)*POWER(x58,3) + POWER(x15,3)*
     POWER(x59,3) + POWER(x15,3)*POWER(x60,3) + POWER(x15,3)*POWER(x61,3) + 
     POWER(x15,3)*POWER(x62,3) + POWER(x15,3)*POWER(x63,3) + POWER(x15,3)*
     POWER(x64,3) + POWER(x15,3)*POWER(x65,3) + POWER(x15,3)*POWER(x66,3) + 
     POWER(x15,3)*POWER(x67,3) + POWER(x15,3)*POWER(x68,3) + POWER(x15,3)*
     POWER(x69,3) + POWER(x15,3)*POWER(x70,3) + POWER(x15,3)*POWER(x71,3) + 
     POWER(x15,3)*POWER(x72,3) + POWER(x15,3)*POWER(x73,3) + POWER(x15,3)*
     POWER(x74,3) + POWER(x15,3)*POWER(x75,3) + POWER(x15,3)*POWER(x76,3) + 
     POWER(x15,3)*POWER(x77,3) + POWER(x15,3)*POWER(x78,3) + POWER(x15,3)*
     POWER(x79,3) + POWER(x15,3)*POWER(x80,3) + POWER(x15,3)*POWER(x81,3) + 
     POWER(x15,3)*POWER(x82,3) + POWER(x15,3)*POWER(x83,3) + POWER(x15,3)*
     POWER(x84,3) + POWER(x15,3)*POWER(x85,3) + POWER(x15,3)*POWER(x86,3) + 
     POWER(x15,3)*POWER(x87,3) + POWER(x15,3)*POWER(x88,3) + POWER(x15,3)*
     POWER(x89,3) + POWER(x15,3)*POWER(x90,3) + POWER(x15,3)*POWER(x91,3) + 
     POWER(x15,3)*POWER(x92,3) + POWER(x15,3)*POWER(x93,3) + POWER(x15,3)*
     POWER(x94,3) + POWER(x15,3)*POWER(x95,3) + POWER(x15,3)*POWER(x96,3) + 
     POWER(x15,3)*POWER(x97,3) + POWER(x15,3)*POWER(x98,3) + POWER(x15,3)*
     POWER(x99,3) + POWER(x15,3)*POWER(x100,3) + POWER(x16,3)*POWER(x1,3) + 
     POWER(x16,3)*POWER(x2,3) + POWER(x16,3)*POWER(x3,3) + POWER(x16,3)*POWER(
     x4,3) + POWER(x16,3)*POWER(x5,3) + POWER(x16,3)*POWER(x6,3) + POWER(x16,3)
     *POWER(x7,3) + POWER(x16,3)*POWER(x8,3) + POWER(x16,3)*POWER(x9,3) + 
     POWER(x16,3)*POWER(x10,3) + POWER(x16,3)*POWER(x11,3) + POWER(x16,3)*
     POWER(x12,3) + POWER(x16,3)*POWER(x13,3) + POWER(x16,3)*POWER(x14,3) + 
     POWER(x16,3)*POWER(x15,3) + POWER(x16,3)*POWER(x16,3) + POWER(x16,3)*
     POWER(x17,3) + POWER(x16,3)*POWER(x18,3) + POWER(x16,3)*POWER(x19,3) + 
     POWER(x16,3)*POWER(x20,3) + POWER(x16,3)*POWER(x21,3) + POWER(x16,3)*
     POWER(x22,3) + POWER(x16,3)*POWER(x23,3) + POWER(x16,3)*POWER(x24,3) + 
     POWER(x16,3)*POWER(x25,3) + POWER(x16,3)*POWER(x26,3) + POWER(x16,3)*
     POWER(x27,3) + POWER(x16,3)*POWER(x28,3) + POWER(x16,3)*POWER(x29,3) + 
     POWER(x16,3)*POWER(x30,3) + POWER(x16,3)*POWER(x31,3) + POWER(x16,3)*
     POWER(x32,3) + POWER(x16,3)*POWER(x33,3) + POWER(x16,3)*POWER(x34,3) + 
     POWER(x16,3)*POWER(x35,3) + POWER(x16,3)*POWER(x36,3) + POWER(x16,3)*
     POWER(x37,3) + POWER(x16,3)*POWER(x38,3) + POWER(x16,3)*POWER(x39,3) + 
     POWER(x16,3)*POWER(x40,3) + POWER(x16,3)*POWER(x41,3) + POWER(x16,3)*
     POWER(x42,3) + POWER(x16,3)*POWER(x43,3) + POWER(x16,3)*POWER(x44,3) + 
     POWER(x16,3)*POWER(x45,3) + POWER(x16,3)*POWER(x46,3) + POWER(x16,3)*
     POWER(x47,3) + POWER(x16,3)*POWER(x48,3) + POWER(x16,3)*POWER(x49,3) + 
     POWER(x16,3)*POWER(x50,3) + POWER(x16,3)*POWER(x51,3) + POWER(x16,3)*
     POWER(x52,3) + POWER(x16,3)*POWER(x53,3) + POWER(x16,3)*POWER(x54,3) + 
     POWER(x16,3)*POWER(x55,3) + POWER(x16,3)*POWER(x56,3) + POWER(x16,3)*
     POWER(x57,3) + POWER(x16,3)*POWER(x58,3) + POWER(x16,3)*POWER(x59,3) + 
     POWER(x16,3)*POWER(x60,3) + POWER(x16,3)*POWER(x61,3) + POWER(x16,3)*
     POWER(x62,3) + POWER(x16,3)*POWER(x63,3) + POWER(x16,3)*POWER(x64,3) + 
     POWER(x16,3)*POWER(x65,3) + POWER(x16,3)*POWER(x66,3) + POWER(x16,3)*
     POWER(x67,3) + POWER(x16,3)*POWER(x68,3) + POWER(x16,3)*POWER(x69,3) + 
     POWER(x16,3)*POWER(x70,3) + POWER(x16,3)*POWER(x71,3) + POWER(x16,3)*
     POWER(x72,3) + POWER(x16,3)*POWER(x73,3) + POWER(x16,3)*POWER(x74,3) + 
     POWER(x16,3)*POWER(x75,3) + POWER(x16,3)*POWER(x76,3) + POWER(x16,3)*
     POWER(x77,3) + POWER(x16,3)*POWER(x78,3) + POWER(x16,3)*POWER(x79,3) + 
     POWER(x16,3)*POWER(x80,3) + POWER(x16,3)*POWER(x81,3) + POWER(x16,3)*
     POWER(x82,3) + POWER(x16,3)*POWER(x83,3) + POWER(x16,3)*POWER(x84,3) + 
     POWER(x16,3)*POWER(x85,3) + POWER(x16,3)*POWER(x86,3) + POWER(x16,3)*
     POWER(x87,3) + POWER(x16,3)*POWER(x88,3) + POWER(x16,3)*POWER(x89,3) + 
     POWER(x16,3)*POWER(x90,3) + POWER(x16,3)*POWER(x91,3) + POWER(x16,3)*
     POWER(x92,3) + POWER(x16,3)*POWER(x93,3) + POWER(x16,3)*POWER(x94,3) + 
     POWER(x16,3)*POWER(x95,3) + POWER(x16,3)*POWER(x96,3) + POWER(x16,3)*
     POWER(x97,3) + POWER(x16,3)*POWER(x98,3) + POWER(x16,3)*POWER(x99,3) + 
     POWER(x16,3)*POWER(x100,3) + POWER(x17,3)*POWER(x1,3) + POWER(x17,3)*
     POWER(x2,3) + POWER(x17,3)*POWER(x3,3) + POWER(x17,3)*POWER(x4,3) + POWER(
     x17,3)*POWER(x5,3) + POWER(x17,3)*POWER(x6,3) + POWER(x17,3)*POWER(x7,3)
      + POWER(x17,3)*POWER(x8,3) + POWER(x17,3)*POWER(x9,3) + POWER(x17,3)*
     POWER(x10,3) + POWER(x17,3)*POWER(x11,3) + POWER(x17,3)*POWER(x12,3) + 
     POWER(x17,3)*POWER(x13,3) + POWER(x17,3)*POWER(x14,3) + POWER(x17,3)*
     POWER(x15,3) + POWER(x17,3)*POWER(x16,3) + POWER(x17,3)*POWER(x17,3) + 
     POWER(x17,3)*POWER(x18,3) + POWER(x17,3)*POWER(x19,3) + POWER(x17,3)*
     POWER(x20,3) + POWER(x17,3)*POWER(x21,3) + POWER(x17,3)*POWER(x22,3) + 
     POWER(x17,3)*POWER(x23,3) + POWER(x17,3)*POWER(x24,3) + POWER(x17,3)*
     POWER(x25,3) + POWER(x17,3)*POWER(x26,3) + POWER(x17,3)*POWER(x27,3) + 
     POWER(x17,3)*POWER(x28,3) + POWER(x17,3)*POWER(x29,3) + POWER(x17,3)*
     POWER(x30,3) + POWER(x17,3)*POWER(x31,3) + POWER(x17,3)*POWER(x32,3) + 
     POWER(x17,3)*POWER(x33,3) + POWER(x17,3)*POWER(x34,3) + POWER(x17,3)*
     POWER(x35,3) + POWER(x17,3)*POWER(x36,3) + POWER(x17,3)*POWER(x37,3) + 
     POWER(x17,3)*POWER(x38,3) + POWER(x17,3)*POWER(x39,3) + POWER(x17,3)*
     POWER(x40,3) + POWER(x17,3)*POWER(x41,3) + POWER(x17,3)*POWER(x42,3) + 
     POWER(x17,3)*POWER(x43,3) + POWER(x17,3)*POWER(x44,3) + POWER(x17,3)*
     POWER(x45,3) + POWER(x17,3)*POWER(x46,3) + POWER(x17,3)*POWER(x47,3) + 
     POWER(x17,3)*POWER(x48,3) + POWER(x17,3)*POWER(x49,3) + POWER(x17,3)*
     POWER(x50,3) + POWER(x17,3)*POWER(x51,3) + POWER(x17,3)*POWER(x52,3) + 
     POWER(x17,3)*POWER(x53,3) + POWER(x17,3)*POWER(x54,3) + POWER(x17,3)*
     POWER(x55,3) + POWER(x17,3)*POWER(x56,3) + POWER(x17,3)*POWER(x57,3) + 
     POWER(x17,3)*POWER(x58,3) + POWER(x17,3)*POWER(x59,3) + POWER(x17,3)*
     POWER(x60,3) + POWER(x17,3)*POWER(x61,3) + POWER(x17,3)*POWER(x62,3) + 
     POWER(x17,3)*POWER(x63,3) + POWER(x17,3)*POWER(x64,3) + POWER(x17,3)*
     POWER(x65,3) + POWER(x17,3)*POWER(x66,3) + POWER(x17,3)*POWER(x67,3) + 
     POWER(x17,3)*POWER(x68,3) + POWER(x17,3)*POWER(x69,3) + POWER(x17,3)*
     POWER(x70,3) + POWER(x17,3)*POWER(x71,3) + POWER(x17,3)*POWER(x72,3) + 
     POWER(x17,3)*POWER(x73,3) + POWER(x17,3)*POWER(x74,3) + POWER(x17,3)*
     POWER(x75,3) + POWER(x17,3)*POWER(x76,3) + POWER(x17,3)*POWER(x77,3) + 
     POWER(x17,3)*POWER(x78,3) + POWER(x17,3)*POWER(x79,3) + POWER(x17,3)*
     POWER(x80,3) + POWER(x17,3)*POWER(x81,3) + POWER(x17,3)*POWER(x82,3) + 
     POWER(x17,3)*POWER(x83,3) + POWER(x17,3)*POWER(x84,3) + POWER(x17,3)*
     POWER(x85,3) + POWER(x17,3)*POWER(x86,3) + POWER(x17,3)*POWER(x87,3) + 
     POWER(x17,3)*POWER(x88,3) + POWER(x17,3)*POWER(x89,3) + POWER(x17,3)*
     POWER(x90,3) + POWER(x17,3)*POWER(x91,3) + POWER(x17,3)*POWER(x92,3) + 
     POWER(x17,3)*POWER(x93,3) + POWER(x17,3)*POWER(x94,3) + POWER(x17,3)*
     POWER(x95,3) + POWER(x17,3)*POWER(x96,3) + POWER(x17,3)*POWER(x97,3) + 
     POWER(x17,3)*POWER(x98,3) + POWER(x17,3)*POWER(x99,3) + POWER(x17,3)*
     POWER(x100,3) + POWER(x18,3)*POWER(x1,3) + POWER(x18,3)*POWER(x2,3) + 
     POWER(x18,3)*POWER(x3,3) + POWER(x18,3)*POWER(x4,3) + POWER(x18,3)*POWER(
     x5,3) + POWER(x18,3)*POWER(x6,3) + POWER(x18,3)*POWER(x7,3) + POWER(x18,3)
     *POWER(x8,3) + POWER(x18,3)*POWER(x9,3) + POWER(x18,3)*POWER(x10,3) + 
     POWER(x18,3)*POWER(x11,3) + POWER(x18,3)*POWER(x12,3) + POWER(x18,3)*
     POWER(x13,3) + POWER(x18,3)*POWER(x14,3) + POWER(x18,3)*POWER(x15,3) + 
     POWER(x18,3)*POWER(x16,3) + POWER(x18,3)*POWER(x17,3) + POWER(x18,3)*
     POWER(x18,3) + POWER(x18,3)*POWER(x19,3) + POWER(x18,3)*POWER(x20,3) + 
     POWER(x18,3)*POWER(x21,3) + POWER(x18,3)*POWER(x22,3) + POWER(x18,3)*
     POWER(x23,3) + POWER(x18,3)*POWER(x24,3) + POWER(x18,3)*POWER(x25,3) + 
     POWER(x18,3)*POWER(x26,3) + POWER(x18,3)*POWER(x27,3) + POWER(x18,3)*
     POWER(x28,3) + POWER(x18,3)*POWER(x29,3) + POWER(x18,3)*POWER(x30,3) + 
     POWER(x18,3)*POWER(x31,3) + POWER(x18,3)*POWER(x32,3) + POWER(x18,3)*
     POWER(x33,3) + POWER(x18,3)*POWER(x34,3) + POWER(x18,3)*POWER(x35,3) + 
     POWER(x18,3)*POWER(x36,3) + POWER(x18,3)*POWER(x37,3) + POWER(x18,3)*
     POWER(x38,3) + POWER(x18,3)*POWER(x39,3) + POWER(x18,3)*POWER(x40,3) + 
     POWER(x18,3)*POWER(x41,3) + POWER(x18,3)*POWER(x42,3) + POWER(x18,3)*
     POWER(x43,3) + POWER(x18,3)*POWER(x44,3) + POWER(x18,3)*POWER(x45,3) + 
     POWER(x18,3)*POWER(x46,3) + POWER(x18,3)*POWER(x47,3) + POWER(x18,3)*
     POWER(x48,3) + POWER(x18,3)*POWER(x49,3) + POWER(x18,3)*POWER(x50,3) + 
     POWER(x18,3)*POWER(x51,3) + POWER(x18,3)*POWER(x52,3) + POWER(x18,3)*
     POWER(x53,3) + POWER(x18,3)*POWER(x54,3) + POWER(x18,3)*POWER(x55,3) + 
     POWER(x18,3)*POWER(x56,3) + POWER(x18,3)*POWER(x57,3) + POWER(x18,3)*
     POWER(x58,3) + POWER(x18,3)*POWER(x59,3) + POWER(x18,3)*POWER(x60,3) + 
     POWER(x18,3)*POWER(x61,3) + POWER(x18,3)*POWER(x62,3) + POWER(x18,3)*
     POWER(x63,3) + POWER(x18,3)*POWER(x64,3) + POWER(x18,3)*POWER(x65,3) + 
     POWER(x18,3)*POWER(x66,3) + POWER(x18,3)*POWER(x67,3) + POWER(x18,3)*
     POWER(x68,3) + POWER(x18,3)*POWER(x69,3) + POWER(x18,3)*POWER(x70,3) + 
     POWER(x18,3)*POWER(x71,3) + POWER(x18,3)*POWER(x72,3) + POWER(x18,3)*
     POWER(x73,3) + POWER(x18,3)*POWER(x74,3) + POWER(x18,3)*POWER(x75,3) + 
     POWER(x18,3)*POWER(x76,3) + POWER(x18,3)*POWER(x77,3) + POWER(x18,3)*
     POWER(x78,3) + POWER(x18,3)*POWER(x79,3) + POWER(x18,3)*POWER(x80,3) + 
     POWER(x18,3)*POWER(x81,3) + POWER(x18,3)*POWER(x82,3) + POWER(x18,3)*
     POWER(x83,3) + POWER(x18,3)*POWER(x84,3) + POWER(x18,3)*POWER(x85,3) + 
     POWER(x18,3)*POWER(x86,3) + POWER(x18,3)*POWER(x87,3) + POWER(x18,3)*
     POWER(x88,3) + POWER(x18,3)*POWER(x89,3) + POWER(x18,3)*POWER(x90,3) + 
     POWER(x18,3)*POWER(x91,3) + POWER(x18,3)*POWER(x92,3) + POWER(x18,3)*
     POWER(x93,3) + POWER(x18,3)*POWER(x94,3) + POWER(x18,3)*POWER(x95,3) + 
     POWER(x18,3)*POWER(x96,3) + POWER(x18,3)*POWER(x97,3) + POWER(x18,3)*
     POWER(x98,3) + POWER(x18,3)*POWER(x99,3) + POWER(x18,3)*POWER(x100,3) + 
     POWER(x19,3)*POWER(x1,3) + POWER(x19,3)*POWER(x2,3) + POWER(x19,3)*POWER(
     x3,3) + POWER(x19,3)*POWER(x4,3) + POWER(x19,3)*POWER(x5,3) + POWER(x19,3)
     *POWER(x6,3) + POWER(x19,3)*POWER(x7,3) + POWER(x19,3)*POWER(x8,3) + 
     POWER(x19,3)*POWER(x9,3) + POWER(x19,3)*POWER(x10,3) + POWER(x19,3)*POWER(
     x11,3) + POWER(x19,3)*POWER(x12,3) + POWER(x19,3)*POWER(x13,3) + POWER(x19
     ,3)*POWER(x14,3) + POWER(x19,3)*POWER(x15,3) + POWER(x19,3)*POWER(x16,3)
      + POWER(x19,3)*POWER(x17,3) + POWER(x19,3)*POWER(x18,3) + POWER(x19,3)*
     POWER(x19,3) + POWER(x19,3)*POWER(x20,3) + POWER(x19,3)*POWER(x21,3) + 
     POWER(x19,3)*POWER(x22,3) + POWER(x19,3)*POWER(x23,3) + POWER(x19,3)*
     POWER(x24,3) + POWER(x19,3)*POWER(x25,3) + POWER(x19,3)*POWER(x26,3) + 
     POWER(x19,3)*POWER(x27,3) + POWER(x19,3)*POWER(x28,3) + POWER(x19,3)*
     POWER(x29,3) + POWER(x19,3)*POWER(x30,3) + POWER(x19,3)*POWER(x31,3) + 
     POWER(x19,3)*POWER(x32,3) + POWER(x19,3)*POWER(x33,3) + POWER(x19,3)*
     POWER(x34,3) + POWER(x19,3)*POWER(x35,3) + POWER(x19,3)*POWER(x36,3) + 
     POWER(x19,3)*POWER(x37,3) + POWER(x19,3)*POWER(x38,3) + POWER(x19,3)*
     POWER(x39,3) + POWER(x19,3)*POWER(x40,3) + POWER(x19,3)*POWER(x41,3) + 
     POWER(x19,3)*POWER(x42,3) + POWER(x19,3)*POWER(x43,3) + POWER(x19,3)*
     POWER(x44,3) + POWER(x19,3)*POWER(x45,3) + POWER(x19,3)*POWER(x46,3) + 
     POWER(x19,3)*POWER(x47,3) + POWER(x19,3)*POWER(x48,3) + POWER(x19,3)*
     POWER(x49,3) + POWER(x19,3)*POWER(x50,3) + POWER(x19,3)*POWER(x51,3) + 
     POWER(x19,3)*POWER(x52,3) + POWER(x19,3)*POWER(x53,3) + POWER(x19,3)*
     POWER(x54,3) + POWER(x19,3)*POWER(x55,3) + POWER(x19,3)*POWER(x56,3) + 
     POWER(x19,3)*POWER(x57,3) + POWER(x19,3)*POWER(x58,3) + POWER(x19,3)*
     POWER(x59,3) + POWER(x19,3)*POWER(x60,3) + POWER(x19,3)*POWER(x61,3) + 
     POWER(x19,3)*POWER(x62,3) + POWER(x19,3)*POWER(x63,3) + POWER(x19,3)*
     POWER(x64,3) + POWER(x19,3)*POWER(x65,3) + POWER(x19,3)*POWER(x66,3) + 
     POWER(x19,3)*POWER(x67,3) + POWER(x19,3)*POWER(x68,3) + POWER(x19,3)*
     POWER(x69,3) + POWER(x19,3)*POWER(x70,3) + POWER(x19,3)*POWER(x71,3) + 
     POWER(x19,3)*POWER(x72,3) + POWER(x19,3)*POWER(x73,3) + POWER(x19,3)*
     POWER(x74,3) + POWER(x19,3)*POWER(x75,3) + POWER(x19,3)*POWER(x76,3) + 
     POWER(x19,3)*POWER(x77,3) + POWER(x19,3)*POWER(x78,3) + POWER(x19,3)*
     POWER(x79,3) + POWER(x19,3)*POWER(x80,3) + POWER(x19,3)*POWER(x81,3) + 
     POWER(x19,3)*POWER(x82,3) + POWER(x19,3)*POWER(x83,3) + POWER(x19,3)*
     POWER(x84,3) + POWER(x19,3)*POWER(x85,3) + POWER(x19,3)*POWER(x86,3) + 
     POWER(x19,3)*POWER(x87,3) + POWER(x19,3)*POWER(x88,3) + POWER(x19,3)*
     POWER(x89,3) + POWER(x19,3)*POWER(x90,3) + POWER(x19,3)*POWER(x91,3) + 
     POWER(x19,3)*POWER(x92,3) + POWER(x19,3)*POWER(x93,3) + POWER(x19,3)*
     POWER(x94,3) + POWER(x19,3)*POWER(x95,3) + POWER(x19,3)*POWER(x96,3) + 
     POWER(x19,3)*POWER(x97,3) + POWER(x19,3)*POWER(x98,3) + POWER(x19,3)*
     POWER(x99,3) + POWER(x19,3)*POWER(x100,3) + POWER(x20,3)*POWER(x1,3) + 
     POWER(x20,3)*POWER(x2,3) + POWER(x20,3)*POWER(x3,3) + POWER(x20,3)*POWER(
     x4,3) + POWER(x20,3)*POWER(x5,3) + POWER(x20,3)*POWER(x6,3) + POWER(x20,3)
     *POWER(x7,3) + POWER(x20,3)*POWER(x8,3) + POWER(x20,3)*POWER(x9,3) + 
     POWER(x20,3)*POWER(x10,3) + POWER(x20,3)*POWER(x11,3) + POWER(x20,3)*
     POWER(x12,3) + POWER(x20,3)*POWER(x13,3) + POWER(x20,3)*POWER(x14,3) + 
     POWER(x20,3)*POWER(x15,3) + POWER(x20,3)*POWER(x16,3) + POWER(x20,3)*
     POWER(x17,3) + POWER(x20,3)*POWER(x18,3) + POWER(x20,3)*POWER(x19,3) + 
     POWER(x20,3)*POWER(x20,3) + POWER(x20,3)*POWER(x21,3) + POWER(x20,3)*
     POWER(x22,3) + POWER(x20,3)*POWER(x23,3) + POWER(x20,3)*POWER(x24,3) + 
     POWER(x20,3)*POWER(x25,3) + POWER(x20,3)*POWER(x26,3) + POWER(x20,3)*
     POWER(x27,3) + POWER(x20,3)*POWER(x28,3) + POWER(x20,3)*POWER(x29,3) + 
     POWER(x20,3)*POWER(x30,3) + POWER(x20,3)*POWER(x31,3) + POWER(x20,3)*
     POWER(x32,3) + POWER(x20,3)*POWER(x33,3) + POWER(x20,3)*POWER(x34,3) + 
     POWER(x20,3)*POWER(x35,3) + POWER(x20,3)*POWER(x36,3) + POWER(x20,3)*
     POWER(x37,3) + POWER(x20,3)*POWER(x38,3) + POWER(x20,3)*POWER(x39,3) + 
     POWER(x20,3)*POWER(x40,3) + POWER(x20,3)*POWER(x41,3) + POWER(x20,3)*
     POWER(x42,3) + POWER(x20,3)*POWER(x43,3) + POWER(x20,3)*POWER(x44,3) + 
     POWER(x20,3)*POWER(x45,3) + POWER(x20,3)*POWER(x46,3) + POWER(x20,3)*
     POWER(x47,3) + POWER(x20,3)*POWER(x48,3) + POWER(x20,3)*POWER(x49,3) + 
     POWER(x20,3)*POWER(x50,3) + POWER(x20,3)*POWER(x51,3) + POWER(x20,3)*
     POWER(x52,3) + POWER(x20,3)*POWER(x53,3) + POWER(x20,3)*POWER(x54,3) + 
     POWER(x20,3)*POWER(x55,3) + POWER(x20,3)*POWER(x56,3) + POWER(x20,3)*
     POWER(x57,3) + POWER(x20,3)*POWER(x58,3) + POWER(x20,3)*POWER(x59,3) + 
     POWER(x20,3)*POWER(x60,3) + POWER(x20,3)*POWER(x61,3) + POWER(x20,3)*
     POWER(x62,3) + POWER(x20,3)*POWER(x63,3) + POWER(x20,3)*POWER(x64,3) + 
     POWER(x20,3)*POWER(x65,3) + POWER(x20,3)*POWER(x66,3) + POWER(x20,3)*
     POWER(x67,3) + POWER(x20,3)*POWER(x68,3) + POWER(x20,3)*POWER(x69,3) + 
     POWER(x20,3)*POWER(x70,3) + POWER(x20,3)*POWER(x71,3) + POWER(x20,3)*
     POWER(x72,3) + POWER(x20,3)*POWER(x73,3) + POWER(x20,3)*POWER(x74,3) + 
     POWER(x20,3)*POWER(x75,3) + POWER(x20,3)*POWER(x76,3) + POWER(x20,3)*
     POWER(x77,3) + POWER(x20,3)*POWER(x78,3) + POWER(x20,3)*POWER(x79,3) + 
     POWER(x20,3)*POWER(x80,3) + POWER(x20,3)*POWER(x81,3) + POWER(x20,3)*
     POWER(x82,3) + POWER(x20,3)*POWER(x83,3) + POWER(x20,3)*POWER(x84,3) + 
     POWER(x20,3)*POWER(x85,3) + POWER(x20,3)*POWER(x86,3) + POWER(x20,3)*
     POWER(x87,3) + POWER(x20,3)*POWER(x88,3) + POWER(x20,3)*POWER(x89,3) + 
     POWER(x20,3)*POWER(x90,3) + POWER(x20,3)*POWER(x91,3) + POWER(x20,3)*
     POWER(x92,3) + POWER(x20,3)*POWER(x93,3) + POWER(x20,3)*POWER(x94,3) + 
     POWER(x20,3)*POWER(x95,3) + POWER(x20,3)*POWER(x96,3) + POWER(x20,3)*
     POWER(x97,3) + POWER(x20,3)*POWER(x98,3) + POWER(x20,3)*POWER(x99,3) + 
     POWER(x20,3)*POWER(x100,3) + POWER(x21,3)*POWER(x1,3) + POWER(x21,3)*
     POWER(x2,3) + POWER(x21,3)*POWER(x3,3) + POWER(x21,3)*POWER(x4,3) + POWER(
     x21,3)*POWER(x5,3) + POWER(x21,3)*POWER(x6,3) + POWER(x21,3)*POWER(x7,3)
      + POWER(x21,3)*POWER(x8,3) + POWER(x21,3)*POWER(x9,3) + POWER(x21,3)*
     POWER(x10,3) + POWER(x21,3)*POWER(x11,3) + POWER(x21,3)*POWER(x12,3) + 
     POWER(x21,3)*POWER(x13,3) + POWER(x21,3)*POWER(x14,3) + POWER(x21,3)*
     POWER(x15,3) + POWER(x21,3)*POWER(x16,3) + POWER(x21,3)*POWER(x17,3) + 
     POWER(x21,3)*POWER(x18,3) + POWER(x21,3)*POWER(x19,3) + POWER(x21,3)*
     POWER(x20,3) + POWER(x21,3)*POWER(x21,3) + POWER(x21,3)*POWER(x22,3) + 
     POWER(x21,3)*POWER(x23,3) + POWER(x21,3)*POWER(x24,3) + POWER(x21,3)*
     POWER(x25,3) + POWER(x21,3)*POWER(x26,3) + POWER(x21,3)*POWER(x27,3) + 
     POWER(x21,3)*POWER(x28,3) + POWER(x21,3)*POWER(x29,3) + POWER(x21,3)*
     POWER(x30,3) + POWER(x21,3)*POWER(x31,3) + POWER(x21,3)*POWER(x32,3) + 
     POWER(x21,3)*POWER(x33,3) + POWER(x21,3)*POWER(x34,3) + POWER(x21,3)*
     POWER(x35,3) + POWER(x21,3)*POWER(x36,3) + POWER(x21,3)*POWER(x37,3) + 
     POWER(x21,3)*POWER(x38,3) + POWER(x21,3)*POWER(x39,3) + POWER(x21,3)*
     POWER(x40,3) + POWER(x21,3)*POWER(x41,3) + POWER(x21,3)*POWER(x42,3) + 
     POWER(x21,3)*POWER(x43,3) + POWER(x21,3)*POWER(x44,3) + POWER(x21,3)*
     POWER(x45,3) + POWER(x21,3)*POWER(x46,3) + POWER(x21,3)*POWER(x47,3) + 
     POWER(x21,3)*POWER(x48,3) + POWER(x21,3)*POWER(x49,3) + POWER(x21,3)*
     POWER(x50,3) + POWER(x21,3)*POWER(x51,3) + POWER(x21,3)*POWER(x52,3) + 
     POWER(x21,3)*POWER(x53,3) + POWER(x21,3)*POWER(x54,3) + POWER(x21,3)*
     POWER(x55,3) + POWER(x21,3)*POWER(x56,3) + POWER(x21,3)*POWER(x57,3) + 
     POWER(x21,3)*POWER(x58,3) + POWER(x21,3)*POWER(x59,3) + POWER(x21,3)*
     POWER(x60,3) + POWER(x21,3)*POWER(x61,3) + POWER(x21,3)*POWER(x62,3) + 
     POWER(x21,3)*POWER(x63,3) + POWER(x21,3)*POWER(x64,3) + POWER(x21,3)*
     POWER(x65,3) + POWER(x21,3)*POWER(x66,3) + POWER(x21,3)*POWER(x67,3) + 
     POWER(x21,3)*POWER(x68,3) + POWER(x21,3)*POWER(x69,3) + POWER(x21,3)*
     POWER(x70,3) + POWER(x21,3)*POWER(x71,3) + POWER(x21,3)*POWER(x72,3) + 
     POWER(x21,3)*POWER(x73,3) + POWER(x21,3)*POWER(x74,3) + POWER(x21,3)*
     POWER(x75,3) + POWER(x21,3)*POWER(x76,3) + POWER(x21,3)*POWER(x77,3) + 
     POWER(x21,3)*POWER(x78,3) + POWER(x21,3)*POWER(x79,3) + POWER(x21,3)*
     POWER(x80,3) + POWER(x21,3)*POWER(x81,3) + POWER(x21,3)*POWER(x82,3) + 
     POWER(x21,3)*POWER(x83,3) + POWER(x21,3)*POWER(x84,3) + POWER(x21,3)*
     POWER(x85,3) + POWER(x21,3)*POWER(x86,3) + POWER(x21,3)*POWER(x87,3) + 
     POWER(x21,3)*POWER(x88,3) + POWER(x21,3)*POWER(x89,3) + POWER(x21,3)*
     POWER(x90,3) + POWER(x21,3)*POWER(x91,3) + POWER(x21,3)*POWER(x92,3) + 
     POWER(x21,3)*POWER(x93,3) + POWER(x21,3)*POWER(x94,3) + POWER(x21,3)*
     POWER(x95,3) + POWER(x21,3)*POWER(x96,3) + POWER(x21,3)*POWER(x97,3) + 
     POWER(x21,3)*POWER(x98,3) + POWER(x21,3)*POWER(x99,3) + POWER(x21,3)*
     POWER(x100,3) + POWER(x22,3)*POWER(x1,3) + POWER(x22,3)*POWER(x2,3) + 
     POWER(x22,3)*POWER(x3,3) + POWER(x22,3)*POWER(x4,3) + POWER(x22,3)*POWER(
     x5,3) + POWER(x22,3)*POWER(x6,3) + POWER(x22,3)*POWER(x7,3) + POWER(x22,3)
     *POWER(x8,3) + POWER(x22,3)*POWER(x9,3) + POWER(x22,3)*POWER(x10,3) + 
     POWER(x22,3)*POWER(x11,3) + POWER(x22,3)*POWER(x12,3) + POWER(x22,3)*
     POWER(x13,3) + POWER(x22,3)*POWER(x14,3) + POWER(x22,3)*POWER(x15,3) + 
     POWER(x22,3)*POWER(x16,3) + POWER(x22,3)*POWER(x17,3) + POWER(x22,3)*
     POWER(x18,3) + POWER(x22,3)*POWER(x19,3) + POWER(x22,3)*POWER(x20,3) + 
     POWER(x22,3)*POWER(x21,3) + POWER(x22,3)*POWER(x22,3) + POWER(x22,3)*
     POWER(x23,3) + POWER(x22,3)*POWER(x24,3) + POWER(x22,3)*POWER(x25,3) + 
     POWER(x22,3)*POWER(x26,3) + POWER(x22,3)*POWER(x27,3) + POWER(x22,3)*
     POWER(x28,3) + POWER(x22,3)*POWER(x29,3) + POWER(x22,3)*POWER(x30,3) + 
     POWER(x22,3)*POWER(x31,3) + POWER(x22,3)*POWER(x32,3) + POWER(x22,3)*
     POWER(x33,3) + POWER(x22,3)*POWER(x34,3) + POWER(x22,3)*POWER(x35,3) + 
     POWER(x22,3)*POWER(x36,3) + POWER(x22,3)*POWER(x37,3) + POWER(x22,3)*
     POWER(x38,3) + POWER(x22,3)*POWER(x39,3) + POWER(x22,3)*POWER(x40,3) + 
     POWER(x22,3)*POWER(x41,3) + POWER(x22,3)*POWER(x42,3) + POWER(x22,3)*
     POWER(x43,3) + POWER(x22,3)*POWER(x44,3) + POWER(x22,3)*POWER(x45,3) + 
     POWER(x22,3)*POWER(x46,3) + POWER(x22,3)*POWER(x47,3) + POWER(x22,3)*
     POWER(x48,3) + POWER(x22,3)*POWER(x49,3) + POWER(x22,3)*POWER(x50,3) + 
     POWER(x22,3)*POWER(x51,3) + POWER(x22,3)*POWER(x52,3) + POWER(x22,3)*
     POWER(x53,3) + POWER(x22,3)*POWER(x54,3) + POWER(x22,3)*POWER(x55,3) + 
     POWER(x22,3)*POWER(x56,3) + POWER(x22,3)*POWER(x57,3) + POWER(x22,3)*
     POWER(x58,3) + POWER(x22,3)*POWER(x59,3) + POWER(x22,3)*POWER(x60,3) + 
     POWER(x22,3)*POWER(x61,3) + POWER(x22,3)*POWER(x62,3) + POWER(x22,3)*
     POWER(x63,3) + POWER(x22,3)*POWER(x64,3) + POWER(x22,3)*POWER(x65,3) + 
     POWER(x22,3)*POWER(x66,3) + POWER(x22,3)*POWER(x67,3) + POWER(x22,3)*
     POWER(x68,3) + POWER(x22,3)*POWER(x69,3) + POWER(x22,3)*POWER(x70,3) + 
     POWER(x22,3)*POWER(x71,3) + POWER(x22,3)*POWER(x72,3) + POWER(x22,3)*
     POWER(x73,3) + POWER(x22,3)*POWER(x74,3) + POWER(x22,3)*POWER(x75,3) + 
     POWER(x22,3)*POWER(x76,3) + POWER(x22,3)*POWER(x77,3) + POWER(x22,3)*
     POWER(x78,3) + POWER(x22,3)*POWER(x79,3) + POWER(x22,3)*POWER(x80,3) + 
     POWER(x22,3)*POWER(x81,3) + POWER(x22,3)*POWER(x82,3) + POWER(x22,3)*
     POWER(x83,3) + POWER(x22,3)*POWER(x84,3) + POWER(x22,3)*POWER(x85,3) + 
     POWER(x22,3)*POWER(x86,3) + POWER(x22,3)*POWER(x87,3) + POWER(x22,3)*
     POWER(x88,3) + POWER(x22,3)*POWER(x89,3) + POWER(x22,3)*POWER(x90,3) + 
     POWER(x22,3)*POWER(x91,3) + POWER(x22,3)*POWER(x92,3) + POWER(x22,3)*
     POWER(x93,3) + POWER(x22,3)*POWER(x94,3) + POWER(x22,3)*POWER(x95,3) + 
     POWER(x22,3)*POWER(x96,3) + POWER(x22,3)*POWER(x97,3) + POWER(x22,3)*
     POWER(x98,3) + POWER(x22,3)*POWER(x99,3) + POWER(x22,3)*POWER(x100,3) + 
     POWER(x23,3)*POWER(x1,3) + POWER(x23,3)*POWER(x2,3) + POWER(x23,3)*POWER(
     x3,3) + POWER(x23,3)*POWER(x4,3) + POWER(x23,3)*POWER(x5,3) + POWER(x23,3)
     *POWER(x6,3) + POWER(x23,3)*POWER(x7,3) + POWER(x23,3)*POWER(x8,3) + 
     POWER(x23,3)*POWER(x9,3) + POWER(x23,3)*POWER(x10,3) + POWER(x23,3)*POWER(
     x11,3) + POWER(x23,3)*POWER(x12,3) + POWER(x23,3)*POWER(x13,3) + POWER(x23
     ,3)*POWER(x14,3) + POWER(x23,3)*POWER(x15,3) + POWER(x23,3)*POWER(x16,3)
      + POWER(x23,3)*POWER(x17,3) + POWER(x23,3)*POWER(x18,3) + POWER(x23,3)*
     POWER(x19,3) + POWER(x23,3)*POWER(x20,3) + POWER(x23,3)*POWER(x21,3) + 
     POWER(x23,3)*POWER(x22,3) + POWER(x23,3)*POWER(x23,3) + POWER(x23,3)*
     POWER(x24,3) + POWER(x23,3)*POWER(x25,3) + POWER(x23,3)*POWER(x26,3) + 
     POWER(x23,3)*POWER(x27,3) + POWER(x23,3)*POWER(x28,3) + POWER(x23,3)*
     POWER(x29,3) + POWER(x23,3)*POWER(x30,3) + POWER(x23,3)*POWER(x31,3) + 
     POWER(x23,3)*POWER(x32,3) + POWER(x23,3)*POWER(x33,3) + POWER(x23,3)*
     POWER(x34,3) + POWER(x23,3)*POWER(x35,3) + POWER(x23,3)*POWER(x36,3) + 
     POWER(x23,3)*POWER(x37,3) + POWER(x23,3)*POWER(x38,3) + POWER(x23,3)*
     POWER(x39,3) + POWER(x23,3)*POWER(x40,3) + POWER(x23,3)*POWER(x41,3) + 
     POWER(x23,3)*POWER(x42,3) + POWER(x23,3)*POWER(x43,3) + POWER(x23,3)*
     POWER(x44,3) + POWER(x23,3)*POWER(x45,3) + POWER(x23,3)*POWER(x46,3) + 
     POWER(x23,3)*POWER(x47,3) + POWER(x23,3)*POWER(x48,3) + POWER(x23,3)*
     POWER(x49,3) + POWER(x23,3)*POWER(x50,3) + POWER(x23,3)*POWER(x51,3) + 
     POWER(x23,3)*POWER(x52,3) + POWER(x23,3)*POWER(x53,3) + POWER(x23,3)*
     POWER(x54,3) + POWER(x23,3)*POWER(x55,3) + POWER(x23,3)*POWER(x56,3) + 
     POWER(x23,3)*POWER(x57,3) + POWER(x23,3)*POWER(x58,3) + POWER(x23,3)*
     POWER(x59,3) + POWER(x23,3)*POWER(x60,3) + POWER(x23,3)*POWER(x61,3) + 
     POWER(x23,3)*POWER(x62,3) + POWER(x23,3)*POWER(x63,3) + POWER(x23,3)*
     POWER(x64,3) + POWER(x23,3)*POWER(x65,3) + POWER(x23,3)*POWER(x66,3) + 
     POWER(x23,3)*POWER(x67,3) + POWER(x23,3)*POWER(x68,3) + POWER(x23,3)*
     POWER(x69,3) + POWER(x23,3)*POWER(x70,3) + POWER(x23,3)*POWER(x71,3) + 
     POWER(x23,3)*POWER(x72,3) + POWER(x23,3)*POWER(x73,3) + POWER(x23,3)*
     POWER(x74,3) + POWER(x23,3)*POWER(x75,3) + POWER(x23,3)*POWER(x76,3) + 
     POWER(x23,3)*POWER(x77,3) + POWER(x23,3)*POWER(x78,3) + POWER(x23,3)*
     POWER(x79,3) + POWER(x23,3)*POWER(x80,3) + POWER(x23,3)*POWER(x81,3) + 
     POWER(x23,3)*POWER(x82,3) + POWER(x23,3)*POWER(x83,3) + POWER(x23,3)*
     POWER(x84,3) + POWER(x23,3)*POWER(x85,3) + POWER(x23,3)*POWER(x86,3) + 
     POWER(x23,3)*POWER(x87,3) + POWER(x23,3)*POWER(x88,3) + POWER(x23,3)*
     POWER(x89,3) + POWER(x23,3)*POWER(x90,3) + POWER(x23,3)*POWER(x91,3) + 
     POWER(x23,3)*POWER(x92,3) + POWER(x23,3)*POWER(x93,3) + POWER(x23,3)*
     POWER(x94,3) + POWER(x23,3)*POWER(x95,3) + POWER(x23,3)*POWER(x96,3) + 
     POWER(x23,3)*POWER(x97,3) + POWER(x23,3)*POWER(x98,3) + POWER(x23,3)*
     POWER(x99,3) + POWER(x23,3)*POWER(x100,3) + POWER(x24,3)*POWER(x1,3) + 
     POWER(x24,3)*POWER(x2,3) + POWER(x24,3)*POWER(x3,3) + POWER(x24,3)*POWER(
     x4,3) + POWER(x24,3)*POWER(x5,3) + POWER(x24,3)*POWER(x6,3) + POWER(x24,3)
     *POWER(x7,3) + POWER(x24,3)*POWER(x8,3) + POWER(x24,3)*POWER(x9,3) + 
     POWER(x24,3)*POWER(x10,3) + POWER(x24,3)*POWER(x11,3) + POWER(x24,3)*
     POWER(x12,3) + POWER(x24,3)*POWER(x13,3) + POWER(x24,3)*POWER(x14,3) + 
     POWER(x24,3)*POWER(x15,3) + POWER(x24,3)*POWER(x16,3) + POWER(x24,3)*
     POWER(x17,3) + POWER(x24,3)*POWER(x18,3) + POWER(x24,3)*POWER(x19,3) + 
     POWER(x24,3)*POWER(x20,3) + POWER(x24,3)*POWER(x21,3) + POWER(x24,3)*
     POWER(x22,3) + POWER(x24,3)*POWER(x23,3) + POWER(x24,3)*POWER(x24,3) + 
     POWER(x24,3)*POWER(x25,3) + POWER(x24,3)*POWER(x26,3) + POWER(x24,3)*
     POWER(x27,3) + POWER(x24,3)*POWER(x28,3) + POWER(x24,3)*POWER(x29,3) + 
     POWER(x24,3)*POWER(x30,3) + POWER(x24,3)*POWER(x31,3) + POWER(x24,3)*
     POWER(x32,3) + POWER(x24,3)*POWER(x33,3) + POWER(x24,3)*POWER(x34,3) + 
     POWER(x24,3)*POWER(x35,3) + POWER(x24,3)*POWER(x36,3) + POWER(x24,3)*
     POWER(x37,3) + POWER(x24,3)*POWER(x38,3) + POWER(x24,3)*POWER(x39,3) + 
     POWER(x24,3)*POWER(x40,3) + POWER(x24,3)*POWER(x41,3) + POWER(x24,3)*
     POWER(x42,3) + POWER(x24,3)*POWER(x43,3) + POWER(x24,3)*POWER(x44,3) + 
     POWER(x24,3)*POWER(x45,3) + POWER(x24,3)*POWER(x46,3) + POWER(x24,3)*
     POWER(x47,3) + POWER(x24,3)*POWER(x48,3) + POWER(x24,3)*POWER(x49,3) + 
     POWER(x24,3)*POWER(x50,3) + POWER(x24,3)*POWER(x51,3) + POWER(x24,3)*
     POWER(x52,3) + POWER(x24,3)*POWER(x53,3) + POWER(x24,3)*POWER(x54,3) + 
     POWER(x24,3)*POWER(x55,3) + POWER(x24,3)*POWER(x56,3) + POWER(x24,3)*
     POWER(x57,3) + POWER(x24,3)*POWER(x58,3) + POWER(x24,3)*POWER(x59,3) + 
     POWER(x24,3)*POWER(x60,3) + POWER(x24,3)*POWER(x61,3) + POWER(x24,3)*
     POWER(x62,3) + POWER(x24,3)*POWER(x63,3) + POWER(x24,3)*POWER(x64,3) + 
     POWER(x24,3)*POWER(x65,3) + POWER(x24,3)*POWER(x66,3) + POWER(x24,3)*
     POWER(x67,3) + POWER(x24,3)*POWER(x68,3) + POWER(x24,3)*POWER(x69,3) + 
     POWER(x24,3)*POWER(x70,3) + POWER(x24,3)*POWER(x71,3) + POWER(x24,3)*
     POWER(x72,3) + POWER(x24,3)*POWER(x73,3) + POWER(x24,3)*POWER(x74,3) + 
     POWER(x24,3)*POWER(x75,3) + POWER(x24,3)*POWER(x76,3) + POWER(x24,3)*
     POWER(x77,3) + POWER(x24,3)*POWER(x78,3) + POWER(x24,3)*POWER(x79,3) + 
     POWER(x24,3)*POWER(x80,3) + POWER(x24,3)*POWER(x81,3) + POWER(x24,3)*
     POWER(x82,3) + POWER(x24,3)*POWER(x83,3) + POWER(x24,3)*POWER(x84,3) + 
     POWER(x24,3)*POWER(x85,3) + POWER(x24,3)*POWER(x86,3) + POWER(x24,3)*
     POWER(x87,3) + POWER(x24,3)*POWER(x88,3) + POWER(x24,3)*POWER(x89,3) + 
     POWER(x24,3)*POWER(x90,3) + POWER(x24,3)*POWER(x91,3) + POWER(x24,3)*
     POWER(x92,3) + POWER(x24,3)*POWER(x93,3) + POWER(x24,3)*POWER(x94,3) + 
     POWER(x24,3)*POWER(x95,3) + POWER(x24,3)*POWER(x96,3) + POWER(x24,3)*
     POWER(x97,3) + POWER(x24,3)*POWER(x98,3) + POWER(x24,3)*POWER(x99,3) + 
     POWER(x24,3)*POWER(x100,3) + POWER(x25,3)*POWER(x1,3) + POWER(x25,3)*
     POWER(x2,3) + POWER(x25,3)*POWER(x3,3) + POWER(x25,3)*POWER(x4,3) + POWER(
     x25,3)*POWER(x5,3) + POWER(x25,3)*POWER(x6,3) + POWER(x25,3)*POWER(x7,3)
      + POWER(x25,3)*POWER(x8,3) + POWER(x25,3)*POWER(x9,3) + POWER(x25,3)*
     POWER(x10,3) + POWER(x25,3)*POWER(x11,3) + POWER(x25,3)*POWER(x12,3) + 
     POWER(x25,3)*POWER(x13,3) + POWER(x25,3)*POWER(x14,3) + POWER(x25,3)*
     POWER(x15,3) + POWER(x25,3)*POWER(x16,3) + POWER(x25,3)*POWER(x17,3) + 
     POWER(x25,3)*POWER(x18,3) + POWER(x25,3)*POWER(x19,3) + POWER(x25,3)*
     POWER(x20,3) + POWER(x25,3)*POWER(x21,3) + POWER(x25,3)*POWER(x22,3) + 
     POWER(x25,3)*POWER(x23,3) + POWER(x25,3)*POWER(x24,3) + POWER(x25,3)*
     POWER(x25,3) + POWER(x25,3)*POWER(x26,3) + POWER(x25,3)*POWER(x27,3) + 
     POWER(x25,3)*POWER(x28,3) + POWER(x25,3)*POWER(x29,3) + POWER(x25,3)*
     POWER(x30,3) + POWER(x25,3)*POWER(x31,3) + POWER(x25,3)*POWER(x32,3) + 
     POWER(x25,3)*POWER(x33,3) + POWER(x25,3)*POWER(x34,3) + POWER(x25,3)*
     POWER(x35,3) + POWER(x25,3)*POWER(x36,3) + POWER(x25,3)*POWER(x37,3) + 
     POWER(x25,3)*POWER(x38,3) + POWER(x25,3)*POWER(x39,3) + POWER(x25,3)*
     POWER(x40,3) + POWER(x25,3)*POWER(x41,3) + POWER(x25,3)*POWER(x42,3) + 
     POWER(x25,3)*POWER(x43,3) + POWER(x25,3)*POWER(x44,3) + POWER(x25,3)*
     POWER(x45,3) + POWER(x25,3)*POWER(x46,3) + POWER(x25,3)*POWER(x47,3) + 
     POWER(x25,3)*POWER(x48,3) + POWER(x25,3)*POWER(x49,3) + POWER(x25,3)*
     POWER(x50,3) + POWER(x25,3)*POWER(x51,3) + POWER(x25,3)*POWER(x52,3) + 
     POWER(x25,3)*POWER(x53,3) + POWER(x25,3)*POWER(x54,3) + POWER(x25,3)*
     POWER(x55,3) + POWER(x25,3)*POWER(x56,3) + POWER(x25,3)*POWER(x57,3) + 
     POWER(x25,3)*POWER(x58,3) + POWER(x25,3)*POWER(x59,3) + POWER(x25,3)*
     POWER(x60,3) + POWER(x25,3)*POWER(x61,3) + POWER(x25,3)*POWER(x62,3) + 
     POWER(x25,3)*POWER(x63,3) + POWER(x25,3)*POWER(x64,3) + POWER(x25,3)*
     POWER(x65,3) + POWER(x25,3)*POWER(x66,3) + POWER(x25,3)*POWER(x67,3) + 
     POWER(x25,3)*POWER(x68,3) + POWER(x25,3)*POWER(x69,3) + POWER(x25,3)*
     POWER(x70,3) + POWER(x25,3)*POWER(x71,3) + POWER(x25,3)*POWER(x72,3) + 
     POWER(x25,3)*POWER(x73,3) + POWER(x25,3)*POWER(x74,3) + POWER(x25,3)*
     POWER(x75,3) + POWER(x25,3)*POWER(x76,3) + POWER(x25,3)*POWER(x77,3) + 
     POWER(x25,3)*POWER(x78,3) + POWER(x25,3)*POWER(x79,3) + POWER(x25,3)*
     POWER(x80,3) + POWER(x25,3)*POWER(x81,3) + POWER(x25,3)*POWER(x82,3) + 
     POWER(x25,3)*POWER(x83,3) + POWER(x25,3)*POWER(x84,3) + POWER(x25,3)*
     POWER(x85,3) + POWER(x25,3)*POWER(x86,3) + POWER(x25,3)*POWER(x87,3) + 
     POWER(x25,3)*POWER(x88,3) + POWER(x25,3)*POWER(x89,3) + POWER(x25,3)*
     POWER(x90,3) + POWER(x25,3)*POWER(x91,3) + POWER(x25,3)*POWER(x92,3) + 
     POWER(x25,3)*POWER(x93,3) + POWER(x25,3)*POWER(x94,3) + POWER(x25,3)*
     POWER(x95,3) + POWER(x25,3)*POWER(x96,3) + POWER(x25,3)*POWER(x97,3) + 
     POWER(x25,3)*POWER(x98,3) + POWER(x25,3)*POWER(x99,3) + POWER(x25,3)*
     POWER(x100,3) + POWER(x26,3)*POWER(x1,3) + POWER(x26,3)*POWER(x2,3) + 
     POWER(x26,3)*POWER(x3,3) + POWER(x26,3)*POWER(x4,3) + POWER(x26,3)*POWER(
     x5,3) + POWER(x26,3)*POWER(x6,3) + POWER(x26,3)*POWER(x7,3) + POWER(x26,3)
     *POWER(x8,3) + POWER(x26,3)*POWER(x9,3) + POWER(x26,3)*POWER(x10,3) + 
     POWER(x26,3)*POWER(x11,3) + POWER(x26,3)*POWER(x12,3) + POWER(x26,3)*
     POWER(x13,3) + POWER(x26,3)*POWER(x14,3) + POWER(x26,3)*POWER(x15,3) + 
     POWER(x26,3)*POWER(x16,3) + POWER(x26,3)*POWER(x17,3) + POWER(x26,3)*
     POWER(x18,3) + POWER(x26,3)*POWER(x19,3) + POWER(x26,3)*POWER(x20,3) + 
     POWER(x26,3)*POWER(x21,3) + POWER(x26,3)*POWER(x22,3) + POWER(x26,3)*
     POWER(x23,3) + POWER(x26,3)*POWER(x24,3) + POWER(x26,3)*POWER(x25,3) + 
     POWER(x26,3)*POWER(x26,3) + POWER(x26,3)*POWER(x27,3) + POWER(x26,3)*
     POWER(x28,3) + POWER(x26,3)*POWER(x29,3) + POWER(x26,3)*POWER(x30,3) + 
     POWER(x26,3)*POWER(x31,3) + POWER(x26,3)*POWER(x32,3) + POWER(x26,3)*
     POWER(x33,3) + POWER(x26,3)*POWER(x34,3) + POWER(x26,3)*POWER(x35,3) + 
     POWER(x26,3)*POWER(x36,3) + POWER(x26,3)*POWER(x37,3) + POWER(x26,3)*
     POWER(x38,3) + POWER(x26,3)*POWER(x39,3) + POWER(x26,3)*POWER(x40,3) + 
     POWER(x26,3)*POWER(x41,3) + POWER(x26,3)*POWER(x42,3) + POWER(x26,3)*
     POWER(x43,3) + POWER(x26,3)*POWER(x44,3) + POWER(x26,3)*POWER(x45,3) + 
     POWER(x26,3)*POWER(x46,3) + POWER(x26,3)*POWER(x47,3) + POWER(x26,3)*
     POWER(x48,3) + POWER(x26,3)*POWER(x49,3) + POWER(x26,3)*POWER(x50,3) + 
     POWER(x26,3)*POWER(x51,3) + POWER(x26,3)*POWER(x52,3) + POWER(x26,3)*
     POWER(x53,3) + POWER(x26,3)*POWER(x54,3) + POWER(x26,3)*POWER(x55,3) + 
     POWER(x26,3)*POWER(x56,3) + POWER(x26,3)*POWER(x57,3) + POWER(x26,3)*
     POWER(x58,3) + POWER(x26,3)*POWER(x59,3) + POWER(x26,3)*POWER(x60,3) + 
     POWER(x26,3)*POWER(x61,3) + POWER(x26,3)*POWER(x62,3) + POWER(x26,3)*
     POWER(x63,3) + POWER(x26,3)*POWER(x64,3) + POWER(x26,3)*POWER(x65,3) + 
     POWER(x26,3)*POWER(x66,3) + POWER(x26,3)*POWER(x67,3) + POWER(x26,3)*
     POWER(x68,3) + POWER(x26,3)*POWER(x69,3) + POWER(x26,3)*POWER(x70,3) + 
     POWER(x26,3)*POWER(x71,3) + POWER(x26,3)*POWER(x72,3) + POWER(x26,3)*
     POWER(x73,3) + POWER(x26,3)*POWER(x74,3) + POWER(x26,3)*POWER(x75,3) + 
     POWER(x26,3)*POWER(x76,3) + POWER(x26,3)*POWER(x77,3) + POWER(x26,3)*
     POWER(x78,3) + POWER(x26,3)*POWER(x79,3) + POWER(x26,3)*POWER(x80,3) + 
     POWER(x26,3)*POWER(x81,3) + POWER(x26,3)*POWER(x82,3) + POWER(x26,3)*
     POWER(x83,3) + POWER(x26,3)*POWER(x84,3) + POWER(x26,3)*POWER(x85,3) + 
     POWER(x26,3)*POWER(x86,3) + POWER(x26,3)*POWER(x87,3) + POWER(x26,3)*
     POWER(x88,3) + POWER(x26,3)*POWER(x89,3) + POWER(x26,3)*POWER(x90,3) + 
     POWER(x26,3)*POWER(x91,3) + POWER(x26,3)*POWER(x92,3) + POWER(x26,3)*
     POWER(x93,3) + POWER(x26,3)*POWER(x94,3) + POWER(x26,3)*POWER(x95,3) + 
     POWER(x26,3)*POWER(x96,3) + POWER(x26,3)*POWER(x97,3) + POWER(x26,3)*
     POWER(x98,3) + POWER(x26,3)*POWER(x99,3) + POWER(x26,3)*POWER(x100,3) + 
     POWER(x27,3)*POWER(x1,3) + POWER(x27,3)*POWER(x2,3) + POWER(x27,3)*POWER(
     x3,3) + POWER(x27,3)*POWER(x4,3) + POWER(x27,3)*POWER(x5,3) + POWER(x27,3)
     *POWER(x6,3) + POWER(x27,3)*POWER(x7,3) + POWER(x27,3)*POWER(x8,3) + 
     POWER(x27,3)*POWER(x9,3) + POWER(x27,3)*POWER(x10,3) + POWER(x27,3)*POWER(
     x11,3) + POWER(x27,3)*POWER(x12,3) + POWER(x27,3)*POWER(x13,3) + POWER(x27
     ,3)*POWER(x14,3) + POWER(x27,3)*POWER(x15,3) + POWER(x27,3)*POWER(x16,3)
      + POWER(x27,3)*POWER(x17,3) + POWER(x27,3)*POWER(x18,3) + POWER(x27,3)*
     POWER(x19,3) + POWER(x27,3)*POWER(x20,3) + POWER(x27,3)*POWER(x21,3) + 
     POWER(x27,3)*POWER(x22,3) + POWER(x27,3)*POWER(x23,3) + POWER(x27,3)*
     POWER(x24,3) + POWER(x27,3)*POWER(x25,3) + POWER(x27,3)*POWER(x26,3) + 
     POWER(x27,3)*POWER(x27,3) + POWER(x27,3)*POWER(x28,3) + POWER(x27,3)*
     POWER(x29,3) + POWER(x27,3)*POWER(x30,3) + POWER(x27,3)*POWER(x31,3) + 
     POWER(x27,3)*POWER(x32,3) + POWER(x27,3)*POWER(x33,3) + POWER(x27,3)*
     POWER(x34,3) + POWER(x27,3)*POWER(x35,3) + POWER(x27,3)*POWER(x36,3) + 
     POWER(x27,3)*POWER(x37,3) + POWER(x27,3)*POWER(x38,3) + POWER(x27,3)*
     POWER(x39,3) + POWER(x27,3)*POWER(x40,3) + POWER(x27,3)*POWER(x41,3) + 
     POWER(x27,3)*POWER(x42,3) + POWER(x27,3)*POWER(x43,3) + POWER(x27,3)*
     POWER(x44,3) + POWER(x27,3)*POWER(x45,3) + POWER(x27,3)*POWER(x46,3) + 
     POWER(x27,3)*POWER(x47,3) + POWER(x27,3)*POWER(x48,3) + POWER(x27,3)*
     POWER(x49,3) + POWER(x27,3)*POWER(x50,3) + POWER(x27,3)*POWER(x51,3) + 
     POWER(x27,3)*POWER(x52,3) + POWER(x27,3)*POWER(x53,3) + POWER(x27,3)*
     POWER(x54,3) + POWER(x27,3)*POWER(x55,3) + POWER(x27,3)*POWER(x56,3) + 
     POWER(x27,3)*POWER(x57,3) + POWER(x27,3)*POWER(x58,3) + POWER(x27,3)*
     POWER(x59,3) + POWER(x27,3)*POWER(x60,3) + POWER(x27,3)*POWER(x61,3) + 
     POWER(x27,3)*POWER(x62,3) + POWER(x27,3)*POWER(x63,3) + POWER(x27,3)*
     POWER(x64,3) + POWER(x27,3)*POWER(x65,3) + POWER(x27,3)*POWER(x66,3) + 
     POWER(x27,3)*POWER(x67,3) + POWER(x27,3)*POWER(x68,3) + POWER(x27,3)*
     POWER(x69,3) + POWER(x27,3)*POWER(x70,3) + POWER(x27,3)*POWER(x71,3) + 
     POWER(x27,3)*POWER(x72,3) + POWER(x27,3)*POWER(x73,3) + POWER(x27,3)*
     POWER(x74,3) + POWER(x27,3)*POWER(x75,3) + POWER(x27,3)*POWER(x76,3) + 
     POWER(x27,3)*POWER(x77,3) + POWER(x27,3)*POWER(x78,3) + POWER(x27,3)*
     POWER(x79,3) + POWER(x27,3)*POWER(x80,3) + POWER(x27,3)*POWER(x81,3) + 
     POWER(x27,3)*POWER(x82,3) + POWER(x27,3)*POWER(x83,3) + POWER(x27,3)*
     POWER(x84,3) + POWER(x27,3)*POWER(x85,3) + POWER(x27,3)*POWER(x86,3) + 
     POWER(x27,3)*POWER(x87,3) + POWER(x27,3)*POWER(x88,3) + POWER(x27,3)*
     POWER(x89,3) + POWER(x27,3)*POWER(x90,3) + POWER(x27,3)*POWER(x91,3) + 
     POWER(x27,3)*POWER(x92,3) + POWER(x27,3)*POWER(x93,3) + POWER(x27,3)*
     POWER(x94,3) + POWER(x27,3)*POWER(x95,3) + POWER(x27,3)*POWER(x96,3) + 
     POWER(x27,3)*POWER(x97,3) + POWER(x27,3)*POWER(x98,3) + POWER(x27,3)*
     POWER(x99,3) + POWER(x27,3)*POWER(x100,3) + POWER(x28,3)*POWER(x1,3) + 
     POWER(x28,3)*POWER(x2,3) + POWER(x28,3)*POWER(x3,3) + POWER(x28,3)*POWER(
     x4,3) + POWER(x28,3)*POWER(x5,3) + POWER(x28,3)*POWER(x6,3) + POWER(x28,3)
     *POWER(x7,3) + POWER(x28,3)*POWER(x8,3) + POWER(x28,3)*POWER(x9,3) + 
     POWER(x28,3)*POWER(x10,3) + POWER(x28,3)*POWER(x11,3) + POWER(x28,3)*
     POWER(x12,3) + POWER(x28,3)*POWER(x13,3) + POWER(x28,3)*POWER(x14,3) + 
     POWER(x28,3)*POWER(x15,3) + POWER(x28,3)*POWER(x16,3) + POWER(x28,3)*
     POWER(x17,3) + POWER(x28,3)*POWER(x18,3) + POWER(x28,3)*POWER(x19,3) + 
     POWER(x28,3)*POWER(x20,3) + POWER(x28,3)*POWER(x21,3) + POWER(x28,3)*
     POWER(x22,3) + POWER(x28,3)*POWER(x23,3) + POWER(x28,3)*POWER(x24,3) + 
     POWER(x28,3)*POWER(x25,3) + POWER(x28,3)*POWER(x26,3) + POWER(x28,3)*
     POWER(x27,3) + POWER(x28,3)*POWER(x28,3) + POWER(x28,3)*POWER(x29,3) + 
     POWER(x28,3)*POWER(x30,3) + POWER(x28,3)*POWER(x31,3) + POWER(x28,3)*
     POWER(x32,3) + POWER(x28,3)*POWER(x33,3) + POWER(x28,3)*POWER(x34,3) + 
     POWER(x28,3)*POWER(x35,3) + POWER(x28,3)*POWER(x36,3) + POWER(x28,3)*
     POWER(x37,3) + POWER(x28,3)*POWER(x38,3) + POWER(x28,3)*POWER(x39,3) + 
     POWER(x28,3)*POWER(x40,3) + POWER(x28,3)*POWER(x41,3) + POWER(x28,3)*
     POWER(x42,3) + POWER(x28,3)*POWER(x43,3) + POWER(x28,3)*POWER(x44,3) + 
     POWER(x28,3)*POWER(x45,3) + POWER(x28,3)*POWER(x46,3) + POWER(x28,3)*
     POWER(x47,3) + POWER(x28,3)*POWER(x48,3) + POWER(x28,3)*POWER(x49,3) + 
     POWER(x28,3)*POWER(x50,3) + POWER(x28,3)*POWER(x51,3) + POWER(x28,3)*
     POWER(x52,3) + POWER(x28,3)*POWER(x53,3) + POWER(x28,3)*POWER(x54,3) + 
     POWER(x28,3)*POWER(x55,3) + POWER(x28,3)*POWER(x56,3) + POWER(x28,3)*
     POWER(x57,3) + POWER(x28,3)*POWER(x58,3) + POWER(x28,3)*POWER(x59,3) + 
     POWER(x28,3)*POWER(x60,3) + POWER(x28,3)*POWER(x61,3) + POWER(x28,3)*
     POWER(x62,3) + POWER(x28,3)*POWER(x63,3) + POWER(x28,3)*POWER(x64,3) + 
     POWER(x28,3)*POWER(x65,3) + POWER(x28,3)*POWER(x66,3) + POWER(x28,3)*
     POWER(x67,3) + POWER(x28,3)*POWER(x68,3) + POWER(x28,3)*POWER(x69,3) + 
     POWER(x28,3)*POWER(x70,3) + POWER(x28,3)*POWER(x71,3) + POWER(x28,3)*
     POWER(x72,3) + POWER(x28,3)*POWER(x73,3) + POWER(x28,3)*POWER(x74,3) + 
     POWER(x28,3)*POWER(x75,3) + POWER(x28,3)*POWER(x76,3) + POWER(x28,3)*
     POWER(x77,3) + POWER(x28,3)*POWER(x78,3) + POWER(x28,3)*POWER(x79,3) + 
     POWER(x28,3)*POWER(x80,3) + POWER(x28,3)*POWER(x81,3) + POWER(x28,3)*
     POWER(x82,3) + POWER(x28,3)*POWER(x83,3) + POWER(x28,3)*POWER(x84,3) + 
     POWER(x28,3)*POWER(x85,3) + POWER(x28,3)*POWER(x86,3) + POWER(x28,3)*
     POWER(x87,3) + POWER(x28,3)*POWER(x88,3) + POWER(x28,3)*POWER(x89,3) + 
     POWER(x28,3)*POWER(x90,3) + POWER(x28,3)*POWER(x91,3) + POWER(x28,3)*
     POWER(x92,3) + POWER(x28,3)*POWER(x93,3) + POWER(x28,3)*POWER(x94,3) + 
     POWER(x28,3)*POWER(x95,3) + POWER(x28,3)*POWER(x96,3) + POWER(x28,3)*
     POWER(x97,3) + POWER(x28,3)*POWER(x98,3) + POWER(x28,3)*POWER(x99,3) + 
     POWER(x28,3)*POWER(x100,3) + POWER(x29,3)*POWER(x1,3) + POWER(x29,3)*
     POWER(x2,3) + POWER(x29,3)*POWER(x3,3) + POWER(x29,3)*POWER(x4,3) + POWER(
     x29,3)*POWER(x5,3) + POWER(x29,3)*POWER(x6,3) + POWER(x29,3)*POWER(x7,3)
      + POWER(x29,3)*POWER(x8,3) + POWER(x29,3)*POWER(x9,3) + POWER(x29,3)*
     POWER(x10,3) + POWER(x29,3)*POWER(x11,3) + POWER(x29,3)*POWER(x12,3) + 
     POWER(x29,3)*POWER(x13,3) + POWER(x29,3)*POWER(x14,3) + POWER(x29,3)*
     POWER(x15,3) + POWER(x29,3)*POWER(x16,3) + POWER(x29,3)*POWER(x17,3) + 
     POWER(x29,3)*POWER(x18,3) + POWER(x29,3)*POWER(x19,3) + POWER(x29,3)*
     POWER(x20,3) + POWER(x29,3)*POWER(x21,3) + POWER(x29,3)*POWER(x22,3) + 
     POWER(x29,3)*POWER(x23,3) + POWER(x29,3)*POWER(x24,3) + POWER(x29,3)*
     POWER(x25,3) + POWER(x29,3)*POWER(x26,3) + POWER(x29,3)*POWER(x27,3) + 
     POWER(x29,3)*POWER(x28,3) + POWER(x29,3)*POWER(x29,3) + POWER(x29,3)*
     POWER(x30,3) + POWER(x29,3)*POWER(x31,3) + POWER(x29,3)*POWER(x32,3) + 
     POWER(x29,3)*POWER(x33,3) + POWER(x29,3)*POWER(x34,3) + POWER(x29,3)*
     POWER(x35,3) + POWER(x29,3)*POWER(x36,3) + POWER(x29,3)*POWER(x37,3) + 
     POWER(x29,3)*POWER(x38,3) + POWER(x29,3)*POWER(x39,3) + POWER(x29,3)*
     POWER(x40,3) + POWER(x29,3)*POWER(x41,3) + POWER(x29,3)*POWER(x42,3) + 
     POWER(x29,3)*POWER(x43,3) + POWER(x29,3)*POWER(x44,3) + POWER(x29,3)*
     POWER(x45,3) + POWER(x29,3)*POWER(x46,3) + POWER(x29,3)*POWER(x47,3) + 
     POWER(x29,3)*POWER(x48,3) + POWER(x29,3)*POWER(x49,3) + POWER(x29,3)*
     POWER(x50,3) + POWER(x29,3)*POWER(x51,3) + POWER(x29,3)*POWER(x52,3) + 
     POWER(x29,3)*POWER(x53,3) + POWER(x29,3)*POWER(x54,3) + POWER(x29,3)*
     POWER(x55,3) + POWER(x29,3)*POWER(x56,3) + POWER(x29,3)*POWER(x57,3) + 
     POWER(x29,3)*POWER(x58,3) + POWER(x29,3)*POWER(x59,3) + POWER(x29,3)*
     POWER(x60,3) + POWER(x29,3)*POWER(x61,3) + POWER(x29,3)*POWER(x62,3) + 
     POWER(x29,3)*POWER(x63,3) + POWER(x29,3)*POWER(x64,3) + POWER(x29,3)*
     POWER(x65,3) + POWER(x29,3)*POWER(x66,3) + POWER(x29,3)*POWER(x67,3) + 
     POWER(x29,3)*POWER(x68,3) + POWER(x29,3)*POWER(x69,3) + POWER(x29,3)*
     POWER(x70,3) + POWER(x29,3)*POWER(x71,3) + POWER(x29,3)*POWER(x72,3) + 
     POWER(x29,3)*POWER(x73,3) + POWER(x29,3)*POWER(x74,3) + POWER(x29,3)*
     POWER(x75,3) + POWER(x29,3)*POWER(x76,3) + POWER(x29,3)*POWER(x77,3) + 
     POWER(x29,3)*POWER(x78,3) + POWER(x29,3)*POWER(x79,3) + POWER(x29,3)*
     POWER(x80,3) + POWER(x29,3)*POWER(x81,3) + POWER(x29,3)*POWER(x82,3) + 
     POWER(x29,3)*POWER(x83,3) + POWER(x29,3)*POWER(x84,3) + POWER(x29,3)*
     POWER(x85,3) + POWER(x29,3)*POWER(x86,3) + POWER(x29,3)*POWER(x87,3) + 
     POWER(x29,3)*POWER(x88,3) + POWER(x29,3)*POWER(x89,3) + POWER(x29,3)*
     POWER(x90,3) + POWER(x29,3)*POWER(x91,3) + POWER(x29,3)*POWER(x92,3) + 
     POWER(x29,3)*POWER(x93,3) + POWER(x29,3)*POWER(x94,3) + POWER(x29,3)*
     POWER(x95,3) + POWER(x29,3)*POWER(x96,3) + POWER(x29,3)*POWER(x97,3) + 
     POWER(x29,3)*POWER(x98,3) + POWER(x29,3)*POWER(x99,3) + POWER(x29,3)*
     POWER(x100,3) + POWER(x30,3)*POWER(x1,3) + POWER(x30,3)*POWER(x2,3) + 
     POWER(x30,3)*POWER(x3,3) + POWER(x30,3)*POWER(x4,3) + POWER(x30,3)*POWER(
     x5,3) + POWER(x30,3)*POWER(x6,3) + POWER(x30,3)*POWER(x7,3) + POWER(x30,3)
     *POWER(x8,3) + POWER(x30,3)*POWER(x9,3) + POWER(x30,3)*POWER(x10,3) + 
     POWER(x30,3)*POWER(x11,3) + POWER(x30,3)*POWER(x12,3) + POWER(x30,3)*
     POWER(x13,3) + POWER(x30,3)*POWER(x14,3) + POWER(x30,3)*POWER(x15,3) + 
     POWER(x30,3)*POWER(x16,3) + POWER(x30,3)*POWER(x17,3) + POWER(x30,3)*
     POWER(x18,3) + POWER(x30,3)*POWER(x19,3) + POWER(x30,3)*POWER(x20,3) + 
     POWER(x30,3)*POWER(x21,3) + POWER(x30,3)*POWER(x22,3) + POWER(x30,3)*
     POWER(x23,3) + POWER(x30,3)*POWER(x24,3) + POWER(x30,3)*POWER(x25,3) + 
     POWER(x30,3)*POWER(x26,3) + POWER(x30,3)*POWER(x27,3) + POWER(x30,3)*
     POWER(x28,3) + POWER(x30,3)*POWER(x29,3) + POWER(x30,3)*POWER(x30,3) + 
     POWER(x30,3)*POWER(x31,3) + POWER(x30,3)*POWER(x32,3) + POWER(x30,3)*
     POWER(x33,3) + POWER(x30,3)*POWER(x34,3) + POWER(x30,3)*POWER(x35,3) + 
     POWER(x30,3)*POWER(x36,3) + POWER(x30,3)*POWER(x37,3) + POWER(x30,3)*
     POWER(x38,3) + POWER(x30,3)*POWER(x39,3) + POWER(x30,3)*POWER(x40,3) + 
     POWER(x30,3)*POWER(x41,3) + POWER(x30,3)*POWER(x42,3) + POWER(x30,3)*
     POWER(x43,3) + POWER(x30,3)*POWER(x44,3) + POWER(x30,3)*POWER(x45,3) + 
     POWER(x30,3)*POWER(x46,3) + POWER(x30,3)*POWER(x47,3) + POWER(x30,3)*
     POWER(x48,3) + POWER(x30,3)*POWER(x49,3) + POWER(x30,3)*POWER(x50,3) + 
     POWER(x30,3)*POWER(x51,3) + POWER(x30,3)*POWER(x52,3) + POWER(x30,3)*
     POWER(x53,3) + POWER(x30,3)*POWER(x54,3) + POWER(x30,3)*POWER(x55,3) + 
     POWER(x30,3)*POWER(x56,3) + POWER(x30,3)*POWER(x57,3) + POWER(x30,3)*
     POWER(x58,3) + POWER(x30,3)*POWER(x59,3) + POWER(x30,3)*POWER(x60,3) + 
     POWER(x30,3)*POWER(x61,3) + POWER(x30,3)*POWER(x62,3) + POWER(x30,3)*
     POWER(x63,3) + POWER(x30,3)*POWER(x64,3) + POWER(x30,3)*POWER(x65,3) + 
     POWER(x30,3)*POWER(x66,3) + POWER(x30,3)*POWER(x67,3) + POWER(x30,3)*
     POWER(x68,3) + POWER(x30,3)*POWER(x69,3) + POWER(x30,3)*POWER(x70,3) + 
     POWER(x30,3)*POWER(x71,3) + POWER(x30,3)*POWER(x72,3) + POWER(x30,3)*
     POWER(x73,3) + POWER(x30,3)*POWER(x74,3) + POWER(x30,3)*POWER(x75,3) + 
     POWER(x30,3)*POWER(x76,3) + POWER(x30,3)*POWER(x77,3) + POWER(x30,3)*
     POWER(x78,3) + POWER(x30,3)*POWER(x79,3) + POWER(x30,3)*POWER(x80,3) + 
     POWER(x30,3)*POWER(x81,3) + POWER(x30,3)*POWER(x82,3) + POWER(x30,3)*
     POWER(x83,3) + POWER(x30,3)*POWER(x84,3) + POWER(x30,3)*POWER(x85,3) + 
     POWER(x30,3)*POWER(x86,3) + POWER(x30,3)*POWER(x87,3) + POWER(x30,3)*
     POWER(x88,3) + POWER(x30,3)*POWER(x89,3) + POWER(x30,3)*POWER(x90,3) + 
     POWER(x30,3)*POWER(x91,3) + POWER(x30,3)*POWER(x92,3) + POWER(x30,3)*
     POWER(x93,3) + POWER(x30,3)*POWER(x94,3) + POWER(x30,3)*POWER(x95,3) + 
     POWER(x30,3)*POWER(x96,3) + POWER(x30,3)*POWER(x97,3) + POWER(x30,3)*
     POWER(x98,3) + POWER(x30,3)*POWER(x99,3) + POWER(x30,3)*POWER(x100,3) + 
     POWER(x31,3)*POWER(x1,3) + POWER(x31,3)*POWER(x2,3) + POWER(x31,3)*POWER(
     x3,3) + POWER(x31,3)*POWER(x4,3) + POWER(x31,3)*POWER(x5,3) + POWER(x31,3)
     *POWER(x6,3) + POWER(x31,3)*POWER(x7,3) + POWER(x31,3)*POWER(x8,3) + 
     POWER(x31,3)*POWER(x9,3) + POWER(x31,3)*POWER(x10,3) + POWER(x31,3)*POWER(
     x11,3) + POWER(x31,3)*POWER(x12,3) + POWER(x31,3)*POWER(x13,3) + POWER(x31
     ,3)*POWER(x14,3) + POWER(x31,3)*POWER(x15,3) + POWER(x31,3)*POWER(x16,3)
      + POWER(x31,3)*POWER(x17,3) + POWER(x31,3)*POWER(x18,3) + POWER(x31,3)*
     POWER(x19,3) + POWER(x31,3)*POWER(x20,3) + POWER(x31,3)*POWER(x21,3) + 
     POWER(x31,3)*POWER(x22,3) + POWER(x31,3)*POWER(x23,3) + POWER(x31,3)*
     POWER(x24,3) + POWER(x31,3)*POWER(x25,3) + POWER(x31,3)*POWER(x26,3) + 
     POWER(x31,3)*POWER(x27,3) + POWER(x31,3)*POWER(x28,3) + POWER(x31,3)*
     POWER(x29,3) + POWER(x31,3)*POWER(x30,3) + POWER(x31,3)*POWER(x31,3) + 
     POWER(x31,3)*POWER(x32,3) + POWER(x31,3)*POWER(x33,3) + POWER(x31,3)*
     POWER(x34,3) + POWER(x31,3)*POWER(x35,3) + POWER(x31,3)*POWER(x36,3) + 
     POWER(x31,3)*POWER(x37,3) + POWER(x31,3)*POWER(x38,3) + POWER(x31,3)*
     POWER(x39,3) + POWER(x31,3)*POWER(x40,3) + POWER(x31,3)*POWER(x41,3) + 
     POWER(x31,3)*POWER(x42,3) + POWER(x31,3)*POWER(x43,3) + POWER(x31,3)*
     POWER(x44,3) + POWER(x31,3)*POWER(x45,3) + POWER(x31,3)*POWER(x46,3) + 
     POWER(x31,3)*POWER(x47,3) + POWER(x31,3)*POWER(x48,3) + POWER(x31,3)*
     POWER(x49,3) + POWER(x31,3)*POWER(x50,3) + POWER(x31,3)*POWER(x51,3) + 
     POWER(x31,3)*POWER(x52,3) + POWER(x31,3)*POWER(x53,3) + POWER(x31,3)*
     POWER(x54,3) + POWER(x31,3)*POWER(x55,3) + POWER(x31,3)*POWER(x56,3) + 
     POWER(x31,3)*POWER(x57,3) + POWER(x31,3)*POWER(x58,3) + POWER(x31,3)*
     POWER(x59,3) + POWER(x31,3)*POWER(x60,3) + POWER(x31,3)*POWER(x61,3) + 
     POWER(x31,3)*POWER(x62,3) + POWER(x31,3)*POWER(x63,3) + POWER(x31,3)*
     POWER(x64,3) + POWER(x31,3)*POWER(x65,3) + POWER(x31,3)*POWER(x66,3) + 
     POWER(x31,3)*POWER(x67,3) + POWER(x31,3)*POWER(x68,3) + POWER(x31,3)*
     POWER(x69,3) + POWER(x31,3)*POWER(x70,3) + POWER(x31,3)*POWER(x71,3) + 
     POWER(x31,3)*POWER(x72,3) + POWER(x31,3)*POWER(x73,3) + POWER(x31,3)*
     POWER(x74,3) + POWER(x31,3)*POWER(x75,3) + POWER(x31,3)*POWER(x76,3) + 
     POWER(x31,3)*POWER(x77,3) + POWER(x31,3)*POWER(x78,3) + POWER(x31,3)*
     POWER(x79,3) + POWER(x31,3)*POWER(x80,3) + POWER(x31,3)*POWER(x81,3) + 
     POWER(x31,3)*POWER(x82,3) + POWER(x31,3)*POWER(x83,3) + POWER(x31,3)*
     POWER(x84,3) + POWER(x31,3)*POWER(x85,3) + POWER(x31,3)*POWER(x86,3) + 
     POWER(x31,3)*POWER(x87,3) + POWER(x31,3)*POWER(x88,3) + POWER(x31,3)*
     POWER(x89,3) + POWER(x31,3)*POWER(x90,3) + POWER(x31,3)*POWER(x91,3) + 
     POWER(x31,3)*POWER(x92,3) + POWER(x31,3)*POWER(x93,3) + POWER(x31,3)*
     POWER(x94,3) + POWER(x31,3)*POWER(x95,3) + POWER(x31,3)*POWER(x96,3) + 
     POWER(x31,3)*POWER(x97,3) + POWER(x31,3)*POWER(x98,3) + POWER(x31,3)*
     POWER(x99,3) + POWER(x31,3)*POWER(x100,3) + POWER(x32,3)*POWER(x1,3) + 
     POWER(x32,3)*POWER(x2,3) + POWER(x32,3)*POWER(x3,3) + POWER(x32,3)*POWER(
     x4,3) + POWER(x32,3)*POWER(x5,3) + POWER(x32,3)*POWER(x6,3) + POWER(x32,3)
     *POWER(x7,3) + POWER(x32,3)*POWER(x8,3) + POWER(x32,3)*POWER(x9,3) + 
     POWER(x32,3)*POWER(x10,3) + POWER(x32,3)*POWER(x11,3) + POWER(x32,3)*
     POWER(x12,3) + POWER(x32,3)*POWER(x13,3) + POWER(x32,3)*POWER(x14,3) + 
     POWER(x32,3)*POWER(x15,3) + POWER(x32,3)*POWER(x16,3) + POWER(x32,3)*
     POWER(x17,3) + POWER(x32,3)*POWER(x18,3) + POWER(x32,3)*POWER(x19,3) + 
     POWER(x32,3)*POWER(x20,3) + POWER(x32,3)*POWER(x21,3) + POWER(x32,3)*
     POWER(x22,3) + POWER(x32,3)*POWER(x23,3) + POWER(x32,3)*POWER(x24,3) + 
     POWER(x32,3)*POWER(x25,3) + POWER(x32,3)*POWER(x26,3) + POWER(x32,3)*
     POWER(x27,3) + POWER(x32,3)*POWER(x28,3) + POWER(x32,3)*POWER(x29,3) + 
     POWER(x32,3)*POWER(x30,3) + POWER(x32,3)*POWER(x31,3) + POWER(x32,3)*
     POWER(x32,3) + POWER(x32,3)*POWER(x33,3) + POWER(x32,3)*POWER(x34,3) + 
     POWER(x32,3)*POWER(x35,3) + POWER(x32,3)*POWER(x36,3) + POWER(x32,3)*
     POWER(x37,3) + POWER(x32,3)*POWER(x38,3) + POWER(x32,3)*POWER(x39,3) + 
     POWER(x32,3)*POWER(x40,3) + POWER(x32,3)*POWER(x41,3) + POWER(x32,3)*
     POWER(x42,3) + POWER(x32,3)*POWER(x43,3) + POWER(x32,3)*POWER(x44,3) + 
     POWER(x32,3)*POWER(x45,3) + POWER(x32,3)*POWER(x46,3) + POWER(x32,3)*
     POWER(x47,3) + POWER(x32,3)*POWER(x48,3) + POWER(x32,3)*POWER(x49,3) + 
     POWER(x32,3)*POWER(x50,3) + POWER(x32,3)*POWER(x51,3) + POWER(x32,3)*
     POWER(x52,3) + POWER(x32,3)*POWER(x53,3) + POWER(x32,3)*POWER(x54,3) + 
     POWER(x32,3)*POWER(x55,3) + POWER(x32,3)*POWER(x56,3) + POWER(x32,3)*
     POWER(x57,3) + POWER(x32,3)*POWER(x58,3) + POWER(x32,3)*POWER(x59,3) + 
     POWER(x32,3)*POWER(x60,3) + POWER(x32,3)*POWER(x61,3) + POWER(x32,3)*
     POWER(x62,3) + POWER(x32,3)*POWER(x63,3) + POWER(x32,3)*POWER(x64,3) + 
     POWER(x32,3)*POWER(x65,3) + POWER(x32,3)*POWER(x66,3) + POWER(x32,3)*
     POWER(x67,3) + POWER(x32,3)*POWER(x68,3) + POWER(x32,3)*POWER(x69,3) + 
     POWER(x32,3)*POWER(x70,3) + POWER(x32,3)*POWER(x71,3) + POWER(x32,3)*
     POWER(x72,3) + POWER(x32,3)*POWER(x73,3) + POWER(x32,3)*POWER(x74,3) + 
     POWER(x32,3)*POWER(x75,3) + POWER(x32,3)*POWER(x76,3) + POWER(x32,3)*
     POWER(x77,3) + POWER(x32,3)*POWER(x78,3) + POWER(x32,3)*POWER(x79,3) + 
     POWER(x32,3)*POWER(x80,3) + POWER(x32,3)*POWER(x81,3) + POWER(x32,3)*
     POWER(x82,3) + POWER(x32,3)*POWER(x83,3) + POWER(x32,3)*POWER(x84,3) + 
     POWER(x32,3)*POWER(x85,3) + POWER(x32,3)*POWER(x86,3) + POWER(x32,3)*
     POWER(x87,3) + POWER(x32,3)*POWER(x88,3) + POWER(x32,3)*POWER(x89,3) + 
     POWER(x32,3)*POWER(x90,3) + POWER(x32,3)*POWER(x91,3) + POWER(x32,3)*
     POWER(x92,3) + POWER(x32,3)*POWER(x93,3) + POWER(x32,3)*POWER(x94,3) + 
     POWER(x32,3)*POWER(x95,3) + POWER(x32,3)*POWER(x96,3) + POWER(x32,3)*
     POWER(x97,3) + POWER(x32,3)*POWER(x98,3) + POWER(x32,3)*POWER(x99,3) + 
     POWER(x32,3)*POWER(x100,3) + POWER(x33,3)*POWER(x1,3) + POWER(x33,3)*
     POWER(x2,3) + POWER(x33,3)*POWER(x3,3) + POWER(x33,3)*POWER(x4,3) + POWER(
     x33,3)*POWER(x5,3) + POWER(x33,3)*POWER(x6,3) + POWER(x33,3)*POWER(x7,3)
      + POWER(x33,3)*POWER(x8,3) + POWER(x33,3)*POWER(x9,3) + POWER(x33,3)*
     POWER(x10,3) + POWER(x33,3)*POWER(x11,3) + POWER(x33,3)*POWER(x12,3) + 
     POWER(x33,3)*POWER(x13,3) + POWER(x33,3)*POWER(x14,3) + POWER(x33,3)*
     POWER(x15,3) + POWER(x33,3)*POWER(x16,3) + POWER(x33,3)*POWER(x17,3) + 
     POWER(x33,3)*POWER(x18,3) + POWER(x33,3)*POWER(x19,3) + POWER(x33,3)*
     POWER(x20,3) + POWER(x33,3)*POWER(x21,3) + POWER(x33,3)*POWER(x22,3) + 
     POWER(x33,3)*POWER(x23,3) + POWER(x33,3)*POWER(x24,3) + POWER(x33,3)*
     POWER(x25,3) + POWER(x33,3)*POWER(x26,3) + POWER(x33,3)*POWER(x27,3) + 
     POWER(x33,3)*POWER(x28,3) + POWER(x33,3)*POWER(x29,3) + POWER(x33,3)*
     POWER(x30,3) + POWER(x33,3)*POWER(x31,3) + POWER(x33,3)*POWER(x32,3) + 
     POWER(x33,3)*POWER(x33,3) + POWER(x33,3)*POWER(x34,3) + POWER(x33,3)*
     POWER(x35,3) + POWER(x33,3)*POWER(x36,3) + POWER(x33,3)*POWER(x37,3) + 
     POWER(x33,3)*POWER(x38,3) + POWER(x33,3)*POWER(x39,3) + POWER(x33,3)*
     POWER(x40,3) + POWER(x33,3)*POWER(x41,3) + POWER(x33,3)*POWER(x42,3) + 
     POWER(x33,3)*POWER(x43,3) + POWER(x33,3)*POWER(x44,3) + POWER(x33,3)*
     POWER(x45,3) + POWER(x33,3)*POWER(x46,3) + POWER(x33,3)*POWER(x47,3) + 
     POWER(x33,3)*POWER(x48,3) + POWER(x33,3)*POWER(x49,3) + POWER(x33,3)*
     POWER(x50,3) + POWER(x33,3)*POWER(x51,3) + POWER(x33,3)*POWER(x52,3) + 
     POWER(x33,3)*POWER(x53,3) + POWER(x33,3)*POWER(x54,3) + POWER(x33,3)*
     POWER(x55,3) + POWER(x33,3)*POWER(x56,3) + POWER(x33,3)*POWER(x57,3) + 
     POWER(x33,3)*POWER(x58,3) + POWER(x33,3)*POWER(x59,3) + POWER(x33,3)*
     POWER(x60,3) + POWER(x33,3)*POWER(x61,3) + POWER(x33,3)*POWER(x62,3) + 
     POWER(x33,3)*POWER(x63,3) + POWER(x33,3)*POWER(x64,3) + POWER(x33,3)*
     POWER(x65,3) + POWER(x33,3)*POWER(x66,3) + POWER(x33,3)*POWER(x67,3) + 
     POWER(x33,3)*POWER(x68,3) + POWER(x33,3)*POWER(x69,3) + POWER(x33,3)*
     POWER(x70,3) + POWER(x33,3)*POWER(x71,3) + POWER(x33,3)*POWER(x72,3) + 
     POWER(x33,3)*POWER(x73,3) + POWER(x33,3)*POWER(x74,3) + POWER(x33,3)*
     POWER(x75,3) + POWER(x33,3)*POWER(x76,3) + POWER(x33,3)*POWER(x77,3) + 
     POWER(x33,3)*POWER(x78,3) + POWER(x33,3)*POWER(x79,3) + POWER(x33,3)*
     POWER(x80,3) + POWER(x33,3)*POWER(x81,3) + POWER(x33,3)*POWER(x82,3) + 
     POWER(x33,3)*POWER(x83,3) + POWER(x33,3)*POWER(x84,3) + POWER(x33,3)*
     POWER(x85,3) + POWER(x33,3)*POWER(x86,3) + POWER(x33,3)*POWER(x87,3) + 
     POWER(x33,3)*POWER(x88,3) + POWER(x33,3)*POWER(x89,3) + POWER(x33,3)*
     POWER(x90,3) + POWER(x33,3)*POWER(x91,3) + POWER(x33,3)*POWER(x92,3) + 
     POWER(x33,3)*POWER(x93,3) + POWER(x33,3)*POWER(x94,3) + POWER(x33,3)*
     POWER(x95,3) + POWER(x33,3)*POWER(x96,3) + POWER(x33,3)*POWER(x97,3) + 
     POWER(x33,3)*POWER(x98,3) + POWER(x33,3)*POWER(x99,3) + POWER(x33,3)*
     POWER(x100,3) + POWER(x34,3)*POWER(x1,3) + POWER(x34,3)*POWER(x2,3) + 
     POWER(x34,3)*POWER(x3,3) + POWER(x34,3)*POWER(x4,3) + POWER(x34,3)*POWER(
     x5,3) + POWER(x34,3)*POWER(x6,3) + POWER(x34,3)*POWER(x7,3) + POWER(x34,3)
     *POWER(x8,3) + POWER(x34,3)*POWER(x9,3) + POWER(x34,3)*POWER(x10,3) + 
     POWER(x34,3)*POWER(x11,3) + POWER(x34,3)*POWER(x12,3) + POWER(x34,3)*
     POWER(x13,3) + POWER(x34,3)*POWER(x14,3) + POWER(x34,3)*POWER(x15,3) + 
     POWER(x34,3)*POWER(x16,3) + POWER(x34,3)*POWER(x17,3) + POWER(x34,3)*
     POWER(x18,3) + POWER(x34,3)*POWER(x19,3) + POWER(x34,3)*POWER(x20,3) + 
     POWER(x34,3)*POWER(x21,3) + POWER(x34,3)*POWER(x22,3) + POWER(x34,3)*
     POWER(x23,3) + POWER(x34,3)*POWER(x24,3) + POWER(x34,3)*POWER(x25,3) + 
     POWER(x34,3)*POWER(x26,3) + POWER(x34,3)*POWER(x27,3) + POWER(x34,3)*
     POWER(x28,3) + POWER(x34,3)*POWER(x29,3) + POWER(x34,3)*POWER(x30,3) + 
     POWER(x34,3)*POWER(x31,3) + POWER(x34,3)*POWER(x32,3) + POWER(x34,3)*
     POWER(x33,3) + POWER(x34,3)*POWER(x34,3) + POWER(x34,3)*POWER(x35,3) + 
     POWER(x34,3)*POWER(x36,3) + POWER(x34,3)*POWER(x37,3) + POWER(x34,3)*
     POWER(x38,3) + POWER(x34,3)*POWER(x39,3) + POWER(x34,3)*POWER(x40,3) + 
     POWER(x34,3)*POWER(x41,3) + POWER(x34,3)*POWER(x42,3) + POWER(x34,3)*
     POWER(x43,3) + POWER(x34,3)*POWER(x44,3) + POWER(x34,3)*POWER(x45,3) + 
     POWER(x34,3)*POWER(x46,3) + POWER(x34,3)*POWER(x47,3) + POWER(x34,3)*
     POWER(x48,3) + POWER(x34,3)*POWER(x49,3) + POWER(x34,3)*POWER(x50,3) + 
     POWER(x34,3)*POWER(x51,3) + POWER(x34,3)*POWER(x52,3) + POWER(x34,3)*
     POWER(x53,3) + POWER(x34,3)*POWER(x54,3) + POWER(x34,3)*POWER(x55,3) + 
     POWER(x34,3)*POWER(x56,3) + POWER(x34,3)*POWER(x57,3) + POWER(x34,3)*
     POWER(x58,3) + POWER(x34,3)*POWER(x59,3) + POWER(x34,3)*POWER(x60,3) + 
     POWER(x34,3)*POWER(x61,3) + POWER(x34,3)*POWER(x62,3) + POWER(x34,3)*
     POWER(x63,3) + POWER(x34,3)*POWER(x64,3) + POWER(x34,3)*POWER(x65,3) + 
     POWER(x34,3)*POWER(x66,3) + POWER(x34,3)*POWER(x67,3) + POWER(x34,3)*
     POWER(x68,3) + POWER(x34,3)*POWER(x69,3) + POWER(x34,3)*POWER(x70,3) + 
     POWER(x34,3)*POWER(x71,3) + POWER(x34,3)*POWER(x72,3) + POWER(x34,3)*
     POWER(x73,3) + POWER(x34,3)*POWER(x74,3) + POWER(x34,3)*POWER(x75,3) + 
     POWER(x34,3)*POWER(x76,3) + POWER(x34,3)*POWER(x77,3) + POWER(x34,3)*
     POWER(x78,3) + POWER(x34,3)*POWER(x79,3) + POWER(x34,3)*POWER(x80,3) + 
     POWER(x34,3)*POWER(x81,3) + POWER(x34,3)*POWER(x82,3) + POWER(x34,3)*
     POWER(x83,3) + POWER(x34,3)*POWER(x84,3) + POWER(x34,3)*POWER(x85,3) + 
     POWER(x34,3)*POWER(x86,3) + POWER(x34,3)*POWER(x87,3) + POWER(x34,3)*
     POWER(x88,3) + POWER(x34,3)*POWER(x89,3) + POWER(x34,3)*POWER(x90,3) + 
     POWER(x34,3)*POWER(x91,3) + POWER(x34,3)*POWER(x92,3) + POWER(x34,3)*
     POWER(x93,3) + POWER(x34,3)*POWER(x94,3) + POWER(x34,3)*POWER(x95,3) + 
     POWER(x34,3)*POWER(x96,3) + POWER(x34,3)*POWER(x97,3) + POWER(x34,3)*
     POWER(x98,3) + POWER(x34,3)*POWER(x99,3) + POWER(x34,3)*POWER(x100,3) + 
     POWER(x35,3)*POWER(x1,3) + POWER(x35,3)*POWER(x2,3) + POWER(x35,3)*POWER(
     x3,3) + POWER(x35,3)*POWER(x4,3) + POWER(x35,3)*POWER(x5,3) + POWER(x35,3)
     *POWER(x6,3) + POWER(x35,3)*POWER(x7,3) + POWER(x35,3)*POWER(x8,3) + 
     POWER(x35,3)*POWER(x9,3) + POWER(x35,3)*POWER(x10,3) + POWER(x35,3)*POWER(
     x11,3) + POWER(x35,3)*POWER(x12,3) + POWER(x35,3)*POWER(x13,3) + POWER(x35
     ,3)*POWER(x14,3) + POWER(x35,3)*POWER(x15,3) + POWER(x35,3)*POWER(x16,3)
      + POWER(x35,3)*POWER(x17,3) + POWER(x35,3)*POWER(x18,3) + POWER(x35,3)*
     POWER(x19,3) + POWER(x35,3)*POWER(x20,3) + POWER(x35,3)*POWER(x21,3) + 
     POWER(x35,3)*POWER(x22,3) + POWER(x35,3)*POWER(x23,3) + POWER(x35,3)*
     POWER(x24,3) + POWER(x35,3)*POWER(x25,3) + POWER(x35,3)*POWER(x26,3) + 
     POWER(x35,3)*POWER(x27,3) + POWER(x35,3)*POWER(x28,3) + POWER(x35,3)*
     POWER(x29,3) + POWER(x35,3)*POWER(x30,3) + POWER(x35,3)*POWER(x31,3) + 
     POWER(x35,3)*POWER(x32,3) + POWER(x35,3)*POWER(x33,3) + POWER(x35,3)*
     POWER(x34,3) + POWER(x35,3)*POWER(x35,3) + POWER(x35,3)*POWER(x36,3) + 
     POWER(x35,3)*POWER(x37,3) + POWER(x35,3)*POWER(x38,3) + POWER(x35,3)*
     POWER(x39,3) + POWER(x35,3)*POWER(x40,3) + POWER(x35,3)*POWER(x41,3) + 
     POWER(x35,3)*POWER(x42,3) + POWER(x35,3)*POWER(x43,3) + POWER(x35,3)*
     POWER(x44,3) + POWER(x35,3)*POWER(x45,3) + POWER(x35,3)*POWER(x46,3) + 
     POWER(x35,3)*POWER(x47,3) + POWER(x35,3)*POWER(x48,3) + POWER(x35,3)*
     POWER(x49,3) + POWER(x35,3)*POWER(x50,3) + POWER(x35,3)*POWER(x51,3) + 
     POWER(x35,3)*POWER(x52,3) + POWER(x35,3)*POWER(x53,3) + POWER(x35,3)*
     POWER(x54,3) + POWER(x35,3)*POWER(x55,3) + POWER(x35,3)*POWER(x56,3) + 
     POWER(x35,3)*POWER(x57,3) + POWER(x35,3)*POWER(x58,3) + POWER(x35,3)*
     POWER(x59,3) + POWER(x35,3)*POWER(x60,3) + POWER(x35,3)*POWER(x61,3) + 
     POWER(x35,3)*POWER(x62,3) + POWER(x35,3)*POWER(x63,3) + POWER(x35,3)*
     POWER(x64,3) + POWER(x35,3)*POWER(x65,3) + POWER(x35,3)*POWER(x66,3) + 
     POWER(x35,3)*POWER(x67,3) + POWER(x35,3)*POWER(x68,3) + POWER(x35,3)*
     POWER(x69,3) + POWER(x35,3)*POWER(x70,3) + POWER(x35,3)*POWER(x71,3) + 
     POWER(x35,3)*POWER(x72,3) + POWER(x35,3)*POWER(x73,3) + POWER(x35,3)*
     POWER(x74,3) + POWER(x35,3)*POWER(x75,3) + POWER(x35,3)*POWER(x76,3) + 
     POWER(x35,3)*POWER(x77,3) + POWER(x35,3)*POWER(x78,3) + POWER(x35,3)*
     POWER(x79,3) + POWER(x35,3)*POWER(x80,3) + POWER(x35,3)*POWER(x81,3) + 
     POWER(x35,3)*POWER(x82,3) + POWER(x35,3)*POWER(x83,3) + POWER(x35,3)*
     POWER(x84,3) + POWER(x35,3)*POWER(x85,3) + POWER(x35,3)*POWER(x86,3) + 
     POWER(x35,3)*POWER(x87,3) + POWER(x35,3)*POWER(x88,3) + POWER(x35,3)*
     POWER(x89,3) + POWER(x35,3)*POWER(x90,3) + POWER(x35,3)*POWER(x91,3) + 
     POWER(x35,3)*POWER(x92,3) + POWER(x35,3)*POWER(x93,3) + POWER(x35,3)*
     POWER(x94,3) + POWER(x35,3)*POWER(x95,3) + POWER(x35,3)*POWER(x96,3) + 
     POWER(x35,3)*POWER(x97,3) + POWER(x35,3)*POWER(x98,3) + POWER(x35,3)*
     POWER(x99,3) + POWER(x35,3)*POWER(x100,3) + POWER(x36,3)*POWER(x1,3) + 
     POWER(x36,3)*POWER(x2,3) + POWER(x36,3)*POWER(x3,3) + POWER(x36,3)*POWER(
     x4,3) + POWER(x36,3)*POWER(x5,3) + POWER(x36,3)*POWER(x6,3) + POWER(x36,3)
     *POWER(x7,3) + POWER(x36,3)*POWER(x8,3) + POWER(x36,3)*POWER(x9,3) + 
     POWER(x36,3)*POWER(x10,3) + POWER(x36,3)*POWER(x11,3) + POWER(x36,3)*
     POWER(x12,3) + POWER(x36,3)*POWER(x13,3) + POWER(x36,3)*POWER(x14,3) + 
     POWER(x36,3)*POWER(x15,3) + POWER(x36,3)*POWER(x16,3) + POWER(x36,3)*
     POWER(x17,3) + POWER(x36,3)*POWER(x18,3) + POWER(x36,3)*POWER(x19,3) + 
     POWER(x36,3)*POWER(x20,3) + POWER(x36,3)*POWER(x21,3) + POWER(x36,3)*
     POWER(x22,3) + POWER(x36,3)*POWER(x23,3) + POWER(x36,3)*POWER(x24,3) + 
     POWER(x36,3)*POWER(x25,3) + POWER(x36,3)*POWER(x26,3) + POWER(x36,3)*
     POWER(x27,3) + POWER(x36,3)*POWER(x28,3) + POWER(x36,3)*POWER(x29,3) + 
     POWER(x36,3)*POWER(x30,3) + POWER(x36,3)*POWER(x31,3) + POWER(x36,3)*
     POWER(x32,3) + POWER(x36,3)*POWER(x33,3) + POWER(x36,3)*POWER(x34,3) + 
     POWER(x36,3)*POWER(x35,3) + POWER(x36,3)*POWER(x36,3) + POWER(x36,3)*
     POWER(x37,3) + POWER(x36,3)*POWER(x38,3) + POWER(x36,3)*POWER(x39,3) + 
     POWER(x36,3)*POWER(x40,3) + POWER(x36,3)*POWER(x41,3) + POWER(x36,3)*
     POWER(x42,3) + POWER(x36,3)*POWER(x43,3) + POWER(x36,3)*POWER(x44,3) + 
     POWER(x36,3)*POWER(x45,3) + POWER(x36,3)*POWER(x46,3) + POWER(x36,3)*
     POWER(x47,3) + POWER(x36,3)*POWER(x48,3) + POWER(x36,3)*POWER(x49,3) + 
     POWER(x36,3)*POWER(x50,3) + POWER(x36,3)*POWER(x51,3) + POWER(x36,3)*
     POWER(x52,3) + POWER(x36,3)*POWER(x53,3) + POWER(x36,3)*POWER(x54,3) + 
     POWER(x36,3)*POWER(x55,3) + POWER(x36,3)*POWER(x56,3) + POWER(x36,3)*
     POWER(x57,3) + POWER(x36,3)*POWER(x58,3) + POWER(x36,3)*POWER(x59,3) + 
     POWER(x36,3)*POWER(x60,3) + POWER(x36,3)*POWER(x61,3) + POWER(x36,3)*
     POWER(x62,3) + POWER(x36,3)*POWER(x63,3) + POWER(x36,3)*POWER(x64,3) + 
     POWER(x36,3)*POWER(x65,3) + POWER(x36,3)*POWER(x66,3) + POWER(x36,3)*
     POWER(x67,3) + POWER(x36,3)*POWER(x68,3) + POWER(x36,3)*POWER(x69,3) + 
     POWER(x36,3)*POWER(x70,3) + POWER(x36,3)*POWER(x71,3) + POWER(x36,3)*
     POWER(x72,3) + POWER(x36,3)*POWER(x73,3) + POWER(x36,3)*POWER(x74,3) + 
     POWER(x36,3)*POWER(x75,3) + POWER(x36,3)*POWER(x76,3) + POWER(x36,3)*
     POWER(x77,3) + POWER(x36,3)*POWER(x78,3) + POWER(x36,3)*POWER(x79,3) + 
     POWER(x36,3)*POWER(x80,3) + POWER(x36,3)*POWER(x81,3) + POWER(x36,3)*
     POWER(x82,3) + POWER(x36,3)*POWER(x83,3) + POWER(x36,3)*POWER(x84,3) + 
     POWER(x36,3)*POWER(x85,3) + POWER(x36,3)*POWER(x86,3) + POWER(x36,3)*
     POWER(x87,3) + POWER(x36,3)*POWER(x88,3) + POWER(x36,3)*POWER(x89,3) + 
     POWER(x36,3)*POWER(x90,3) + POWER(x36,3)*POWER(x91,3) + POWER(x36,3)*
     POWER(x92,3) + POWER(x36,3)*POWER(x93,3) + POWER(x36,3)*POWER(x94,3) + 
     POWER(x36,3)*POWER(x95,3) + POWER(x36,3)*POWER(x96,3) + POWER(x36,3)*
     POWER(x97,3) + POWER(x36,3)*POWER(x98,3) + POWER(x36,3)*POWER(x99,3) + 
     POWER(x36,3)*POWER(x100,3) + POWER(x37,3)*POWER(x1,3) + POWER(x37,3)*
     POWER(x2,3) + POWER(x37,3)*POWER(x3,3) + POWER(x37,3)*POWER(x4,3) + POWER(
     x37,3)*POWER(x5,3) + POWER(x37,3)*POWER(x6,3) + POWER(x37,3)*POWER(x7,3)
      + POWER(x37,3)*POWER(x8,3) + POWER(x37,3)*POWER(x9,3) + POWER(x37,3)*
     POWER(x10,3) + POWER(x37,3)*POWER(x11,3) + POWER(x37,3)*POWER(x12,3) + 
     POWER(x37,3)*POWER(x13,3) + POWER(x37,3)*POWER(x14,3) + POWER(x37,3)*
     POWER(x15,3) + POWER(x37,3)*POWER(x16,3) + POWER(x37,3)*POWER(x17,3) + 
     POWER(x37,3)*POWER(x18,3) + POWER(x37,3)*POWER(x19,3) + POWER(x37,3)*
     POWER(x20,3) + POWER(x37,3)*POWER(x21,3) + POWER(x37,3)*POWER(x22,3) + 
     POWER(x37,3)*POWER(x23,3) + POWER(x37,3)*POWER(x24,3) + POWER(x37,3)*
     POWER(x25,3) + POWER(x37,3)*POWER(x26,3) + POWER(x37,3)*POWER(x27,3) + 
     POWER(x37,3)*POWER(x28,3) + POWER(x37,3)*POWER(x29,3) + POWER(x37,3)*
     POWER(x30,3) + POWER(x37,3)*POWER(x31,3) + POWER(x37,3)*POWER(x32,3) + 
     POWER(x37,3)*POWER(x33,3) + POWER(x37,3)*POWER(x34,3) + POWER(x37,3)*
     POWER(x35,3) + POWER(x37,3)*POWER(x36,3) + POWER(x37,3)*POWER(x37,3) + 
     POWER(x37,3)*POWER(x38,3) + POWER(x37,3)*POWER(x39,3) + POWER(x37,3)*
     POWER(x40,3) + POWER(x37,3)*POWER(x41,3) + POWER(x37,3)*POWER(x42,3) + 
     POWER(x37,3)*POWER(x43,3) + POWER(x37,3)*POWER(x44,3) + POWER(x37,3)*
     POWER(x45,3) + POWER(x37,3)*POWER(x46,3) + POWER(x37,3)*POWER(x47,3) + 
     POWER(x37,3)*POWER(x48,3) + POWER(x37,3)*POWER(x49,3) + POWER(x37,3)*
     POWER(x50,3) + POWER(x37,3)*POWER(x51,3) + POWER(x37,3)*POWER(x52,3) + 
     POWER(x37,3)*POWER(x53,3) + POWER(x37,3)*POWER(x54,3) + POWER(x37,3)*
     POWER(x55,3) + POWER(x37,3)*POWER(x56,3) + POWER(x37,3)*POWER(x57,3) + 
     POWER(x37,3)*POWER(x58,3) + POWER(x37,3)*POWER(x59,3) + POWER(x37,3)*
     POWER(x60,3) + POWER(x37,3)*POWER(x61,3) + POWER(x37,3)*POWER(x62,3) + 
     POWER(x37,3)*POWER(x63,3) + POWER(x37,3)*POWER(x64,3) + POWER(x37,3)*
     POWER(x65,3) + POWER(x37,3)*POWER(x66,3) + POWER(x37,3)*POWER(x67,3) + 
     POWER(x37,3)*POWER(x68,3) + POWER(x37,3)*POWER(x69,3) + POWER(x37,3)*
     POWER(x70,3) + POWER(x37,3)*POWER(x71,3) + POWER(x37,3)*POWER(x72,3) + 
     POWER(x37,3)*POWER(x73,3) + POWER(x37,3)*POWER(x74,3) + POWER(x37,3)*
     POWER(x75,3) + POWER(x37,3)*POWER(x76,3) + POWER(x37,3)*POWER(x77,3) + 
     POWER(x37,3)*POWER(x78,3) + POWER(x37,3)*POWER(x79,3) + POWER(x37,3)*
     POWER(x80,3) + POWER(x37,3)*POWER(x81,3) + POWER(x37,3)*POWER(x82,3) + 
     POWER(x37,3)*POWER(x83,3) + POWER(x37,3)*POWER(x84,3) + POWER(x37,3)*
     POWER(x85,3) + POWER(x37,3)*POWER(x86,3) + POWER(x37,3)*POWER(x87,3) + 
     POWER(x37,3)*POWER(x88,3) + POWER(x37,3)*POWER(x89,3) + POWER(x37,3)*
     POWER(x90,3) + POWER(x37,3)*POWER(x91,3) + POWER(x37,3)*POWER(x92,3) + 
     POWER(x37,3)*POWER(x93,3) + POWER(x37,3)*POWER(x94,3) + POWER(x37,3)*
     POWER(x95,3) + POWER(x37,3)*POWER(x96,3) + POWER(x37,3)*POWER(x97,3) + 
     POWER(x37,3)*POWER(x98,3) + POWER(x37,3)*POWER(x99,3) + POWER(x37,3)*
     POWER(x100,3) + POWER(x38,3)*POWER(x1,3) + POWER(x38,3)*POWER(x2,3) + 
     POWER(x38,3)*POWER(x3,3) + POWER(x38,3)*POWER(x4,3) + POWER(x38,3)*POWER(
     x5,3) + POWER(x38,3)*POWER(x6,3) + POWER(x38,3)*POWER(x7,3) + POWER(x38,3)
     *POWER(x8,3) + POWER(x38,3)*POWER(x9,3) + POWER(x38,3)*POWER(x10,3) + 
     POWER(x38,3)*POWER(x11,3) + POWER(x38,3)*POWER(x12,3) + POWER(x38,3)*
     POWER(x13,3) + POWER(x38,3)*POWER(x14,3) + POWER(x38,3)*POWER(x15,3) + 
     POWER(x38,3)*POWER(x16,3) + POWER(x38,3)*POWER(x17,3) + POWER(x38,3)*
     POWER(x18,3) + POWER(x38,3)*POWER(x19,3) + POWER(x38,3)*POWER(x20,3) + 
     POWER(x38,3)*POWER(x21,3) + POWER(x38,3)*POWER(x22,3) + POWER(x38,3)*
     POWER(x23,3) + POWER(x38,3)*POWER(x24,3) + POWER(x38,3)*POWER(x25,3) + 
     POWER(x38,3)*POWER(x26,3) + POWER(x38,3)*POWER(x27,3) + POWER(x38,3)*
     POWER(x28,3) + POWER(x38,3)*POWER(x29,3) + POWER(x38,3)*POWER(x30,3) + 
     POWER(x38,3)*POWER(x31,3) + POWER(x38,3)*POWER(x32,3) + POWER(x38,3)*
     POWER(x33,3) + POWER(x38,3)*POWER(x34,3) + POWER(x38,3)*POWER(x35,3) + 
     POWER(x38,3)*POWER(x36,3) + POWER(x38,3)*POWER(x37,3) + POWER(x38,3)*
     POWER(x38,3) + POWER(x38,3)*POWER(x39,3) + POWER(x38,3)*POWER(x40,3) + 
     POWER(x38,3)*POWER(x41,3) + POWER(x38,3)*POWER(x42,3) + POWER(x38,3)*
     POWER(x43,3) + POWER(x38,3)*POWER(x44,3) + POWER(x38,3)*POWER(x45,3) + 
     POWER(x38,3)*POWER(x46,3) + POWER(x38,3)*POWER(x47,3) + POWER(x38,3)*
     POWER(x48,3) + POWER(x38,3)*POWER(x49,3) + POWER(x38,3)*POWER(x50,3) + 
     POWER(x38,3)*POWER(x51,3) + POWER(x38,3)*POWER(x52,3) + POWER(x38,3)*
     POWER(x53,3) + POWER(x38,3)*POWER(x54,3) + POWER(x38,3)*POWER(x55,3) + 
     POWER(x38,3)*POWER(x56,3) + POWER(x38,3)*POWER(x57,3) + POWER(x38,3)*
     POWER(x58,3) + POWER(x38,3)*POWER(x59,3) + POWER(x38,3)*POWER(x60,3) + 
     POWER(x38,3)*POWER(x61,3) + POWER(x38,3)*POWER(x62,3) + POWER(x38,3)*
     POWER(x63,3) + POWER(x38,3)*POWER(x64,3) + POWER(x38,3)*POWER(x65,3) + 
     POWER(x38,3)*POWER(x66,3) + POWER(x38,3)*POWER(x67,3) + POWER(x38,3)*
     POWER(x68,3) + POWER(x38,3)*POWER(x69,3) + POWER(x38,3)*POWER(x70,3) + 
     POWER(x38,3)*POWER(x71,3) + POWER(x38,3)*POWER(x72,3) + POWER(x38,3)*
     POWER(x73,3) + POWER(x38,3)*POWER(x74,3) + POWER(x38,3)*POWER(x75,3) + 
     POWER(x38,3)*POWER(x76,3) + POWER(x38,3)*POWER(x77,3) + POWER(x38,3)*
     POWER(x78,3) + POWER(x38,3)*POWER(x79,3) + POWER(x38,3)*POWER(x80,3) + 
     POWER(x38,3)*POWER(x81,3) + POWER(x38,3)*POWER(x82,3) + POWER(x38,3)*
     POWER(x83,3) + POWER(x38,3)*POWER(x84,3) + POWER(x38,3)*POWER(x85,3) + 
     POWER(x38,3)*POWER(x86,3) + POWER(x38,3)*POWER(x87,3) + POWER(x38,3)*
     POWER(x88,3) + POWER(x38,3)*POWER(x89,3) + POWER(x38,3)*POWER(x90,3) + 
     POWER(x38,3)*POWER(x91,3) + POWER(x38,3)*POWER(x92,3) + POWER(x38,3)*
     POWER(x93,3) + POWER(x38,3)*POWER(x94,3) + POWER(x38,3)*POWER(x95,3) + 
     POWER(x38,3)*POWER(x96,3) + POWER(x38,3)*POWER(x97,3) + POWER(x38,3)*
     POWER(x98,3) + POWER(x38,3)*POWER(x99,3) + POWER(x38,3)*POWER(x100,3) + 
     POWER(x39,3)*POWER(x1,3) + POWER(x39,3)*POWER(x2,3) + POWER(x39,3)*POWER(
     x3,3) + POWER(x39,3)*POWER(x4,3) + POWER(x39,3)*POWER(x5,3) + POWER(x39,3)
     *POWER(x6,3) + POWER(x39,3)*POWER(x7,3) + POWER(x39,3)*POWER(x8,3) + 
     POWER(x39,3)*POWER(x9,3) + POWER(x39,3)*POWER(x10,3) + POWER(x39,3)*POWER(
     x11,3) + POWER(x39,3)*POWER(x12,3) + POWER(x39,3)*POWER(x13,3) + POWER(x39
     ,3)*POWER(x14,3) + POWER(x39,3)*POWER(x15,3) + POWER(x39,3)*POWER(x16,3)
      + POWER(x39,3)*POWER(x17,3) + POWER(x39,3)*POWER(x18,3) + POWER(x39,3)*
     POWER(x19,3) + POWER(x39,3)*POWER(x20,3) + POWER(x39,3)*POWER(x21,3) + 
     POWER(x39,3)*POWER(x22,3) + POWER(x39,3)*POWER(x23,3) + POWER(x39,3)*
     POWER(x24,3) + POWER(x39,3)*POWER(x25,3) + POWER(x39,3)*POWER(x26,3) + 
     POWER(x39,3)*POWER(x27,3) + POWER(x39,3)*POWER(x28,3) + POWER(x39,3)*
     POWER(x29,3) + POWER(x39,3)*POWER(x30,3) + POWER(x39,3)*POWER(x31,3) + 
     POWER(x39,3)*POWER(x32,3) + POWER(x39,3)*POWER(x33,3) + POWER(x39,3)*
     POWER(x34,3) + POWER(x39,3)*POWER(x35,3) + POWER(x39,3)*POWER(x36,3) + 
     POWER(x39,3)*POWER(x37,3) + POWER(x39,3)*POWER(x38,3) + POWER(x39,3)*
     POWER(x39,3) + POWER(x39,3)*POWER(x40,3) + POWER(x39,3)*POWER(x41,3) + 
     POWER(x39,3)*POWER(x42,3) + POWER(x39,3)*POWER(x43,3) + POWER(x39,3)*
     POWER(x44,3) + POWER(x39,3)*POWER(x45,3) + POWER(x39,3)*POWER(x46,3) + 
     POWER(x39,3)*POWER(x47,3) + POWER(x39,3)*POWER(x48,3) + POWER(x39,3)*
     POWER(x49,3) + POWER(x39,3)*POWER(x50,3) + POWER(x39,3)*POWER(x51,3) + 
     POWER(x39,3)*POWER(x52,3) + POWER(x39,3)*POWER(x53,3) + POWER(x39,3)*
     POWER(x54,3) + POWER(x39,3)*POWER(x55,3) + POWER(x39,3)*POWER(x56,3) + 
     POWER(x39,3)*POWER(x57,3) + POWER(x39,3)*POWER(x58,3) + POWER(x39,3)*
     POWER(x59,3) + POWER(x39,3)*POWER(x60,3) + POWER(x39,3)*POWER(x61,3) + 
     POWER(x39,3)*POWER(x62,3) + POWER(x39,3)*POWER(x63,3) + POWER(x39,3)*
     POWER(x64,3) + POWER(x39,3)*POWER(x65,3) + POWER(x39,3)*POWER(x66,3) + 
     POWER(x39,3)*POWER(x67,3) + POWER(x39,3)*POWER(x68,3) + POWER(x39,3)*
     POWER(x69,3) + POWER(x39,3)*POWER(x70,3) + POWER(x39,3)*POWER(x71,3) + 
     POWER(x39,3)*POWER(x72,3) + POWER(x39,3)*POWER(x73,3) + POWER(x39,3)*
     POWER(x74,3) + POWER(x39,3)*POWER(x75,3) + POWER(x39,3)*POWER(x76,3) + 
     POWER(x39,3)*POWER(x77,3) + POWER(x39,3)*POWER(x78,3) + POWER(x39,3)*
     POWER(x79,3) + POWER(x39,3)*POWER(x80,3) + POWER(x39,3)*POWER(x81,3) + 
     POWER(x39,3)*POWER(x82,3) + POWER(x39,3)*POWER(x83,3) + POWER(x39,3)*
     POWER(x84,3) + POWER(x39,3)*POWER(x85,3) + POWER(x39,3)*POWER(x86,3) + 
     POWER(x39,3)*POWER(x87,3) + POWER(x39,3)*POWER(x88,3) + POWER(x39,3)*
     POWER(x89,3) + POWER(x39,3)*POWER(x90,3) + POWER(x39,3)*POWER(x91,3) + 
     POWER(x39,3)*POWER(x92,3) + POWER(x39,3)*POWER(x93,3) + POWER(x39,3)*
     POWER(x94,3) + POWER(x39,3)*POWER(x95,3) + POWER(x39,3)*POWER(x96,3) + 
     POWER(x39,3)*POWER(x97,3) + POWER(x39,3)*POWER(x98,3) + POWER(x39,3)*
     POWER(x99,3) + POWER(x39,3)*POWER(x100,3) + POWER(x40,3)*POWER(x1,3) + 
     POWER(x40,3)*POWER(x2,3) + POWER(x40,3)*POWER(x3,3) + POWER(x40,3)*POWER(
     x4,3) + POWER(x40,3)*POWER(x5,3) + POWER(x40,3)*POWER(x6,3) + POWER(x40,3)
     *POWER(x7,3) + POWER(x40,3)*POWER(x8,3) + POWER(x40,3)*POWER(x9,3) + 
     POWER(x40,3)*POWER(x10,3) + POWER(x40,3)*POWER(x11,3) + POWER(x40,3)*
     POWER(x12,3) + POWER(x40,3)*POWER(x13,3) + POWER(x40,3)*POWER(x14,3) + 
     POWER(x40,3)*POWER(x15,3) + POWER(x40,3)*POWER(x16,3) + POWER(x40,3)*
     POWER(x17,3) + POWER(x40,3)*POWER(x18,3) + POWER(x40,3)*POWER(x19,3) + 
     POWER(x40,3)*POWER(x20,3) + POWER(x40,3)*POWER(x21,3) + POWER(x40,3)*
     POWER(x22,3) + POWER(x40,3)*POWER(x23,3) + POWER(x40,3)*POWER(x24,3) + 
     POWER(x40,3)*POWER(x25,3) + POWER(x40,3)*POWER(x26,3) + POWER(x40,3)*
     POWER(x27,3) + POWER(x40,3)*POWER(x28,3) + POWER(x40,3)*POWER(x29,3) + 
     POWER(x40,3)*POWER(x30,3) + POWER(x40,3)*POWER(x31,3) + POWER(x40,3)*
     POWER(x32,3) + POWER(x40,3)*POWER(x33,3) + POWER(x40,3)*POWER(x34,3) + 
     POWER(x40,3)*POWER(x35,3) + POWER(x40,3)*POWER(x36,3) + POWER(x40,3)*
     POWER(x37,3) + POWER(x40,3)*POWER(x38,3) + POWER(x40,3)*POWER(x39,3) + 
     POWER(x40,3)*POWER(x40,3) + POWER(x40,3)*POWER(x41,3) + POWER(x40,3)*
     POWER(x42,3) + POWER(x40,3)*POWER(x43,3) + POWER(x40,3)*POWER(x44,3) + 
     POWER(x40,3)*POWER(x45,3) + POWER(x40,3)*POWER(x46,3) + POWER(x40,3)*
     POWER(x47,3) + POWER(x40,3)*POWER(x48,3) + POWER(x40,3)*POWER(x49,3) + 
     POWER(x40,3)*POWER(x50,3) + POWER(x40,3)*POWER(x51,3) + POWER(x40,3)*
     POWER(x52,3) + POWER(x40,3)*POWER(x53,3) + POWER(x40,3)*POWER(x54,3) + 
     POWER(x40,3)*POWER(x55,3) + POWER(x40,3)*POWER(x56,3) + POWER(x40,3)*
     POWER(x57,3) + POWER(x40,3)*POWER(x58,3) + POWER(x40,3)*POWER(x59,3) + 
     POWER(x40,3)*POWER(x60,3) + POWER(x40,3)*POWER(x61,3) + POWER(x40,3)*
     POWER(x62,3) + POWER(x40,3)*POWER(x63,3) + POWER(x40,3)*POWER(x64,3) + 
     POWER(x40,3)*POWER(x65,3) + POWER(x40,3)*POWER(x66,3) + POWER(x40,3)*
     POWER(x67,3) + POWER(x40,3)*POWER(x68,3) + POWER(x40,3)*POWER(x69,3) + 
     POWER(x40,3)*POWER(x70,3) + POWER(x40,3)*POWER(x71,3) + POWER(x40,3)*
     POWER(x72,3) + POWER(x40,3)*POWER(x73,3) + POWER(x40,3)*POWER(x74,3) + 
     POWER(x40,3)*POWER(x75,3) + POWER(x40,3)*POWER(x76,3) + POWER(x40,3)*
     POWER(x77,3) + POWER(x40,3)*POWER(x78,3) + POWER(x40,3)*POWER(x79,3) + 
     POWER(x40,3)*POWER(x80,3) + POWER(x40,3)*POWER(x81,3) + POWER(x40,3)*
     POWER(x82,3) + POWER(x40,3)*POWER(x83,3) + POWER(x40,3)*POWER(x84,3) + 
     POWER(x40,3)*POWER(x85,3) + POWER(x40,3)*POWER(x86,3) + POWER(x40,3)*
     POWER(x87,3) + POWER(x40,3)*POWER(x88,3) + POWER(x40,3)*POWER(x89,3) + 
     POWER(x40,3)*POWER(x90,3) + POWER(x40,3)*POWER(x91,3) + POWER(x40,3)*
     POWER(x92,3) + POWER(x40,3)*POWER(x93,3) + POWER(x40,3)*POWER(x94,3) + 
     POWER(x40,3)*POWER(x95,3) + POWER(x40,3)*POWER(x96,3) + POWER(x40,3)*
     POWER(x97,3) + POWER(x40,3)*POWER(x98,3) + POWER(x40,3)*POWER(x99,3) + 
     POWER(x40,3)*POWER(x100,3) + POWER(x41,3)*POWER(x1,3) + POWER(x41,3)*
     POWER(x2,3) + POWER(x41,3)*POWER(x3,3) + POWER(x41,3)*POWER(x4,3) + POWER(
     x41,3)*POWER(x5,3) + POWER(x41,3)*POWER(x6,3) + POWER(x41,3)*POWER(x7,3)
      + POWER(x41,3)*POWER(x8,3) + POWER(x41,3)*POWER(x9,3) + POWER(x41,3)*
     POWER(x10,3) + POWER(x41,3)*POWER(x11,3) + POWER(x41,3)*POWER(x12,3) + 
     POWER(x41,3)*POWER(x13,3) + POWER(x41,3)*POWER(x14,3) + POWER(x41,3)*
     POWER(x15,3) + POWER(x41,3)*POWER(x16,3) + POWER(x41,3)*POWER(x17,3) + 
     POWER(x41,3)*POWER(x18,3) + POWER(x41,3)*POWER(x19,3) + POWER(x41,3)*
     POWER(x20,3) + POWER(x41,3)*POWER(x21,3) + POWER(x41,3)*POWER(x22,3) + 
     POWER(x41,3)*POWER(x23,3) + POWER(x41,3)*POWER(x24,3) + POWER(x41,3)*
     POWER(x25,3) + POWER(x41,3)*POWER(x26,3) + POWER(x41,3)*POWER(x27,3) + 
     POWER(x41,3)*POWER(x28,3) + POWER(x41,3)*POWER(x29,3) + POWER(x41,3)*
     POWER(x30,3) + POWER(x41,3)*POWER(x31,3) + POWER(x41,3)*POWER(x32,3) + 
     POWER(x41,3)*POWER(x33,3) + POWER(x41,3)*POWER(x34,3) + POWER(x41,3)*
     POWER(x35,3) + POWER(x41,3)*POWER(x36,3) + POWER(x41,3)*POWER(x37,3) + 
     POWER(x41,3)*POWER(x38,3) + POWER(x41,3)*POWER(x39,3) + POWER(x41,3)*
     POWER(x40,3) + POWER(x41,3)*POWER(x41,3) + POWER(x41,3)*POWER(x42,3) + 
     POWER(x41,3)*POWER(x43,3) + POWER(x41,3)*POWER(x44,3) + POWER(x41,3)*
     POWER(x45,3) + POWER(x41,3)*POWER(x46,3) + POWER(x41,3)*POWER(x47,3) + 
     POWER(x41,3)*POWER(x48,3) + POWER(x41,3)*POWER(x49,3) + POWER(x41,3)*
     POWER(x50,3) + POWER(x41,3)*POWER(x51,3) + POWER(x41,3)*POWER(x52,3) + 
     POWER(x41,3)*POWER(x53,3) + POWER(x41,3)*POWER(x54,3) + POWER(x41,3)*
     POWER(x55,3) + POWER(x41,3)*POWER(x56,3) + POWER(x41,3)*POWER(x57,3) + 
     POWER(x41,3)*POWER(x58,3) + POWER(x41,3)*POWER(x59,3) + POWER(x41,3)*
     POWER(x60,3) + POWER(x41,3)*POWER(x61,3) + POWER(x41,3)*POWER(x62,3) + 
     POWER(x41,3)*POWER(x63,3) + POWER(x41,3)*POWER(x64,3) + POWER(x41,3)*
     POWER(x65,3) + POWER(x41,3)*POWER(x66,3) + POWER(x41,3)*POWER(x67,3) + 
     POWER(x41,3)*POWER(x68,3) + POWER(x41,3)*POWER(x69,3) + POWER(x41,3)*
     POWER(x70,3) + POWER(x41,3)*POWER(x71,3) + POWER(x41,3)*POWER(x72,3) + 
     POWER(x41,3)*POWER(x73,3) + POWER(x41,3)*POWER(x74,3) + POWER(x41,3)*
     POWER(x75,3) + POWER(x41,3)*POWER(x76,3) + POWER(x41,3)*POWER(x77,3) + 
     POWER(x41,3)*POWER(x78,3) + POWER(x41,3)*POWER(x79,3) + POWER(x41,3)*
     POWER(x80,3) + POWER(x41,3)*POWER(x81,3) + POWER(x41,3)*POWER(x82,3) + 
     POWER(x41,3)*POWER(x83,3) + POWER(x41,3)*POWER(x84,3) + POWER(x41,3)*
     POWER(x85,3) + POWER(x41,3)*POWER(x86,3) + POWER(x41,3)*POWER(x87,3) + 
     POWER(x41,3)*POWER(x88,3) + POWER(x41,3)*POWER(x89,3) + POWER(x41,3)*
     POWER(x90,3) + POWER(x41,3)*POWER(x91,3) + POWER(x41,3)*POWER(x92,3) + 
     POWER(x41,3)*POWER(x93,3) + POWER(x41,3)*POWER(x94,3) + POWER(x41,3)*
     POWER(x95,3) + POWER(x41,3)*POWER(x96,3) + POWER(x41,3)*POWER(x97,3) + 
     POWER(x41,3)*POWER(x98,3) + POWER(x41,3)*POWER(x99,3) + POWER(x41,3)*
     POWER(x100,3) + POWER(x42,3)*POWER(x1,3) + POWER(x42,3)*POWER(x2,3) + 
     POWER(x42,3)*POWER(x3,3) + POWER(x42,3)*POWER(x4,3) + POWER(x42,3)*POWER(
     x5,3) + POWER(x42,3)*POWER(x6,3) + POWER(x42,3)*POWER(x7,3) + POWER(x42,3)
     *POWER(x8,3) + POWER(x42,3)*POWER(x9,3) + POWER(x42,3)*POWER(x10,3) + 
     POWER(x42,3)*POWER(x11,3) + POWER(x42,3)*POWER(x12,3) + POWER(x42,3)*
     POWER(x13,3) + POWER(x42,3)*POWER(x14,3) + POWER(x42,3)*POWER(x15,3) + 
     POWER(x42,3)*POWER(x16,3) + POWER(x42,3)*POWER(x17,3) + POWER(x42,3)*
     POWER(x18,3) + POWER(x42,3)*POWER(x19,3) + POWER(x42,3)*POWER(x20,3) + 
     POWER(x42,3)*POWER(x21,3) + POWER(x42,3)*POWER(x22,3) + POWER(x42,3)*
     POWER(x23,3) + POWER(x42,3)*POWER(x24,3) + POWER(x42,3)*POWER(x25,3) + 
     POWER(x42,3)*POWER(x26,3) + POWER(x42,3)*POWER(x27,3) + POWER(x42,3)*
     POWER(x28,3) + POWER(x42,3)*POWER(x29,3) + POWER(x42,3)*POWER(x30,3) + 
     POWER(x42,3)*POWER(x31,3) + POWER(x42,3)*POWER(x32,3) + POWER(x42,3)*
     POWER(x33,3) + POWER(x42,3)*POWER(x34,3) + POWER(x42,3)*POWER(x35,3) + 
     POWER(x42,3)*POWER(x36,3) + POWER(x42,3)*POWER(x37,3) + POWER(x42,3)*
     POWER(x38,3) + POWER(x42,3)*POWER(x39,3) + POWER(x42,3)*POWER(x40,3) + 
     POWER(x42,3)*POWER(x41,3) + POWER(x42,3)*POWER(x42,3) + POWER(x42,3)*
     POWER(x43,3) + POWER(x42,3)*POWER(x44,3) + POWER(x42,3)*POWER(x45,3) + 
     POWER(x42,3)*POWER(x46,3) + POWER(x42,3)*POWER(x47,3) + POWER(x42,3)*
     POWER(x48,3) + POWER(x42,3)*POWER(x49,3) + POWER(x42,3)*POWER(x50,3) + 
     POWER(x42,3)*POWER(x51,3) + POWER(x42,3)*POWER(x52,3) + POWER(x42,3)*
     POWER(x53,3) + POWER(x42,3)*POWER(x54,3) + POWER(x42,3)*POWER(x55,3) + 
     POWER(x42,3)*POWER(x56,3) + POWER(x42,3)*POWER(x57,3) + POWER(x42,3)*
     POWER(x58,3) + POWER(x42,3)*POWER(x59,3) + POWER(x42,3)*POWER(x60,3) + 
     POWER(x42,3)*POWER(x61,3) + POWER(x42,3)*POWER(x62,3) + POWER(x42,3)*
     POWER(x63,3) + POWER(x42,3)*POWER(x64,3) + POWER(x42,3)*POWER(x65,3) + 
     POWER(x42,3)*POWER(x66,3) + POWER(x42,3)*POWER(x67,3) + POWER(x42,3)*
     POWER(x68,3) + POWER(x42,3)*POWER(x69,3) + POWER(x42,3)*POWER(x70,3) + 
     POWER(x42,3)*POWER(x71,3) + POWER(x42,3)*POWER(x72,3) + POWER(x42,3)*
     POWER(x73,3) + POWER(x42,3)*POWER(x74,3) + POWER(x42,3)*POWER(x75,3) + 
     POWER(x42,3)*POWER(x76,3) + POWER(x42,3)*POWER(x77,3) + POWER(x42,3)*
     POWER(x78,3) + POWER(x42,3)*POWER(x79,3) + POWER(x42,3)*POWER(x80,3) + 
     POWER(x42,3)*POWER(x81,3) + POWER(x42,3)*POWER(x82,3) + POWER(x42,3)*
     POWER(x83,3) + POWER(x42,3)*POWER(x84,3) + POWER(x42,3)*POWER(x85,3) + 
     POWER(x42,3)*POWER(x86,3) + POWER(x42,3)*POWER(x87,3) + POWER(x42,3)*
     POWER(x88,3) + POWER(x42,3)*POWER(x89,3) + POWER(x42,3)*POWER(x90,3) + 
     POWER(x42,3)*POWER(x91,3) + POWER(x42,3)*POWER(x92,3) + POWER(x42,3)*
     POWER(x93,3) + POWER(x42,3)*POWER(x94,3) + POWER(x42,3)*POWER(x95,3) + 
     POWER(x42,3)*POWER(x96,3) + POWER(x42,3)*POWER(x97,3) + POWER(x42,3)*
     POWER(x98,3) + POWER(x42,3)*POWER(x99,3) + POWER(x42,3)*POWER(x100,3) + 
     POWER(x43,3)*POWER(x1,3) + POWER(x43,3)*POWER(x2,3) + POWER(x43,3)*POWER(
     x3,3) + POWER(x43,3)*POWER(x4,3) + POWER(x43,3)*POWER(x5,3) + POWER(x43,3)
     *POWER(x6,3) + POWER(x43,3)*POWER(x7,3) + POWER(x43,3)*POWER(x8,3) + 
     POWER(x43,3)*POWER(x9,3) + POWER(x43,3)*POWER(x10,3) + POWER(x43,3)*POWER(
     x11,3) + POWER(x43,3)*POWER(x12,3) + POWER(x43,3)*POWER(x13,3) + POWER(x43
     ,3)*POWER(x14,3) + POWER(x43,3)*POWER(x15,3) + POWER(x43,3)*POWER(x16,3)
      + POWER(x43,3)*POWER(x17,3) + POWER(x43,3)*POWER(x18,3) + POWER(x43,3)*
     POWER(x19,3) + POWER(x43,3)*POWER(x20,3) + POWER(x43,3)*POWER(x21,3) + 
     POWER(x43,3)*POWER(x22,3) + POWER(x43,3)*POWER(x23,3) + POWER(x43,3)*
     POWER(x24,3) + POWER(x43,3)*POWER(x25,3) + POWER(x43,3)*POWER(x26,3) + 
     POWER(x43,3)*POWER(x27,3) + POWER(x43,3)*POWER(x28,3) + POWER(x43,3)*
     POWER(x29,3) + POWER(x43,3)*POWER(x30,3) + POWER(x43,3)*POWER(x31,3) + 
     POWER(x43,3)*POWER(x32,3) + POWER(x43,3)*POWER(x33,3) + POWER(x43,3)*
     POWER(x34,3) + POWER(x43,3)*POWER(x35,3) + POWER(x43,3)*POWER(x36,3) + 
     POWER(x43,3)*POWER(x37,3) + POWER(x43,3)*POWER(x38,3) + POWER(x43,3)*
     POWER(x39,3) + POWER(x43,3)*POWER(x40,3) + POWER(x43,3)*POWER(x41,3) + 
     POWER(x43,3)*POWER(x42,3) + POWER(x43,3)*POWER(x43,3) + POWER(x43,3)*
     POWER(x44,3) + POWER(x43,3)*POWER(x45,3) + POWER(x43,3)*POWER(x46,3) + 
     POWER(x43,3)*POWER(x47,3) + POWER(x43,3)*POWER(x48,3) + POWER(x43,3)*
     POWER(x49,3) + POWER(x43,3)*POWER(x50,3) + POWER(x43,3)*POWER(x51,3) + 
     POWER(x43,3)*POWER(x52,3) + POWER(x43,3)*POWER(x53,3) + POWER(x43,3)*
     POWER(x54,3) + POWER(x43,3)*POWER(x55,3) + POWER(x43,3)*POWER(x56,3) + 
     POWER(x43,3)*POWER(x57,3) + POWER(x43,3)*POWER(x58,3) + POWER(x43,3)*
     POWER(x59,3) + POWER(x43,3)*POWER(x60,3) + POWER(x43,3)*POWER(x61,3) + 
     POWER(x43,3)*POWER(x62,3) + POWER(x43,3)*POWER(x63,3) + POWER(x43,3)*
     POWER(x64,3) + POWER(x43,3)*POWER(x65,3) + POWER(x43,3)*POWER(x66,3) + 
     POWER(x43,3)*POWER(x67,3) + POWER(x43,3)*POWER(x68,3) + POWER(x43,3)*
     POWER(x69,3) + POWER(x43,3)*POWER(x70,3) + POWER(x43,3)*POWER(x71,3) + 
     POWER(x43,3)*POWER(x72,3) + POWER(x43,3)*POWER(x73,3) + POWER(x43,3)*
     POWER(x74,3) + POWER(x43,3)*POWER(x75,3) + POWER(x43,3)*POWER(x76,3) + 
     POWER(x43,3)*POWER(x77,3) + POWER(x43,3)*POWER(x78,3) + POWER(x43,3)*
     POWER(x79,3) + POWER(x43,3)*POWER(x80,3) + POWER(x43,3)*POWER(x81,3) + 
     POWER(x43,3)*POWER(x82,3) + POWER(x43,3)*POWER(x83,3) + POWER(x43,3)*
     POWER(x84,3) + POWER(x43,3)*POWER(x85,3) + POWER(x43,3)*POWER(x86,3) + 
     POWER(x43,3)*POWER(x87,3) + POWER(x43,3)*POWER(x88,3) + POWER(x43,3)*
     POWER(x89,3) + POWER(x43,3)*POWER(x90,3) + POWER(x43,3)*POWER(x91,3) + 
     POWER(x43,3)*POWER(x92,3) + POWER(x43,3)*POWER(x93,3) + POWER(x43,3)*
     POWER(x94,3) + POWER(x43,3)*POWER(x95,3) + POWER(x43,3)*POWER(x96,3) + 
     POWER(x43,3)*POWER(x97,3) + POWER(x43,3)*POWER(x98,3) + POWER(x43,3)*
     POWER(x99,3) + POWER(x43,3)*POWER(x100,3) + POWER(x44,3)*POWER(x1,3) + 
     POWER(x44,3)*POWER(x2,3) + POWER(x44,3)*POWER(x3,3) + POWER(x44,3)*POWER(
     x4,3) + POWER(x44,3)*POWER(x5,3) + POWER(x44,3)*POWER(x6,3) + POWER(x44,3)
     *POWER(x7,3) + POWER(x44,3)*POWER(x8,3) + POWER(x44,3)*POWER(x9,3) + 
     POWER(x44,3)*POWER(x10,3) + POWER(x44,3)*POWER(x11,3) + POWER(x44,3)*
     POWER(x12,3) + POWER(x44,3)*POWER(x13,3) + POWER(x44,3)*POWER(x14,3) + 
     POWER(x44,3)*POWER(x15,3) + POWER(x44,3)*POWER(x16,3) + POWER(x44,3)*
     POWER(x17,3) + POWER(x44,3)*POWER(x18,3) + POWER(x44,3)*POWER(x19,3) + 
     POWER(x44,3)*POWER(x20,3) + POWER(x44,3)*POWER(x21,3) + POWER(x44,3)*
     POWER(x22,3) + POWER(x44,3)*POWER(x23,3) + POWER(x44,3)*POWER(x24,3) + 
     POWER(x44,3)*POWER(x25,3) + POWER(x44,3)*POWER(x26,3) + POWER(x44,3)*
     POWER(x27,3) + POWER(x44,3)*POWER(x28,3) + POWER(x44,3)*POWER(x29,3) + 
     POWER(x44,3)*POWER(x30,3) + POWER(x44,3)*POWER(x31,3) + POWER(x44,3)*
     POWER(x32,3) + POWER(x44,3)*POWER(x33,3) + POWER(x44,3)*POWER(x34,3) + 
     POWER(x44,3)*POWER(x35,3) + POWER(x44,3)*POWER(x36,3) + POWER(x44,3)*
     POWER(x37,3) + POWER(x44,3)*POWER(x38,3) + POWER(x44,3)*POWER(x39,3) + 
     POWER(x44,3)*POWER(x40,3) + POWER(x44,3)*POWER(x41,3) + POWER(x44,3)*
     POWER(x42,3) + POWER(x44,3)*POWER(x43,3) + POWER(x44,3)*POWER(x44,3) + 
     POWER(x44,3)*POWER(x45,3) + POWER(x44,3)*POWER(x46,3) + POWER(x44,3)*
     POWER(x47,3) + POWER(x44,3)*POWER(x48,3) + POWER(x44,3)*POWER(x49,3) + 
     POWER(x44,3)*POWER(x50,3) + POWER(x44,3)*POWER(x51,3) + POWER(x44,3)*
     POWER(x52,3) + POWER(x44,3)*POWER(x53,3) + POWER(x44,3)*POWER(x54,3) + 
     POWER(x44,3)*POWER(x55,3) + POWER(x44,3)*POWER(x56,3) + POWER(x44,3)*
     POWER(x57,3) + POWER(x44,3)*POWER(x58,3) + POWER(x44,3)*POWER(x59,3) + 
     POWER(x44,3)*POWER(x60,3) + POWER(x44,3)*POWER(x61,3) + POWER(x44,3)*
     POWER(x62,3) + POWER(x44,3)*POWER(x63,3) + POWER(x44,3)*POWER(x64,3) + 
     POWER(x44,3)*POWER(x65,3) + POWER(x44,3)*POWER(x66,3) + POWER(x44,3)*
     POWER(x67,3) + POWER(x44,3)*POWER(x68,3) + POWER(x44,3)*POWER(x69,3) + 
     POWER(x44,3)*POWER(x70,3) + POWER(x44,3)*POWER(x71,3) + POWER(x44,3)*
     POWER(x72,3) + POWER(x44,3)*POWER(x73,3) + POWER(x44,3)*POWER(x74,3) + 
     POWER(x44,3)*POWER(x75,3) + POWER(x44,3)*POWER(x76,3) + POWER(x44,3)*
     POWER(x77,3) + POWER(x44,3)*POWER(x78,3) + POWER(x44,3)*POWER(x79,3) + 
     POWER(x44,3)*POWER(x80,3) + POWER(x44,3)*POWER(x81,3) + POWER(x44,3)*
     POWER(x82,3) + POWER(x44,3)*POWER(x83,3) + POWER(x44,3)*POWER(x84,3) + 
     POWER(x44,3)*POWER(x85,3) + POWER(x44,3)*POWER(x86,3) + POWER(x44,3)*
     POWER(x87,3) + POWER(x44,3)*POWER(x88,3) + POWER(x44,3)*POWER(x89,3) + 
     POWER(x44,3)*POWER(x90,3) + POWER(x44,3)*POWER(x91,3) + POWER(x44,3)*
     POWER(x92,3) + POWER(x44,3)*POWER(x93,3) + POWER(x44,3)*POWER(x94,3) + 
     POWER(x44,3)*POWER(x95,3) + POWER(x44,3)*POWER(x96,3) + POWER(x44,3)*
     POWER(x97,3) + POWER(x44,3)*POWER(x98,3) + POWER(x44,3)*POWER(x99,3) + 
     POWER(x44,3)*POWER(x100,3) + POWER(x45,3)*POWER(x1,3) + POWER(x45,3)*
     POWER(x2,3) + POWER(x45,3)*POWER(x3,3) + POWER(x45,3)*POWER(x4,3) + POWER(
     x45,3)*POWER(x5,3) + POWER(x45,3)*POWER(x6,3) + POWER(x45,3)*POWER(x7,3)
      + POWER(x45,3)*POWER(x8,3) + POWER(x45,3)*POWER(x9,3) + POWER(x45,3)*
     POWER(x10,3) + POWER(x45,3)*POWER(x11,3) + POWER(x45,3)*POWER(x12,3) + 
     POWER(x45,3)*POWER(x13,3) + POWER(x45,3)*POWER(x14,3) + POWER(x45,3)*
     POWER(x15,3) + POWER(x45,3)*POWER(x16,3) + POWER(x45,3)*POWER(x17,3) + 
     POWER(x45,3)*POWER(x18,3) + POWER(x45,3)*POWER(x19,3) + POWER(x45,3)*
     POWER(x20,3) + POWER(x45,3)*POWER(x21,3) + POWER(x45,3)*POWER(x22,3) + 
     POWER(x45,3)*POWER(x23,3) + POWER(x45,3)*POWER(x24,3) + POWER(x45,3)*
     POWER(x25,3) + POWER(x45,3)*POWER(x26,3) + POWER(x45,3)*POWER(x27,3) + 
     POWER(x45,3)*POWER(x28,3) + POWER(x45,3)*POWER(x29,3) + POWER(x45,3)*
     POWER(x30,3) + POWER(x45,3)*POWER(x31,3) + POWER(x45,3)*POWER(x32,3) + 
     POWER(x45,3)*POWER(x33,3) + POWER(x45,3)*POWER(x34,3) + POWER(x45,3)*
     POWER(x35,3) + POWER(x45,3)*POWER(x36,3) + POWER(x45,3)*POWER(x37,3) + 
     POWER(x45,3)*POWER(x38,3) + POWER(x45,3)*POWER(x39,3) + POWER(x45,3)*
     POWER(x40,3) + POWER(x45,3)*POWER(x41,3) + POWER(x45,3)*POWER(x42,3) + 
     POWER(x45,3)*POWER(x43,3) + POWER(x45,3)*POWER(x44,3) + POWER(x45,3)*
     POWER(x45,3) + POWER(x45,3)*POWER(x46,3) + POWER(x45,3)*POWER(x47,3) + 
     POWER(x45,3)*POWER(x48,3) + POWER(x45,3)*POWER(x49,3) + POWER(x45,3)*
     POWER(x50,3) + POWER(x45,3)*POWER(x51,3) + POWER(x45,3)*POWER(x52,3) + 
     POWER(x45,3)*POWER(x53,3) + POWER(x45,3)*POWER(x54,3) + POWER(x45,3)*
     POWER(x55,3) + POWER(x45,3)*POWER(x56,3) + POWER(x45,3)*POWER(x57,3) + 
     POWER(x45,3)*POWER(x58,3) + POWER(x45,3)*POWER(x59,3) + POWER(x45,3)*
     POWER(x60,3) + POWER(x45,3)*POWER(x61,3) + POWER(x45,3)*POWER(x62,3) + 
     POWER(x45,3)*POWER(x63,3) + POWER(x45,3)*POWER(x64,3) + POWER(x45,3)*
     POWER(x65,3) + POWER(x45,3)*POWER(x66,3) + POWER(x45,3)*POWER(x67,3) + 
     POWER(x45,3)*POWER(x68,3) + POWER(x45,3)*POWER(x69,3) + POWER(x45,3)*
     POWER(x70,3) + POWER(x45,3)*POWER(x71,3) + POWER(x45,3)*POWER(x72,3) + 
     POWER(x45,3)*POWER(x73,3) + POWER(x45,3)*POWER(x74,3) + POWER(x45,3)*
     POWER(x75,3) + POWER(x45,3)*POWER(x76,3) + POWER(x45,3)*POWER(x77,3) + 
     POWER(x45,3)*POWER(x78,3) + POWER(x45,3)*POWER(x79,3) + POWER(x45,3)*
     POWER(x80,3) + POWER(x45,3)*POWER(x81,3) + POWER(x45,3)*POWER(x82,3) + 
     POWER(x45,3)*POWER(x83,3) + POWER(x45,3)*POWER(x84,3) + POWER(x45,3)*
     POWER(x85,3) + POWER(x45,3)*POWER(x86,3) + POWER(x45,3)*POWER(x87,3) + 
     POWER(x45,3)*POWER(x88,3) + POWER(x45,3)*POWER(x89,3) + POWER(x45,3)*
     POWER(x90,3) + POWER(x45,3)*POWER(x91,3) + POWER(x45,3)*POWER(x92,3) + 
     POWER(x45,3)*POWER(x93,3) + POWER(x45,3)*POWER(x94,3) + POWER(x45,3)*
     POWER(x95,3) + POWER(x45,3)*POWER(x96,3) + POWER(x45,3)*POWER(x97,3) + 
     POWER(x45,3)*POWER(x98,3) + POWER(x45,3)*POWER(x99,3) + POWER(x45,3)*
     POWER(x100,3) + POWER(x46,3)*POWER(x1,3) + POWER(x46,3)*POWER(x2,3) + 
     POWER(x46,3)*POWER(x3,3) + POWER(x46,3)*POWER(x4,3) + POWER(x46,3)*POWER(
     x5,3) + POWER(x46,3)*POWER(x6,3) + POWER(x46,3)*POWER(x7,3) + POWER(x46,3)
     *POWER(x8,3) + POWER(x46,3)*POWER(x9,3) + POWER(x46,3)*POWER(x10,3) + 
     POWER(x46,3)*POWER(x11,3) + POWER(x46,3)*POWER(x12,3) + POWER(x46,3)*
     POWER(x13,3) + POWER(x46,3)*POWER(x14,3) + POWER(x46,3)*POWER(x15,3) + 
     POWER(x46,3)*POWER(x16,3) + POWER(x46,3)*POWER(x17,3) + POWER(x46,3)*
     POWER(x18,3) + POWER(x46,3)*POWER(x19,3) + POWER(x46,3)*POWER(x20,3) + 
     POWER(x46,3)*POWER(x21,3) + POWER(x46,3)*POWER(x22,3) + POWER(x46,3)*
     POWER(x23,3) + POWER(x46,3)*POWER(x24,3) + POWER(x46,3)*POWER(x25,3) + 
     POWER(x46,3)*POWER(x26,3) + POWER(x46,3)*POWER(x27,3) + POWER(x46,3)*
     POWER(x28,3) + POWER(x46,3)*POWER(x29,3) + POWER(x46,3)*POWER(x30,3) + 
     POWER(x46,3)*POWER(x31,3) + POWER(x46,3)*POWER(x32,3) + POWER(x46,3)*
     POWER(x33,3) + POWER(x46,3)*POWER(x34,3) + POWER(x46,3)*POWER(x35,3) + 
     POWER(x46,3)*POWER(x36,3) + POWER(x46,3)*POWER(x37,3) + POWER(x46,3)*
     POWER(x38,3) + POWER(x46,3)*POWER(x39,3) + POWER(x46,3)*POWER(x40,3) + 
     POWER(x46,3)*POWER(x41,3) + POWER(x46,3)*POWER(x42,3) + POWER(x46,3)*
     POWER(x43,3) + POWER(x46,3)*POWER(x44,3) + POWER(x46,3)*POWER(x45,3) + 
     POWER(x46,3)*POWER(x46,3) + POWER(x46,3)*POWER(x47,3) + POWER(x46,3)*
     POWER(x48,3) + POWER(x46,3)*POWER(x49,3) + POWER(x46,3)*POWER(x50,3) + 
     POWER(x46,3)*POWER(x51,3) + POWER(x46,3)*POWER(x52,3) + POWER(x46,3)*
     POWER(x53,3) + POWER(x46,3)*POWER(x54,3) + POWER(x46,3)*POWER(x55,3) + 
     POWER(x46,3)*POWER(x56,3) + POWER(x46,3)*POWER(x57,3) + POWER(x46,3)*
     POWER(x58,3) + POWER(x46,3)*POWER(x59,3) + POWER(x46,3)*POWER(x60,3) + 
     POWER(x46,3)*POWER(x61,3) + POWER(x46,3)*POWER(x62,3) + POWER(x46,3)*
     POWER(x63,3) + POWER(x46,3)*POWER(x64,3) + POWER(x46,3)*POWER(x65,3) + 
     POWER(x46,3)*POWER(x66,3) + POWER(x46,3)*POWER(x67,3) + POWER(x46,3)*
     POWER(x68,3) + POWER(x46,3)*POWER(x69,3) + POWER(x46,3)*POWER(x70,3) + 
     POWER(x46,3)*POWER(x71,3) + POWER(x46,3)*POWER(x72,3) + POWER(x46,3)*
     POWER(x73,3) + POWER(x46,3)*POWER(x74,3) + POWER(x46,3)*POWER(x75,3) + 
     POWER(x46,3)*POWER(x76,3) + POWER(x46,3)*POWER(x77,3) + POWER(x46,3)*
     POWER(x78,3) + POWER(x46,3)*POWER(x79,3) + POWER(x46,3)*POWER(x80,3) + 
     POWER(x46,3)*POWER(x81,3) + POWER(x46,3)*POWER(x82,3) + POWER(x46,3)*
     POWER(x83,3) + POWER(x46,3)*POWER(x84,3) + POWER(x46,3)*POWER(x85,3) + 
     POWER(x46,3)*POWER(x86,3) + POWER(x46,3)*POWER(x87,3) + POWER(x46,3)*
     POWER(x88,3) + POWER(x46,3)*POWER(x89,3) + POWER(x46,3)*POWER(x90,3) + 
     POWER(x46,3)*POWER(x91,3) + POWER(x46,3)*POWER(x92,3) + POWER(x46,3)*
     POWER(x93,3) + POWER(x46,3)*POWER(x94,3) + POWER(x46,3)*POWER(x95,3) + 
     POWER(x46,3)*POWER(x96,3) + POWER(x46,3)*POWER(x97,3) + POWER(x46,3)*
     POWER(x98,3) + POWER(x46,3)*POWER(x99,3) + POWER(x46,3)*POWER(x100,3) + 
     POWER(x47,3)*POWER(x1,3) + POWER(x47,3)*POWER(x2,3) + POWER(x47,3)*POWER(
     x3,3) + POWER(x47,3)*POWER(x4,3) + POWER(x47,3)*POWER(x5,3) + POWER(x47,3)
     *POWER(x6,3) + POWER(x47,3)*POWER(x7,3) + POWER(x47,3)*POWER(x8,3) + 
     POWER(x47,3)*POWER(x9,3) + POWER(x47,3)*POWER(x10,3) + POWER(x47,3)*POWER(
     x11,3) + POWER(x47,3)*POWER(x12,3) + POWER(x47,3)*POWER(x13,3) + POWER(x47
     ,3)*POWER(x14,3) + POWER(x47,3)*POWER(x15,3) + POWER(x47,3)*POWER(x16,3)
      + POWER(x47,3)*POWER(x17,3) + POWER(x47,3)*POWER(x18,3) + POWER(x47,3)*
     POWER(x19,3) + POWER(x47,3)*POWER(x20,3) + POWER(x47,3)*POWER(x21,3) + 
     POWER(x47,3)*POWER(x22,3) + POWER(x47,3)*POWER(x23,3) + POWER(x47,3)*
     POWER(x24,3) + POWER(x47,3)*POWER(x25,3) + POWER(x47,3)*POWER(x26,3) + 
     POWER(x47,3)*POWER(x27,3) + POWER(x47,3)*POWER(x28,3) + POWER(x47,3)*
     POWER(x29,3) + POWER(x47,3)*POWER(x30,3) + POWER(x47,3)*POWER(x31,3) + 
     POWER(x47,3)*POWER(x32,3) + POWER(x47,3)*POWER(x33,3) + POWER(x47,3)*
     POWER(x34,3) + POWER(x47,3)*POWER(x35,3) + POWER(x47,3)*POWER(x36,3) + 
     POWER(x47,3)*POWER(x37,3) + POWER(x47,3)*POWER(x38,3) + POWER(x47,3)*
     POWER(x39,3) + POWER(x47,3)*POWER(x40,3) + POWER(x47,3)*POWER(x41,3) + 
     POWER(x47,3)*POWER(x42,3) + POWER(x47,3)*POWER(x43,3) + POWER(x47,3)*
     POWER(x44,3) + POWER(x47,3)*POWER(x45,3) + POWER(x47,3)*POWER(x46,3) + 
     POWER(x47,3)*POWER(x47,3) + POWER(x47,3)*POWER(x48,3) + POWER(x47,3)*
     POWER(x49,3) + POWER(x47,3)*POWER(x50,3) + POWER(x47,3)*POWER(x51,3) + 
     POWER(x47,3)*POWER(x52,3) + POWER(x47,3)*POWER(x53,3) + POWER(x47,3)*
     POWER(x54,3) + POWER(x47,3)*POWER(x55,3) + POWER(x47,3)*POWER(x56,3) + 
     POWER(x47,3)*POWER(x57,3) + POWER(x47,3)*POWER(x58,3) + POWER(x47,3)*
     POWER(x59,3) + POWER(x47,3)*POWER(x60,3) + POWER(x47,3)*POWER(x61,3) + 
     POWER(x47,3)*POWER(x62,3) + POWER(x47,3)*POWER(x63,3) + POWER(x47,3)*
     POWER(x64,3) + POWER(x47,3)*POWER(x65,3) + POWER(x47,3)*POWER(x66,3) + 
     POWER(x47,3)*POWER(x67,3) + POWER(x47,3)*POWER(x68,3) + POWER(x47,3)*
     POWER(x69,3) + POWER(x47,3)*POWER(x70,3) + POWER(x47,3)*POWER(x71,3) + 
     POWER(x47,3)*POWER(x72,3) + POWER(x47,3)*POWER(x73,3) + POWER(x47,3)*
     POWER(x74,3) + POWER(x47,3)*POWER(x75,3) + POWER(x47,3)*POWER(x76,3) + 
     POWER(x47,3)*POWER(x77,3) + POWER(x47,3)*POWER(x78,3) + POWER(x47,3)*
     POWER(x79,3) + POWER(x47,3)*POWER(x80,3) + POWER(x47,3)*POWER(x81,3) + 
     POWER(x47,3)*POWER(x82,3) + POWER(x47,3)*POWER(x83,3) + POWER(x47,3)*
     POWER(x84,3) + POWER(x47,3)*POWER(x85,3) + POWER(x47,3)*POWER(x86,3) + 
     POWER(x47,3)*POWER(x87,3) + POWER(x47,3)*POWER(x88,3) + POWER(x47,3)*
     POWER(x89,3) + POWER(x47,3)*POWER(x90,3) + POWER(x47,3)*POWER(x91,3) + 
     POWER(x47,3)*POWER(x92,3) + POWER(x47,3)*POWER(x93,3) + POWER(x47,3)*
     POWER(x94,3) + POWER(x47,3)*POWER(x95,3) + POWER(x47,3)*POWER(x96,3) + 
     POWER(x47,3)*POWER(x97,3) + POWER(x47,3)*POWER(x98,3) + POWER(x47,3)*
     POWER(x99,3) + POWER(x47,3)*POWER(x100,3) + POWER(x48,3)*POWER(x1,3) + 
     POWER(x48,3)*POWER(x2,3) + POWER(x48,3)*POWER(x3,3) + POWER(x48,3)*POWER(
     x4,3) + POWER(x48,3)*POWER(x5,3) + POWER(x48,3)*POWER(x6,3) + POWER(x48,3)
     *POWER(x7,3) + POWER(x48,3)*POWER(x8,3) + POWER(x48,3)*POWER(x9,3) + 
     POWER(x48,3)*POWER(x10,3) + POWER(x48,3)*POWER(x11,3) + POWER(x48,3)*
     POWER(x12,3) + POWER(x48,3)*POWER(x13,3) + POWER(x48,3)*POWER(x14,3) + 
     POWER(x48,3)*POWER(x15,3) + POWER(x48,3)*POWER(x16,3) + POWER(x48,3)*
     POWER(x17,3) + POWER(x48,3)*POWER(x18,3) + POWER(x48,3)*POWER(x19,3) + 
     POWER(x48,3)*POWER(x20,3) + POWER(x48,3)*POWER(x21,3) + POWER(x48,3)*
     POWER(x22,3) + POWER(x48,3)*POWER(x23,3) + POWER(x48,3)*POWER(x24,3) + 
     POWER(x48,3)*POWER(x25,3) + POWER(x48,3)*POWER(x26,3) + POWER(x48,3)*
     POWER(x27,3) + POWER(x48,3)*POWER(x28,3) + POWER(x48,3)*POWER(x29,3) + 
     POWER(x48,3)*POWER(x30,3) + POWER(x48,3)*POWER(x31,3) + POWER(x48,3)*
     POWER(x32,3) + POWER(x48,3)*POWER(x33,3) + POWER(x48,3)*POWER(x34,3) + 
     POWER(x48,3)*POWER(x35,3) + POWER(x48,3)*POWER(x36,3) + POWER(x48,3)*
     POWER(x37,3) + POWER(x48,3)*POWER(x38,3) + POWER(x48,3)*POWER(x39,3) + 
     POWER(x48,3)*POWER(x40,3) + POWER(x48,3)*POWER(x41,3) + POWER(x48,3)*
     POWER(x42,3) + POWER(x48,3)*POWER(x43,3) + POWER(x48,3)*POWER(x44,3) + 
     POWER(x48,3)*POWER(x45,3) + POWER(x48,3)*POWER(x46,3) + POWER(x48,3)*
     POWER(x47,3) + POWER(x48,3)*POWER(x48,3) + POWER(x48,3)*POWER(x49,3) + 
     POWER(x48,3)*POWER(x50,3) + POWER(x48,3)*POWER(x51,3) + POWER(x48,3)*
     POWER(x52,3) + POWER(x48,3)*POWER(x53,3) + POWER(x48,3)*POWER(x54,3) + 
     POWER(x48,3)*POWER(x55,3) + POWER(x48,3)*POWER(x56,3) + POWER(x48,3)*
     POWER(x57,3) + POWER(x48,3)*POWER(x58,3) + POWER(x48,3)*POWER(x59,3) + 
     POWER(x48,3)*POWER(x60,3) + POWER(x48,3)*POWER(x61,3) + POWER(x48,3)*
     POWER(x62,3) + POWER(x48,3)*POWER(x63,3) + POWER(x48,3)*POWER(x64,3) + 
     POWER(x48,3)*POWER(x65,3) + POWER(x48,3)*POWER(x66,3) + POWER(x48,3)*
     POWER(x67,3) + POWER(x48,3)*POWER(x68,3) + POWER(x48,3)*POWER(x69,3) + 
     POWER(x48,3)*POWER(x70,3) + POWER(x48,3)*POWER(x71,3) + POWER(x48,3)*
     POWER(x72,3) + POWER(x48,3)*POWER(x73,3) + POWER(x48,3)*POWER(x74,3) + 
     POWER(x48,3)*POWER(x75,3) + POWER(x48,3)*POWER(x76,3) + POWER(x48,3)*
     POWER(x77,3) + POWER(x48,3)*POWER(x78,3) + POWER(x48,3)*POWER(x79,3) + 
     POWER(x48,3)*POWER(x80,3) + POWER(x48,3)*POWER(x81,3) + POWER(x48,3)*
     POWER(x82,3) + POWER(x48,3)*POWER(x83,3) + POWER(x48,3)*POWER(x84,3) + 
     POWER(x48,3)*POWER(x85,3) + POWER(x48,3)*POWER(x86,3) + POWER(x48,3)*
     POWER(x87,3) + POWER(x48,3)*POWER(x88,3) + POWER(x48,3)*POWER(x89,3) + 
     POWER(x48,3)*POWER(x90,3) + POWER(x48,3)*POWER(x91,3) + POWER(x48,3)*
     POWER(x92,3) + POWER(x48,3)*POWER(x93,3) + POWER(x48,3)*POWER(x94,3) + 
     POWER(x48,3)*POWER(x95,3) + POWER(x48,3)*POWER(x96,3) + POWER(x48,3)*
     POWER(x97,3) + POWER(x48,3)*POWER(x98,3) + POWER(x48,3)*POWER(x99,3) + 
     POWER(x48,3)*POWER(x100,3) + POWER(x49,3)*POWER(x1,3) + POWER(x49,3)*
     POWER(x2,3) + POWER(x49,3)*POWER(x3,3) + POWER(x49,3)*POWER(x4,3) + POWER(
     x49,3)*POWER(x5,3) + POWER(x49,3)*POWER(x6,3) + POWER(x49,3)*POWER(x7,3)
      + POWER(x49,3)*POWER(x8,3) + POWER(x49,3)*POWER(x9,3) + POWER(x49,3)*
     POWER(x10,3) + POWER(x49,3)*POWER(x11,3) + POWER(x49,3)*POWER(x12,3) + 
     POWER(x49,3)*POWER(x13,3) + POWER(x49,3)*POWER(x14,3) + POWER(x49,3)*
     POWER(x15,3) + POWER(x49,3)*POWER(x16,3) + POWER(x49,3)*POWER(x17,3) + 
     POWER(x49,3)*POWER(x18,3) + POWER(x49,3)*POWER(x19,3) + POWER(x49,3)*
     POWER(x20,3) + POWER(x49,3)*POWER(x21,3) + POWER(x49,3)*POWER(x22,3) + 
     POWER(x49,3)*POWER(x23,3) + POWER(x49,3)*POWER(x24,3) + POWER(x49,3)*
     POWER(x25,3) + POWER(x49,3)*POWER(x26,3) + POWER(x49,3)*POWER(x27,3) + 
     POWER(x49,3)*POWER(x28,3) + POWER(x49,3)*POWER(x29,3) + POWER(x49,3)*
     POWER(x30,3) + POWER(x49,3)*POWER(x31,3) + POWER(x49,3)*POWER(x32,3) + 
     POWER(x49,3)*POWER(x33,3) + POWER(x49,3)*POWER(x34,3) + POWER(x49,3)*
     POWER(x35,3) + POWER(x49,3)*POWER(x36,3) + POWER(x49,3)*POWER(x37,3) + 
     POWER(x49,3)*POWER(x38,3) + POWER(x49,3)*POWER(x39,3) + POWER(x49,3)*
     POWER(x40,3) + POWER(x49,3)*POWER(x41,3) + POWER(x49,3)*POWER(x42,3) + 
     POWER(x49,3)*POWER(x43,3) + POWER(x49,3)*POWER(x44,3) + POWER(x49,3)*
     POWER(x45,3) + POWER(x49,3)*POWER(x46,3) + POWER(x49,3)*POWER(x47,3) + 
     POWER(x49,3)*POWER(x48,3) + POWER(x49,3)*POWER(x49,3) + POWER(x49,3)*
     POWER(x50,3) + POWER(x49,3)*POWER(x51,3) + POWER(x49,3)*POWER(x52,3) + 
     POWER(x49,3)*POWER(x53,3) + POWER(x49,3)*POWER(x54,3) + POWER(x49,3)*
     POWER(x55,3) + POWER(x49,3)*POWER(x56,3) + POWER(x49,3)*POWER(x57,3) + 
     POWER(x49,3)*POWER(x58,3) + POWER(x49,3)*POWER(x59,3) + POWER(x49,3)*
     POWER(x60,3) + POWER(x49,3)*POWER(x61,3) + POWER(x49,3)*POWER(x62,3) + 
     POWER(x49,3)*POWER(x63,3) + POWER(x49,3)*POWER(x64,3) + POWER(x49,3)*
     POWER(x65,3) + POWER(x49,3)*POWER(x66,3) + POWER(x49,3)*POWER(x67,3) + 
     POWER(x49,3)*POWER(x68,3) + POWER(x49,3)*POWER(x69,3) + POWER(x49,3)*
     POWER(x70,3) + POWER(x49,3)*POWER(x71,3) + POWER(x49,3)*POWER(x72,3) + 
     POWER(x49,3)*POWER(x73,3) + POWER(x49,3)*POWER(x74,3) + POWER(x49,3)*
     POWER(x75,3) + POWER(x49,3)*POWER(x76,3) + POWER(x49,3)*POWER(x77,3) + 
     POWER(x49,3)*POWER(x78,3) + POWER(x49,3)*POWER(x79,3) + POWER(x49,3)*
     POWER(x80,3) + POWER(x49,3)*POWER(x81,3) + POWER(x49,3)*POWER(x82,3) + 
     POWER(x49,3)*POWER(x83,3) + POWER(x49,3)*POWER(x84,3) + POWER(x49,3)*
     POWER(x85,3) + POWER(x49,3)*POWER(x86,3) + POWER(x49,3)*POWER(x87,3) + 
     POWER(x49,3)*POWER(x88,3) + POWER(x49,3)*POWER(x89,3) + POWER(x49,3)*
     POWER(x90,3) + POWER(x49,3)*POWER(x91,3) + POWER(x49,3)*POWER(x92,3) + 
     POWER(x49,3)*POWER(x93,3) + POWER(x49,3)*POWER(x94,3) + POWER(x49,3)*
     POWER(x95,3) + POWER(x49,3)*POWER(x96,3) + POWER(x49,3)*POWER(x97,3) + 
     POWER(x49,3)*POWER(x98,3) + POWER(x49,3)*POWER(x99,3) + POWER(x49,3)*
     POWER(x100,3) + POWER(x50,3)*POWER(x1,3) + POWER(x50,3)*POWER(x2,3) + 
     POWER(x50,3)*POWER(x3,3) + POWER(x50,3)*POWER(x4,3) + POWER(x50,3)*POWER(
     x5,3) + POWER(x50,3)*POWER(x6,3) + POWER(x50,3)*POWER(x7,3) + POWER(x50,3)
     *POWER(x8,3) + POWER(x50,3)*POWER(x9,3) + POWER(x50,3)*POWER(x10,3) + 
     POWER(x50,3)*POWER(x11,3) + POWER(x50,3)*POWER(x12,3) + POWER(x50,3)*
     POWER(x13,3) + POWER(x50,3)*POWER(x14,3) + POWER(x50,3)*POWER(x15,3) + 
     POWER(x50,3)*POWER(x16,3) + POWER(x50,3)*POWER(x17,3) + POWER(x50,3)*
     POWER(x18,3) + POWER(x50,3)*POWER(x19,3) + POWER(x50,3)*POWER(x20,3) + 
     POWER(x50,3)*POWER(x21,3) + POWER(x50,3)*POWER(x22,3) + POWER(x50,3)*
     POWER(x23,3) + POWER(x50,3)*POWER(x24,3) + POWER(x50,3)*POWER(x25,3) + 
     POWER(x50,3)*POWER(x26,3) + POWER(x50,3)*POWER(x27,3) + POWER(x50,3)*
     POWER(x28,3) + POWER(x50,3)*POWER(x29,3) + POWER(x50,3)*POWER(x30,3) + 
     POWER(x50,3)*POWER(x31,3) + POWER(x50,3)*POWER(x32,3) + POWER(x50,3)*
     POWER(x33,3) + POWER(x50,3)*POWER(x34,3) + POWER(x50,3)*POWER(x35,3) + 
     POWER(x50,3)*POWER(x36,3) + POWER(x50,3)*POWER(x37,3) + POWER(x50,3)*
     POWER(x38,3) + POWER(x50,3)*POWER(x39,3) + POWER(x50,3)*POWER(x40,3) + 
     POWER(x50,3)*POWER(x41,3) + POWER(x50,3)*POWER(x42,3) + POWER(x50,3)*
     POWER(x43,3) + POWER(x50,3)*POWER(x44,3) + POWER(x50,3)*POWER(x45,3) + 
     POWER(x50,3)*POWER(x46,3) + POWER(x50,3)*POWER(x47,3) + POWER(x50,3)*
     POWER(x48,3) + POWER(x50,3)*POWER(x49,3) + POWER(x50,3)*POWER(x50,3) + 
     POWER(x50,3)*POWER(x51,3) + POWER(x50,3)*POWER(x52,3) + POWER(x50,3)*
     POWER(x53,3) + POWER(x50,3)*POWER(x54,3) + POWER(x50,3)*POWER(x55,3) + 
     POWER(x50,3)*POWER(x56,3) + POWER(x50,3)*POWER(x57,3) + POWER(x50,3)*
     POWER(x58,3) + POWER(x50,3)*POWER(x59,3) + POWER(x50,3)*POWER(x60,3) + 
     POWER(x50,3)*POWER(x61,3) + POWER(x50,3)*POWER(x62,3) + POWER(x50,3)*
     POWER(x63,3) + POWER(x50,3)*POWER(x64,3) + POWER(x50,3)*POWER(x65,3) + 
     POWER(x50,3)*POWER(x66,3) + POWER(x50,3)*POWER(x67,3) + POWER(x50,3)*
     POWER(x68,3) + POWER(x50,3)*POWER(x69,3) + POWER(x50,3)*POWER(x70,3) + 
     POWER(x50,3)*POWER(x71,3) + POWER(x50,3)*POWER(x72,3) + POWER(x50,3)*
     POWER(x73,3) + POWER(x50,3)*POWER(x74,3) + POWER(x50,3)*POWER(x75,3) + 
     POWER(x50,3)*POWER(x76,3) + POWER(x50,3)*POWER(x77,3) + POWER(x50,3)*
     POWER(x78,3) + POWER(x50,3)*POWER(x79,3) + POWER(x50,3)*POWER(x80,3) + 
     POWER(x50,3)*POWER(x81,3) + POWER(x50,3)*POWER(x82,3) + POWER(x50,3)*
     POWER(x83,3) + POWER(x50,3)*POWER(x84,3) + POWER(x50,3)*POWER(x85,3) + 
     POWER(x50,3)*POWER(x86,3) + POWER(x50,3)*POWER(x87,3) + POWER(x50,3)*
     POWER(x88,3) + POWER(x50,3)*POWER(x89,3) + POWER(x50,3)*POWER(x90,3) + 
     POWER(x50,3)*POWER(x91,3) + POWER(x50,3)*POWER(x92,3) + POWER(x50,3)*
     POWER(x93,3) + POWER(x50,3)*POWER(x94,3) + POWER(x50,3)*POWER(x95,3) + 
     POWER(x50,3)*POWER(x96,3) + POWER(x50,3)*POWER(x97,3) + POWER(x50,3)*
     POWER(x98,3) + POWER(x50,3)*POWER(x99,3) + POWER(x50,3)*POWER(x100,3) + 
     POWER(x51,3)*POWER(x1,3) + POWER(x51,3)*POWER(x2,3) + POWER(x51,3)*POWER(
     x3,3) + POWER(x51,3)*POWER(x4,3) + POWER(x51,3)*POWER(x5,3) + POWER(x51,3)
     *POWER(x6,3) + POWER(x51,3)*POWER(x7,3) + POWER(x51,3)*POWER(x8,3) + 
     POWER(x51,3)*POWER(x9,3) + POWER(x51,3)*POWER(x10,3) + POWER(x51,3)*POWER(
     x11,3) + POWER(x51,3)*POWER(x12,3) + POWER(x51,3)*POWER(x13,3) + POWER(x51
     ,3)*POWER(x14,3) + POWER(x51,3)*POWER(x15,3) + POWER(x51,3)*POWER(x16,3)
      + POWER(x51,3)*POWER(x17,3) + POWER(x51,3)*POWER(x18,3) + POWER(x51,3)*
     POWER(x19,3) + POWER(x51,3)*POWER(x20,3) + POWER(x51,3)*POWER(x21,3) + 
     POWER(x51,3)*POWER(x22,3) + POWER(x51,3)*POWER(x23,3) + POWER(x51,3)*
     POWER(x24,3) + POWER(x51,3)*POWER(x25,3) + POWER(x51,3)*POWER(x26,3) + 
     POWER(x51,3)*POWER(x27,3) + POWER(x51,3)*POWER(x28,3) + POWER(x51,3)*
     POWER(x29,3) + POWER(x51,3)*POWER(x30,3) + POWER(x51,3)*POWER(x31,3) + 
     POWER(x51,3)*POWER(x32,3) + POWER(x51,3)*POWER(x33,3) + POWER(x51,3)*
     POWER(x34,3) + POWER(x51,3)*POWER(x35,3) + POWER(x51,3)*POWER(x36,3) + 
     POWER(x51,3)*POWER(x37,3) + POWER(x51,3)*POWER(x38,3) + POWER(x51,3)*
     POWER(x39,3) + POWER(x51,3)*POWER(x40,3) + POWER(x51,3)*POWER(x41,3) + 
     POWER(x51,3)*POWER(x42,3) + POWER(x51,3)*POWER(x43,3) + POWER(x51,3)*
     POWER(x44,3) + POWER(x51,3)*POWER(x45,3) + POWER(x51,3)*POWER(x46,3) + 
     POWER(x51,3)*POWER(x47,3) + POWER(x51,3)*POWER(x48,3) + POWER(x51,3)*
     POWER(x49,3) + POWER(x51,3)*POWER(x50,3) + POWER(x51,3)*POWER(x51,3) + 
     POWER(x51,3)*POWER(x52,3) + POWER(x51,3)*POWER(x53,3) + POWER(x51,3)*
     POWER(x54,3) + POWER(x51,3)*POWER(x55,3) + POWER(x51,3)*POWER(x56,3) + 
     POWER(x51,3)*POWER(x57,3) + POWER(x51,3)*POWER(x58,3) + POWER(x51,3)*
     POWER(x59,3) + POWER(x51,3)*POWER(x60,3) + POWER(x51,3)*POWER(x61,3) + 
     POWER(x51,3)*POWER(x62,3) + POWER(x51,3)*POWER(x63,3) + POWER(x51,3)*
     POWER(x64,3) + POWER(x51,3)*POWER(x65,3) + POWER(x51,3)*POWER(x66,3) + 
     POWER(x51,3)*POWER(x67,3) + POWER(x51,3)*POWER(x68,3) + POWER(x51,3)*
     POWER(x69,3) + POWER(x51,3)*POWER(x70,3) + POWER(x51,3)*POWER(x71,3) + 
     POWER(x51,3)*POWER(x72,3) + POWER(x51,3)*POWER(x73,3) + POWER(x51,3)*
     POWER(x74,3) + POWER(x51,3)*POWER(x75,3) + POWER(x51,3)*POWER(x76,3) + 
     POWER(x51,3)*POWER(x77,3) + POWER(x51,3)*POWER(x78,3) + POWER(x51,3)*
     POWER(x79,3) + POWER(x51,3)*POWER(x80,3) + POWER(x51,3)*POWER(x81,3) + 
     POWER(x51,3)*POWER(x82,3) + POWER(x51,3)*POWER(x83,3) + POWER(x51,3)*
     POWER(x84,3) + POWER(x51,3)*POWER(x85,3) + POWER(x51,3)*POWER(x86,3) + 
     POWER(x51,3)*POWER(x87,3) + POWER(x51,3)*POWER(x88,3) + POWER(x51,3)*
     POWER(x89,3) + POWER(x51,3)*POWER(x90,3) + POWER(x51,3)*POWER(x91,3) + 
     POWER(x51,3)*POWER(x92,3) + POWER(x51,3)*POWER(x93,3) + POWER(x51,3)*
     POWER(x94,3) + POWER(x51,3)*POWER(x95,3) + POWER(x51,3)*POWER(x96,3) + 
     POWER(x51,3)*POWER(x97,3) + POWER(x51,3)*POWER(x98,3) + POWER(x51,3)*
     POWER(x99,3) + POWER(x51,3)*POWER(x100,3) + POWER(x52,3)*POWER(x1,3) + 
     POWER(x52,3)*POWER(x2,3) + POWER(x52,3)*POWER(x3,3) + POWER(x52,3)*POWER(
     x4,3) + POWER(x52,3)*POWER(x5,3) + POWER(x52,3)*POWER(x6,3) + POWER(x52,3)
     *POWER(x7,3) + POWER(x52,3)*POWER(x8,3) + POWER(x52,3)*POWER(x9,3) + 
     POWER(x52,3)*POWER(x10,3) + POWER(x52,3)*POWER(x11,3) + POWER(x52,3)*
     POWER(x12,3) + POWER(x52,3)*POWER(x13,3) + POWER(x52,3)*POWER(x14,3) + 
     POWER(x52,3)*POWER(x15,3) + POWER(x52,3)*POWER(x16,3) + POWER(x52,3)*
     POWER(x17,3) + POWER(x52,3)*POWER(x18,3) + POWER(x52,3)*POWER(x19,3) + 
     POWER(x52,3)*POWER(x20,3) + POWER(x52,3)*POWER(x21,3) + POWER(x52,3)*
     POWER(x22,3) + POWER(x52,3)*POWER(x23,3) + POWER(x52,3)*POWER(x24,3) + 
     POWER(x52,3)*POWER(x25,3) + POWER(x52,3)*POWER(x26,3) + POWER(x52,3)*
     POWER(x27,3) + POWER(x52,3)*POWER(x28,3) + POWER(x52,3)*POWER(x29,3) + 
     POWER(x52,3)*POWER(x30,3) + POWER(x52,3)*POWER(x31,3) + POWER(x52,3)*
     POWER(x32,3) + POWER(x52,3)*POWER(x33,3) + POWER(x52,3)*POWER(x34,3) + 
     POWER(x52,3)*POWER(x35,3) + POWER(x52,3)*POWER(x36,3) + POWER(x52,3)*
     POWER(x37,3) + POWER(x52,3)*POWER(x38,3) + POWER(x52,3)*POWER(x39,3) + 
     POWER(x52,3)*POWER(x40,3) + POWER(x52,3)*POWER(x41,3) + POWER(x52,3)*
     POWER(x42,3) + POWER(x52,3)*POWER(x43,3) + POWER(x52,3)*POWER(x44,3) + 
     POWER(x52,3)*POWER(x45,3) + POWER(x52,3)*POWER(x46,3) + POWER(x52,3)*
     POWER(x47,3) + POWER(x52,3)*POWER(x48,3) + POWER(x52,3)*POWER(x49,3) + 
     POWER(x52,3)*POWER(x50,3) + POWER(x52,3)*POWER(x51,3) + POWER(x52,3)*
     POWER(x52,3) + POWER(x52,3)*POWER(x53,3) + POWER(x52,3)*POWER(x54,3) + 
     POWER(x52,3)*POWER(x55,3) + POWER(x52,3)*POWER(x56,3) + POWER(x52,3)*
     POWER(x57,3) + POWER(x52,3)*POWER(x58,3) + POWER(x52,3)*POWER(x59,3) + 
     POWER(x52,3)*POWER(x60,3) + POWER(x52,3)*POWER(x61,3) + POWER(x52,3)*
     POWER(x62,3) + POWER(x52,3)*POWER(x63,3) + POWER(x52,3)*POWER(x64,3) + 
     POWER(x52,3)*POWER(x65,3) + POWER(x52,3)*POWER(x66,3) + POWER(x52,3)*
     POWER(x67,3) + POWER(x52,3)*POWER(x68,3) + POWER(x52,3)*POWER(x69,3) + 
     POWER(x52,3)*POWER(x70,3) + POWER(x52,3)*POWER(x71,3) + POWER(x52,3)*
     POWER(x72,3) + POWER(x52,3)*POWER(x73,3) + POWER(x52,3)*POWER(x74,3) + 
     POWER(x52,3)*POWER(x75,3) + POWER(x52,3)*POWER(x76,3) + POWER(x52,3)*
     POWER(x77,3) + POWER(x52,3)*POWER(x78,3) + POWER(x52,3)*POWER(x79,3) + 
     POWER(x52,3)*POWER(x80,3) + POWER(x52,3)*POWER(x81,3) + POWER(x52,3)*
     POWER(x82,3) + POWER(x52,3)*POWER(x83,3) + POWER(x52,3)*POWER(x84,3) + 
     POWER(x52,3)*POWER(x85,3) + POWER(x52,3)*POWER(x86,3) + POWER(x52,3)*
     POWER(x87,3) + POWER(x52,3)*POWER(x88,3) + POWER(x52,3)*POWER(x89,3) + 
     POWER(x52,3)*POWER(x90,3) + POWER(x52,3)*POWER(x91,3) + POWER(x52,3)*
     POWER(x92,3) + POWER(x52,3)*POWER(x93,3) + POWER(x52,3)*POWER(x94,3) + 
     POWER(x52,3)*POWER(x95,3) + POWER(x52,3)*POWER(x96,3) + POWER(x52,3)*
     POWER(x97,3) + POWER(x52,3)*POWER(x98,3) + POWER(x52,3)*POWER(x99,3) + 
     POWER(x52,3)*POWER(x100,3) + POWER(x53,3)*POWER(x1,3) + POWER(x53,3)*
     POWER(x2,3) + POWER(x53,3)*POWER(x3,3) + POWER(x53,3)*POWER(x4,3) + POWER(
     x53,3)*POWER(x5,3) + POWER(x53,3)*POWER(x6,3) + POWER(x53,3)*POWER(x7,3)
      + POWER(x53,3)*POWER(x8,3) + POWER(x53,3)*POWER(x9,3) + POWER(x53,3)*
     POWER(x10,3) + POWER(x53,3)*POWER(x11,3) + POWER(x53,3)*POWER(x12,3) + 
     POWER(x53,3)*POWER(x13,3) + POWER(x53,3)*POWER(x14,3) + POWER(x53,3)*
     POWER(x15,3) + POWER(x53,3)*POWER(x16,3) + POWER(x53,3)*POWER(x17,3) + 
     POWER(x53,3)*POWER(x18,3) + POWER(x53,3)*POWER(x19,3) + POWER(x53,3)*
     POWER(x20,3) + POWER(x53,3)*POWER(x21,3) + POWER(x53,3)*POWER(x22,3) + 
     POWER(x53,3)*POWER(x23,3) + POWER(x53,3)*POWER(x24,3) + POWER(x53,3)*
     POWER(x25,3) + POWER(x53,3)*POWER(x26,3) + POWER(x53,3)*POWER(x27,3) + 
     POWER(x53,3)*POWER(x28,3) + POWER(x53,3)*POWER(x29,3) + POWER(x53,3)*
     POWER(x30,3) + POWER(x53,3)*POWER(x31,3) + POWER(x53,3)*POWER(x32,3) + 
     POWER(x53,3)*POWER(x33,3) + POWER(x53,3)*POWER(x34,3) + POWER(x53,3)*
     POWER(x35,3) + POWER(x53,3)*POWER(x36,3) + POWER(x53,3)*POWER(x37,3) + 
     POWER(x53,3)*POWER(x38,3) + POWER(x53,3)*POWER(x39,3) + POWER(x53,3)*
     POWER(x40,3) + POWER(x53,3)*POWER(x41,3) + POWER(x53,3)*POWER(x42,3) + 
     POWER(x53,3)*POWER(x43,3) + POWER(x53,3)*POWER(x44,3) + POWER(x53,3)*
     POWER(x45,3) + POWER(x53,3)*POWER(x46,3) + POWER(x53,3)*POWER(x47,3) + 
     POWER(x53,3)*POWER(x48,3) + POWER(x53,3)*POWER(x49,3) + POWER(x53,3)*
     POWER(x50,3) + POWER(x53,3)*POWER(x51,3) + POWER(x53,3)*POWER(x52,3) + 
     POWER(x53,3)*POWER(x53,3) + POWER(x53,3)*POWER(x54,3) + POWER(x53,3)*
     POWER(x55,3) + POWER(x53,3)*POWER(x56,3) + POWER(x53,3)*POWER(x57,3) + 
     POWER(x53,3)*POWER(x58,3) + POWER(x53,3)*POWER(x59,3) + POWER(x53,3)*
     POWER(x60,3) + POWER(x53,3)*POWER(x61,3) + POWER(x53,3)*POWER(x62,3) + 
     POWER(x53,3)*POWER(x63,3) + POWER(x53,3)*POWER(x64,3) + POWER(x53,3)*
     POWER(x65,3) + POWER(x53,3)*POWER(x66,3) + POWER(x53,3)*POWER(x67,3) + 
     POWER(x53,3)*POWER(x68,3) + POWER(x53,3)*POWER(x69,3) + POWER(x53,3)*
     POWER(x70,3) + POWER(x53,3)*POWER(x71,3) + POWER(x53,3)*POWER(x72,3) + 
     POWER(x53,3)*POWER(x73,3) + POWER(x53,3)*POWER(x74,3) + POWER(x53,3)*
     POWER(x75,3) + POWER(x53,3)*POWER(x76,3) + POWER(x53,3)*POWER(x77,3) + 
     POWER(x53,3)*POWER(x78,3) + POWER(x53,3)*POWER(x79,3) + POWER(x53,3)*
     POWER(x80,3) + POWER(x53,3)*POWER(x81,3) + POWER(x53,3)*POWER(x82,3) + 
     POWER(x53,3)*POWER(x83,3) + POWER(x53,3)*POWER(x84,3) + POWER(x53,3)*
     POWER(x85,3) + POWER(x53,3)*POWER(x86,3) + POWER(x53,3)*POWER(x87,3) + 
     POWER(x53,3)*POWER(x88,3) + POWER(x53,3)*POWER(x89,3) + POWER(x53,3)*
     POWER(x90,3) + POWER(x53,3)*POWER(x91,3) + POWER(x53,3)*POWER(x92,3) + 
     POWER(x53,3)*POWER(x93,3) + POWER(x53,3)*POWER(x94,3) + POWER(x53,3)*
     POWER(x95,3) + POWER(x53,3)*POWER(x96,3) + POWER(x53,3)*POWER(x97,3) + 
     POWER(x53,3)*POWER(x98,3) + POWER(x53,3)*POWER(x99,3) + POWER(x53,3)*
     POWER(x100,3) + POWER(x54,3)*POWER(x1,3) + POWER(x54,3)*POWER(x2,3) + 
     POWER(x54,3)*POWER(x3,3) + POWER(x54,3)*POWER(x4,3) + POWER(x54,3)*POWER(
     x5,3) + POWER(x54,3)*POWER(x6,3) + POWER(x54,3)*POWER(x7,3) + POWER(x54,3)
     *POWER(x8,3) + POWER(x54,3)*POWER(x9,3) + POWER(x54,3)*POWER(x10,3) + 
     POWER(x54,3)*POWER(x11,3) + POWER(x54,3)*POWER(x12,3) + POWER(x54,3)*
     POWER(x13,3) + POWER(x54,3)*POWER(x14,3) + POWER(x54,3)*POWER(x15,3) + 
     POWER(x54,3)*POWER(x16,3) + POWER(x54,3)*POWER(x17,3) + POWER(x54,3)*
     POWER(x18,3) + POWER(x54,3)*POWER(x19,3) + POWER(x54,3)*POWER(x20,3) + 
     POWER(x54,3)*POWER(x21,3) + POWER(x54,3)*POWER(x22,3) + POWER(x54,3)*
     POWER(x23,3) + POWER(x54,3)*POWER(x24,3) + POWER(x54,3)*POWER(x25,3) + 
     POWER(x54,3)*POWER(x26,3) + POWER(x54,3)*POWER(x27,3) + POWER(x54,3)*
     POWER(x28,3) + POWER(x54,3)*POWER(x29,3) + POWER(x54,3)*POWER(x30,3) + 
     POWER(x54,3)*POWER(x31,3) + POWER(x54,3)*POWER(x32,3) + POWER(x54,3)*
     POWER(x33,3) + POWER(x54,3)*POWER(x34,3) + POWER(x54,3)*POWER(x35,3) + 
     POWER(x54,3)*POWER(x36,3) + POWER(x54,3)*POWER(x37,3) + POWER(x54,3)*
     POWER(x38,3) + POWER(x54,3)*POWER(x39,3) + POWER(x54,3)*POWER(x40,3) + 
     POWER(x54,3)*POWER(x41,3) + POWER(x54,3)*POWER(x42,3) + POWER(x54,3)*
     POWER(x43,3) + POWER(x54,3)*POWER(x44,3) + POWER(x54,3)*POWER(x45,3) + 
     POWER(x54,3)*POWER(x46,3) + POWER(x54,3)*POWER(x47,3) + POWER(x54,3)*
     POWER(x48,3) + POWER(x54,3)*POWER(x49,3) + POWER(x54,3)*POWER(x50,3) + 
     POWER(x54,3)*POWER(x51,3) + POWER(x54,3)*POWER(x52,3) + POWER(x54,3)*
     POWER(x53,3) + POWER(x54,3)*POWER(x54,3) + POWER(x54,3)*POWER(x55,3) + 
     POWER(x54,3)*POWER(x56,3) + POWER(x54,3)*POWER(x57,3) + POWER(x54,3)*
     POWER(x58,3) + POWER(x54,3)*POWER(x59,3) + POWER(x54,3)*POWER(x60,3) + 
     POWER(x54,3)*POWER(x61,3) + POWER(x54,3)*POWER(x62,3) + POWER(x54,3)*
     POWER(x63,3) + POWER(x54,3)*POWER(x64,3) + POWER(x54,3)*POWER(x65,3) + 
     POWER(x54,3)*POWER(x66,3) + POWER(x54,3)*POWER(x67,3) + POWER(x54,3)*
     POWER(x68,3) + POWER(x54,3)*POWER(x69,3) + POWER(x54,3)*POWER(x70,3) + 
     POWER(x54,3)*POWER(x71,3) + POWER(x54,3)*POWER(x72,3) + POWER(x54,3)*
     POWER(x73,3) + POWER(x54,3)*POWER(x74,3) + POWER(x54,3)*POWER(x75,3) + 
     POWER(x54,3)*POWER(x76,3) + POWER(x54,3)*POWER(x77,3) + POWER(x54,3)*
     POWER(x78,3) + POWER(x54,3)*POWER(x79,3) + POWER(x54,3)*POWER(x80,3) + 
     POWER(x54,3)*POWER(x81,3) + POWER(x54,3)*POWER(x82,3) + POWER(x54,3)*
     POWER(x83,3) + POWER(x54,3)*POWER(x84,3) + POWER(x54,3)*POWER(x85,3) + 
     POWER(x54,3)*POWER(x86,3) + POWER(x54,3)*POWER(x87,3) + POWER(x54,3)*
     POWER(x88,3) + POWER(x54,3)*POWER(x89,3) + POWER(x54,3)*POWER(x90,3) + 
     POWER(x54,3)*POWER(x91,3) + POWER(x54,3)*POWER(x92,3) + POWER(x54,3)*
     POWER(x93,3) + POWER(x54,3)*POWER(x94,3) + POWER(x54,3)*POWER(x95,3) + 
     POWER(x54,3)*POWER(x96,3) + POWER(x54,3)*POWER(x97,3) + POWER(x54,3)*
     POWER(x98,3) + POWER(x54,3)*POWER(x99,3) + POWER(x54,3)*POWER(x100,3) + 
     POWER(x55,3)*POWER(x1,3) + POWER(x55,3)*POWER(x2,3) + POWER(x55,3)*POWER(
     x3,3) + POWER(x55,3)*POWER(x4,3) + POWER(x55,3)*POWER(x5,3) + POWER(x55,3)
     *POWER(x6,3) + POWER(x55,3)*POWER(x7,3) + POWER(x55,3)*POWER(x8,3) + 
     POWER(x55,3)*POWER(x9,3) + POWER(x55,3)*POWER(x10,3) + POWER(x55,3)*POWER(
     x11,3) + POWER(x55,3)*POWER(x12,3) + POWER(x55,3)*POWER(x13,3) + POWER(x55
     ,3)*POWER(x14,3) + POWER(x55,3)*POWER(x15,3) + POWER(x55,3)*POWER(x16,3)
      + POWER(x55,3)*POWER(x17,3) + POWER(x55,3)*POWER(x18,3) + POWER(x55,3)*
     POWER(x19,3) + POWER(x55,3)*POWER(x20,3) + POWER(x55,3)*POWER(x21,3) + 
     POWER(x55,3)*POWER(x22,3) + POWER(x55,3)*POWER(x23,3) + POWER(x55,3)*
     POWER(x24,3) + POWER(x55,3)*POWER(x25,3) + POWER(x55,3)*POWER(x26,3) + 
     POWER(x55,3)*POWER(x27,3) + POWER(x55,3)*POWER(x28,3) + POWER(x55,3)*
     POWER(x29,3) + POWER(x55,3)*POWER(x30,3) + POWER(x55,3)*POWER(x31,3) + 
     POWER(x55,3)*POWER(x32,3) + POWER(x55,3)*POWER(x33,3) + POWER(x55,3)*
     POWER(x34,3) + POWER(x55,3)*POWER(x35,3) + POWER(x55,3)*POWER(x36,3) + 
     POWER(x55,3)*POWER(x37,3) + POWER(x55,3)*POWER(x38,3) + POWER(x55,3)*
     POWER(x39,3) + POWER(x55,3)*POWER(x40,3) + POWER(x55,3)*POWER(x41,3) + 
     POWER(x55,3)*POWER(x42,3) + POWER(x55,3)*POWER(x43,3) + POWER(x55,3)*
     POWER(x44,3) + POWER(x55,3)*POWER(x45,3) + POWER(x55,3)*POWER(x46,3) + 
     POWER(x55,3)*POWER(x47,3) + POWER(x55,3)*POWER(x48,3) + POWER(x55,3)*
     POWER(x49,3) + POWER(x55,3)*POWER(x50,3) + POWER(x55,3)*POWER(x51,3) + 
     POWER(x55,3)*POWER(x52,3) + POWER(x55,3)*POWER(x53,3) + POWER(x55,3)*
     POWER(x54,3) + POWER(x55,3)*POWER(x55,3) + POWER(x55,3)*POWER(x56,3) + 
     POWER(x55,3)*POWER(x57,3) + POWER(x55,3)*POWER(x58,3) + POWER(x55,3)*
     POWER(x59,3) + POWER(x55,3)*POWER(x60,3) + POWER(x55,3)*POWER(x61,3) + 
     POWER(x55,3)*POWER(x62,3) + POWER(x55,3)*POWER(x63,3) + POWER(x55,3)*
     POWER(x64,3) + POWER(x55,3)*POWER(x65,3) + POWER(x55,3)*POWER(x66,3) + 
     POWER(x55,3)*POWER(x67,3) + POWER(x55,3)*POWER(x68,3) + POWER(x55,3)*
     POWER(x69,3) + POWER(x55,3)*POWER(x70,3) + POWER(x55,3)*POWER(x71,3) + 
     POWER(x55,3)*POWER(x72,3) + POWER(x55,3)*POWER(x73,3) + POWER(x55,3)*
     POWER(x74,3) + POWER(x55,3)*POWER(x75,3) + POWER(x55,3)*POWER(x76,3) + 
     POWER(x55,3)*POWER(x77,3) + POWER(x55,3)*POWER(x78,3) + POWER(x55,3)*
     POWER(x79,3) + POWER(x55,3)*POWER(x80,3) + POWER(x55,3)*POWER(x81,3) + 
     POWER(x55,3)*POWER(x82,3) + POWER(x55,3)*POWER(x83,3) + POWER(x55,3)*
     POWER(x84,3) + POWER(x55,3)*POWER(x85,3) + POWER(x55,3)*POWER(x86,3) + 
     POWER(x55,3)*POWER(x87,3) + POWER(x55,3)*POWER(x88,3) + POWER(x55,3)*
     POWER(x89,3) + POWER(x55,3)*POWER(x90,3) + POWER(x55,3)*POWER(x91,3) + 
     POWER(x55,3)*POWER(x92,3) + POWER(x55,3)*POWER(x93,3) + POWER(x55,3)*
     POWER(x94,3) + POWER(x55,3)*POWER(x95,3) + POWER(x55,3)*POWER(x96,3) + 
     POWER(x55,3)*POWER(x97,3) + POWER(x55,3)*POWER(x98,3) + POWER(x55,3)*
     POWER(x99,3) + POWER(x55,3)*POWER(x100,3) + POWER(x56,3)*POWER(x1,3) + 
     POWER(x56,3)*POWER(x2,3) + POWER(x56,3)*POWER(x3,3) + POWER(x56,3)*POWER(
     x4,3) + POWER(x56,3)*POWER(x5,3) + POWER(x56,3)*POWER(x6,3) + POWER(x56,3)
     *POWER(x7,3) + POWER(x56,3)*POWER(x8,3) + POWER(x56,3)*POWER(x9,3) + 
     POWER(x56,3)*POWER(x10,3) + POWER(x56,3)*POWER(x11,3) + POWER(x56,3)*
     POWER(x12,3) + POWER(x56,3)*POWER(x13,3) + POWER(x56,3)*POWER(x14,3) + 
     POWER(x56,3)*POWER(x15,3) + POWER(x56,3)*POWER(x16,3) + POWER(x56,3)*
     POWER(x17,3) + POWER(x56,3)*POWER(x18,3) + POWER(x56,3)*POWER(x19,3) + 
     POWER(x56,3)*POWER(x20,3) + POWER(x56,3)*POWER(x21,3) + POWER(x56,3)*
     POWER(x22,3) + POWER(x56,3)*POWER(x23,3) + POWER(x56,3)*POWER(x24,3) + 
     POWER(x56,3)*POWER(x25,3) + POWER(x56,3)*POWER(x26,3) + POWER(x56,3)*
     POWER(x27,3) + POWER(x56,3)*POWER(x28,3) + POWER(x56,3)*POWER(x29,3) + 
     POWER(x56,3)*POWER(x30,3) + POWER(x56,3)*POWER(x31,3) + POWER(x56,3)*
     POWER(x32,3) + POWER(x56,3)*POWER(x33,3) + POWER(x56,3)*POWER(x34,3) + 
     POWER(x56,3)*POWER(x35,3) + POWER(x56,3)*POWER(x36,3) + POWER(x56,3)*
     POWER(x37,3) + POWER(x56,3)*POWER(x38,3) + POWER(x56,3)*POWER(x39,3) + 
     POWER(x56,3)*POWER(x40,3) + POWER(x56,3)*POWER(x41,3) + POWER(x56,3)*
     POWER(x42,3) + POWER(x56,3)*POWER(x43,3) + POWER(x56,3)*POWER(x44,3) + 
     POWER(x56,3)*POWER(x45,3) + POWER(x56,3)*POWER(x46,3) + POWER(x56,3)*
     POWER(x47,3) + POWER(x56,3)*POWER(x48,3) + POWER(x56,3)*POWER(x49,3) + 
     POWER(x56,3)*POWER(x50,3) + POWER(x56,3)*POWER(x51,3) + POWER(x56,3)*
     POWER(x52,3) + POWER(x56,3)*POWER(x53,3) + POWER(x56,3)*POWER(x54,3) + 
     POWER(x56,3)*POWER(x55,3) + POWER(x56,3)*POWER(x56,3) + POWER(x56,3)*
     POWER(x57,3) + POWER(x56,3)*POWER(x58,3) + POWER(x56,3)*POWER(x59,3) + 
     POWER(x56,3)*POWER(x60,3) + POWER(x56,3)*POWER(x61,3) + POWER(x56,3)*
     POWER(x62,3) + POWER(x56,3)*POWER(x63,3) + POWER(x56,3)*POWER(x64,3) + 
     POWER(x56,3)*POWER(x65,3) + POWER(x56,3)*POWER(x66,3) + POWER(x56,3)*
     POWER(x67,3) + POWER(x56,3)*POWER(x68,3) + POWER(x56,3)*POWER(x69,3) + 
     POWER(x56,3)*POWER(x70,3) + POWER(x56,3)*POWER(x71,3) + POWER(x56,3)*
     POWER(x72,3) + POWER(x56,3)*POWER(x73,3) + POWER(x56,3)*POWER(x74,3) + 
     POWER(x56,3)*POWER(x75,3) + POWER(x56,3)*POWER(x76,3) + POWER(x56,3)*
     POWER(x77,3) + POWER(x56,3)*POWER(x78,3) + POWER(x56,3)*POWER(x79,3) + 
     POWER(x56,3)*POWER(x80,3) + POWER(x56,3)*POWER(x81,3) + POWER(x56,3)*
     POWER(x82,3) + POWER(x56,3)*POWER(x83,3) + POWER(x56,3)*POWER(x84,3) + 
     POWER(x56,3)*POWER(x85,3) + POWER(x56,3)*POWER(x86,3) + POWER(x56,3)*
     POWER(x87,3) + POWER(x56,3)*POWER(x88,3) + POWER(x56,3)*POWER(x89,3) + 
     POWER(x56,3)*POWER(x90,3) + POWER(x56,3)*POWER(x91,3) + POWER(x56,3)*
     POWER(x92,3) + POWER(x56,3)*POWER(x93,3) + POWER(x56,3)*POWER(x94,3) + 
     POWER(x56,3)*POWER(x95,3) + POWER(x56,3)*POWER(x96,3) + POWER(x56,3)*
     POWER(x97,3) + POWER(x56,3)*POWER(x98,3) + POWER(x56,3)*POWER(x99,3) + 
     POWER(x56,3)*POWER(x100,3) + POWER(x57,3)*POWER(x1,3) + POWER(x57,3)*
     POWER(x2,3) + POWER(x57,3)*POWER(x3,3) + POWER(x57,3)*POWER(x4,3) + POWER(
     x57,3)*POWER(x5,3) + POWER(x57,3)*POWER(x6,3) + POWER(x57,3)*POWER(x7,3)
      + POWER(x57,3)*POWER(x8,3) + POWER(x57,3)*POWER(x9,3) + POWER(x57,3)*
     POWER(x10,3) + POWER(x57,3)*POWER(x11,3) + POWER(x57,3)*POWER(x12,3) + 
     POWER(x57,3)*POWER(x13,3) + POWER(x57,3)*POWER(x14,3) + POWER(x57,3)*
     POWER(x15,3) + POWER(x57,3)*POWER(x16,3) + POWER(x57,3)*POWER(x17,3) + 
     POWER(x57,3)*POWER(x18,3) + POWER(x57,3)*POWER(x19,3) + POWER(x57,3)*
     POWER(x20,3) + POWER(x57,3)*POWER(x21,3) + POWER(x57,3)*POWER(x22,3) + 
     POWER(x57,3)*POWER(x23,3) + POWER(x57,3)*POWER(x24,3) + POWER(x57,3)*
     POWER(x25,3) + POWER(x57,3)*POWER(x26,3) + POWER(x57,3)*POWER(x27,3) + 
     POWER(x57,3)*POWER(x28,3) + POWER(x57,3)*POWER(x29,3) + POWER(x57,3)*
     POWER(x30,3) + POWER(x57,3)*POWER(x31,3) + POWER(x57,3)*POWER(x32,3) + 
     POWER(x57,3)*POWER(x33,3) + POWER(x57,3)*POWER(x34,3) + POWER(x57,3)*
     POWER(x35,3) + POWER(x57,3)*POWER(x36,3) + POWER(x57,3)*POWER(x37,3) + 
     POWER(x57,3)*POWER(x38,3) + POWER(x57,3)*POWER(x39,3) + POWER(x57,3)*
     POWER(x40,3) + POWER(x57,3)*POWER(x41,3) + POWER(x57,3)*POWER(x42,3) + 
     POWER(x57,3)*POWER(x43,3) + POWER(x57,3)*POWER(x44,3) + POWER(x57,3)*
     POWER(x45,3) + POWER(x57,3)*POWER(x46,3) + POWER(x57,3)*POWER(x47,3) + 
     POWER(x57,3)*POWER(x48,3) + POWER(x57,3)*POWER(x49,3) + POWER(x57,3)*
     POWER(x50,3) + POWER(x57,3)*POWER(x51,3) + POWER(x57,3)*POWER(x52,3) + 
     POWER(x57,3)*POWER(x53,3) + POWER(x57,3)*POWER(x54,3) + POWER(x57,3)*
     POWER(x55,3) + POWER(x57,3)*POWER(x56,3) + POWER(x57,3)*POWER(x57,3) + 
     POWER(x57,3)*POWER(x58,3) + POWER(x57,3)*POWER(x59,3) + POWER(x57,3)*
     POWER(x60,3) + POWER(x57,3)*POWER(x61,3) + POWER(x57,3)*POWER(x62,3) + 
     POWER(x57,3)*POWER(x63,3) + POWER(x57,3)*POWER(x64,3) + POWER(x57,3)*
     POWER(x65,3) + POWER(x57,3)*POWER(x66,3) + POWER(x57,3)*POWER(x67,3) + 
     POWER(x57,3)*POWER(x68,3) + POWER(x57,3)*POWER(x69,3) + POWER(x57,3)*
     POWER(x70,3) + POWER(x57,3)*POWER(x71,3) + POWER(x57,3)*POWER(x72,3) + 
     POWER(x57,3)*POWER(x73,3) + POWER(x57,3)*POWER(x74,3) + POWER(x57,3)*
     POWER(x75,3) + POWER(x57,3)*POWER(x76,3) + POWER(x57,3)*POWER(x77,3) + 
     POWER(x57,3)*POWER(x78,3) + POWER(x57,3)*POWER(x79,3) + POWER(x57,3)*
     POWER(x80,3) + POWER(x57,3)*POWER(x81,3) + POWER(x57,3)*POWER(x82,3) + 
     POWER(x57,3)*POWER(x83,3) + POWER(x57,3)*POWER(x84,3) + POWER(x57,3)*
     POWER(x85,3) + POWER(x57,3)*POWER(x86,3) + POWER(x57,3)*POWER(x87,3) + 
     POWER(x57,3)*POWER(x88,3) + POWER(x57,3)*POWER(x89,3) + POWER(x57,3)*
     POWER(x90,3) + POWER(x57,3)*POWER(x91,3) + POWER(x57,3)*POWER(x92,3) + 
     POWER(x57,3)*POWER(x93,3) + POWER(x57,3)*POWER(x94,3) + POWER(x57,3)*
     POWER(x95,3) + POWER(x57,3)*POWER(x96,3) + POWER(x57,3)*POWER(x97,3) + 
     POWER(x57,3)*POWER(x98,3) + POWER(x57,3)*POWER(x99,3) + POWER(x57,3)*
     POWER(x100,3) + POWER(x58,3)*POWER(x1,3) + POWER(x58,3)*POWER(x2,3) + 
     POWER(x58,3)*POWER(x3,3) + POWER(x58,3)*POWER(x4,3) + POWER(x58,3)*POWER(
     x5,3) + POWER(x58,3)*POWER(x6,3) + POWER(x58,3)*POWER(x7,3) + POWER(x58,3)
     *POWER(x8,3) + POWER(x58,3)*POWER(x9,3) + POWER(x58,3)*POWER(x10,3) + 
     POWER(x58,3)*POWER(x11,3) + POWER(x58,3)*POWER(x12,3) + POWER(x58,3)*
     POWER(x13,3) + POWER(x58,3)*POWER(x14,3) + POWER(x58,3)*POWER(x15,3) + 
     POWER(x58,3)*POWER(x16,3) + POWER(x58,3)*POWER(x17,3) + POWER(x58,3)*
     POWER(x18,3) + POWER(x58,3)*POWER(x19,3) + POWER(x58,3)*POWER(x20,3) + 
     POWER(x58,3)*POWER(x21,3) + POWER(x58,3)*POWER(x22,3) + POWER(x58,3)*
     POWER(x23,3) + POWER(x58,3)*POWER(x24,3) + POWER(x58,3)*POWER(x25,3) + 
     POWER(x58,3)*POWER(x26,3) + POWER(x58,3)*POWER(x27,3) + POWER(x58,3)*
     POWER(x28,3) + POWER(x58,3)*POWER(x29,3) + POWER(x58,3)*POWER(x30,3) + 
     POWER(x58,3)*POWER(x31,3) + POWER(x58,3)*POWER(x32,3) + POWER(x58,3)*
     POWER(x33,3) + POWER(x58,3)*POWER(x34,3) + POWER(x58,3)*POWER(x35,3) + 
     POWER(x58,3)*POWER(x36,3) + POWER(x58,3)*POWER(x37,3) + POWER(x58,3)*
     POWER(x38,3) + POWER(x58,3)*POWER(x39,3) + POWER(x58,3)*POWER(x40,3) + 
     POWER(x58,3)*POWER(x41,3) + POWER(x58,3)*POWER(x42,3) + POWER(x58,3)*
     POWER(x43,3) + POWER(x58,3)*POWER(x44,3) + POWER(x58,3)*POWER(x45,3) + 
     POWER(x58,3)*POWER(x46,3) + POWER(x58,3)*POWER(x47,3) + POWER(x58,3)*
     POWER(x48,3) + POWER(x58,3)*POWER(x49,3) + POWER(x58,3)*POWER(x50,3) + 
     POWER(x58,3)*POWER(x51,3) + POWER(x58,3)*POWER(x52,3) + POWER(x58,3)*
     POWER(x53,3) + POWER(x58,3)*POWER(x54,3) + POWER(x58,3)*POWER(x55,3) + 
     POWER(x58,3)*POWER(x56,3) + POWER(x58,3)*POWER(x57,3) + POWER(x58,3)*
     POWER(x58,3) + POWER(x58,3)*POWER(x59,3) + POWER(x58,3)*POWER(x60,3) + 
     POWER(x58,3)*POWER(x61,3) + POWER(x58,3)*POWER(x62,3) + POWER(x58,3)*
     POWER(x63,3) + POWER(x58,3)*POWER(x64,3) + POWER(x58,3)*POWER(x65,3) + 
     POWER(x58,3)*POWER(x66,3) + POWER(x58,3)*POWER(x67,3) + POWER(x58,3)*
     POWER(x68,3) + POWER(x58,3)*POWER(x69,3) + POWER(x58,3)*POWER(x70,3) + 
     POWER(x58,3)*POWER(x71,3) + POWER(x58,3)*POWER(x72,3) + POWER(x58,3)*
     POWER(x73,3) + POWER(x58,3)*POWER(x74,3) + POWER(x58,3)*POWER(x75,3) + 
     POWER(x58,3)*POWER(x76,3) + POWER(x58,3)*POWER(x77,3) + POWER(x58,3)*
     POWER(x78,3) + POWER(x58,3)*POWER(x79,3) + POWER(x58,3)*POWER(x80,3) + 
     POWER(x58,3)*POWER(x81,3) + POWER(x58,3)*POWER(x82,3) + POWER(x58,3)*
     POWER(x83,3) + POWER(x58,3)*POWER(x84,3) + POWER(x58,3)*POWER(x85,3) + 
     POWER(x58,3)*POWER(x86,3) + POWER(x58,3)*POWER(x87,3) + POWER(x58,3)*
     POWER(x88,3) + POWER(x58,3)*POWER(x89,3) + POWER(x58,3)*POWER(x90,3) + 
     POWER(x58,3)*POWER(x91,3) + POWER(x58,3)*POWER(x92,3) + POWER(x58,3)*
     POWER(x93,3) + POWER(x58,3)*POWER(x94,3) + POWER(x58,3)*POWER(x95,3) + 
     POWER(x58,3)*POWER(x96,3) + POWER(x58,3)*POWER(x97,3) + POWER(x58,3)*
     POWER(x98,3) + POWER(x58,3)*POWER(x99,3) + POWER(x58,3)*POWER(x100,3) + 
     POWER(x59,3)*POWER(x1,3) + POWER(x59,3)*POWER(x2,3) + POWER(x59,3)*POWER(
     x3,3) + POWER(x59,3)*POWER(x4,3) + POWER(x59,3)*POWER(x5,3) + POWER(x59,3)
     *POWER(x6,3) + POWER(x59,3)*POWER(x7,3) + POWER(x59,3)*POWER(x8,3) + 
     POWER(x59,3)*POWER(x9,3) + POWER(x59,3)*POWER(x10,3) + POWER(x59,3)*POWER(
     x11,3) + POWER(x59,3)*POWER(x12,3) + POWER(x59,3)*POWER(x13,3) + POWER(x59
     ,3)*POWER(x14,3) + POWER(x59,3)*POWER(x15,3) + POWER(x59,3)*POWER(x16,3)
      + POWER(x59,3)*POWER(x17,3) + POWER(x59,3)*POWER(x18,3) + POWER(x59,3)*
     POWER(x19,3) + POWER(x59,3)*POWER(x20,3) + POWER(x59,3)*POWER(x21,3) + 
     POWER(x59,3)*POWER(x22,3) + POWER(x59,3)*POWER(x23,3) + POWER(x59,3)*
     POWER(x24,3) + POWER(x59,3)*POWER(x25,3) + POWER(x59,3)*POWER(x26,3) + 
     POWER(x59,3)*POWER(x27,3) + POWER(x59,3)*POWER(x28,3) + POWER(x59,3)*
     POWER(x29,3) + POWER(x59,3)*POWER(x30,3) + POWER(x59,3)*POWER(x31,3) + 
     POWER(x59,3)*POWER(x32,3) + POWER(x59,3)*POWER(x33,3) + POWER(x59,3)*
     POWER(x34,3) + POWER(x59,3)*POWER(x35,3) + POWER(x59,3)*POWER(x36,3) + 
     POWER(x59,3)*POWER(x37,3) + POWER(x59,3)*POWER(x38,3) + POWER(x59,3)*
     POWER(x39,3) + POWER(x59,3)*POWER(x40,3) + POWER(x59,3)*POWER(x41,3) + 
     POWER(x59,3)*POWER(x42,3) + POWER(x59,3)*POWER(x43,3) + POWER(x59,3)*
     POWER(x44,3) + POWER(x59,3)*POWER(x45,3) + POWER(x59,3)*POWER(x46,3) + 
     POWER(x59,3)*POWER(x47,3) + POWER(x59,3)*POWER(x48,3) + POWER(x59,3)*
     POWER(x49,3) + POWER(x59,3)*POWER(x50,3) + POWER(x59,3)*POWER(x51,3) + 
     POWER(x59,3)*POWER(x52,3) + POWER(x59,3)*POWER(x53,3) + POWER(x59,3)*
     POWER(x54,3) + POWER(x59,3)*POWER(x55,3) + POWER(x59,3)*POWER(x56,3) + 
     POWER(x59,3)*POWER(x57,3) + POWER(x59,3)*POWER(x58,3) + POWER(x59,3)*
     POWER(x59,3) + POWER(x59,3)*POWER(x60,3) + POWER(x59,3)*POWER(x61,3) + 
     POWER(x59,3)*POWER(x62,3) + POWER(x59,3)*POWER(x63,3) + POWER(x59,3)*
     POWER(x64,3) + POWER(x59,3)*POWER(x65,3) + POWER(x59,3)*POWER(x66,3) + 
     POWER(x59,3)*POWER(x67,3) + POWER(x59,3)*POWER(x68,3) + POWER(x59,3)*
     POWER(x69,3) + POWER(x59,3)*POWER(x70,3) + POWER(x59,3)*POWER(x71,3) + 
     POWER(x59,3)*POWER(x72,3) + POWER(x59,3)*POWER(x73,3) + POWER(x59,3)*
     POWER(x74,3) + POWER(x59,3)*POWER(x75,3) + POWER(x59,3)*POWER(x76,3) + 
     POWER(x59,3)*POWER(x77,3) + POWER(x59,3)*POWER(x78,3) + POWER(x59,3)*
     POWER(x79,3) + POWER(x59,3)*POWER(x80,3) + POWER(x59,3)*POWER(x81,3) + 
     POWER(x59,3)*POWER(x82,3) + POWER(x59,3)*POWER(x83,3) + POWER(x59,3)*
     POWER(x84,3) + POWER(x59,3)*POWER(x85,3) + POWER(x59,3)*POWER(x86,3) + 
     POWER(x59,3)*POWER(x87,3) + POWER(x59,3)*POWER(x88,3) + POWER(x59,3)*
     POWER(x89,3) + POWER(x59,3)*POWER(x90,3) + POWER(x59,3)*POWER(x91,3) + 
     POWER(x59,3)*POWER(x92,3) + POWER(x59,3)*POWER(x93,3) + POWER(x59,3)*
     POWER(x94,3) + POWER(x59,3)*POWER(x95,3) + POWER(x59,3)*POWER(x96,3) + 
     POWER(x59,3)*POWER(x97,3) + POWER(x59,3)*POWER(x98,3) + POWER(x59,3)*
     POWER(x99,3) + POWER(x59,3)*POWER(x100,3) + POWER(x60,3)*POWER(x1,3) + 
     POWER(x60,3)*POWER(x2,3) + POWER(x60,3)*POWER(x3,3) + POWER(x60,3)*POWER(
     x4,3) + POWER(x60,3)*POWER(x5,3) + POWER(x60,3)*POWER(x6,3) + POWER(x60,3)
     *POWER(x7,3) + POWER(x60,3)*POWER(x8,3) + POWER(x60,3)*POWER(x9,3) + 
     POWER(x60,3)*POWER(x10,3) + POWER(x60,3)*POWER(x11,3) + POWER(x60,3)*
     POWER(x12,3) + POWER(x60,3)*POWER(x13,3) + POWER(x60,3)*POWER(x14,3) + 
     POWER(x60,3)*POWER(x15,3) + POWER(x60,3)*POWER(x16,3) + POWER(x60,3)*
     POWER(x17,3) + POWER(x60,3)*POWER(x18,3) + POWER(x60,3)*POWER(x19,3) + 
     POWER(x60,3)*POWER(x20,3) + POWER(x60,3)*POWER(x21,3) + POWER(x60,3)*
     POWER(x22,3) + POWER(x60,3)*POWER(x23,3) + POWER(x60,3)*POWER(x24,3) + 
     POWER(x60,3)*POWER(x25,3) + POWER(x60,3)*POWER(x26,3) + POWER(x60,3)*
     POWER(x27,3) + POWER(x60,3)*POWER(x28,3) + POWER(x60,3)*POWER(x29,3) + 
     POWER(x60,3)*POWER(x30,3) + POWER(x60,3)*POWER(x31,3) + POWER(x60,3)*
     POWER(x32,3) + POWER(x60,3)*POWER(x33,3) + POWER(x60,3)*POWER(x34,3) + 
     POWER(x60,3)*POWER(x35,3) + POWER(x60,3)*POWER(x36,3) + POWER(x60,3)*
     POWER(x37,3) + POWER(x60,3)*POWER(x38,3) + POWER(x60,3)*POWER(x39,3) + 
     POWER(x60,3)*POWER(x40,3) + POWER(x60,3)*POWER(x41,3) + POWER(x60,3)*
     POWER(x42,3) + POWER(x60,3)*POWER(x43,3) + POWER(x60,3)*POWER(x44,3) + 
     POWER(x60,3)*POWER(x45,3) + POWER(x60,3)*POWER(x46,3) + POWER(x60,3)*
     POWER(x47,3) + POWER(x60,3)*POWER(x48,3) + POWER(x60,3)*POWER(x49,3) + 
     POWER(x60,3)*POWER(x50,3) + POWER(x60,3)*POWER(x51,3) + POWER(x60,3)*
     POWER(x52,3) + POWER(x60,3)*POWER(x53,3) + POWER(x60,3)*POWER(x54,3) + 
     POWER(x60,3)*POWER(x55,3) + POWER(x60,3)*POWER(x56,3) + POWER(x60,3)*
     POWER(x57,3) + POWER(x60,3)*POWER(x58,3) + POWER(x60,3)*POWER(x59,3) + 
     POWER(x60,3)*POWER(x60,3) + POWER(x60,3)*POWER(x61,3) + POWER(x60,3)*
     POWER(x62,3) + POWER(x60,3)*POWER(x63,3) + POWER(x60,3)*POWER(x64,3) + 
     POWER(x60,3)*POWER(x65,3) + POWER(x60,3)*POWER(x66,3) + POWER(x60,3)*
     POWER(x67,3) + POWER(x60,3)*POWER(x68,3) + POWER(x60,3)*POWER(x69,3) + 
     POWER(x60,3)*POWER(x70,3) + POWER(x60,3)*POWER(x71,3) + POWER(x60,3)*
     POWER(x72,3) + POWER(x60,3)*POWER(x73,3) + POWER(x60,3)*POWER(x74,3) + 
     POWER(x60,3)*POWER(x75,3) + POWER(x60,3)*POWER(x76,3) + POWER(x60,3)*
     POWER(x77,3) + POWER(x60,3)*POWER(x78,3) + POWER(x60,3)*POWER(x79,3) + 
     POWER(x60,3)*POWER(x80,3) + POWER(x60,3)*POWER(x81,3) + POWER(x60,3)*
     POWER(x82,3) + POWER(x60,3)*POWER(x83,3) + POWER(x60,3)*POWER(x84,3) + 
     POWER(x60,3)*POWER(x85,3) + POWER(x60,3)*POWER(x86,3) + POWER(x60,3)*
     POWER(x87,3) + POWER(x60,3)*POWER(x88,3) + POWER(x60,3)*POWER(x89,3) + 
     POWER(x60,3)*POWER(x90,3) + POWER(x60,3)*POWER(x91,3) + POWER(x60,3)*
     POWER(x92,3) + POWER(x60,3)*POWER(x93,3) + POWER(x60,3)*POWER(x94,3) + 
     POWER(x60,3)*POWER(x95,3) + POWER(x60,3)*POWER(x96,3) + POWER(x60,3)*
     POWER(x97,3) + POWER(x60,3)*POWER(x98,3) + POWER(x60,3)*POWER(x99,3) + 
     POWER(x60,3)*POWER(x100,3) + POWER(x61,3)*POWER(x1,3) + POWER(x61,3)*
     POWER(x2,3) + POWER(x61,3)*POWER(x3,3) + POWER(x61,3)*POWER(x4,3) + POWER(
     x61,3)*POWER(x5,3) + POWER(x61,3)*POWER(x6,3) + POWER(x61,3)*POWER(x7,3)
      + POWER(x61,3)*POWER(x8,3) + POWER(x61,3)*POWER(x9,3) + POWER(x61,3)*
     POWER(x10,3) + POWER(x61,3)*POWER(x11,3) + POWER(x61,3)*POWER(x12,3) + 
     POWER(x61,3)*POWER(x13,3) + POWER(x61,3)*POWER(x14,3) + POWER(x61,3)*
     POWER(x15,3) + POWER(x61,3)*POWER(x16,3) + POWER(x61,3)*POWER(x17,3) + 
     POWER(x61,3)*POWER(x18,3) + POWER(x61,3)*POWER(x19,3) + POWER(x61,3)*
     POWER(x20,3) + POWER(x61,3)*POWER(x21,3) + POWER(x61,3)*POWER(x22,3) + 
     POWER(x61,3)*POWER(x23,3) + POWER(x61,3)*POWER(x24,3) + POWER(x61,3)*
     POWER(x25,3) + POWER(x61,3)*POWER(x26,3) + POWER(x61,3)*POWER(x27,3) + 
     POWER(x61,3)*POWER(x28,3) + POWER(x61,3)*POWER(x29,3) + POWER(x61,3)*
     POWER(x30,3) + POWER(x61,3)*POWER(x31,3) + POWER(x61,3)*POWER(x32,3) + 
     POWER(x61,3)*POWER(x33,3) + POWER(x61,3)*POWER(x34,3) + POWER(x61,3)*
     POWER(x35,3) + POWER(x61,3)*POWER(x36,3) + POWER(x61,3)*POWER(x37,3) + 
     POWER(x61,3)*POWER(x38,3) + POWER(x61,3)*POWER(x39,3) + POWER(x61,3)*
     POWER(x40,3) + POWER(x61,3)*POWER(x41,3) + POWER(x61,3)*POWER(x42,3) + 
     POWER(x61,3)*POWER(x43,3) + POWER(x61,3)*POWER(x44,3) + POWER(x61,3)*
     POWER(x45,3) + POWER(x61,3)*POWER(x46,3) + POWER(x61,3)*POWER(x47,3) + 
     POWER(x61,3)*POWER(x48,3) + POWER(x61,3)*POWER(x49,3) + POWER(x61,3)*
     POWER(x50,3) + POWER(x61,3)*POWER(x51,3) + POWER(x61,3)*POWER(x52,3) + 
     POWER(x61,3)*POWER(x53,3) + POWER(x61,3)*POWER(x54,3) + POWER(x61,3)*
     POWER(x55,3) + POWER(x61,3)*POWER(x56,3) + POWER(x61,3)*POWER(x57,3) + 
     POWER(x61,3)*POWER(x58,3) + POWER(x61,3)*POWER(x59,3) + POWER(x61,3)*
     POWER(x60,3) + POWER(x61,3)*POWER(x61,3) + POWER(x61,3)*POWER(x62,3) + 
     POWER(x61,3)*POWER(x63,3) + POWER(x61,3)*POWER(x64,3) + POWER(x61,3)*
     POWER(x65,3) + POWER(x61,3)*POWER(x66,3) + POWER(x61,3)*POWER(x67,3) + 
     POWER(x61,3)*POWER(x68,3) + POWER(x61,3)*POWER(x69,3) + POWER(x61,3)*
     POWER(x70,3) + POWER(x61,3)*POWER(x71,3) + POWER(x61,3)*POWER(x72,3) + 
     POWER(x61,3)*POWER(x73,3) + POWER(x61,3)*POWER(x74,3) + POWER(x61,3)*
     POWER(x75,3) + POWER(x61,3)*POWER(x76,3) + POWER(x61,3)*POWER(x77,3) + 
     POWER(x61,3)*POWER(x78,3) + POWER(x61,3)*POWER(x79,3) + POWER(x61,3)*
     POWER(x80,3) + POWER(x61,3)*POWER(x81,3) + POWER(x61,3)*POWER(x82,3) + 
     POWER(x61,3)*POWER(x83,3) + POWER(x61,3)*POWER(x84,3) + POWER(x61,3)*
     POWER(x85,3) + POWER(x61,3)*POWER(x86,3) + POWER(x61,3)*POWER(x87,3) + 
     POWER(x61,3)*POWER(x88,3) + POWER(x61,3)*POWER(x89,3) + POWER(x61,3)*
     POWER(x90,3) + POWER(x61,3)*POWER(x91,3) + POWER(x61,3)*POWER(x92,3) + 
     POWER(x61,3)*POWER(x93,3) + POWER(x61,3)*POWER(x94,3) + POWER(x61,3)*
     POWER(x95,3) + POWER(x61,3)*POWER(x96,3) + POWER(x61,3)*POWER(x97,3) + 
     POWER(x61,3)*POWER(x98,3) + POWER(x61,3)*POWER(x99,3) + POWER(x61,3)*
     POWER(x100,3) + POWER(x62,3)*POWER(x1,3) + POWER(x62,3)*POWER(x2,3) + 
     POWER(x62,3)*POWER(x3,3) + POWER(x62,3)*POWER(x4,3) + POWER(x62,3)*POWER(
     x5,3) + POWER(x62,3)*POWER(x6,3) + POWER(x62,3)*POWER(x7,3) + POWER(x62,3)
     *POWER(x8,3) + POWER(x62,3)*POWER(x9,3) + POWER(x62,3)*POWER(x10,3) + 
     POWER(x62,3)*POWER(x11,3) + POWER(x62,3)*POWER(x12,3) + POWER(x62,3)*
     POWER(x13,3) + POWER(x62,3)*POWER(x14,3) + POWER(x62,3)*POWER(x15,3) + 
     POWER(x62,3)*POWER(x16,3) + POWER(x62,3)*POWER(x17,3) + POWER(x62,3)*
     POWER(x18,3) + POWER(x62,3)*POWER(x19,3) + POWER(x62,3)*POWER(x20,3) + 
     POWER(x62,3)*POWER(x21,3) + POWER(x62,3)*POWER(x22,3) + POWER(x62,3)*
     POWER(x23,3) + POWER(x62,3)*POWER(x24,3) + POWER(x62,3)*POWER(x25,3) + 
     POWER(x62,3)*POWER(x26,3) + POWER(x62,3)*POWER(x27,3) + POWER(x62,3)*
     POWER(x28,3) + POWER(x62,3)*POWER(x29,3) + POWER(x62,3)*POWER(x30,3) + 
     POWER(x62,3)*POWER(x31,3) + POWER(x62,3)*POWER(x32,3) + POWER(x62,3)*
     POWER(x33,3) + POWER(x62,3)*POWER(x34,3) + POWER(x62,3)*POWER(x35,3) + 
     POWER(x62,3)*POWER(x36,3) + POWER(x62,3)*POWER(x37,3) + POWER(x62,3)*
     POWER(x38,3) + POWER(x62,3)*POWER(x39,3) + POWER(x62,3)*POWER(x40,3) + 
     POWER(x62,3)*POWER(x41,3) + POWER(x62,3)*POWER(x42,3) + POWER(x62,3)*
     POWER(x43,3) + POWER(x62,3)*POWER(x44,3) + POWER(x62,3)*POWER(x45,3) + 
     POWER(x62,3)*POWER(x46,3) + POWER(x62,3)*POWER(x47,3) + POWER(x62,3)*
     POWER(x48,3) + POWER(x62,3)*POWER(x49,3) + POWER(x62,3)*POWER(x50,3) + 
     POWER(x62,3)*POWER(x51,3) + POWER(x62,3)*POWER(x52,3) + POWER(x62,3)*
     POWER(x53,3) + POWER(x62,3)*POWER(x54,3) + POWER(x62,3)*POWER(x55,3) + 
     POWER(x62,3)*POWER(x56,3) + POWER(x62,3)*POWER(x57,3) + POWER(x62,3)*
     POWER(x58,3) + POWER(x62,3)*POWER(x59,3) + POWER(x62,3)*POWER(x60,3) + 
     POWER(x62,3)*POWER(x61,3) + POWER(x62,3)*POWER(x62,3) + POWER(x62,3)*
     POWER(x63,3) + POWER(x62,3)*POWER(x64,3) + POWER(x62,3)*POWER(x65,3) + 
     POWER(x62,3)*POWER(x66,3) + POWER(x62,3)*POWER(x67,3) + POWER(x62,3)*
     POWER(x68,3) + POWER(x62,3)*POWER(x69,3) + POWER(x62,3)*POWER(x70,3) + 
     POWER(x62,3)*POWER(x71,3) + POWER(x62,3)*POWER(x72,3) + POWER(x62,3)*
     POWER(x73,3) + POWER(x62,3)*POWER(x74,3) + POWER(x62,3)*POWER(x75,3) + 
     POWER(x62,3)*POWER(x76,3) + POWER(x62,3)*POWER(x77,3) + POWER(x62,3)*
     POWER(x78,3) + POWER(x62,3)*POWER(x79,3) + POWER(x62,3)*POWER(x80,3) + 
     POWER(x62,3)*POWER(x81,3) + POWER(x62,3)*POWER(x82,3) + POWER(x62,3)*
     POWER(x83,3) + POWER(x62,3)*POWER(x84,3) + POWER(x62,3)*POWER(x85,3) + 
     POWER(x62,3)*POWER(x86,3) + POWER(x62,3)*POWER(x87,3) + POWER(x62,3)*
     POWER(x88,3) + POWER(x62,3)*POWER(x89,3) + POWER(x62,3)*POWER(x90,3) + 
     POWER(x62,3)*POWER(x91,3) + POWER(x62,3)*POWER(x92,3) + POWER(x62,3)*
     POWER(x93,3) + POWER(x62,3)*POWER(x94,3) + POWER(x62,3)*POWER(x95,3) + 
     POWER(x62,3)*POWER(x96,3) + POWER(x62,3)*POWER(x97,3) + POWER(x62,3)*
     POWER(x98,3) + POWER(x62,3)*POWER(x99,3) + POWER(x62,3)*POWER(x100,3) + 
     POWER(x63,3)*POWER(x1,3) + POWER(x63,3)*POWER(x2,3) + POWER(x63,3)*POWER(
     x3,3) + POWER(x63,3)*POWER(x4,3) + POWER(x63,3)*POWER(x5,3) + POWER(x63,3)
     *POWER(x6,3) + POWER(x63,3)*POWER(x7,3) + POWER(x63,3)*POWER(x8,3) + 
     POWER(x63,3)*POWER(x9,3) + POWER(x63,3)*POWER(x10,3) + POWER(x63,3)*POWER(
     x11,3) + POWER(x63,3)*POWER(x12,3) + POWER(x63,3)*POWER(x13,3) + POWER(x63
     ,3)*POWER(x14,3) + POWER(x63,3)*POWER(x15,3) + POWER(x63,3)*POWER(x16,3)
      + POWER(x63,3)*POWER(x17,3) + POWER(x63,3)*POWER(x18,3) + POWER(x63,3)*
     POWER(x19,3) + POWER(x63,3)*POWER(x20,3) + POWER(x63,3)*POWER(x21,3) + 
     POWER(x63,3)*POWER(x22,3) + POWER(x63,3)*POWER(x23,3) + POWER(x63,3)*
     POWER(x24,3) + POWER(x63,3)*POWER(x25,3) + POWER(x63,3)*POWER(x26,3) + 
     POWER(x63,3)*POWER(x27,3) + POWER(x63,3)*POWER(x28,3) + POWER(x63,3)*
     POWER(x29,3) + POWER(x63,3)*POWER(x30,3) + POWER(x63,3)*POWER(x31,3) + 
     POWER(x63,3)*POWER(x32,3) + POWER(x63,3)*POWER(x33,3) + POWER(x63,3)*
     POWER(x34,3) + POWER(x63,3)*POWER(x35,3) + POWER(x63,3)*POWER(x36,3) + 
     POWER(x63,3)*POWER(x37,3) + POWER(x63,3)*POWER(x38,3) + POWER(x63,3)*
     POWER(x39,3) + POWER(x63,3)*POWER(x40,3) + POWER(x63,3)*POWER(x41,3) + 
     POWER(x63,3)*POWER(x42,3) + POWER(x63,3)*POWER(x43,3) + POWER(x63,3)*
     POWER(x44,3) + POWER(x63,3)*POWER(x45,3) + POWER(x63,3)*POWER(x46,3) + 
     POWER(x63,3)*POWER(x47,3) + POWER(x63,3)*POWER(x48,3) + POWER(x63,3)*
     POWER(x49,3) + POWER(x63,3)*POWER(x50,3) + POWER(x63,3)*POWER(x51,3) + 
     POWER(x63,3)*POWER(x52,3) + POWER(x63,3)*POWER(x53,3) + POWER(x63,3)*
     POWER(x54,3) + POWER(x63,3)*POWER(x55,3) + POWER(x63,3)*POWER(x56,3) + 
     POWER(x63,3)*POWER(x57,3) + POWER(x63,3)*POWER(x58,3) + POWER(x63,3)*
     POWER(x59,3) + POWER(x63,3)*POWER(x60,3) + POWER(x63,3)*POWER(x61,3) + 
     POWER(x63,3)*POWER(x62,3) + POWER(x63,3)*POWER(x63,3) + POWER(x63,3)*
     POWER(x64,3) + POWER(x63,3)*POWER(x65,3) + POWER(x63,3)*POWER(x66,3) + 
     POWER(x63,3)*POWER(x67,3) + POWER(x63,3)*POWER(x68,3) + POWER(x63,3)*
     POWER(x69,3) + POWER(x63,3)*POWER(x70,3) + POWER(x63,3)*POWER(x71,3) + 
     POWER(x63,3)*POWER(x72,3) + POWER(x63,3)*POWER(x73,3) + POWER(x63,3)*
     POWER(x74,3) + POWER(x63,3)*POWER(x75,3) + POWER(x63,3)*POWER(x76,3) + 
     POWER(x63,3)*POWER(x77,3) + POWER(x63,3)*POWER(x78,3) + POWER(x63,3)*
     POWER(x79,3) + POWER(x63,3)*POWER(x80,3) + POWER(x63,3)*POWER(x81,3) + 
     POWER(x63,3)*POWER(x82,3) + POWER(x63,3)*POWER(x83,3) + POWER(x63,3)*
     POWER(x84,3) + POWER(x63,3)*POWER(x85,3) + POWER(x63,3)*POWER(x86,3) + 
     POWER(x63,3)*POWER(x87,3) + POWER(x63,3)*POWER(x88,3) + POWER(x63,3)*
     POWER(x89,3) + POWER(x63,3)*POWER(x90,3) + POWER(x63,3)*POWER(x91,3) + 
     POWER(x63,3)*POWER(x92,3) + POWER(x63,3)*POWER(x93,3) + POWER(x63,3)*
     POWER(x94,3) + POWER(x63,3)*POWER(x95,3) + POWER(x63,3)*POWER(x96,3) + 
     POWER(x63,3)*POWER(x97,3) + POWER(x63,3)*POWER(x98,3) + POWER(x63,3)*
     POWER(x99,3) + POWER(x63,3)*POWER(x100,3) + POWER(x64,3)*POWER(x1,3) + 
     POWER(x64,3)*POWER(x2,3) + POWER(x64,3)*POWER(x3,3) + POWER(x64,3)*POWER(
     x4,3) + POWER(x64,3)*POWER(x5,3) + POWER(x64,3)*POWER(x6,3) + POWER(x64,3)
     *POWER(x7,3) + POWER(x64,3)*POWER(x8,3) + POWER(x64,3)*POWER(x9,3) + 
     POWER(x64,3)*POWER(x10,3) + POWER(x64,3)*POWER(x11,3) + POWER(x64,3)*
     POWER(x12,3) + POWER(x64,3)*POWER(x13,3) + POWER(x64,3)*POWER(x14,3) + 
     POWER(x64,3)*POWER(x15,3) + POWER(x64,3)*POWER(x16,3) + POWER(x64,3)*
     POWER(x17,3) + POWER(x64,3)*POWER(x18,3) + POWER(x64,3)*POWER(x19,3) + 
     POWER(x64,3)*POWER(x20,3) + POWER(x64,3)*POWER(x21,3) + POWER(x64,3)*
     POWER(x22,3) + POWER(x64,3)*POWER(x23,3) + POWER(x64,3)*POWER(x24,3) + 
     POWER(x64,3)*POWER(x25,3) + POWER(x64,3)*POWER(x26,3) + POWER(x64,3)*
     POWER(x27,3) + POWER(x64,3)*POWER(x28,3) + POWER(x64,3)*POWER(x29,3) + 
     POWER(x64,3)*POWER(x30,3) + POWER(x64,3)*POWER(x31,3) + POWER(x64,3)*
     POWER(x32,3) + POWER(x64,3)*POWER(x33,3) + POWER(x64,3)*POWER(x34,3) + 
     POWER(x64,3)*POWER(x35,3) + POWER(x64,3)*POWER(x36,3) + POWER(x64,3)*
     POWER(x37,3) + POWER(x64,3)*POWER(x38,3) + POWER(x64,3)*POWER(x39,3) + 
     POWER(x64,3)*POWER(x40,3) + POWER(x64,3)*POWER(x41,3) + POWER(x64,3)*
     POWER(x42,3) + POWER(x64,3)*POWER(x43,3) + POWER(x64,3)*POWER(x44,3) + 
     POWER(x64,3)*POWER(x45,3) + POWER(x64,3)*POWER(x46,3) + POWER(x64,3)*
     POWER(x47,3) + POWER(x64,3)*POWER(x48,3) + POWER(x64,3)*POWER(x49,3) + 
     POWER(x64,3)*POWER(x50,3) + POWER(x64,3)*POWER(x51,3) + POWER(x64,3)*
     POWER(x52,3) + POWER(x64,3)*POWER(x53,3) + POWER(x64,3)*POWER(x54,3) + 
     POWER(x64,3)*POWER(x55,3) + POWER(x64,3)*POWER(x56,3) + POWER(x64,3)*
     POWER(x57,3) + POWER(x64,3)*POWER(x58,3) + POWER(x64,3)*POWER(x59,3) + 
     POWER(x64,3)*POWER(x60,3) + POWER(x64,3)*POWER(x61,3) + POWER(x64,3)*
     POWER(x62,3) + POWER(x64,3)*POWER(x63,3) + POWER(x64,3)*POWER(x64,3) + 
     POWER(x64,3)*POWER(x65,3) + POWER(x64,3)*POWER(x66,3) + POWER(x64,3)*
     POWER(x67,3) + POWER(x64,3)*POWER(x68,3) + POWER(x64,3)*POWER(x69,3) + 
     POWER(x64,3)*POWER(x70,3) + POWER(x64,3)*POWER(x71,3) + POWER(x64,3)*
     POWER(x72,3) + POWER(x64,3)*POWER(x73,3) + POWER(x64,3)*POWER(x74,3) + 
     POWER(x64,3)*POWER(x75,3) + POWER(x64,3)*POWER(x76,3) + POWER(x64,3)*
     POWER(x77,3) + POWER(x64,3)*POWER(x78,3) + POWER(x64,3)*POWER(x79,3) + 
     POWER(x64,3)*POWER(x80,3) + POWER(x64,3)*POWER(x81,3) + POWER(x64,3)*
     POWER(x82,3) + POWER(x64,3)*POWER(x83,3) + POWER(x64,3)*POWER(x84,3) + 
     POWER(x64,3)*POWER(x85,3) + POWER(x64,3)*POWER(x86,3) + POWER(x64,3)*
     POWER(x87,3) + POWER(x64,3)*POWER(x88,3) + POWER(x64,3)*POWER(x89,3) + 
     POWER(x64,3)*POWER(x90,3) + POWER(x64,3)*POWER(x91,3) + POWER(x64,3)*
     POWER(x92,3) + POWER(x64,3)*POWER(x93,3) + POWER(x64,3)*POWER(x94,3) + 
     POWER(x64,3)*POWER(x95,3) + POWER(x64,3)*POWER(x96,3) + POWER(x64,3)*
     POWER(x97,3) + POWER(x64,3)*POWER(x98,3) + POWER(x64,3)*POWER(x99,3) + 
     POWER(x64,3)*POWER(x100,3) + POWER(x65,3)*POWER(x1,3) + POWER(x65,3)*
     POWER(x2,3) + POWER(x65,3)*POWER(x3,3) + POWER(x65,3)*POWER(x4,3) + POWER(
     x65,3)*POWER(x5,3) + POWER(x65,3)*POWER(x6,3) + POWER(x65,3)*POWER(x7,3)
      + POWER(x65,3)*POWER(x8,3) + POWER(x65,3)*POWER(x9,3) + POWER(x65,3)*
     POWER(x10,3) + POWER(x65,3)*POWER(x11,3) + POWER(x65,3)*POWER(x12,3) + 
     POWER(x65,3)*POWER(x13,3) + POWER(x65,3)*POWER(x14,3) + POWER(x65,3)*
     POWER(x15,3) + POWER(x65,3)*POWER(x16,3) + POWER(x65,3)*POWER(x17,3) + 
     POWER(x65,3)*POWER(x18,3) + POWER(x65,3)*POWER(x19,3) + POWER(x65,3)*
     POWER(x20,3) + POWER(x65,3)*POWER(x21,3) + POWER(x65,3)*POWER(x22,3) + 
     POWER(x65,3)*POWER(x23,3) + POWER(x65,3)*POWER(x24,3) + POWER(x65,3)*
     POWER(x25,3) + POWER(x65,3)*POWER(x26,3) + POWER(x65,3)*POWER(x27,3) + 
     POWER(x65,3)*POWER(x28,3) + POWER(x65,3)*POWER(x29,3) + POWER(x65,3)*
     POWER(x30,3) + POWER(x65,3)*POWER(x31,3) + POWER(x65,3)*POWER(x32,3) + 
     POWER(x65,3)*POWER(x33,3) + POWER(x65,3)*POWER(x34,3) + POWER(x65,3)*
     POWER(x35,3) + POWER(x65,3)*POWER(x36,3) + POWER(x65,3)*POWER(x37,3) + 
     POWER(x65,3)*POWER(x38,3) + POWER(x65,3)*POWER(x39,3) + POWER(x65,3)*
     POWER(x40,3) + POWER(x65,3)*POWER(x41,3) + POWER(x65,3)*POWER(x42,3) + 
     POWER(x65,3)*POWER(x43,3) + POWER(x65,3)*POWER(x44,3) + POWER(x65,3)*
     POWER(x45,3) + POWER(x65,3)*POWER(x46,3) + POWER(x65,3)*POWER(x47,3) + 
     POWER(x65,3)*POWER(x48,3) + POWER(x65,3)*POWER(x49,3) + POWER(x65,3)*
     POWER(x50,3) + POWER(x65,3)*POWER(x51,3) + POWER(x65,3)*POWER(x52,3) + 
     POWER(x65,3)*POWER(x53,3) + POWER(x65,3)*POWER(x54,3) + POWER(x65,3)*
     POWER(x55,3) + POWER(x65,3)*POWER(x56,3) + POWER(x65,3)*POWER(x57,3) + 
     POWER(x65,3)*POWER(x58,3) + POWER(x65,3)*POWER(x59,3) + POWER(x65,3)*
     POWER(x60,3) + POWER(x65,3)*POWER(x61,3) + POWER(x65,3)*POWER(x62,3) + 
     POWER(x65,3)*POWER(x63,3) + POWER(x65,3)*POWER(x64,3) + POWER(x65,3)*
     POWER(x65,3) + POWER(x65,3)*POWER(x66,3) + POWER(x65,3)*POWER(x67,3) + 
     POWER(x65,3)*POWER(x68,3) + POWER(x65,3)*POWER(x69,3) + POWER(x65,3)*
     POWER(x70,3) + POWER(x65,3)*POWER(x71,3) + POWER(x65,3)*POWER(x72,3) + 
     POWER(x65,3)*POWER(x73,3) + POWER(x65,3)*POWER(x74,3) + POWER(x65,3)*
     POWER(x75,3) + POWER(x65,3)*POWER(x76,3) + POWER(x65,3)*POWER(x77,3) + 
     POWER(x65,3)*POWER(x78,3) + POWER(x65,3)*POWER(x79,3) + POWER(x65,3)*
     POWER(x80,3) + POWER(x65,3)*POWER(x81,3) + POWER(x65,3)*POWER(x82,3) + 
     POWER(x65,3)*POWER(x83,3) + POWER(x65,3)*POWER(x84,3) + POWER(x65,3)*
     POWER(x85,3) + POWER(x65,3)*POWER(x86,3) + POWER(x65,3)*POWER(x87,3) + 
     POWER(x65,3)*POWER(x88,3) + POWER(x65,3)*POWER(x89,3) + POWER(x65,3)*
     POWER(x90,3) + POWER(x65,3)*POWER(x91,3) + POWER(x65,3)*POWER(x92,3) + 
     POWER(x65,3)*POWER(x93,3) + POWER(x65,3)*POWER(x94,3) + POWER(x65,3)*
     POWER(x95,3) + POWER(x65,3)*POWER(x96,3) + POWER(x65,3)*POWER(x97,3) + 
     POWER(x65,3)*POWER(x98,3) + POWER(x65,3)*POWER(x99,3) + POWER(x65,3)*
     POWER(x100,3) + POWER(x66,3)*POWER(x1,3) + POWER(x66,3)*POWER(x2,3) + 
     POWER(x66,3)*POWER(x3,3) + POWER(x66,3)*POWER(x4,3) + POWER(x66,3)*POWER(
     x5,3) + POWER(x66,3)*POWER(x6,3) + POWER(x66,3)*POWER(x7,3) + POWER(x66,3)
     *POWER(x8,3) + POWER(x66,3)*POWER(x9,3) + POWER(x66,3)*POWER(x10,3) + 
     POWER(x66,3)*POWER(x11,3) + POWER(x66,3)*POWER(x12,3) + POWER(x66,3)*
     POWER(x13,3) + POWER(x66,3)*POWER(x14,3) + POWER(x66,3)*POWER(x15,3) + 
     POWER(x66,3)*POWER(x16,3) + POWER(x66,3)*POWER(x17,3) + POWER(x66,3)*
     POWER(x18,3) + POWER(x66,3)*POWER(x19,3) + POWER(x66,3)*POWER(x20,3) + 
     POWER(x66,3)*POWER(x21,3) + POWER(x66,3)*POWER(x22,3) + POWER(x66,3)*
     POWER(x23,3) + POWER(x66,3)*POWER(x24,3) + POWER(x66,3)*POWER(x25,3) + 
     POWER(x66,3)*POWER(x26,3) + POWER(x66,3)*POWER(x27,3) + POWER(x66,3)*
     POWER(x28,3) + POWER(x66,3)*POWER(x29,3) + POWER(x66,3)*POWER(x30,3) + 
     POWER(x66,3)*POWER(x31,3) + POWER(x66,3)*POWER(x32,3) + POWER(x66,3)*
     POWER(x33,3) + POWER(x66,3)*POWER(x34,3) + POWER(x66,3)*POWER(x35,3) + 
     POWER(x66,3)*POWER(x36,3) + POWER(x66,3)*POWER(x37,3) + POWER(x66,3)*
     POWER(x38,3) + POWER(x66,3)*POWER(x39,3) + POWER(x66,3)*POWER(x40,3) + 
     POWER(x66,3)*POWER(x41,3) + POWER(x66,3)*POWER(x42,3) + POWER(x66,3)*
     POWER(x43,3) + POWER(x66,3)*POWER(x44,3) + POWER(x66,3)*POWER(x45,3) + 
     POWER(x66,3)*POWER(x46,3) + POWER(x66,3)*POWER(x47,3) + POWER(x66,3)*
     POWER(x48,3) + POWER(x66,3)*POWER(x49,3) + POWER(x66,3)*POWER(x50,3) + 
     POWER(x66,3)*POWER(x51,3) + POWER(x66,3)*POWER(x52,3) + POWER(x66,3)*
     POWER(x53,3) + POWER(x66,3)*POWER(x54,3) + POWER(x66,3)*POWER(x55,3) + 
     POWER(x66,3)*POWER(x56,3) + POWER(x66,3)*POWER(x57,3) + POWER(x66,3)*
     POWER(x58,3) + POWER(x66,3)*POWER(x59,3) + POWER(x66,3)*POWER(x60,3) + 
     POWER(x66,3)*POWER(x61,3) + POWER(x66,3)*POWER(x62,3) + POWER(x66,3)*
     POWER(x63,3) + POWER(x66,3)*POWER(x64,3) + POWER(x66,3)*POWER(x65,3) + 
     POWER(x66,3)*POWER(x66,3) + POWER(x66,3)*POWER(x67,3) + POWER(x66,3)*
     POWER(x68,3) + POWER(x66,3)*POWER(x69,3) + POWER(x66,3)*POWER(x70,3) + 
     POWER(x66,3)*POWER(x71,3) + POWER(x66,3)*POWER(x72,3) + POWER(x66,3)*
     POWER(x73,3) + POWER(x66,3)*POWER(x74,3) + POWER(x66,3)*POWER(x75,3) + 
     POWER(x66,3)*POWER(x76,3) + POWER(x66,3)*POWER(x77,3) + POWER(x66,3)*
     POWER(x78,3) + POWER(x66,3)*POWER(x79,3) + POWER(x66,3)*POWER(x80,3) + 
     POWER(x66,3)*POWER(x81,3) + POWER(x66,3)*POWER(x82,3) + POWER(x66,3)*
     POWER(x83,3) + POWER(x66,3)*POWER(x84,3) + POWER(x66,3)*POWER(x85,3) + 
     POWER(x66,3)*POWER(x86,3) + POWER(x66,3)*POWER(x87,3) + POWER(x66,3)*
     POWER(x88,3) + POWER(x66,3)*POWER(x89,3) + POWER(x66,3)*POWER(x90,3) + 
     POWER(x66,3)*POWER(x91,3) + POWER(x66,3)*POWER(x92,3) + POWER(x66,3)*
     POWER(x93,3) + POWER(x66,3)*POWER(x94,3) + POWER(x66,3)*POWER(x95,3) + 
     POWER(x66,3)*POWER(x96,3) + POWER(x66,3)*POWER(x97,3) + POWER(x66,3)*
     POWER(x98,3) + POWER(x66,3)*POWER(x99,3) + POWER(x66,3)*POWER(x100,3) + 
     POWER(x67,3)*POWER(x1,3) + POWER(x67,3)*POWER(x2,3) + POWER(x67,3)*POWER(
     x3,3) + POWER(x67,3)*POWER(x4,3) + POWER(x67,3)*POWER(x5,3) + POWER(x67,3)
     *POWER(x6,3) + POWER(x67,3)*POWER(x7,3) + POWER(x67,3)*POWER(x8,3) + 
     POWER(x67,3)*POWER(x9,3) + POWER(x67,3)*POWER(x10,3) + POWER(x67,3)*POWER(
     x11,3) + POWER(x67,3)*POWER(x12,3) + POWER(x67,3)*POWER(x13,3) + POWER(x67
     ,3)*POWER(x14,3) + POWER(x67,3)*POWER(x15,3) + POWER(x67,3)*POWER(x16,3)
      + POWER(x67,3)*POWER(x17,3) + POWER(x67,3)*POWER(x18,3) + POWER(x67,3)*
     POWER(x19,3) + POWER(x67,3)*POWER(x20,3) + POWER(x67,3)*POWER(x21,3) + 
     POWER(x67,3)*POWER(x22,3) + POWER(x67,3)*POWER(x23,3) + POWER(x67,3)*
     POWER(x24,3) + POWER(x67,3)*POWER(x25,3) + POWER(x67,3)*POWER(x26,3) + 
     POWER(x67,3)*POWER(x27,3) + POWER(x67,3)*POWER(x28,3) + POWER(x67,3)*
     POWER(x29,3) + POWER(x67,3)*POWER(x30,3) + POWER(x67,3)*POWER(x31,3) + 
     POWER(x67,3)*POWER(x32,3) + POWER(x67,3)*POWER(x33,3) + POWER(x67,3)*
     POWER(x34,3) + POWER(x67,3)*POWER(x35,3) + POWER(x67,3)*POWER(x36,3) + 
     POWER(x67,3)*POWER(x37,3) + POWER(x67,3)*POWER(x38,3) + POWER(x67,3)*
     POWER(x39,3) + POWER(x67,3)*POWER(x40,3) + POWER(x67,3)*POWER(x41,3) + 
     POWER(x67,3)*POWER(x42,3) + POWER(x67,3)*POWER(x43,3) + POWER(x67,3)*
     POWER(x44,3) + POWER(x67,3)*POWER(x45,3) + POWER(x67,3)*POWER(x46,3) + 
     POWER(x67,3)*POWER(x47,3) + POWER(x67,3)*POWER(x48,3) + POWER(x67,3)*
     POWER(x49,3) + POWER(x67,3)*POWER(x50,3) + POWER(x67,3)*POWER(x51,3) + 
     POWER(x67,3)*POWER(x52,3) + POWER(x67,3)*POWER(x53,3) + POWER(x67,3)*
     POWER(x54,3) + POWER(x67,3)*POWER(x55,3) + POWER(x67,3)*POWER(x56,3) + 
     POWER(x67,3)*POWER(x57,3) + POWER(x67,3)*POWER(x58,3) + POWER(x67,3)*
     POWER(x59,3) + POWER(x67,3)*POWER(x60,3) + POWER(x67,3)*POWER(x61,3) + 
     POWER(x67,3)*POWER(x62,3) + POWER(x67,3)*POWER(x63,3) + POWER(x67,3)*
     POWER(x64,3) + POWER(x67,3)*POWER(x65,3) + POWER(x67,3)*POWER(x66,3) + 
     POWER(x67,3)*POWER(x67,3) + POWER(x67,3)*POWER(x68,3) + POWER(x67,3)*
     POWER(x69,3) + POWER(x67,3)*POWER(x70,3) + POWER(x67,3)*POWER(x71,3) + 
     POWER(x67,3)*POWER(x72,3) + POWER(x67,3)*POWER(x73,3) + POWER(x67,3)*
     POWER(x74,3) + POWER(x67,3)*POWER(x75,3) + POWER(x67,3)*POWER(x76,3) + 
     POWER(x67,3)*POWER(x77,3) + POWER(x67,3)*POWER(x78,3) + POWER(x67,3)*
     POWER(x79,3) + POWER(x67,3)*POWER(x80,3) + POWER(x67,3)*POWER(x81,3) + 
     POWER(x67,3)*POWER(x82,3) + POWER(x67,3)*POWER(x83,3) + POWER(x67,3)*
     POWER(x84,3) + POWER(x67,3)*POWER(x85,3) + POWER(x67,3)*POWER(x86,3) + 
     POWER(x67,3)*POWER(x87,3) + POWER(x67,3)*POWER(x88,3) + POWER(x67,3)*
     POWER(x89,3) + POWER(x67,3)*POWER(x90,3) + POWER(x67,3)*POWER(x91,3) + 
     POWER(x67,3)*POWER(x92,3) + POWER(x67,3)*POWER(x93,3) + POWER(x67,3)*
     POWER(x94,3) + POWER(x67,3)*POWER(x95,3) + POWER(x67,3)*POWER(x96,3) + 
     POWER(x67,3)*POWER(x97,3) + POWER(x67,3)*POWER(x98,3) + POWER(x67,3)*
     POWER(x99,3) + POWER(x67,3)*POWER(x100,3) + POWER(x68,3)*POWER(x1,3) + 
     POWER(x68,3)*POWER(x2,3) + POWER(x68,3)*POWER(x3,3) + POWER(x68,3)*POWER(
     x4,3) + POWER(x68,3)*POWER(x5,3) + POWER(x68,3)*POWER(x6,3) + POWER(x68,3)
     *POWER(x7,3) + POWER(x68,3)*POWER(x8,3) + POWER(x68,3)*POWER(x9,3) + 
     POWER(x68,3)*POWER(x10,3) + POWER(x68,3)*POWER(x11,3) + POWER(x68,3)*
     POWER(x12,3) + POWER(x68,3)*POWER(x13,3) + POWER(x68,3)*POWER(x14,3) + 
     POWER(x68,3)*POWER(x15,3) + POWER(x68,3)*POWER(x16,3) + POWER(x68,3)*
     POWER(x17,3) + POWER(x68,3)*POWER(x18,3) + POWER(x68,3)*POWER(x19,3) + 
     POWER(x68,3)*POWER(x20,3) + POWER(x68,3)*POWER(x21,3) + POWER(x68,3)*
     POWER(x22,3) + POWER(x68,3)*POWER(x23,3) + POWER(x68,3)*POWER(x24,3) + 
     POWER(x68,3)*POWER(x25,3) + POWER(x68,3)*POWER(x26,3) + POWER(x68,3)*
     POWER(x27,3) + POWER(x68,3)*POWER(x28,3) + POWER(x68,3)*POWER(x29,3) + 
     POWER(x68,3)*POWER(x30,3) + POWER(x68,3)*POWER(x31,3) + POWER(x68,3)*
     POWER(x32,3) + POWER(x68,3)*POWER(x33,3) + POWER(x68,3)*POWER(x34,3) + 
     POWER(x68,3)*POWER(x35,3) + POWER(x68,3)*POWER(x36,3) + POWER(x68,3)*
     POWER(x37,3) + POWER(x68,3)*POWER(x38,3) + POWER(x68,3)*POWER(x39,3) + 
     POWER(x68,3)*POWER(x40,3) + POWER(x68,3)*POWER(x41,3) + POWER(x68,3)*
     POWER(x42,3) + POWER(x68,3)*POWER(x43,3) + POWER(x68,3)*POWER(x44,3) + 
     POWER(x68,3)*POWER(x45,3) + POWER(x68,3)*POWER(x46,3) + POWER(x68,3)*
     POWER(x47,3) + POWER(x68,3)*POWER(x48,3) + POWER(x68,3)*POWER(x49,3) + 
     POWER(x68,3)*POWER(x50,3) + POWER(x68,3)*POWER(x51,3) + POWER(x68,3)*
     POWER(x52,3) + POWER(x68,3)*POWER(x53,3) + POWER(x68,3)*POWER(x54,3) + 
     POWER(x68,3)*POWER(x55,3) + POWER(x68,3)*POWER(x56,3) + POWER(x68,3)*
     POWER(x57,3) + POWER(x68,3)*POWER(x58,3) + POWER(x68,3)*POWER(x59,3) + 
     POWER(x68,3)*POWER(x60,3) + POWER(x68,3)*POWER(x61,3) + POWER(x68,3)*
     POWER(x62,3) + POWER(x68,3)*POWER(x63,3) + POWER(x68,3)*POWER(x64,3) + 
     POWER(x68,3)*POWER(x65,3) + POWER(x68,3)*POWER(x66,3) + POWER(x68,3)*
     POWER(x67,3) + POWER(x68,3)*POWER(x68,3) + POWER(x68,3)*POWER(x69,3) + 
     POWER(x68,3)*POWER(x70,3) + POWER(x68,3)*POWER(x71,3) + POWER(x68,3)*
     POWER(x72,3) + POWER(x68,3)*POWER(x73,3) + POWER(x68,3)*POWER(x74,3) + 
     POWER(x68,3)*POWER(x75,3) + POWER(x68,3)*POWER(x76,3) + POWER(x68,3)*
     POWER(x77,3) + POWER(x68,3)*POWER(x78,3) + POWER(x68,3)*POWER(x79,3) + 
     POWER(x68,3)*POWER(x80,3) + POWER(x68,3)*POWER(x81,3) + POWER(x68,3)*
     POWER(x82,3) + POWER(x68,3)*POWER(x83,3) + POWER(x68,3)*POWER(x84,3) + 
     POWER(x68,3)*POWER(x85,3) + POWER(x68,3)*POWER(x86,3) + POWER(x68,3)*
     POWER(x87,3) + POWER(x68,3)*POWER(x88,3) + POWER(x68,3)*POWER(x89,3) + 
     POWER(x68,3)*POWER(x90,3) + POWER(x68,3)*POWER(x91,3) + POWER(x68,3)*
     POWER(x92,3) + POWER(x68,3)*POWER(x93,3) + POWER(x68,3)*POWER(x94,3) + 
     POWER(x68,3)*POWER(x95,3) + POWER(x68,3)*POWER(x96,3) + POWER(x68,3)*
     POWER(x97,3) + POWER(x68,3)*POWER(x98,3) + POWER(x68,3)*POWER(x99,3) + 
     POWER(x68,3)*POWER(x100,3) + POWER(x69,3)*POWER(x1,3) + POWER(x69,3)*
     POWER(x2,3) + POWER(x69,3)*POWER(x3,3) + POWER(x69,3)*POWER(x4,3) + POWER(
     x69,3)*POWER(x5,3) + POWER(x69,3)*POWER(x6,3) + POWER(x69,3)*POWER(x7,3)
      + POWER(x69,3)*POWER(x8,3) + POWER(x69,3)*POWER(x9,3) + POWER(x69,3)*
     POWER(x10,3) + POWER(x69,3)*POWER(x11,3) + POWER(x69,3)*POWER(x12,3) + 
     POWER(x69,3)*POWER(x13,3) + POWER(x69,3)*POWER(x14,3) + POWER(x69,3)*
     POWER(x15,3) + POWER(x69,3)*POWER(x16,3) + POWER(x69,3)*POWER(x17,3) + 
     POWER(x69,3)*POWER(x18,3) + POWER(x69,3)*POWER(x19,3) + POWER(x69,3)*
     POWER(x20,3) + POWER(x69,3)*POWER(x21,3) + POWER(x69,3)*POWER(x22,3) + 
     POWER(x69,3)*POWER(x23,3) + POWER(x69,3)*POWER(x24,3) + POWER(x69,3)*
     POWER(x25,3) + POWER(x69,3)*POWER(x26,3) + POWER(x69,3)*POWER(x27,3) + 
     POWER(x69,3)*POWER(x28,3) + POWER(x69,3)*POWER(x29,3) + POWER(x69,3)*
     POWER(x30,3) + POWER(x69,3)*POWER(x31,3) + POWER(x69,3)*POWER(x32,3) + 
     POWER(x69,3)*POWER(x33,3) + POWER(x69,3)*POWER(x34,3) + POWER(x69,3)*
     POWER(x35,3) + POWER(x69,3)*POWER(x36,3) + POWER(x69,3)*POWER(x37,3) + 
     POWER(x69,3)*POWER(x38,3) + POWER(x69,3)*POWER(x39,3) + POWER(x69,3)*
     POWER(x40,3) + POWER(x69,3)*POWER(x41,3) + POWER(x69,3)*POWER(x42,3) + 
     POWER(x69,3)*POWER(x43,3) + POWER(x69,3)*POWER(x44,3) + POWER(x69,3)*
     POWER(x45,3) + POWER(x69,3)*POWER(x46,3) + POWER(x69,3)*POWER(x47,3) + 
     POWER(x69,3)*POWER(x48,3) + POWER(x69,3)*POWER(x49,3) + POWER(x69,3)*
     POWER(x50,3) + POWER(x69,3)*POWER(x51,3) + POWER(x69,3)*POWER(x52,3) + 
     POWER(x69,3)*POWER(x53,3) + POWER(x69,3)*POWER(x54,3) + POWER(x69,3)*
     POWER(x55,3) + POWER(x69,3)*POWER(x56,3) + POWER(x69,3)*POWER(x57,3) + 
     POWER(x69,3)*POWER(x58,3) + POWER(x69,3)*POWER(x59,3) + POWER(x69,3)*
     POWER(x60,3) + POWER(x69,3)*POWER(x61,3) + POWER(x69,3)*POWER(x62,3) + 
     POWER(x69,3)*POWER(x63,3) + POWER(x69,3)*POWER(x64,3) + POWER(x69,3)*
     POWER(x65,3) + POWER(x69,3)*POWER(x66,3) + POWER(x69,3)*POWER(x67,3) + 
     POWER(x69,3)*POWER(x68,3) + POWER(x69,3)*POWER(x69,3) + POWER(x69,3)*
     POWER(x70,3) + POWER(x69,3)*POWER(x71,3) + POWER(x69,3)*POWER(x72,3) + 
     POWER(x69,3)*POWER(x73,3) + POWER(x69,3)*POWER(x74,3) + POWER(x69,3)*
     POWER(x75,3) + POWER(x69,3)*POWER(x76,3) + POWER(x69,3)*POWER(x77,3) + 
     POWER(x69,3)*POWER(x78,3) + POWER(x69,3)*POWER(x79,3) + POWER(x69,3)*
     POWER(x80,3) + POWER(x69,3)*POWER(x81,3) + POWER(x69,3)*POWER(x82,3) + 
     POWER(x69,3)*POWER(x83,3) + POWER(x69,3)*POWER(x84,3) + POWER(x69,3)*
     POWER(x85,3) + POWER(x69,3)*POWER(x86,3) + POWER(x69,3)*POWER(x87,3) + 
     POWER(x69,3)*POWER(x88,3) + POWER(x69,3)*POWER(x89,3) + POWER(x69,3)*
     POWER(x90,3) + POWER(x69,3)*POWER(x91,3) + POWER(x69,3)*POWER(x92,3) + 
     POWER(x69,3)*POWER(x93,3) + POWER(x69,3)*POWER(x94,3) + POWER(x69,3)*
     POWER(x95,3) + POWER(x69,3)*POWER(x96,3) + POWER(x69,3)*POWER(x97,3) + 
     POWER(x69,3)*POWER(x98,3) + POWER(x69,3)*POWER(x99,3) + POWER(x69,3)*
     POWER(x100,3) + POWER(x70,3)*POWER(x1,3) + POWER(x70,3)*POWER(x2,3) + 
     POWER(x70,3)*POWER(x3,3) + POWER(x70,3)*POWER(x4,3) + POWER(x70,3)*POWER(
     x5,3) + POWER(x70,3)*POWER(x6,3) + POWER(x70,3)*POWER(x7,3) + POWER(x70,3)
     *POWER(x8,3) + POWER(x70,3)*POWER(x9,3) + POWER(x70,3)*POWER(x10,3) + 
     POWER(x70,3)*POWER(x11,3) + POWER(x70,3)*POWER(x12,3) + POWER(x70,3)*
     POWER(x13,3) + POWER(x70,3)*POWER(x14,3) + POWER(x70,3)*POWER(x15,3) + 
     POWER(x70,3)*POWER(x16,3) + POWER(x70,3)*POWER(x17,3) + POWER(x70,3)*
     POWER(x18,3) + POWER(x70,3)*POWER(x19,3) + POWER(x70,3)*POWER(x20,3) + 
     POWER(x70,3)*POWER(x21,3) + POWER(x70,3)*POWER(x22,3) + POWER(x70,3)*
     POWER(x23,3) + POWER(x70,3)*POWER(x24,3) + POWER(x70,3)*POWER(x25,3) + 
     POWER(x70,3)*POWER(x26,3) + POWER(x70,3)*POWER(x27,3) + POWER(x70,3)*
     POWER(x28,3) + POWER(x70,3)*POWER(x29,3) + POWER(x70,3)*POWER(x30,3) + 
     POWER(x70,3)*POWER(x31,3) + POWER(x70,3)*POWER(x32,3) + POWER(x70,3)*
     POWER(x33,3) + POWER(x70,3)*POWER(x34,3) + POWER(x70,3)*POWER(x35,3) + 
     POWER(x70,3)*POWER(x36,3) + POWER(x70,3)*POWER(x37,3) + POWER(x70,3)*
     POWER(x38,3) + POWER(x70,3)*POWER(x39,3) + POWER(x70,3)*POWER(x40,3) + 
     POWER(x70,3)*POWER(x41,3) + POWER(x70,3)*POWER(x42,3) + POWER(x70,3)*
     POWER(x43,3) + POWER(x70,3)*POWER(x44,3) + POWER(x70,3)*POWER(x45,3) + 
     POWER(x70,3)*POWER(x46,3) + POWER(x70,3)*POWER(x47,3) + POWER(x70,3)*
     POWER(x48,3) + POWER(x70,3)*POWER(x49,3) + POWER(x70,3)*POWER(x50,3) + 
     POWER(x70,3)*POWER(x51,3) + POWER(x70,3)*POWER(x52,3) + POWER(x70,3)*
     POWER(x53,3) + POWER(x70,3)*POWER(x54,3) + POWER(x70,3)*POWER(x55,3) + 
     POWER(x70,3)*POWER(x56,3) + POWER(x70,3)*POWER(x57,3) + POWER(x70,3)*
     POWER(x58,3) + POWER(x70,3)*POWER(x59,3) + POWER(x70,3)*POWER(x60,3) + 
     POWER(x70,3)*POWER(x61,3) + POWER(x70,3)*POWER(x62,3) + POWER(x70,3)*
     POWER(x63,3) + POWER(x70,3)*POWER(x64,3) + POWER(x70,3)*POWER(x65,3) + 
     POWER(x70,3)*POWER(x66,3) + POWER(x70,3)*POWER(x67,3) + POWER(x70,3)*
     POWER(x68,3) + POWER(x70,3)*POWER(x69,3) + POWER(x70,3)*POWER(x70,3) + 
     POWER(x70,3)*POWER(x71,3) + POWER(x70,3)*POWER(x72,3) + POWER(x70,3)*
     POWER(x73,3) + POWER(x70,3)*POWER(x74,3) + POWER(x70,3)*POWER(x75,3) + 
     POWER(x70,3)*POWER(x76,3) + POWER(x70,3)*POWER(x77,3) + POWER(x70,3)*
     POWER(x78,3) + POWER(x70,3)*POWER(x79,3) + POWER(x70,3)*POWER(x80,3) + 
     POWER(x70,3)*POWER(x81,3) + POWER(x70,3)*POWER(x82,3) + POWER(x70,3)*
     POWER(x83,3) + POWER(x70,3)*POWER(x84,3) + POWER(x70,3)*POWER(x85,3) + 
     POWER(x70,3)*POWER(x86,3) + POWER(x70,3)*POWER(x87,3) + POWER(x70,3)*
     POWER(x88,3) + POWER(x70,3)*POWER(x89,3) + POWER(x70,3)*POWER(x90,3) + 
     POWER(x70,3)*POWER(x91,3) + POWER(x70,3)*POWER(x92,3) + POWER(x70,3)*
     POWER(x93,3) + POWER(x70,3)*POWER(x94,3) + POWER(x70,3)*POWER(x95,3) + 
     POWER(x70,3)*POWER(x96,3) + POWER(x70,3)*POWER(x97,3) + POWER(x70,3)*
     POWER(x98,3) + POWER(x70,3)*POWER(x99,3) + POWER(x70,3)*POWER(x100,3) + 
     POWER(x71,3)*POWER(x1,3) + POWER(x71,3)*POWER(x2,3) + POWER(x71,3)*POWER(
     x3,3) + POWER(x71,3)*POWER(x4,3) + POWER(x71,3)*POWER(x5,3) + POWER(x71,3)
     *POWER(x6,3) + POWER(x71,3)*POWER(x7,3) + POWER(x71,3)*POWER(x8,3) + 
     POWER(x71,3)*POWER(x9,3) + POWER(x71,3)*POWER(x10,3) + POWER(x71,3)*POWER(
     x11,3) + POWER(x71,3)*POWER(x12,3) + POWER(x71,3)*POWER(x13,3) + POWER(x71
     ,3)*POWER(x14,3) + POWER(x71,3)*POWER(x15,3) + POWER(x71,3)*POWER(x16,3)
      + POWER(x71,3)*POWER(x17,3) + POWER(x71,3)*POWER(x18,3) + POWER(x71,3)*
     POWER(x19,3) + POWER(x71,3)*POWER(x20,3) + POWER(x71,3)*POWER(x21,3) + 
     POWER(x71,3)*POWER(x22,3) + POWER(x71,3)*POWER(x23,3) + POWER(x71,3)*
     POWER(x24,3) + POWER(x71,3)*POWER(x25,3) + POWER(x71,3)*POWER(x26,3) + 
     POWER(x71,3)*POWER(x27,3) + POWER(x71,3)*POWER(x28,3) + POWER(x71,3)*
     POWER(x29,3) + POWER(x71,3)*POWER(x30,3) + POWER(x71,3)*POWER(x31,3) + 
     POWER(x71,3)*POWER(x32,3) + POWER(x71,3)*POWER(x33,3) + POWER(x71,3)*
     POWER(x34,3) + POWER(x71,3)*POWER(x35,3) + POWER(x71,3)*POWER(x36,3) + 
     POWER(x71,3)*POWER(x37,3) + POWER(x71,3)*POWER(x38,3) + POWER(x71,3)*
     POWER(x39,3) + POWER(x71,3)*POWER(x40,3) + POWER(x71,3)*POWER(x41,3) + 
     POWER(x71,3)*POWER(x42,3) + POWER(x71,3)*POWER(x43,3) + POWER(x71,3)*
     POWER(x44,3) + POWER(x71,3)*POWER(x45,3) + POWER(x71,3)*POWER(x46,3) + 
     POWER(x71,3)*POWER(x47,3) + POWER(x71,3)*POWER(x48,3) + POWER(x71,3)*
     POWER(x49,3) + POWER(x71,3)*POWER(x50,3) + POWER(x71,3)*POWER(x51,3) + 
     POWER(x71,3)*POWER(x52,3) + POWER(x71,3)*POWER(x53,3) + POWER(x71,3)*
     POWER(x54,3) + POWER(x71,3)*POWER(x55,3) + POWER(x71,3)*POWER(x56,3) + 
     POWER(x71,3)*POWER(x57,3) + POWER(x71,3)*POWER(x58,3) + POWER(x71,3)*
     POWER(x59,3) + POWER(x71,3)*POWER(x60,3) + POWER(x71,3)*POWER(x61,3) + 
     POWER(x71,3)*POWER(x62,3) + POWER(x71,3)*POWER(x63,3) + POWER(x71,3)*
     POWER(x64,3) + POWER(x71,3)*POWER(x65,3) + POWER(x71,3)*POWER(x66,3) + 
     POWER(x71,3)*POWER(x67,3) + POWER(x71,3)*POWER(x68,3) + POWER(x71,3)*
     POWER(x69,3) + POWER(x71,3)*POWER(x70,3) + POWER(x71,3)*POWER(x71,3) + 
     POWER(x71,3)*POWER(x72,3) + POWER(x71,3)*POWER(x73,3) + POWER(x71,3)*
     POWER(x74,3) + POWER(x71,3)*POWER(x75,3) + POWER(x71,3)*POWER(x76,3) + 
     POWER(x71,3)*POWER(x77,3) + POWER(x71,3)*POWER(x78,3) + POWER(x71,3)*
     POWER(x79,3) + POWER(x71,3)*POWER(x80,3) + POWER(x71,3)*POWER(x81,3) + 
     POWER(x71,3)*POWER(x82,3) + POWER(x71,3)*POWER(x83,3) + POWER(x71,3)*
     POWER(x84,3) + POWER(x71,3)*POWER(x85,3) + POWER(x71,3)*POWER(x86,3) + 
     POWER(x71,3)*POWER(x87,3) + POWER(x71,3)*POWER(x88,3) + POWER(x71,3)*
     POWER(x89,3) + POWER(x71,3)*POWER(x90,3) + POWER(x71,3)*POWER(x91,3) + 
     POWER(x71,3)*POWER(x92,3) + POWER(x71,3)*POWER(x93,3) + POWER(x71,3)*
     POWER(x94,3) + POWER(x71,3)*POWER(x95,3) + POWER(x71,3)*POWER(x96,3) + 
     POWER(x71,3)*POWER(x97,3) + POWER(x71,3)*POWER(x98,3) + POWER(x71,3)*
     POWER(x99,3) + POWER(x71,3)*POWER(x100,3) + POWER(x72,3)*POWER(x1,3) + 
     POWER(x72,3)*POWER(x2,3) + POWER(x72,3)*POWER(x3,3) + POWER(x72,3)*POWER(
     x4,3) + POWER(x72,3)*POWER(x5,3) + POWER(x72,3)*POWER(x6,3) + POWER(x72,3)
     *POWER(x7,3) + POWER(x72,3)*POWER(x8,3) + POWER(x72,3)*POWER(x9,3) + 
     POWER(x72,3)*POWER(x10,3) + POWER(x72,3)*POWER(x11,3) + POWER(x72,3)*
     POWER(x12,3) + POWER(x72,3)*POWER(x13,3) + POWER(x72,3)*POWER(x14,3) + 
     POWER(x72,3)*POWER(x15,3) + POWER(x72,3)*POWER(x16,3) + POWER(x72,3)*
     POWER(x17,3) + POWER(x72,3)*POWER(x18,3) + POWER(x72,3)*POWER(x19,3) + 
     POWER(x72,3)*POWER(x20,3) + POWER(x72,3)*POWER(x21,3) + POWER(x72,3)*
     POWER(x22,3) + POWER(x72,3)*POWER(x23,3) + POWER(x72,3)*POWER(x24,3) + 
     POWER(x72,3)*POWER(x25,3) + POWER(x72,3)*POWER(x26,3) + POWER(x72,3)*
     POWER(x27,3) + POWER(x72,3)*POWER(x28,3) + POWER(x72,3)*POWER(x29,3) + 
     POWER(x72,3)*POWER(x30,3) + POWER(x72,3)*POWER(x31,3) + POWER(x72,3)*
     POWER(x32,3) + POWER(x72,3)*POWER(x33,3) + POWER(x72,3)*POWER(x34,3) + 
     POWER(x72,3)*POWER(x35,3) + POWER(x72,3)*POWER(x36,3) + POWER(x72,3)*
     POWER(x37,3) + POWER(x72,3)*POWER(x38,3) + POWER(x72,3)*POWER(x39,3) + 
     POWER(x72,3)*POWER(x40,3) + POWER(x72,3)*POWER(x41,3) + POWER(x72,3)*
     POWER(x42,3) + POWER(x72,3)*POWER(x43,3) + POWER(x72,3)*POWER(x44,3) + 
     POWER(x72,3)*POWER(x45,3) + POWER(x72,3)*POWER(x46,3) + POWER(x72,3)*
     POWER(x47,3) + POWER(x72,3)*POWER(x48,3) + POWER(x72,3)*POWER(x49,3) + 
     POWER(x72,3)*POWER(x50,3) + POWER(x72,3)*POWER(x51,3) + POWER(x72,3)*
     POWER(x52,3) + POWER(x72,3)*POWER(x53,3) + POWER(x72,3)*POWER(x54,3) + 
     POWER(x72,3)*POWER(x55,3) + POWER(x72,3)*POWER(x56,3) + POWER(x72,3)*
     POWER(x57,3) + POWER(x72,3)*POWER(x58,3) + POWER(x72,3)*POWER(x59,3) + 
     POWER(x72,3)*POWER(x60,3) + POWER(x72,3)*POWER(x61,3) + POWER(x72,3)*
     POWER(x62,3) + POWER(x72,3)*POWER(x63,3) + POWER(x72,3)*POWER(x64,3) + 
     POWER(x72,3)*POWER(x65,3) + POWER(x72,3)*POWER(x66,3) + POWER(x72,3)*
     POWER(x67,3) + POWER(x72,3)*POWER(x68,3) + POWER(x72,3)*POWER(x69,3) + 
     POWER(x72,3)*POWER(x70,3) + POWER(x72,3)*POWER(x71,3) + POWER(x72,3)*
     POWER(x72,3) + POWER(x72,3)*POWER(x73,3) + POWER(x72,3)*POWER(x74,3) + 
     POWER(x72,3)*POWER(x75,3) + POWER(x72,3)*POWER(x76,3) + POWER(x72,3)*
     POWER(x77,3) + POWER(x72,3)*POWER(x78,3) + POWER(x72,3)*POWER(x79,3) + 
     POWER(x72,3)*POWER(x80,3) + POWER(x72,3)*POWER(x81,3) + POWER(x72,3)*
     POWER(x82,3) + POWER(x72,3)*POWER(x83,3) + POWER(x72,3)*POWER(x84,3) + 
     POWER(x72,3)*POWER(x85,3) + POWER(x72,3)*POWER(x86,3) + POWER(x72,3)*
     POWER(x87,3) + POWER(x72,3)*POWER(x88,3) + POWER(x72,3)*POWER(x89,3) + 
     POWER(x72,3)*POWER(x90,3) + POWER(x72,3)*POWER(x91,3) + POWER(x72,3)*
     POWER(x92,3) + POWER(x72,3)*POWER(x93,3) + POWER(x72,3)*POWER(x94,3) + 
     POWER(x72,3)*POWER(x95,3) + POWER(x72,3)*POWER(x96,3) + POWER(x72,3)*
     POWER(x97,3) + POWER(x72,3)*POWER(x98,3) + POWER(x72,3)*POWER(x99,3) + 
     POWER(x72,3)*POWER(x100,3) + POWER(x73,3)*POWER(x1,3) + POWER(x73,3)*
     POWER(x2,3) + POWER(x73,3)*POWER(x3,3) + POWER(x73,3)*POWER(x4,3) + POWER(
     x73,3)*POWER(x5,3) + POWER(x73,3)*POWER(x6,3) + POWER(x73,3)*POWER(x7,3)
      + POWER(x73,3)*POWER(x8,3) + POWER(x73,3)*POWER(x9,3) + POWER(x73,3)*
     POWER(x10,3) + POWER(x73,3)*POWER(x11,3) + POWER(x73,3)*POWER(x12,3) + 
     POWER(x73,3)*POWER(x13,3) + POWER(x73,3)*POWER(x14,3) + POWER(x73,3)*
     POWER(x15,3) + POWER(x73,3)*POWER(x16,3) + POWER(x73,3)*POWER(x17,3) + 
     POWER(x73,3)*POWER(x18,3) + POWER(x73,3)*POWER(x19,3) + POWER(x73,3)*
     POWER(x20,3) + POWER(x73,3)*POWER(x21,3) + POWER(x73,3)*POWER(x22,3) + 
     POWER(x73,3)*POWER(x23,3) + POWER(x73,3)*POWER(x24,3) + POWER(x73,3)*
     POWER(x25,3) + POWER(x73,3)*POWER(x26,3) + POWER(x73,3)*POWER(x27,3) + 
     POWER(x73,3)*POWER(x28,3) + POWER(x73,3)*POWER(x29,3) + POWER(x73,3)*
     POWER(x30,3) + POWER(x73,3)*POWER(x31,3) + POWER(x73,3)*POWER(x32,3) + 
     POWER(x73,3)*POWER(x33,3) + POWER(x73,3)*POWER(x34,3) + POWER(x73,3)*
     POWER(x35,3) + POWER(x73,3)*POWER(x36,3) + POWER(x73,3)*POWER(x37,3) + 
     POWER(x73,3)*POWER(x38,3) + POWER(x73,3)*POWER(x39,3) + POWER(x73,3)*
     POWER(x40,3) + POWER(x73,3)*POWER(x41,3) + POWER(x73,3)*POWER(x42,3) + 
     POWER(x73,3)*POWER(x43,3) + POWER(x73,3)*POWER(x44,3) + POWER(x73,3)*
     POWER(x45,3) + POWER(x73,3)*POWER(x46,3) + POWER(x73,3)*POWER(x47,3) + 
     POWER(x73,3)*POWER(x48,3) + POWER(x73,3)*POWER(x49,3) + POWER(x73,3)*
     POWER(x50,3) + POWER(x73,3)*POWER(x51,3) + POWER(x73,3)*POWER(x52,3) + 
     POWER(x73,3)*POWER(x53,3) + POWER(x73,3)*POWER(x54,3) + POWER(x73,3)*
     POWER(x55,3) + POWER(x73,3)*POWER(x56,3) + POWER(x73,3)*POWER(x57,3) + 
     POWER(x73,3)*POWER(x58,3) + POWER(x73,3)*POWER(x59,3) + POWER(x73,3)*
     POWER(x60,3) + POWER(x73,3)*POWER(x61,3) + POWER(x73,3)*POWER(x62,3) + 
     POWER(x73,3)*POWER(x63,3) + POWER(x73,3)*POWER(x64,3) + POWER(x73,3)*
     POWER(x65,3) + POWER(x73,3)*POWER(x66,3) + POWER(x73,3)*POWER(x67,3) + 
     POWER(x73,3)*POWER(x68,3) + POWER(x73,3)*POWER(x69,3) + POWER(x73,3)*
     POWER(x70,3) + POWER(x73,3)*POWER(x71,3) + POWER(x73,3)*POWER(x72,3) + 
     POWER(x73,3)*POWER(x73,3) + POWER(x73,3)*POWER(x74,3) + POWER(x73,3)*
     POWER(x75,3) + POWER(x73,3)*POWER(x76,3) + POWER(x73,3)*POWER(x77,3) + 
     POWER(x73,3)*POWER(x78,3) + POWER(x73,3)*POWER(x79,3) + POWER(x73,3)*
     POWER(x80,3) + POWER(x73,3)*POWER(x81,3) + POWER(x73,3)*POWER(x82,3) + 
     POWER(x73,3)*POWER(x83,3) + POWER(x73,3)*POWER(x84,3) + POWER(x73,3)*
     POWER(x85,3) + POWER(x73,3)*POWER(x86,3) + POWER(x73,3)*POWER(x87,3) + 
     POWER(x73,3)*POWER(x88,3) + POWER(x73,3)*POWER(x89,3) + POWER(x73,3)*
     POWER(x90,3) + POWER(x73,3)*POWER(x91,3) + POWER(x73,3)*POWER(x92,3) + 
     POWER(x73,3)*POWER(x93,3) + POWER(x73,3)*POWER(x94,3) + POWER(x73,3)*
     POWER(x95,3) + POWER(x73,3)*POWER(x96,3) + POWER(x73,3)*POWER(x97,3) + 
     POWER(x73,3)*POWER(x98,3) + POWER(x73,3)*POWER(x99,3) + POWER(x73,3)*
     POWER(x100,3) + POWER(x74,3)*POWER(x1,3) + POWER(x74,3)*POWER(x2,3) + 
     POWER(x74,3)*POWER(x3,3) + POWER(x74,3)*POWER(x4,3) + POWER(x74,3)*POWER(
     x5,3) + POWER(x74,3)*POWER(x6,3) + POWER(x74,3)*POWER(x7,3) + POWER(x74,3)
     *POWER(x8,3) + POWER(x74,3)*POWER(x9,3) + POWER(x74,3)*POWER(x10,3) + 
     POWER(x74,3)*POWER(x11,3) + POWER(x74,3)*POWER(x12,3) + POWER(x74,3)*
     POWER(x13,3) + POWER(x74,3)*POWER(x14,3) + POWER(x74,3)*POWER(x15,3) + 
     POWER(x74,3)*POWER(x16,3) + POWER(x74,3)*POWER(x17,3) + POWER(x74,3)*
     POWER(x18,3) + POWER(x74,3)*POWER(x19,3) + POWER(x74,3)*POWER(x20,3) + 
     POWER(x74,3)*POWER(x21,3) + POWER(x74,3)*POWER(x22,3) + POWER(x74,3)*
     POWER(x23,3) + POWER(x74,3)*POWER(x24,3) + POWER(x74,3)*POWER(x25,3) + 
     POWER(x74,3)*POWER(x26,3) + POWER(x74,3)*POWER(x27,3) + POWER(x74,3)*
     POWER(x28,3) + POWER(x74,3)*POWER(x29,3) + POWER(x74,3)*POWER(x30,3) + 
     POWER(x74,3)*POWER(x31,3) + POWER(x74,3)*POWER(x32,3) + POWER(x74,3)*
     POWER(x33,3) + POWER(x74,3)*POWER(x34,3) + POWER(x74,3)*POWER(x35,3) + 
     POWER(x74,3)*POWER(x36,3) + POWER(x74,3)*POWER(x37,3) + POWER(x74,3)*
     POWER(x38,3) + POWER(x74,3)*POWER(x39,3) + POWER(x74,3)*POWER(x40,3) + 
     POWER(x74,3)*POWER(x41,3) + POWER(x74,3)*POWER(x42,3) + POWER(x74,3)*
     POWER(x43,3) + POWER(x74,3)*POWER(x44,3) + POWER(x74,3)*POWER(x45,3) + 
     POWER(x74,3)*POWER(x46,3) + POWER(x74,3)*POWER(x47,3) + POWER(x74,3)*
     POWER(x48,3) + POWER(x74,3)*POWER(x49,3) + POWER(x74,3)*POWER(x50,3) + 
     POWER(x74,3)*POWER(x51,3) + POWER(x74,3)*POWER(x52,3) + POWER(x74,3)*
     POWER(x53,3) + POWER(x74,3)*POWER(x54,3) + POWER(x74,3)*POWER(x55,3) + 
     POWER(x74,3)*POWER(x56,3) + POWER(x74,3)*POWER(x57,3) + POWER(x74,3)*
     POWER(x58,3) + POWER(x74,3)*POWER(x59,3) + POWER(x74,3)*POWER(x60,3) + 
     POWER(x74,3)*POWER(x61,3) + POWER(x74,3)*POWER(x62,3) + POWER(x74,3)*
     POWER(x63,3) + POWER(x74,3)*POWER(x64,3) + POWER(x74,3)*POWER(x65,3) + 
     POWER(x74,3)*POWER(x66,3) + POWER(x74,3)*POWER(x67,3) + POWER(x74,3)*
     POWER(x68,3) + POWER(x74,3)*POWER(x69,3) + POWER(x74,3)*POWER(x70,3) + 
     POWER(x74,3)*POWER(x71,3) + POWER(x74,3)*POWER(x72,3) + POWER(x74,3)*
     POWER(x73,3) + POWER(x74,3)*POWER(x74,3) + POWER(x74,3)*POWER(x75,3) + 
     POWER(x74,3)*POWER(x76,3) + POWER(x74,3)*POWER(x77,3) + POWER(x74,3)*
     POWER(x78,3) + POWER(x74,3)*POWER(x79,3) + POWER(x74,3)*POWER(x80,3) + 
     POWER(x74,3)*POWER(x81,3) + POWER(x74,3)*POWER(x82,3) + POWER(x74,3)*
     POWER(x83,3) + POWER(x74,3)*POWER(x84,3) + POWER(x74,3)*POWER(x85,3) + 
     POWER(x74,3)*POWER(x86,3) + POWER(x74,3)*POWER(x87,3) + POWER(x74,3)*
     POWER(x88,3) + POWER(x74,3)*POWER(x89,3) + POWER(x74,3)*POWER(x90,3) + 
     POWER(x74,3)*POWER(x91,3) + POWER(x74,3)*POWER(x92,3) + POWER(x74,3)*
     POWER(x93,3) + POWER(x74,3)*POWER(x94,3) + POWER(x74,3)*POWER(x95,3) + 
     POWER(x74,3)*POWER(x96,3) + POWER(x74,3)*POWER(x97,3) + POWER(x74,3)*
     POWER(x98,3) + POWER(x74,3)*POWER(x99,3) + POWER(x74,3)*POWER(x100,3) + 
     POWER(x75,3)*POWER(x1,3) + POWER(x75,3)*POWER(x2,3) + POWER(x75,3)*POWER(
     x3,3) + POWER(x75,3)*POWER(x4,3) + POWER(x75,3)*POWER(x5,3) + POWER(x75,3)
     *POWER(x6,3) + POWER(x75,3)*POWER(x7,3) + POWER(x75,3)*POWER(x8,3) + 
     POWER(x75,3)*POWER(x9,3) + POWER(x75,3)*POWER(x10,3) + POWER(x75,3)*POWER(
     x11,3) + POWER(x75,3)*POWER(x12,3) + POWER(x75,3)*POWER(x13,3) + POWER(x75
     ,3)*POWER(x14,3) + POWER(x75,3)*POWER(x15,3) + POWER(x75,3)*POWER(x16,3)
      + POWER(x75,3)*POWER(x17,3) + POWER(x75,3)*POWER(x18,3) + POWER(x75,3)*
     POWER(x19,3) + POWER(x75,3)*POWER(x20,3) + POWER(x75,3)*POWER(x21,3) + 
     POWER(x75,3)*POWER(x22,3) + POWER(x75,3)*POWER(x23,3) + POWER(x75,3)*
     POWER(x24,3) + POWER(x75,3)*POWER(x25,3) + POWER(x75,3)*POWER(x26,3) + 
     POWER(x75,3)*POWER(x27,3) + POWER(x75,3)*POWER(x28,3) + POWER(x75,3)*
     POWER(x29,3) + POWER(x75,3)*POWER(x30,3) + POWER(x75,3)*POWER(x31,3) + 
     POWER(x75,3)*POWER(x32,3) + POWER(x75,3)*POWER(x33,3) + POWER(x75,3)*
     POWER(x34,3) + POWER(x75,3)*POWER(x35,3) + POWER(x75,3)*POWER(x36,3) + 
     POWER(x75,3)*POWER(x37,3) + POWER(x75,3)*POWER(x38,3) + POWER(x75,3)*
     POWER(x39,3) + POWER(x75,3)*POWER(x40,3) + POWER(x75,3)*POWER(x41,3) + 
     POWER(x75,3)*POWER(x42,3) + POWER(x75,3)*POWER(x43,3) + POWER(x75,3)*
     POWER(x44,3) + POWER(x75,3)*POWER(x45,3) + POWER(x75,3)*POWER(x46,3) + 
     POWER(x75,3)*POWER(x47,3) + POWER(x75,3)*POWER(x48,3) + POWER(x75,3)*
     POWER(x49,3) + POWER(x75,3)*POWER(x50,3) + POWER(x75,3)*POWER(x51,3) + 
     POWER(x75,3)*POWER(x52,3) + POWER(x75,3)*POWER(x53,3) + POWER(x75,3)*
     POWER(x54,3) + POWER(x75,3)*POWER(x55,3) + POWER(x75,3)*POWER(x56,3) + 
     POWER(x75,3)*POWER(x57,3) + POWER(x75,3)*POWER(x58,3) + POWER(x75,3)*
     POWER(x59,3) + POWER(x75,3)*POWER(x60,3) + POWER(x75,3)*POWER(x61,3) + 
     POWER(x75,3)*POWER(x62,3) + POWER(x75,3)*POWER(x63,3) + POWER(x75,3)*
     POWER(x64,3) + POWER(x75,3)*POWER(x65,3) + POWER(x75,3)*POWER(x66,3) + 
     POWER(x75,3)*POWER(x67,3) + POWER(x75,3)*POWER(x68,3) + POWER(x75,3)*
     POWER(x69,3) + POWER(x75,3)*POWER(x70,3) + POWER(x75,3)*POWER(x71,3) + 
     POWER(x75,3)*POWER(x72,3) + POWER(x75,3)*POWER(x73,3) + POWER(x75,3)*
     POWER(x74,3) + POWER(x75,3)*POWER(x75,3) + POWER(x75,3)*POWER(x76,3) + 
     POWER(x75,3)*POWER(x77,3) + POWER(x75,3)*POWER(x78,3) + POWER(x75,3)*
     POWER(x79,3) + POWER(x75,3)*POWER(x80,3) + POWER(x75,3)*POWER(x81,3) + 
     POWER(x75,3)*POWER(x82,3) + POWER(x75,3)*POWER(x83,3) + POWER(x75,3)*
     POWER(x84,3) + POWER(x75,3)*POWER(x85,3) + POWER(x75,3)*POWER(x86,3) + 
     POWER(x75,3)*POWER(x87,3) + POWER(x75,3)*POWER(x88,3) + POWER(x75,3)*
     POWER(x89,3) + POWER(x75,3)*POWER(x90,3) + POWER(x75,3)*POWER(x91,3) + 
     POWER(x75,3)*POWER(x92,3) + POWER(x75,3)*POWER(x93,3) + POWER(x75,3)*
     POWER(x94,3) + POWER(x75,3)*POWER(x95,3) + POWER(x75,3)*POWER(x96,3) + 
     POWER(x75,3)*POWER(x97,3) + POWER(x75,3)*POWER(x98,3) + POWER(x75,3)*
     POWER(x99,3) + POWER(x75,3)*POWER(x100,3) + POWER(x76,3)*POWER(x1,3) + 
     POWER(x76,3)*POWER(x2,3) + POWER(x76,3)*POWER(x3,3) + POWER(x76,3)*POWER(
     x4,3) + POWER(x76,3)*POWER(x5,3) + POWER(x76,3)*POWER(x6,3) + POWER(x76,3)
     *POWER(x7,3) + POWER(x76,3)*POWER(x8,3) + POWER(x76,3)*POWER(x9,3) + 
     POWER(x76,3)*POWER(x10,3) + POWER(x76,3)*POWER(x11,3) + POWER(x76,3)*
     POWER(x12,3) + POWER(x76,3)*POWER(x13,3) + POWER(x76,3)*POWER(x14,3) + 
     POWER(x76,3)*POWER(x15,3) + POWER(x76,3)*POWER(x16,3) + POWER(x76,3)*
     POWER(x17,3) + POWER(x76,3)*POWER(x18,3) + POWER(x76,3)*POWER(x19,3) + 
     POWER(x76,3)*POWER(x20,3) + POWER(x76,3)*POWER(x21,3) + POWER(x76,3)*
     POWER(x22,3) + POWER(x76,3)*POWER(x23,3) + POWER(x76,3)*POWER(x24,3) + 
     POWER(x76,3)*POWER(x25,3) + POWER(x76,3)*POWER(x26,3) + POWER(x76,3)*
     POWER(x27,3) + POWER(x76,3)*POWER(x28,3) + POWER(x76,3)*POWER(x29,3) + 
     POWER(x76,3)*POWER(x30,3) + POWER(x76,3)*POWER(x31,3) + POWER(x76,3)*
     POWER(x32,3) + POWER(x76,3)*POWER(x33,3) + POWER(x76,3)*POWER(x34,3) + 
     POWER(x76,3)*POWER(x35,3) + POWER(x76,3)*POWER(x36,3) + POWER(x76,3)*
     POWER(x37,3) + POWER(x76,3)*POWER(x38,3) + POWER(x76,3)*POWER(x39,3) + 
     POWER(x76,3)*POWER(x40,3) + POWER(x76,3)*POWER(x41,3) + POWER(x76,3)*
     POWER(x42,3) + POWER(x76,3)*POWER(x43,3) + POWER(x76,3)*POWER(x44,3) + 
     POWER(x76,3)*POWER(x45,3) + POWER(x76,3)*POWER(x46,3) + POWER(x76,3)*
     POWER(x47,3) + POWER(x76,3)*POWER(x48,3) + POWER(x76,3)*POWER(x49,3) + 
     POWER(x76,3)*POWER(x50,3) + POWER(x76,3)*POWER(x51,3) + POWER(x76,3)*
     POWER(x52,3) + POWER(x76,3)*POWER(x53,3) + POWER(x76,3)*POWER(x54,3) + 
     POWER(x76,3)*POWER(x55,3) + POWER(x76,3)*POWER(x56,3) + POWER(x76,3)*
     POWER(x57,3) + POWER(x76,3)*POWER(x58,3) + POWER(x76,3)*POWER(x59,3) + 
     POWER(x76,3)*POWER(x60,3) + POWER(x76,3)*POWER(x61,3) + POWER(x76,3)*
     POWER(x62,3) + POWER(x76,3)*POWER(x63,3) + POWER(x76,3)*POWER(x64,3) + 
     POWER(x76,3)*POWER(x65,3) + POWER(x76,3)*POWER(x66,3) + POWER(x76,3)*
     POWER(x67,3) + POWER(x76,3)*POWER(x68,3) + POWER(x76,3)*POWER(x69,3) + 
     POWER(x76,3)*POWER(x70,3) + POWER(x76,3)*POWER(x71,3) + POWER(x76,3)*
     POWER(x72,3) + POWER(x76,3)*POWER(x73,3) + POWER(x76,3)*POWER(x74,3) + 
     POWER(x76,3)*POWER(x75,3) + POWER(x76,3)*POWER(x76,3) + POWER(x76,3)*
     POWER(x77,3) + POWER(x76,3)*POWER(x78,3) + POWER(x76,3)*POWER(x79,3) + 
     POWER(x76,3)*POWER(x80,3) + POWER(x76,3)*POWER(x81,3) + POWER(x76,3)*
     POWER(x82,3) + POWER(x76,3)*POWER(x83,3) + POWER(x76,3)*POWER(x84,3) + 
     POWER(x76,3)*POWER(x85,3) + POWER(x76,3)*POWER(x86,3) + POWER(x76,3)*
     POWER(x87,3) + POWER(x76,3)*POWER(x88,3) + POWER(x76,3)*POWER(x89,3) + 
     POWER(x76,3)*POWER(x90,3) + POWER(x76,3)*POWER(x91,3) + POWER(x76,3)*
     POWER(x92,3) + POWER(x76,3)*POWER(x93,3) + POWER(x76,3)*POWER(x94,3) + 
     POWER(x76,3)*POWER(x95,3) + POWER(x76,3)*POWER(x96,3) + POWER(x76,3)*
     POWER(x97,3) + POWER(x76,3)*POWER(x98,3) + POWER(x76,3)*POWER(x99,3) + 
     POWER(x76,3)*POWER(x100,3) + POWER(x77,3)*POWER(x1,3) + POWER(x77,3)*
     POWER(x2,3) + POWER(x77,3)*POWER(x3,3) + POWER(x77,3)*POWER(x4,3) + POWER(
     x77,3)*POWER(x5,3) + POWER(x77,3)*POWER(x6,3) + POWER(x77,3)*POWER(x7,3)
      + POWER(x77,3)*POWER(x8,3) + POWER(x77,3)*POWER(x9,3) + POWER(x77,3)*
     POWER(x10,3) + POWER(x77,3)*POWER(x11,3) + POWER(x77,3)*POWER(x12,3) + 
     POWER(x77,3)*POWER(x13,3) + POWER(x77,3)*POWER(x14,3) + POWER(x77,3)*
     POWER(x15,3) + POWER(x77,3)*POWER(x16,3) + POWER(x77,3)*POWER(x17,3) + 
     POWER(x77,3)*POWER(x18,3) + POWER(x77,3)*POWER(x19,3) + POWER(x77,3)*
     POWER(x20,3) + POWER(x77,3)*POWER(x21,3) + POWER(x77,3)*POWER(x22,3) + 
     POWER(x77,3)*POWER(x23,3) + POWER(x77,3)*POWER(x24,3) + POWER(x77,3)*
     POWER(x25,3) + POWER(x77,3)*POWER(x26,3) + POWER(x77,3)*POWER(x27,3) + 
     POWER(x77,3)*POWER(x28,3) + POWER(x77,3)*POWER(x29,3) + POWER(x77,3)*
     POWER(x30,3) + POWER(x77,3)*POWER(x31,3) + POWER(x77,3)*POWER(x32,3) + 
     POWER(x77,3)*POWER(x33,3) + POWER(x77,3)*POWER(x34,3) + POWER(x77,3)*
     POWER(x35,3) + POWER(x77,3)*POWER(x36,3) + POWER(x77,3)*POWER(x37,3) + 
     POWER(x77,3)*POWER(x38,3) + POWER(x77,3)*POWER(x39,3) + POWER(x77,3)*
     POWER(x40,3) + POWER(x77,3)*POWER(x41,3) + POWER(x77,3)*POWER(x42,3) + 
     POWER(x77,3)*POWER(x43,3) + POWER(x77,3)*POWER(x44,3) + POWER(x77,3)*
     POWER(x45,3) + POWER(x77,3)*POWER(x46,3) + POWER(x77,3)*POWER(x47,3) + 
     POWER(x77,3)*POWER(x48,3) + POWER(x77,3)*POWER(x49,3) + POWER(x77,3)*
     POWER(x50,3) + POWER(x77,3)*POWER(x51,3) + POWER(x77,3)*POWER(x52,3) + 
     POWER(x77,3)*POWER(x53,3) + POWER(x77,3)*POWER(x54,3) + POWER(x77,3)*
     POWER(x55,3) + POWER(x77,3)*POWER(x56,3) + POWER(x77,3)*POWER(x57,3) + 
     POWER(x77,3)*POWER(x58,3) + POWER(x77,3)*POWER(x59,3) + POWER(x77,3)*
     POWER(x60,3) + POWER(x77,3)*POWER(x61,3) + POWER(x77,3)*POWER(x62,3) + 
     POWER(x77,3)*POWER(x63,3) + POWER(x77,3)*POWER(x64,3) + POWER(x77,3)*
     POWER(x65,3) + POWER(x77,3)*POWER(x66,3) + POWER(x77,3)*POWER(x67,3) + 
     POWER(x77,3)*POWER(x68,3) + POWER(x77,3)*POWER(x69,3) + POWER(x77,3)*
     POWER(x70,3) + POWER(x77,3)*POWER(x71,3) + POWER(x77,3)*POWER(x72,3) + 
     POWER(x77,3)*POWER(x73,3) + POWER(x77,3)*POWER(x74,3) + POWER(x77,3)*
     POWER(x75,3) + POWER(x77,3)*POWER(x76,3) + POWER(x77,3)*POWER(x77,3) + 
     POWER(x77,3)*POWER(x78,3) + POWER(x77,3)*POWER(x79,3) + POWER(x77,3)*
     POWER(x80,3) + POWER(x77,3)*POWER(x81,3) + POWER(x77,3)*POWER(x82,3) + 
     POWER(x77,3)*POWER(x83,3) + POWER(x77,3)*POWER(x84,3) + POWER(x77,3)*
     POWER(x85,3) + POWER(x77,3)*POWER(x86,3) + POWER(x77,3)*POWER(x87,3) + 
     POWER(x77,3)*POWER(x88,3) + POWER(x77,3)*POWER(x89,3) + POWER(x77,3)*
     POWER(x90,3) + POWER(x77,3)*POWER(x91,3) + POWER(x77,3)*POWER(x92,3) + 
     POWER(x77,3)*POWER(x93,3) + POWER(x77,3)*POWER(x94,3) + POWER(x77,3)*
     POWER(x95,3) + POWER(x77,3)*POWER(x96,3) + POWER(x77,3)*POWER(x97,3) + 
     POWER(x77,3)*POWER(x98,3) + POWER(x77,3)*POWER(x99,3) + POWER(x77,3)*
     POWER(x100,3) + POWER(x78,3)*POWER(x1,3) + POWER(x78,3)*POWER(x2,3) + 
     POWER(x78,3)*POWER(x3,3) + POWER(x78,3)*POWER(x4,3) + POWER(x78,3)*POWER(
     x5,3) + POWER(x78,3)*POWER(x6,3) + POWER(x78,3)*POWER(x7,3) + POWER(x78,3)
     *POWER(x8,3) + POWER(x78,3)*POWER(x9,3) + POWER(x78,3)*POWER(x10,3) + 
     POWER(x78,3)*POWER(x11,3) + POWER(x78,3)*POWER(x12,3) + POWER(x78,3)*
     POWER(x13,3) + POWER(x78,3)*POWER(x14,3) + POWER(x78,3)*POWER(x15,3) + 
     POWER(x78,3)*POWER(x16,3) + POWER(x78,3)*POWER(x17,3) + POWER(x78,3)*
     POWER(x18,3) + POWER(x78,3)*POWER(x19,3) + POWER(x78,3)*POWER(x20,3) + 
     POWER(x78,3)*POWER(x21,3) + POWER(x78,3)*POWER(x22,3) + POWER(x78,3)*
     POWER(x23,3) + POWER(x78,3)*POWER(x24,3) + POWER(x78,3)*POWER(x25,3) + 
     POWER(x78,3)*POWER(x26,3) + POWER(x78,3)*POWER(x27,3) + POWER(x78,3)*
     POWER(x28,3) + POWER(x78,3)*POWER(x29,3) + POWER(x78,3)*POWER(x30,3) + 
     POWER(x78,3)*POWER(x31,3) + POWER(x78,3)*POWER(x32,3) + POWER(x78,3)*
     POWER(x33,3) + POWER(x78,3)*POWER(x34,3) + POWER(x78,3)*POWER(x35,3) + 
     POWER(x78,3)*POWER(x36,3) + POWER(x78,3)*POWER(x37,3) + POWER(x78,3)*
     POWER(x38,3) + POWER(x78,3)*POWER(x39,3) + POWER(x78,3)*POWER(x40,3) + 
     POWER(x78,3)*POWER(x41,3) + POWER(x78,3)*POWER(x42,3) + POWER(x78,3)*
     POWER(x43,3) + POWER(x78,3)*POWER(x44,3) + POWER(x78,3)*POWER(x45,3) + 
     POWER(x78,3)*POWER(x46,3) + POWER(x78,3)*POWER(x47,3) + POWER(x78,3)*
     POWER(x48,3) + POWER(x78,3)*POWER(x49,3) + POWER(x78,3)*POWER(x50,3) + 
     POWER(x78,3)*POWER(x51,3) + POWER(x78,3)*POWER(x52,3) + POWER(x78,3)*
     POWER(x53,3) + POWER(x78,3)*POWER(x54,3) + POWER(x78,3)*POWER(x55,3) + 
     POWER(x78,3)*POWER(x56,3) + POWER(x78,3)*POWER(x57,3) + POWER(x78,3)*
     POWER(x58,3) + POWER(x78,3)*POWER(x59,3) + POWER(x78,3)*POWER(x60,3) + 
     POWER(x78,3)*POWER(x61,3) + POWER(x78,3)*POWER(x62,3) + POWER(x78,3)*
     POWER(x63,3) + POWER(x78,3)*POWER(x64,3) + POWER(x78,3)*POWER(x65,3) + 
     POWER(x78,3)*POWER(x66,3) + POWER(x78,3)*POWER(x67,3) + POWER(x78,3)*
     POWER(x68,3) + POWER(x78,3)*POWER(x69,3) + POWER(x78,3)*POWER(x70,3) + 
     POWER(x78,3)*POWER(x71,3) + POWER(x78,3)*POWER(x72,3) + POWER(x78,3)*
     POWER(x73,3) + POWER(x78,3)*POWER(x74,3) + POWER(x78,3)*POWER(x75,3) + 
     POWER(x78,3)*POWER(x76,3) + POWER(x78,3)*POWER(x77,3) + POWER(x78,3)*
     POWER(x78,3) + POWER(x78,3)*POWER(x79,3) + POWER(x78,3)*POWER(x80,3) + 
     POWER(x78,3)*POWER(x81,3) + POWER(x78,3)*POWER(x82,3) + POWER(x78,3)*
     POWER(x83,3) + POWER(x78,3)*POWER(x84,3) + POWER(x78,3)*POWER(x85,3) + 
     POWER(x78,3)*POWER(x86,3) + POWER(x78,3)*POWER(x87,3) + POWER(x78,3)*
     POWER(x88,3) + POWER(x78,3)*POWER(x89,3) + POWER(x78,3)*POWER(x90,3) + 
     POWER(x78,3)*POWER(x91,3) + POWER(x78,3)*POWER(x92,3) + POWER(x78,3)*
     POWER(x93,3) + POWER(x78,3)*POWER(x94,3) + POWER(x78,3)*POWER(x95,3) + 
     POWER(x78,3)*POWER(x96,3) + POWER(x78,3)*POWER(x97,3) + POWER(x78,3)*
     POWER(x98,3) + POWER(x78,3)*POWER(x99,3) + POWER(x78,3)*POWER(x100,3) + 
     POWER(x79,3)*POWER(x1,3) + POWER(x79,3)*POWER(x2,3) + POWER(x79,3)*POWER(
     x3,3) + POWER(x79,3)*POWER(x4,3) + POWER(x79,3)*POWER(x5,3) + POWER(x79,3)
     *POWER(x6,3) + POWER(x79,3)*POWER(x7,3) + POWER(x79,3)*POWER(x8,3) + 
     POWER(x79,3)*POWER(x9,3) + POWER(x79,3)*POWER(x10,3) + POWER(x79,3)*POWER(
     x11,3) + POWER(x79,3)*POWER(x12,3) + POWER(x79,3)*POWER(x13,3) + POWER(x79
     ,3)*POWER(x14,3) + POWER(x79,3)*POWER(x15,3) + POWER(x79,3)*POWER(x16,3)
      + POWER(x79,3)*POWER(x17,3) + POWER(x79,3)*POWER(x18,3) + POWER(x79,3)*
     POWER(x19,3) + POWER(x79,3)*POWER(x20,3) + POWER(x79,3)*POWER(x21,3) + 
     POWER(x79,3)*POWER(x22,3) + POWER(x79,3)*POWER(x23,3) + POWER(x79,3)*
     POWER(x24,3) + POWER(x79,3)*POWER(x25,3) + POWER(x79,3)*POWER(x26,3) + 
     POWER(x79,3)*POWER(x27,3) + POWER(x79,3)*POWER(x28,3) + POWER(x79,3)*
     POWER(x29,3) + POWER(x79,3)*POWER(x30,3) + POWER(x79,3)*POWER(x31,3) + 
     POWER(x79,3)*POWER(x32,3) + POWER(x79,3)*POWER(x33,3) + POWER(x79,3)*
     POWER(x34,3) + POWER(x79,3)*POWER(x35,3) + POWER(x79,3)*POWER(x36,3) + 
     POWER(x79,3)*POWER(x37,3) + POWER(x79,3)*POWER(x38,3) + POWER(x79,3)*
     POWER(x39,3) + POWER(x79,3)*POWER(x40,3) + POWER(x79,3)*POWER(x41,3) + 
     POWER(x79,3)*POWER(x42,3) + POWER(x79,3)*POWER(x43,3) + POWER(x79,3)*
     POWER(x44,3) + POWER(x79,3)*POWER(x45,3) + POWER(x79,3)*POWER(x46,3) + 
     POWER(x79,3)*POWER(x47,3) + POWER(x79,3)*POWER(x48,3) + POWER(x79,3)*
     POWER(x49,3) + POWER(x79,3)*POWER(x50,3) + POWER(x79,3)*POWER(x51,3) + 
     POWER(x79,3)*POWER(x52,3) + POWER(x79,3)*POWER(x53,3) + POWER(x79,3)*
     POWER(x54,3) + POWER(x79,3)*POWER(x55,3) + POWER(x79,3)*POWER(x56,3) + 
     POWER(x79,3)*POWER(x57,3) + POWER(x79,3)*POWER(x58,3) + POWER(x79,3)*
     POWER(x59,3) + POWER(x79,3)*POWER(x60,3) + POWER(x79,3)*POWER(x61,3) + 
     POWER(x79,3)*POWER(x62,3) + POWER(x79,3)*POWER(x63,3) + POWER(x79,3)*
     POWER(x64,3) + POWER(x79,3)*POWER(x65,3) + POWER(x79,3)*POWER(x66,3) + 
     POWER(x79,3)*POWER(x67,3) + POWER(x79,3)*POWER(x68,3) + POWER(x79,3)*
     POWER(x69,3) + POWER(x79,3)*POWER(x70,3) + POWER(x79,3)*POWER(x71,3) + 
     POWER(x79,3)*POWER(x72,3) + POWER(x79,3)*POWER(x73,3) + POWER(x79,3)*
     POWER(x74,3) + POWER(x79,3)*POWER(x75,3) + POWER(x79,3)*POWER(x76,3) + 
     POWER(x79,3)*POWER(x77,3) + POWER(x79,3)*POWER(x78,3) + POWER(x79,3)*
     POWER(x79,3) + POWER(x79,3)*POWER(x80,3) + POWER(x79,3)*POWER(x81,3) + 
     POWER(x79,3)*POWER(x82,3) + POWER(x79,3)*POWER(x83,3) + POWER(x79,3)*
     POWER(x84,3) + POWER(x79,3)*POWER(x85,3) + POWER(x79,3)*POWER(x86,3) + 
     POWER(x79,3)*POWER(x87,3) + POWER(x79,3)*POWER(x88,3) + POWER(x79,3)*
     POWER(x89,3) + POWER(x79,3)*POWER(x90,3) + POWER(x79,3)*POWER(x91,3) + 
     POWER(x79,3)*POWER(x92,3) + POWER(x79,3)*POWER(x93,3) + POWER(x79,3)*
     POWER(x94,3) + POWER(x79,3)*POWER(x95,3) + POWER(x79,3)*POWER(x96,3) + 
     POWER(x79,3)*POWER(x97,3) + POWER(x79,3)*POWER(x98,3) + POWER(x79,3)*
     POWER(x99,3) + POWER(x79,3)*POWER(x100,3) + POWER(x80,3)*POWER(x1,3) + 
     POWER(x80,3)*POWER(x2,3) + POWER(x80,3)*POWER(x3,3) + POWER(x80,3)*POWER(
     x4,3) + POWER(x80,3)*POWER(x5,3) + POWER(x80,3)*POWER(x6,3) + POWER(x80,3)
     *POWER(x7,3) + POWER(x80,3)*POWER(x8,3) + POWER(x80,3)*POWER(x9,3) + 
     POWER(x80,3)*POWER(x10,3) + POWER(x80,3)*POWER(x11,3) + POWER(x80,3)*
     POWER(x12,3) + POWER(x80,3)*POWER(x13,3) + POWER(x80,3)*POWER(x14,3) + 
     POWER(x80,3)*POWER(x15,3) + POWER(x80,3)*POWER(x16,3) + POWER(x80,3)*
     POWER(x17,3) + POWER(x80,3)*POWER(x18,3) + POWER(x80,3)*POWER(x19,3) + 
     POWER(x80,3)*POWER(x20,3) + POWER(x80,3)*POWER(x21,3) + POWER(x80,3)*
     POWER(x22,3) + POWER(x80,3)*POWER(x23,3) + POWER(x80,3)*POWER(x24,3) + 
     POWER(x80,3)*POWER(x25,3) + POWER(x80,3)*POWER(x26,3) + POWER(x80,3)*
     POWER(x27,3) + POWER(x80,3)*POWER(x28,3) + POWER(x80,3)*POWER(x29,3) + 
     POWER(x80,3)*POWER(x30,3) + POWER(x80,3)*POWER(x31,3) + POWER(x80,3)*
     POWER(x32,3) + POWER(x80,3)*POWER(x33,3) + POWER(x80,3)*POWER(x34,3) + 
     POWER(x80,3)*POWER(x35,3) + POWER(x80,3)*POWER(x36,3) + POWER(x80,3)*
     POWER(x37,3) + POWER(x80,3)*POWER(x38,3) + POWER(x80,3)*POWER(x39,3) + 
     POWER(x80,3)*POWER(x40,3) + POWER(x80,3)*POWER(x41,3) + POWER(x80,3)*
     POWER(x42,3) + POWER(x80,3)*POWER(x43,3) + POWER(x80,3)*POWER(x44,3) + 
     POWER(x80,3)*POWER(x45,3) + POWER(x80,3)*POWER(x46,3) + POWER(x80,3)*
     POWER(x47,3) + POWER(x80,3)*POWER(x48,3) + POWER(x80,3)*POWER(x49,3) + 
     POWER(x80,3)*POWER(x50,3) + POWER(x80,3)*POWER(x51,3) + POWER(x80,3)*
     POWER(x52,3) + POWER(x80,3)*POWER(x53,3) + POWER(x80,3)*POWER(x54,3) + 
     POWER(x80,3)*POWER(x55,3) + POWER(x80,3)*POWER(x56,3) + POWER(x80,3)*
     POWER(x57,3) + POWER(x80,3)*POWER(x58,3) + POWER(x80,3)*POWER(x59,3) + 
     POWER(x80,3)*POWER(x60,3) + POWER(x80,3)*POWER(x61,3) + POWER(x80,3)*
     POWER(x62,3) + POWER(x80,3)*POWER(x63,3) + POWER(x80,3)*POWER(x64,3) + 
     POWER(x80,3)*POWER(x65,3) + POWER(x80,3)*POWER(x66,3) + POWER(x80,3)*
     POWER(x67,3) + POWER(x80,3)*POWER(x68,3) + POWER(x80,3)*POWER(x69,3) + 
     POWER(x80,3)*POWER(x70,3) + POWER(x80,3)*POWER(x71,3) + POWER(x80,3)*
     POWER(x72,3) + POWER(x80,3)*POWER(x73,3) + POWER(x80,3)*POWER(x74,3) + 
     POWER(x80,3)*POWER(x75,3) + POWER(x80,3)*POWER(x76,3) + POWER(x80,3)*
     POWER(x77,3) + POWER(x80,3)*POWER(x78,3) + POWER(x80,3)*POWER(x79,3) + 
     POWER(x80,3)*POWER(x80,3) + POWER(x80,3)*POWER(x81,3) + POWER(x80,3)*
     POWER(x82,3) + POWER(x80,3)*POWER(x83,3) + POWER(x80,3)*POWER(x84,3) + 
     POWER(x80,3)*POWER(x85,3) + POWER(x80,3)*POWER(x86,3) + POWER(x80,3)*
     POWER(x87,3) + POWER(x80,3)*POWER(x88,3) + POWER(x80,3)*POWER(x89,3) + 
     POWER(x80,3)*POWER(x90,3) + POWER(x80,3)*POWER(x91,3) + POWER(x80,3)*
     POWER(x92,3) + POWER(x80,3)*POWER(x93,3) + POWER(x80,3)*POWER(x94,3) + 
     POWER(x80,3)*POWER(x95,3) + POWER(x80,3)*POWER(x96,3) + POWER(x80,3)*
     POWER(x97,3) + POWER(x80,3)*POWER(x98,3) + POWER(x80,3)*POWER(x99,3) + 
     POWER(x80,3)*POWER(x100,3) + POWER(x81,3)*POWER(x1,3) + POWER(x81,3)*
     POWER(x2,3) + POWER(x81,3)*POWER(x3,3) + POWER(x81,3)*POWER(x4,3) + POWER(
     x81,3)*POWER(x5,3) + POWER(x81,3)*POWER(x6,3) + POWER(x81,3)*POWER(x7,3)
      + POWER(x81,3)*POWER(x8,3) + POWER(x81,3)*POWER(x9,3) + POWER(x81,3)*
     POWER(x10,3) + POWER(x81,3)*POWER(x11,3) + POWER(x81,3)*POWER(x12,3) + 
     POWER(x81,3)*POWER(x13,3) + POWER(x81,3)*POWER(x14,3) + POWER(x81,3)*
     POWER(x15,3) + POWER(x81,3)*POWER(x16,3) + POWER(x81,3)*POWER(x17,3) + 
     POWER(x81,3)*POWER(x18,3) + POWER(x81,3)*POWER(x19,3) + POWER(x81,3)*
     POWER(x20,3) + POWER(x81,3)*POWER(x21,3) + POWER(x81,3)*POWER(x22,3) + 
     POWER(x81,3)*POWER(x23,3) + POWER(x81,3)*POWER(x24,3) + POWER(x81,3)*
     POWER(x25,3) + POWER(x81,3)*POWER(x26,3) + POWER(x81,3)*POWER(x27,3) + 
     POWER(x81,3)*POWER(x28,3) + POWER(x81,3)*POWER(x29,3) + POWER(x81,3)*
     POWER(x30,3) + POWER(x81,3)*POWER(x31,3) + POWER(x81,3)*POWER(x32,3) + 
     POWER(x81,3)*POWER(x33,3) + POWER(x81,3)*POWER(x34,3) + POWER(x81,3)*
     POWER(x35,3) + POWER(x81,3)*POWER(x36,3) + POWER(x81,3)*POWER(x37,3) + 
     POWER(x81,3)*POWER(x38,3) + POWER(x81,3)*POWER(x39,3) + POWER(x81,3)*
     POWER(x40,3) + POWER(x81,3)*POWER(x41,3) + POWER(x81,3)*POWER(x42,3) + 
     POWER(x81,3)*POWER(x43,3) + POWER(x81,3)*POWER(x44,3) + POWER(x81,3)*
     POWER(x45,3) + POWER(x81,3)*POWER(x46,3) + POWER(x81,3)*POWER(x47,3) + 
     POWER(x81,3)*POWER(x48,3) + POWER(x81,3)*POWER(x49,3) + POWER(x81,3)*
     POWER(x50,3) + POWER(x81,3)*POWER(x51,3) + POWER(x81,3)*POWER(x52,3) + 
     POWER(x81,3)*POWER(x53,3) + POWER(x81,3)*POWER(x54,3) + POWER(x81,3)*
     POWER(x55,3) + POWER(x81,3)*POWER(x56,3) + POWER(x81,3)*POWER(x57,3) + 
     POWER(x81,3)*POWER(x58,3) + POWER(x81,3)*POWER(x59,3) + POWER(x81,3)*
     POWER(x60,3) + POWER(x81,3)*POWER(x61,3) + POWER(x81,3)*POWER(x62,3) + 
     POWER(x81,3)*POWER(x63,3) + POWER(x81,3)*POWER(x64,3) + POWER(x81,3)*
     POWER(x65,3) + POWER(x81,3)*POWER(x66,3) + POWER(x81,3)*POWER(x67,3) + 
     POWER(x81,3)*POWER(x68,3) + POWER(x81,3)*POWER(x69,3) + POWER(x81,3)*
     POWER(x70,3) + POWER(x81,3)*POWER(x71,3) + POWER(x81,3)*POWER(x72,3) + 
     POWER(x81,3)*POWER(x73,3) + POWER(x81,3)*POWER(x74,3) + POWER(x81,3)*
     POWER(x75,3) + POWER(x81,3)*POWER(x76,3) + POWER(x81,3)*POWER(x77,3) + 
     POWER(x81,3)*POWER(x78,3) + POWER(x81,3)*POWER(x79,3) + POWER(x81,3)*
     POWER(x80,3) + POWER(x81,3)*POWER(x81,3) + POWER(x81,3)*POWER(x82,3) + 
     POWER(x81,3)*POWER(x83,3) + POWER(x81,3)*POWER(x84,3) + POWER(x81,3)*
     POWER(x85,3) + POWER(x81,3)*POWER(x86,3) + POWER(x81,3)*POWER(x87,3) + 
     POWER(x81,3)*POWER(x88,3) + POWER(x81,3)*POWER(x89,3) + POWER(x81,3)*
     POWER(x90,3) + POWER(x81,3)*POWER(x91,3) + POWER(x81,3)*POWER(x92,3) + 
     POWER(x81,3)*POWER(x93,3) + POWER(x81,3)*POWER(x94,3) + POWER(x81,3)*
     POWER(x95,3) + POWER(x81,3)*POWER(x96,3) + POWER(x81,3)*POWER(x97,3) + 
     POWER(x81,3)*POWER(x98,3) + POWER(x81,3)*POWER(x99,3) + POWER(x81,3)*
     POWER(x100,3) + POWER(x82,3)*POWER(x1,3) + POWER(x82,3)*POWER(x2,3) + 
     POWER(x82,3)*POWER(x3,3) + POWER(x82,3)*POWER(x4,3) + POWER(x82,3)*POWER(
     x5,3) + POWER(x82,3)*POWER(x6,3) + POWER(x82,3)*POWER(x7,3) + POWER(x82,3)
     *POWER(x8,3) + POWER(x82,3)*POWER(x9,3) + POWER(x82,3)*POWER(x10,3) + 
     POWER(x82,3)*POWER(x11,3) + POWER(x82,3)*POWER(x12,3) + POWER(x82,3)*
     POWER(x13,3) + POWER(x82,3)*POWER(x14,3) + POWER(x82,3)*POWER(x15,3) + 
     POWER(x82,3)*POWER(x16,3) + POWER(x82,3)*POWER(x17,3) + POWER(x82,3)*
     POWER(x18,3) + POWER(x82,3)*POWER(x19,3) + POWER(x82,3)*POWER(x20,3) + 
     POWER(x82,3)*POWER(x21,3) + POWER(x82,3)*POWER(x22,3) + POWER(x82,3)*
     POWER(x23,3) + POWER(x82,3)*POWER(x24,3) + POWER(x82,3)*POWER(x25,3) + 
     POWER(x82,3)*POWER(x26,3) + POWER(x82,3)*POWER(x27,3) + POWER(x82,3)*
     POWER(x28,3) + POWER(x82,3)*POWER(x29,3) + POWER(x82,3)*POWER(x30,3) + 
     POWER(x82,3)*POWER(x31,3) + POWER(x82,3)*POWER(x32,3) + POWER(x82,3)*
     POWER(x33,3) + POWER(x82,3)*POWER(x34,3) + POWER(x82,3)*POWER(x35,3) + 
     POWER(x82,3)*POWER(x36,3) + POWER(x82,3)*POWER(x37,3) + POWER(x82,3)*
     POWER(x38,3) + POWER(x82,3)*POWER(x39,3) + POWER(x82,3)*POWER(x40,3) + 
     POWER(x82,3)*POWER(x41,3) + POWER(x82,3)*POWER(x42,3) + POWER(x82,3)*
     POWER(x43,3) + POWER(x82,3)*POWER(x44,3) + POWER(x82,3)*POWER(x45,3) + 
     POWER(x82,3)*POWER(x46,3) + POWER(x82,3)*POWER(x47,3) + POWER(x82,3)*
     POWER(x48,3) + POWER(x82,3)*POWER(x49,3) + POWER(x82,3)*POWER(x50,3) + 
     POWER(x82,3)*POWER(x51,3) + POWER(x82,3)*POWER(x52,3) + POWER(x82,3)*
     POWER(x53,3) + POWER(x82,3)*POWER(x54,3) + POWER(x82,3)*POWER(x55,3) + 
     POWER(x82,3)*POWER(x56,3) + POWER(x82,3)*POWER(x57,3) + POWER(x82,3)*
     POWER(x58,3) + POWER(x82,3)*POWER(x59,3) + POWER(x82,3)*POWER(x60,3) + 
     POWER(x82,3)*POWER(x61,3) + POWER(x82,3)*POWER(x62,3) + POWER(x82,3)*
     POWER(x63,3) + POWER(x82,3)*POWER(x64,3) + POWER(x82,3)*POWER(x65,3) + 
     POWER(x82,3)*POWER(x66,3) + POWER(x82,3)*POWER(x67,3) + POWER(x82,3)*
     POWER(x68,3) + POWER(x82,3)*POWER(x69,3) + POWER(x82,3)*POWER(x70,3) + 
     POWER(x82,3)*POWER(x71,3) + POWER(x82,3)*POWER(x72,3) + POWER(x82,3)*
     POWER(x73,3) + POWER(x82,3)*POWER(x74,3) + POWER(x82,3)*POWER(x75,3) + 
     POWER(x82,3)*POWER(x76,3) + POWER(x82,3)*POWER(x77,3) + POWER(x82,3)*
     POWER(x78,3) + POWER(x82,3)*POWER(x79,3) + POWER(x82,3)*POWER(x80,3) + 
     POWER(x82,3)*POWER(x81,3) + POWER(x82,3)*POWER(x82,3) + POWER(x82,3)*
     POWER(x83,3) + POWER(x82,3)*POWER(x84,3) + POWER(x82,3)*POWER(x85,3) + 
     POWER(x82,3)*POWER(x86,3) + POWER(x82,3)*POWER(x87,3) + POWER(x82,3)*
     POWER(x88,3) + POWER(x82,3)*POWER(x89,3) + POWER(x82,3)*POWER(x90,3) + 
     POWER(x82,3)*POWER(x91,3) + POWER(x82,3)*POWER(x92,3) + POWER(x82,3)*
     POWER(x93,3) + POWER(x82,3)*POWER(x94,3) + POWER(x82,3)*POWER(x95,3) + 
     POWER(x82,3)*POWER(x96,3) + POWER(x82,3)*POWER(x97,3) + POWER(x82,3)*
     POWER(x98,3) + POWER(x82,3)*POWER(x99,3) + POWER(x82,3)*POWER(x100,3) + 
     POWER(x83,3)*POWER(x1,3) + POWER(x83,3)*POWER(x2,3) + POWER(x83,3)*POWER(
     x3,3) + POWER(x83,3)*POWER(x4,3) + POWER(x83,3)*POWER(x5,3) + POWER(x83,3)
     *POWER(x6,3) + POWER(x83,3)*POWER(x7,3) + POWER(x83,3)*POWER(x8,3) + 
     POWER(x83,3)*POWER(x9,3) + POWER(x83,3)*POWER(x10,3) + POWER(x83,3)*POWER(
     x11,3) + POWER(x83,3)*POWER(x12,3) + POWER(x83,3)*POWER(x13,3) + POWER(x83
     ,3)*POWER(x14,3) + POWER(x83,3)*POWER(x15,3) + POWER(x83,3)*POWER(x16,3)
      + POWER(x83,3)*POWER(x17,3) + POWER(x83,3)*POWER(x18,3) + POWER(x83,3)*
     POWER(x19,3) + POWER(x83,3)*POWER(x20,3) + POWER(x83,3)*POWER(x21,3) + 
     POWER(x83,3)*POWER(x22,3) + POWER(x83,3)*POWER(x23,3) + POWER(x83,3)*
     POWER(x24,3) + POWER(x83,3)*POWER(x25,3) + POWER(x83,3)*POWER(x26,3) + 
     POWER(x83,3)*POWER(x27,3) + POWER(x83,3)*POWER(x28,3) + POWER(x83,3)*
     POWER(x29,3) + POWER(x83,3)*POWER(x30,3) + POWER(x83,3)*POWER(x31,3) + 
     POWER(x83,3)*POWER(x32,3) + POWER(x83,3)*POWER(x33,3) + POWER(x83,3)*
     POWER(x34,3) + POWER(x83,3)*POWER(x35,3) + POWER(x83,3)*POWER(x36,3) + 
     POWER(x83,3)*POWER(x37,3) + POWER(x83,3)*POWER(x38,3) + POWER(x83,3)*
     POWER(x39,3) + POWER(x83,3)*POWER(x40,3) + POWER(x83,3)*POWER(x41,3) + 
     POWER(x83,3)*POWER(x42,3) + POWER(x83,3)*POWER(x43,3) + POWER(x83,3)*
     POWER(x44,3) + POWER(x83,3)*POWER(x45,3) + POWER(x83,3)*POWER(x46,3) + 
     POWER(x83,3)*POWER(x47,3) + POWER(x83,3)*POWER(x48,3) + POWER(x83,3)*
     POWER(x49,3) + POWER(x83,3)*POWER(x50,3) + POWER(x83,3)*POWER(x51,3) + 
     POWER(x83,3)*POWER(x52,3) + POWER(x83,3)*POWER(x53,3) + POWER(x83,3)*
     POWER(x54,3) + POWER(x83,3)*POWER(x55,3) + POWER(x83,3)*POWER(x56,3) + 
     POWER(x83,3)*POWER(x57,3) + POWER(x83,3)*POWER(x58,3) + POWER(x83,3)*
     POWER(x59,3) + POWER(x83,3)*POWER(x60,3) + POWER(x83,3)*POWER(x61,3) + 
     POWER(x83,3)*POWER(x62,3) + POWER(x83,3)*POWER(x63,3) + POWER(x83,3)*
     POWER(x64,3) + POWER(x83,3)*POWER(x65,3) + POWER(x83,3)*POWER(x66,3) + 
     POWER(x83,3)*POWER(x67,3) + POWER(x83,3)*POWER(x68,3) + POWER(x83,3)*
     POWER(x69,3) + POWER(x83,3)*POWER(x70,3) + POWER(x83,3)*POWER(x71,3) + 
     POWER(x83,3)*POWER(x72,3) + POWER(x83,3)*POWER(x73,3) + POWER(x83,3)*
     POWER(x74,3) + POWER(x83,3)*POWER(x75,3) + POWER(x83,3)*POWER(x76,3) + 
     POWER(x83,3)*POWER(x77,3) + POWER(x83,3)*POWER(x78,3) + POWER(x83,3)*
     POWER(x79,3) + POWER(x83,3)*POWER(x80,3) + POWER(x83,3)*POWER(x81,3) + 
     POWER(x83,3)*POWER(x82,3) + POWER(x83,3)*POWER(x83,3) + POWER(x83,3)*
     POWER(x84,3) + POWER(x83,3)*POWER(x85,3) + POWER(x83,3)*POWER(x86,3) + 
     POWER(x83,3)*POWER(x87,3) + POWER(x83,3)*POWER(x88,3) + POWER(x83,3)*
     POWER(x89,3) + POWER(x83,3)*POWER(x90,3) + POWER(x83,3)*POWER(x91,3) + 
     POWER(x83,3)*POWER(x92,3) + POWER(x83,3)*POWER(x93,3) + POWER(x83,3)*
     POWER(x94,3) + POWER(x83,3)*POWER(x95,3) + POWER(x83,3)*POWER(x96,3) + 
     POWER(x83,3)*POWER(x97,3) + POWER(x83,3)*POWER(x98,3) + POWER(x83,3)*
     POWER(x99,3) + POWER(x83,3)*POWER(x100,3) + POWER(x84,3)*POWER(x1,3) + 
     POWER(x84,3)*POWER(x2,3) + POWER(x84,3)*POWER(x3,3) + POWER(x84,3)*POWER(
     x4,3) + POWER(x84,3)*POWER(x5,3) + POWER(x84,3)*POWER(x6,3) + POWER(x84,3)
     *POWER(x7,3) + POWER(x84,3)*POWER(x8,3) + POWER(x84,3)*POWER(x9,3) + 
     POWER(x84,3)*POWER(x10,3) + POWER(x84,3)*POWER(x11,3) + POWER(x84,3)*
     POWER(x12,3) + POWER(x84,3)*POWER(x13,3) + POWER(x84,3)*POWER(x14,3) + 
     POWER(x84,3)*POWER(x15,3) + POWER(x84,3)*POWER(x16,3) + POWER(x84,3)*
     POWER(x17,3) + POWER(x84,3)*POWER(x18,3) + POWER(x84,3)*POWER(x19,3) + 
     POWER(x84,3)*POWER(x20,3) + POWER(x84,3)*POWER(x21,3) + POWER(x84,3)*
     POWER(x22,3) + POWER(x84,3)*POWER(x23,3) + POWER(x84,3)*POWER(x24,3) + 
     POWER(x84,3)*POWER(x25,3) + POWER(x84,3)*POWER(x26,3) + POWER(x84,3)*
     POWER(x27,3) + POWER(x84,3)*POWER(x28,3) + POWER(x84,3)*POWER(x29,3) + 
     POWER(x84,3)*POWER(x30,3) + POWER(x84,3)*POWER(x31,3) + POWER(x84,3)*
     POWER(x32,3) + POWER(x84,3)*POWER(x33,3) + POWER(x84,3)*POWER(x34,3) + 
     POWER(x84,3)*POWER(x35,3) + POWER(x84,3)*POWER(x36,3) + POWER(x84,3)*
     POWER(x37,3) + POWER(x84,3)*POWER(x38,3) + POWER(x84,3)*POWER(x39,3) + 
     POWER(x84,3)*POWER(x40,3) + POWER(x84,3)*POWER(x41,3) + POWER(x84,3)*
     POWER(x42,3) + POWER(x84,3)*POWER(x43,3) + POWER(x84,3)*POWER(x44,3) + 
     POWER(x84,3)*POWER(x45,3) + POWER(x84,3)*POWER(x46,3) + POWER(x84,3)*
     POWER(x47,3) + POWER(x84,3)*POWER(x48,3) + POWER(x84,3)*POWER(x49,3) + 
     POWER(x84,3)*POWER(x50,3) + POWER(x84,3)*POWER(x51,3) + POWER(x84,3)*
     POWER(x52,3) + POWER(x84,3)*POWER(x53,3) + POWER(x84,3)*POWER(x54,3) + 
     POWER(x84,3)*POWER(x55,3) + POWER(x84,3)*POWER(x56,3) + POWER(x84,3)*
     POWER(x57,3) + POWER(x84,3)*POWER(x58,3) + POWER(x84,3)*POWER(x59,3) + 
     POWER(x84,3)*POWER(x60,3) + POWER(x84,3)*POWER(x61,3) + POWER(x84,3)*
     POWER(x62,3) + POWER(x84,3)*POWER(x63,3) + POWER(x84,3)*POWER(x64,3) + 
     POWER(x84,3)*POWER(x65,3) + POWER(x84,3)*POWER(x66,3) + POWER(x84,3)*
     POWER(x67,3) + POWER(x84,3)*POWER(x68,3) + POWER(x84,3)*POWER(x69,3) + 
     POWER(x84,3)*POWER(x70,3) + POWER(x84,3)*POWER(x71,3) + POWER(x84,3)*
     POWER(x72,3) + POWER(x84,3)*POWER(x73,3) + POWER(x84,3)*POWER(x74,3) + 
     POWER(x84,3)*POWER(x75,3) + POWER(x84,3)*POWER(x76,3) + POWER(x84,3)*
     POWER(x77,3) + POWER(x84,3)*POWER(x78,3) + POWER(x84,3)*POWER(x79,3) + 
     POWER(x84,3)*POWER(x80,3) + POWER(x84,3)*POWER(x81,3) + POWER(x84,3)*
     POWER(x82,3) + POWER(x84,3)*POWER(x83,3) + POWER(x84,3)*POWER(x84,3) + 
     POWER(x84,3)*POWER(x85,3) + POWER(x84,3)*POWER(x86,3) + POWER(x84,3)*
     POWER(x87,3) + POWER(x84,3)*POWER(x88,3) + POWER(x84,3)*POWER(x89,3) + 
     POWER(x84,3)*POWER(x90,3) + POWER(x84,3)*POWER(x91,3) + POWER(x84,3)*
     POWER(x92,3) + POWER(x84,3)*POWER(x93,3) + POWER(x84,3)*POWER(x94,3) + 
     POWER(x84,3)*POWER(x95,3) + POWER(x84,3)*POWER(x96,3) + POWER(x84,3)*
     POWER(x97,3) + POWER(x84,3)*POWER(x98,3) + POWER(x84,3)*POWER(x99,3) + 
     POWER(x84,3)*POWER(x100,3) + POWER(x85,3)*POWER(x1,3) + POWER(x85,3)*
     POWER(x2,3) + POWER(x85,3)*POWER(x3,3) + POWER(x85,3)*POWER(x4,3) + POWER(
     x85,3)*POWER(x5,3) + POWER(x85,3)*POWER(x6,3) + POWER(x85,3)*POWER(x7,3)
      + POWER(x85,3)*POWER(x8,3) + POWER(x85,3)*POWER(x9,3) + POWER(x85,3)*
     POWER(x10,3) + POWER(x85,3)*POWER(x11,3) + POWER(x85,3)*POWER(x12,3) + 
     POWER(x85,3)*POWER(x13,3) + POWER(x85,3)*POWER(x14,3) + POWER(x85,3)*
     POWER(x15,3) + POWER(x85,3)*POWER(x16,3) + POWER(x85,3)*POWER(x17,3) + 
     POWER(x85,3)*POWER(x18,3) + POWER(x85,3)*POWER(x19,3) + POWER(x85,3)*
     POWER(x20,3) + POWER(x85,3)*POWER(x21,3) + POWER(x85,3)*POWER(x22,3) + 
     POWER(x85,3)*POWER(x23,3) + POWER(x85,3)*POWER(x24,3) + POWER(x85,3)*
     POWER(x25,3) + POWER(x85,3)*POWER(x26,3) + POWER(x85,3)*POWER(x27,3) + 
     POWER(x85,3)*POWER(x28,3) + POWER(x85,3)*POWER(x29,3) + POWER(x85,3)*
     POWER(x30,3) + POWER(x85,3)*POWER(x31,3) + POWER(x85,3)*POWER(x32,3) + 
     POWER(x85,3)*POWER(x33,3) + POWER(x85,3)*POWER(x34,3) + POWER(x85,3)*
     POWER(x35,3) + POWER(x85,3)*POWER(x36,3) + POWER(x85,3)*POWER(x37,3) + 
     POWER(x85,3)*POWER(x38,3) + POWER(x85,3)*POWER(x39,3) + POWER(x85,3)*
     POWER(x40,3) + POWER(x85,3)*POWER(x41,3) + POWER(x85,3)*POWER(x42,3) + 
     POWER(x85,3)*POWER(x43,3) + POWER(x85,3)*POWER(x44,3) + POWER(x85,3)*
     POWER(x45,3) + POWER(x85,3)*POWER(x46,3) + POWER(x85,3)*POWER(x47,3) + 
     POWER(x85,3)*POWER(x48,3) + POWER(x85,3)*POWER(x49,3) + POWER(x85,3)*
     POWER(x50,3) + POWER(x85,3)*POWER(x51,3) + POWER(x85,3)*POWER(x52,3) + 
     POWER(x85,3)*POWER(x53,3) + POWER(x85,3)*POWER(x54,3) + POWER(x85,3)*
     POWER(x55,3) + POWER(x85,3)*POWER(x56,3) + POWER(x85,3)*POWER(x57,3) + 
     POWER(x85,3)*POWER(x58,3) + POWER(x85,3)*POWER(x59,3) + POWER(x85,3)*
     POWER(x60,3) + POWER(x85,3)*POWER(x61,3) + POWER(x85,3)*POWER(x62,3) + 
     POWER(x85,3)*POWER(x63,3) + POWER(x85,3)*POWER(x64,3) + POWER(x85,3)*
     POWER(x65,3) + POWER(x85,3)*POWER(x66,3) + POWER(x85,3)*POWER(x67,3) + 
     POWER(x85,3)*POWER(x68,3) + POWER(x85,3)*POWER(x69,3) + POWER(x85,3)*
     POWER(x70,3) + POWER(x85,3)*POWER(x71,3) + POWER(x85,3)*POWER(x72,3) + 
     POWER(x85,3)*POWER(x73,3) + POWER(x85,3)*POWER(x74,3) + POWER(x85,3)*
     POWER(x75,3) + POWER(x85,3)*POWER(x76,3) + POWER(x85,3)*POWER(x77,3) + 
     POWER(x85,3)*POWER(x78,3) + POWER(x85,3)*POWER(x79,3) + POWER(x85,3)*
     POWER(x80,3) + POWER(x85,3)*POWER(x81,3) + POWER(x85,3)*POWER(x82,3) + 
     POWER(x85,3)*POWER(x83,3) + POWER(x85,3)*POWER(x84,3) + POWER(x85,3)*
     POWER(x85,3) + POWER(x85,3)*POWER(x86,3) + POWER(x85,3)*POWER(x87,3) + 
     POWER(x85,3)*POWER(x88,3) + POWER(x85,3)*POWER(x89,3) + POWER(x85,3)*
     POWER(x90,3) + POWER(x85,3)*POWER(x91,3) + POWER(x85,3)*POWER(x92,3) + 
     POWER(x85,3)*POWER(x93,3) + POWER(x85,3)*POWER(x94,3) + POWER(x85,3)*
     POWER(x95,3) + POWER(x85,3)*POWER(x96,3) + POWER(x85,3)*POWER(x97,3) + 
     POWER(x85,3)*POWER(x98,3) + POWER(x85,3)*POWER(x99,3) + POWER(x85,3)*
     POWER(x100,3) + POWER(x86,3)*POWER(x1,3) + POWER(x86,3)*POWER(x2,3) + 
     POWER(x86,3)*POWER(x3,3) + POWER(x86,3)*POWER(x4,3) + POWER(x86,3)*POWER(
     x5,3) + POWER(x86,3)*POWER(x6,3) + POWER(x86,3)*POWER(x7,3) + POWER(x86,3)
     *POWER(x8,3) + POWER(x86,3)*POWER(x9,3) + POWER(x86,3)*POWER(x10,3) + 
     POWER(x86,3)*POWER(x11,3) + POWER(x86,3)*POWER(x12,3) + POWER(x86,3)*
     POWER(x13,3) + POWER(x86,3)*POWER(x14,3) + POWER(x86,3)*POWER(x15,3) + 
     POWER(x86,3)*POWER(x16,3) + POWER(x86,3)*POWER(x17,3) + POWER(x86,3)*
     POWER(x18,3) + POWER(x86,3)*POWER(x19,3) + POWER(x86,3)*POWER(x20,3) + 
     POWER(x86,3)*POWER(x21,3) + POWER(x86,3)*POWER(x22,3) + POWER(x86,3)*
     POWER(x23,3) + POWER(x86,3)*POWER(x24,3) + POWER(x86,3)*POWER(x25,3) + 
     POWER(x86,3)*POWER(x26,3) + POWER(x86,3)*POWER(x27,3) + POWER(x86,3)*
     POWER(x28,3) + POWER(x86,3)*POWER(x29,3) + POWER(x86,3)*POWER(x30,3) + 
     POWER(x86,3)*POWER(x31,3) + POWER(x86,3)*POWER(x32,3) + POWER(x86,3)*
     POWER(x33,3) + POWER(x86,3)*POWER(x34,3) + POWER(x86,3)*POWER(x35,3) + 
     POWER(x86,3)*POWER(x36,3) + POWER(x86,3)*POWER(x37,3) + POWER(x86,3)*
     POWER(x38,3) + POWER(x86,3)*POWER(x39,3) + POWER(x86,3)*POWER(x40,3) + 
     POWER(x86,3)*POWER(x41,3) + POWER(x86,3)*POWER(x42,3) + POWER(x86,3)*
     POWER(x43,3) + POWER(x86,3)*POWER(x44,3) + POWER(x86,3)*POWER(x45,3) + 
     POWER(x86,3)*POWER(x46,3) + POWER(x86,3)*POWER(x47,3) + POWER(x86,3)*
     POWER(x48,3) + POWER(x86,3)*POWER(x49,3) + POWER(x86,3)*POWER(x50,3) + 
     POWER(x86,3)*POWER(x51,3) + POWER(x86,3)*POWER(x52,3) + POWER(x86,3)*
     POWER(x53,3) + POWER(x86,3)*POWER(x54,3) + POWER(x86,3)*POWER(x55,3) + 
     POWER(x86,3)*POWER(x56,3) + POWER(x86,3)*POWER(x57,3) + POWER(x86,3)*
     POWER(x58,3) + POWER(x86,3)*POWER(x59,3) + POWER(x86,3)*POWER(x60,3) + 
     POWER(x86,3)*POWER(x61,3) + POWER(x86,3)*POWER(x62,3) + POWER(x86,3)*
     POWER(x63,3) + POWER(x86,3)*POWER(x64,3) + POWER(x86,3)*POWER(x65,3) + 
     POWER(x86,3)*POWER(x66,3) + POWER(x86,3)*POWER(x67,3) + POWER(x86,3)*
     POWER(x68,3) + POWER(x86,3)*POWER(x69,3) + POWER(x86,3)*POWER(x70,3) + 
     POWER(x86,3)*POWER(x71,3) + POWER(x86,3)*POWER(x72,3) + POWER(x86,3)*
     POWER(x73,3) + POWER(x86,3)*POWER(x74,3) + POWER(x86,3)*POWER(x75,3) + 
     POWER(x86,3)*POWER(x76,3) + POWER(x86,3)*POWER(x77,3) + POWER(x86,3)*
     POWER(x78,3) + POWER(x86,3)*POWER(x79,3) + POWER(x86,3)*POWER(x80,3) + 
     POWER(x86,3)*POWER(x81,3) + POWER(x86,3)*POWER(x82,3) + POWER(x86,3)*
     POWER(x83,3) + POWER(x86,3)*POWER(x84,3) + POWER(x86,3)*POWER(x85,3) + 
     POWER(x86,3)*POWER(x86,3) + POWER(x86,3)*POWER(x87,3) + POWER(x86,3)*
     POWER(x88,3) + POWER(x86,3)*POWER(x89,3) + POWER(x86,3)*POWER(x90,3) + 
     POWER(x86,3)*POWER(x91,3) + POWER(x86,3)*POWER(x92,3) + POWER(x86,3)*
     POWER(x93,3) + POWER(x86,3)*POWER(x94,3) + POWER(x86,3)*POWER(x95,3) + 
     POWER(x86,3)*POWER(x96,3) + POWER(x86,3)*POWER(x97,3) + POWER(x86,3)*
     POWER(x98,3) + POWER(x86,3)*POWER(x99,3) + POWER(x86,3)*POWER(x100,3) + 
     POWER(x87,3)*POWER(x1,3) + POWER(x87,3)*POWER(x2,3) + POWER(x87,3)*POWER(
     x3,3) + POWER(x87,3)*POWER(x4,3) + POWER(x87,3)*POWER(x5,3) + POWER(x87,3)
     *POWER(x6,3) + POWER(x87,3)*POWER(x7,3) + POWER(x87,3)*POWER(x8,3) + 
     POWER(x87,3)*POWER(x9,3) + POWER(x87,3)*POWER(x10,3) + POWER(x87,3)*POWER(
     x11,3) + POWER(x87,3)*POWER(x12,3) + POWER(x87,3)*POWER(x13,3) + POWER(x87
     ,3)*POWER(x14,3) + POWER(x87,3)*POWER(x15,3) + POWER(x87,3)*POWER(x16,3)
      + POWER(x87,3)*POWER(x17,3) + POWER(x87,3)*POWER(x18,3) + POWER(x87,3)*
     POWER(x19,3) + POWER(x87,3)*POWER(x20,3) + POWER(x87,3)*POWER(x21,3) + 
     POWER(x87,3)*POWER(x22,3) + POWER(x87,3)*POWER(x23,3) + POWER(x87,3)*
     POWER(x24,3) + POWER(x87,3)*POWER(x25,3) + POWER(x87,3)*POWER(x26,3) + 
     POWER(x87,3)*POWER(x27,3) + POWER(x87,3)*POWER(x28,3) + POWER(x87,3)*
     POWER(x29,3) + POWER(x87,3)*POWER(x30,3) + POWER(x87,3)*POWER(x31,3) + 
     POWER(x87,3)*POWER(x32,3) + POWER(x87,3)*POWER(x33,3) + POWER(x87,3)*
     POWER(x34,3) + POWER(x87,3)*POWER(x35,3) + POWER(x87,3)*POWER(x36,3) + 
     POWER(x87,3)*POWER(x37,3) + POWER(x87,3)*POWER(x38,3) + POWER(x87,3)*
     POWER(x39,3) + POWER(x87,3)*POWER(x40,3) + POWER(x87,3)*POWER(x41,3) + 
     POWER(x87,3)*POWER(x42,3) + POWER(x87,3)*POWER(x43,3) + POWER(x87,3)*
     POWER(x44,3) + POWER(x87,3)*POWER(x45,3) + POWER(x87,3)*POWER(x46,3) + 
     POWER(x87,3)*POWER(x47,3) + POWER(x87,3)*POWER(x48,3) + POWER(x87,3)*
     POWER(x49,3) + POWER(x87,3)*POWER(x50,3) + POWER(x87,3)*POWER(x51,3) + 
     POWER(x87,3)*POWER(x52,3) + POWER(x87,3)*POWER(x53,3) + POWER(x87,3)*
     POWER(x54,3) + POWER(x87,3)*POWER(x55,3) + POWER(x87,3)*POWER(x56,3) + 
     POWER(x87,3)*POWER(x57,3) + POWER(x87,3)*POWER(x58,3) + POWER(x87,3)*
     POWER(x59,3) + POWER(x87,3)*POWER(x60,3) + POWER(x87,3)*POWER(x61,3) + 
     POWER(x87,3)*POWER(x62,3) + POWER(x87,3)*POWER(x63,3) + POWER(x87,3)*
     POWER(x64,3) + POWER(x87,3)*POWER(x65,3) + POWER(x87,3)*POWER(x66,3) + 
     POWER(x87,3)*POWER(x67,3) + POWER(x87,3)*POWER(x68,3) + POWER(x87,3)*
     POWER(x69,3) + POWER(x87,3)*POWER(x70,3) + POWER(x87,3)*POWER(x71,3) + 
     POWER(x87,3)*POWER(x72,3) + POWER(x87,3)*POWER(x73,3) + POWER(x87,3)*
     POWER(x74,3) + POWER(x87,3)*POWER(x75,3) + POWER(x87,3)*POWER(x76,3) + 
     POWER(x87,3)*POWER(x77,3) + POWER(x87,3)*POWER(x78,3) + POWER(x87,3)*
     POWER(x79,3) + POWER(x87,3)*POWER(x80,3) + POWER(x87,3)*POWER(x81,3) + 
     POWER(x87,3)*POWER(x82,3) + POWER(x87,3)*POWER(x83,3) + POWER(x87,3)*
     POWER(x84,3) + POWER(x87,3)*POWER(x85,3) + POWER(x87,3)*POWER(x86,3) + 
     POWER(x87,3)*POWER(x87,3) + POWER(x87,3)*POWER(x88,3) + POWER(x87,3)*
     POWER(x89,3) + POWER(x87,3)*POWER(x90,3) + POWER(x87,3)*POWER(x91,3) + 
     POWER(x87,3)*POWER(x92,3) + POWER(x87,3)*POWER(x93,3) + POWER(x87,3)*
     POWER(x94,3) + POWER(x87,3)*POWER(x95,3) + POWER(x87,3)*POWER(x96,3) + 
     POWER(x87,3)*POWER(x97,3) + POWER(x87,3)*POWER(x98,3) + POWER(x87,3)*
     POWER(x99,3) + POWER(x87,3)*POWER(x100,3) + POWER(x88,3)*POWER(x1,3) + 
     POWER(x88,3)*POWER(x2,3) + POWER(x88,3)*POWER(x3,3) + POWER(x88,3)*POWER(
     x4,3) + POWER(x88,3)*POWER(x5,3) + POWER(x88,3)*POWER(x6,3) + POWER(x88,3)
     *POWER(x7,3) + POWER(x88,3)*POWER(x8,3) + POWER(x88,3)*POWER(x9,3) + 
     POWER(x88,3)*POWER(x10,3) + POWER(x88,3)*POWER(x11,3) + POWER(x88,3)*
     POWER(x12,3) + POWER(x88,3)*POWER(x13,3) + POWER(x88,3)*POWER(x14,3) + 
     POWER(x88,3)*POWER(x15,3) + POWER(x88,3)*POWER(x16,3) + POWER(x88,3)*
     POWER(x17,3) + POWER(x88,3)*POWER(x18,3) + POWER(x88,3)*POWER(x19,3) + 
     POWER(x88,3)*POWER(x20,3) + POWER(x88,3)*POWER(x21,3) + POWER(x88,3)*
     POWER(x22,3) + POWER(x88,3)*POWER(x23,3) + POWER(x88,3)*POWER(x24,3) + 
     POWER(x88,3)*POWER(x25,3) + POWER(x88,3)*POWER(x26,3) + POWER(x88,3)*
     POWER(x27,3) + POWER(x88,3)*POWER(x28,3) + POWER(x88,3)*POWER(x29,3) + 
     POWER(x88,3)*POWER(x30,3) + POWER(x88,3)*POWER(x31,3) + POWER(x88,3)*
     POWER(x32,3) + POWER(x88,3)*POWER(x33,3) + POWER(x88,3)*POWER(x34,3) + 
     POWER(x88,3)*POWER(x35,3) + POWER(x88,3)*POWER(x36,3) + POWER(x88,3)*
     POWER(x37,3) + POWER(x88,3)*POWER(x38,3) + POWER(x88,3)*POWER(x39,3) + 
     POWER(x88,3)*POWER(x40,3) + POWER(x88,3)*POWER(x41,3) + POWER(x88,3)*
     POWER(x42,3) + POWER(x88,3)*POWER(x43,3) + POWER(x88,3)*POWER(x44,3) + 
     POWER(x88,3)*POWER(x45,3) + POWER(x88,3)*POWER(x46,3) + POWER(x88,3)*
     POWER(x47,3) + POWER(x88,3)*POWER(x48,3) + POWER(x88,3)*POWER(x49,3) + 
     POWER(x88,3)*POWER(x50,3) + POWER(x88,3)*POWER(x51,3) + POWER(x88,3)*
     POWER(x52,3) + POWER(x88,3)*POWER(x53,3) + POWER(x88,3)*POWER(x54,3) + 
     POWER(x88,3)*POWER(x55,3) + POWER(x88,3)*POWER(x56,3) + POWER(x88,3)*
     POWER(x57,3) + POWER(x88,3)*POWER(x58,3) + POWER(x88,3)*POWER(x59,3) + 
     POWER(x88,3)*POWER(x60,3) + POWER(x88,3)*POWER(x61,3) + POWER(x88,3)*
     POWER(x62,3) + POWER(x88,3)*POWER(x63,3) + POWER(x88,3)*POWER(x64,3) + 
     POWER(x88,3)*POWER(x65,3) + POWER(x88,3)*POWER(x66,3) + POWER(x88,3)*
     POWER(x67,3) + POWER(x88,3)*POWER(x68,3) + POWER(x88,3)*POWER(x69,3) + 
     POWER(x88,3)*POWER(x70,3) + POWER(x88,3)*POWER(x71,3) + POWER(x88,3)*
     POWER(x72,3) + POWER(x88,3)*POWER(x73,3) + POWER(x88,3)*POWER(x74,3) + 
     POWER(x88,3)*POWER(x75,3) + POWER(x88,3)*POWER(x76,3) + POWER(x88,3)*
     POWER(x77,3) + POWER(x88,3)*POWER(x78,3) + POWER(x88,3)*POWER(x79,3) + 
     POWER(x88,3)*POWER(x80,3) + POWER(x88,3)*POWER(x81,3) + POWER(x88,3)*
     POWER(x82,3) + POWER(x88,3)*POWER(x83,3) + POWER(x88,3)*POWER(x84,3) + 
     POWER(x88,3)*POWER(x85,3) + POWER(x88,3)*POWER(x86,3) + POWER(x88,3)*
     POWER(x87,3) + POWER(x88,3)*POWER(x88,3) + POWER(x88,3)*POWER(x89,3) + 
     POWER(x88,3)*POWER(x90,3) + POWER(x88,3)*POWER(x91,3) + POWER(x88,3)*
     POWER(x92,3) + POWER(x88,3)*POWER(x93,3) + POWER(x88,3)*POWER(x94,3) + 
     POWER(x88,3)*POWER(x95,3) + POWER(x88,3)*POWER(x96,3) + POWER(x88,3)*
     POWER(x97,3) + POWER(x88,3)*POWER(x98,3) + POWER(x88,3)*POWER(x99,3) + 
     POWER(x88,3)*POWER(x100,3) + POWER(x89,3)*POWER(x1,3) + POWER(x89,3)*
     POWER(x2,3) + POWER(x89,3)*POWER(x3,3) + POWER(x89,3)*POWER(x4,3) + POWER(
     x89,3)*POWER(x5,3) + POWER(x89,3)*POWER(x6,3) + POWER(x89,3)*POWER(x7,3)
      + POWER(x89,3)*POWER(x8,3) + POWER(x89,3)*POWER(x9,3) + POWER(x89,3)*
     POWER(x10,3) + POWER(x89,3)*POWER(x11,3) + POWER(x89,3)*POWER(x12,3) + 
     POWER(x89,3)*POWER(x13,3) + POWER(x89,3)*POWER(x14,3) + POWER(x89,3)*
     POWER(x15,3) + POWER(x89,3)*POWER(x16,3) + POWER(x89,3)*POWER(x17,3) + 
     POWER(x89,3)*POWER(x18,3) + POWER(x89,3)*POWER(x19,3) + POWER(x89,3)*
     POWER(x20,3) + POWER(x89,3)*POWER(x21,3) + POWER(x89,3)*POWER(x22,3) + 
     POWER(x89,3)*POWER(x23,3) + POWER(x89,3)*POWER(x24,3) + POWER(x89,3)*
     POWER(x25,3) + POWER(x89,3)*POWER(x26,3) + POWER(x89,3)*POWER(x27,3) + 
     POWER(x89,3)*POWER(x28,3) + POWER(x89,3)*POWER(x29,3) + POWER(x89,3)*
     POWER(x30,3) + POWER(x89,3)*POWER(x31,3) + POWER(x89,3)*POWER(x32,3) + 
     POWER(x89,3)*POWER(x33,3) + POWER(x89,3)*POWER(x34,3) + POWER(x89,3)*
     POWER(x35,3) + POWER(x89,3)*POWER(x36,3) + POWER(x89,3)*POWER(x37,3) + 
     POWER(x89,3)*POWER(x38,3) + POWER(x89,3)*POWER(x39,3) + POWER(x89,3)*
     POWER(x40,3) + POWER(x89,3)*POWER(x41,3) + POWER(x89,3)*POWER(x42,3) + 
     POWER(x89,3)*POWER(x43,3) + POWER(x89,3)*POWER(x44,3) + POWER(x89,3)*
     POWER(x45,3) + POWER(x89,3)*POWER(x46,3) + POWER(x89,3)*POWER(x47,3) + 
     POWER(x89,3)*POWER(x48,3) + POWER(x89,3)*POWER(x49,3) + POWER(x89,3)*
     POWER(x50,3) + POWER(x89,3)*POWER(x51,3) + POWER(x89,3)*POWER(x52,3) + 
     POWER(x89,3)*POWER(x53,3) + POWER(x89,3)*POWER(x54,3) + POWER(x89,3)*
     POWER(x55,3) + POWER(x89,3)*POWER(x56,3) + POWER(x89,3)*POWER(x57,3) + 
     POWER(x89,3)*POWER(x58,3) + POWER(x89,3)*POWER(x59,3) + POWER(x89,3)*
     POWER(x60,3) + POWER(x89,3)*POWER(x61,3) + POWER(x89,3)*POWER(x62,3) + 
     POWER(x89,3)*POWER(x63,3) + POWER(x89,3)*POWER(x64,3) + POWER(x89,3)*
     POWER(x65,3) + POWER(x89,3)*POWER(x66,3) + POWER(x89,3)*POWER(x67,3) + 
     POWER(x89,3)*POWER(x68,3) + POWER(x89,3)*POWER(x69,3) + POWER(x89,3)*
     POWER(x70,3) + POWER(x89,3)*POWER(x71,3) + POWER(x89,3)*POWER(x72,3) + 
     POWER(x89,3)*POWER(x73,3) + POWER(x89,3)*POWER(x74,3) + POWER(x89,3)*
     POWER(x75,3) + POWER(x89,3)*POWER(x76,3) + POWER(x89,3)*POWER(x77,3) + 
     POWER(x89,3)*POWER(x78,3) + POWER(x89,3)*POWER(x79,3) + POWER(x89,3)*
     POWER(x80,3) + POWER(x89,3)*POWER(x81,3) + POWER(x89,3)*POWER(x82,3) + 
     POWER(x89,3)*POWER(x83,3) + POWER(x89,3)*POWER(x84,3) + POWER(x89,3)*
     POWER(x85,3) + POWER(x89,3)*POWER(x86,3) + POWER(x89,3)*POWER(x87,3) + 
     POWER(x89,3)*POWER(x88,3) + POWER(x89,3)*POWER(x89,3) + POWER(x89,3)*
     POWER(x90,3) + POWER(x89,3)*POWER(x91,3) + POWER(x89,3)*POWER(x92,3) + 
     POWER(x89,3)*POWER(x93,3) + POWER(x89,3)*POWER(x94,3) + POWER(x89,3)*
     POWER(x95,3) + POWER(x89,3)*POWER(x96,3) + POWER(x89,3)*POWER(x97,3) + 
     POWER(x89,3)*POWER(x98,3) + POWER(x89,3)*POWER(x99,3) + POWER(x89,3)*
     POWER(x100,3) + POWER(x90,3)*POWER(x1,3) + POWER(x90,3)*POWER(x2,3) + 
     POWER(x90,3)*POWER(x3,3) + POWER(x90,3)*POWER(x4,3) + POWER(x90,3)*POWER(
     x5,3) + POWER(x90,3)*POWER(x6,3) + POWER(x90,3)*POWER(x7,3) + POWER(x90,3)
     *POWER(x8,3) + POWER(x90,3)*POWER(x9,3) + POWER(x90,3)*POWER(x10,3) + 
     POWER(x90,3)*POWER(x11,3) + POWER(x90,3)*POWER(x12,3) + POWER(x90,3)*
     POWER(x13,3) + POWER(x90,3)*POWER(x14,3) + POWER(x90,3)*POWER(x15,3) + 
     POWER(x90,3)*POWER(x16,3) + POWER(x90,3)*POWER(x17,3) + POWER(x90,3)*
     POWER(x18,3) + POWER(x90,3)*POWER(x19,3) + POWER(x90,3)*POWER(x20,3) + 
     POWER(x90,3)*POWER(x21,3) + POWER(x90,3)*POWER(x22,3) + POWER(x90,3)*
     POWER(x23,3) + POWER(x90,3)*POWER(x24,3) + POWER(x90,3)*POWER(x25,3) + 
     POWER(x90,3)*POWER(x26,3) + POWER(x90,3)*POWER(x27,3) + POWER(x90,3)*
     POWER(x28,3) + POWER(x90,3)*POWER(x29,3) + POWER(x90,3)*POWER(x30,3) + 
     POWER(x90,3)*POWER(x31,3) + POWER(x90,3)*POWER(x32,3) + POWER(x90,3)*
     POWER(x33,3) + POWER(x90,3)*POWER(x34,3) + POWER(x90,3)*POWER(x35,3) + 
     POWER(x90,3)*POWER(x36,3) + POWER(x90,3)*POWER(x37,3) + POWER(x90,3)*
     POWER(x38,3) + POWER(x90,3)*POWER(x39,3) + POWER(x90,3)*POWER(x40,3) + 
     POWER(x90,3)*POWER(x41,3) + POWER(x90,3)*POWER(x42,3) + POWER(x90,3)*
     POWER(x43,3) + POWER(x90,3)*POWER(x44,3) + POWER(x90,3)*POWER(x45,3) + 
     POWER(x90,3)*POWER(x46,3) + POWER(x90,3)*POWER(x47,3) + POWER(x90,3)*
     POWER(x48,3) + POWER(x90,3)*POWER(x49,3) + POWER(x90,3)*POWER(x50,3) + 
     POWER(x90,3)*POWER(x51,3) + POWER(x90,3)*POWER(x52,3) + POWER(x90,3)*
     POWER(x53,3) + POWER(x90,3)*POWER(x54,3) + POWER(x90,3)*POWER(x55,3) + 
     POWER(x90,3)*POWER(x56,3) + POWER(x90,3)*POWER(x57,3) + POWER(x90,3)*
     POWER(x58,3) + POWER(x90,3)*POWER(x59,3) + POWER(x90,3)*POWER(x60,3) + 
     POWER(x90,3)*POWER(x61,3) + POWER(x90,3)*POWER(x62,3) + POWER(x90,3)*
     POWER(x63,3) + POWER(x90,3)*POWER(x64,3) + POWER(x90,3)*POWER(x65,3) + 
     POWER(x90,3)*POWER(x66,3) + POWER(x90,3)*POWER(x67,3) + POWER(x90,3)*
     POWER(x68,3) + POWER(x90,3)*POWER(x69,3) + POWER(x90,3)*POWER(x70,3) + 
     POWER(x90,3)*POWER(x71,3) + POWER(x90,3)*POWER(x72,3) + POWER(x90,3)*
     POWER(x73,3) + POWER(x90,3)*POWER(x74,3) + POWER(x90,3)*POWER(x75,3) + 
     POWER(x90,3)*POWER(x76,3) + POWER(x90,3)*POWER(x77,3) + POWER(x90,3)*
     POWER(x78,3) + POWER(x90,3)*POWER(x79,3) + POWER(x90,3)*POWER(x80,3) + 
     POWER(x90,3)*POWER(x81,3) + POWER(x90,3)*POWER(x82,3) + POWER(x90,3)*
     POWER(x83,3) + POWER(x90,3)*POWER(x84,3) + POWER(x90,3)*POWER(x85,3) + 
     POWER(x90,3)*POWER(x86,3) + POWER(x90,3)*POWER(x87,3) + POWER(x90,3)*
     POWER(x88,3) + POWER(x90,3)*POWER(x89,3) + POWER(x90,3)*POWER(x90,3) + 
     POWER(x90,3)*POWER(x91,3) + POWER(x90,3)*POWER(x92,3) + POWER(x90,3)*
     POWER(x93,3) + POWER(x90,3)*POWER(x94,3) + POWER(x90,3)*POWER(x95,3) + 
     POWER(x90,3)*POWER(x96,3) + POWER(x90,3)*POWER(x97,3) + POWER(x90,3)*
     POWER(x98,3) + POWER(x90,3)*POWER(x99,3) + POWER(x90,3)*POWER(x100,3) + 
     POWER(x91,3)*POWER(x1,3) + POWER(x91,3)*POWER(x2,3) + POWER(x91,3)*POWER(
     x3,3) + POWER(x91,3)*POWER(x4,3) + POWER(x91,3)*POWER(x5,3) + POWER(x91,3)
     *POWER(x6,3) + POWER(x91,3)*POWER(x7,3) + POWER(x91,3)*POWER(x8,3) + 
     POWER(x91,3)*POWER(x9,3) + POWER(x91,3)*POWER(x10,3) + POWER(x91,3)*POWER(
     x11,3) + POWER(x91,3)*POWER(x12,3) + POWER(x91,3)*POWER(x13,3) + POWER(x91
     ,3)*POWER(x14,3) + POWER(x91,3)*POWER(x15,3) + POWER(x91,3)*POWER(x16,3)
      + POWER(x91,3)*POWER(x17,3) + POWER(x91,3)*POWER(x18,3) + POWER(x91,3)*
     POWER(x19,3) + POWER(x91,3)*POWER(x20,3) + POWER(x91,3)*POWER(x21,3) + 
     POWER(x91,3)*POWER(x22,3) + POWER(x91,3)*POWER(x23,3) + POWER(x91,3)*
     POWER(x24,3) + POWER(x91,3)*POWER(x25,3) + POWER(x91,3)*POWER(x26,3) + 
     POWER(x91,3)*POWER(x27,3) + POWER(x91,3)*POWER(x28,3) + POWER(x91,3)*
     POWER(x29,3) + POWER(x91,3)*POWER(x30,3) + POWER(x91,3)*POWER(x31,3) + 
     POWER(x91,3)*POWER(x32,3) + POWER(x91,3)*POWER(x33,3) + POWER(x91,3)*
     POWER(x34,3) + POWER(x91,3)*POWER(x35,3) + POWER(x91,3)*POWER(x36,3) + 
     POWER(x91,3)*POWER(x37,3) + POWER(x91,3)*POWER(x38,3) + POWER(x91,3)*
     POWER(x39,3) + POWER(x91,3)*POWER(x40,3) + POWER(x91,3)*POWER(x41,3) + 
     POWER(x91,3)*POWER(x42,3) + POWER(x91,3)*POWER(x43,3) + POWER(x91,3)*
     POWER(x44,3) + POWER(x91,3)*POWER(x45,3) + POWER(x91,3)*POWER(x46,3) + 
     POWER(x91,3)*POWER(x47,3) + POWER(x91,3)*POWER(x48,3) + POWER(x91,3)*
     POWER(x49,3) + POWER(x91,3)*POWER(x50,3) + POWER(x91,3)*POWER(x51,3) + 
     POWER(x91,3)*POWER(x52,3) + POWER(x91,3)*POWER(x53,3) + POWER(x91,3)*
     POWER(x54,3) + POWER(x91,3)*POWER(x55,3) + POWER(x91,3)*POWER(x56,3) + 
     POWER(x91,3)*POWER(x57,3) + POWER(x91,3)*POWER(x58,3) + POWER(x91,3)*
     POWER(x59,3) + POWER(x91,3)*POWER(x60,3) + POWER(x91,3)*POWER(x61,3) + 
     POWER(x91,3)*POWER(x62,3) + POWER(x91,3)*POWER(x63,3) + POWER(x91,3)*
     POWER(x64,3) + POWER(x91,3)*POWER(x65,3) + POWER(x91,3)*POWER(x66,3) + 
     POWER(x91,3)*POWER(x67,3) + POWER(x91,3)*POWER(x68,3) + POWER(x91,3)*
     POWER(x69,3) + POWER(x91,3)*POWER(x70,3) + POWER(x91,3)*POWER(x71,3) + 
     POWER(x91,3)*POWER(x72,3) + POWER(x91,3)*POWER(x73,3) + POWER(x91,3)*
     POWER(x74,3) + POWER(x91,3)*POWER(x75,3) + POWER(x91,3)*POWER(x76,3) + 
     POWER(x91,3)*POWER(x77,3) + POWER(x91,3)*POWER(x78,3) + POWER(x91,3)*
     POWER(x79,3) + POWER(x91,3)*POWER(x80,3) + POWER(x91,3)*POWER(x81,3) + 
     POWER(x91,3)*POWER(x82,3) + POWER(x91,3)*POWER(x83,3) + POWER(x91,3)*
     POWER(x84,3) + POWER(x91,3)*POWER(x85,3) + POWER(x91,3)*POWER(x86,3) + 
     POWER(x91,3)*POWER(x87,3) + POWER(x91,3)*POWER(x88,3) + POWER(x91,3)*
     POWER(x89,3) + POWER(x91,3)*POWER(x90,3) + POWER(x91,3)*POWER(x91,3) + 
     POWER(x91,3)*POWER(x92,3) + POWER(x91,3)*POWER(x93,3) + POWER(x91,3)*
     POWER(x94,3) + POWER(x91,3)*POWER(x95,3) + POWER(x91,3)*POWER(x96,3) + 
     POWER(x91,3)*POWER(x97,3) + POWER(x91,3)*POWER(x98,3) + POWER(x91,3)*
     POWER(x99,3) + POWER(x91,3)*POWER(x100,3) + POWER(x92,3)*POWER(x1,3) + 
     POWER(x92,3)*POWER(x2,3) + POWER(x92,3)*POWER(x3,3) + POWER(x92,3)*POWER(
     x4,3) + POWER(x92,3)*POWER(x5,3) + POWER(x92,3)*POWER(x6,3) + POWER(x92,3)
     *POWER(x7,3) + POWER(x92,3)*POWER(x8,3) + POWER(x92,3)*POWER(x9,3) + 
     POWER(x92,3)*POWER(x10,3) + POWER(x92,3)*POWER(x11,3) + POWER(x92,3)*
     POWER(x12,3) + POWER(x92,3)*POWER(x13,3) + POWER(x92,3)*POWER(x14,3) + 
     POWER(x92,3)*POWER(x15,3) + POWER(x92,3)*POWER(x16,3) + POWER(x92,3)*
     POWER(x17,3) + POWER(x92,3)*POWER(x18,3) + POWER(x92,3)*POWER(x19,3) + 
     POWER(x92,3)*POWER(x20,3) + POWER(x92,3)*POWER(x21,3) + POWER(x92,3)*
     POWER(x22,3) + POWER(x92,3)*POWER(x23,3) + POWER(x92,3)*POWER(x24,3) + 
     POWER(x92,3)*POWER(x25,3) + POWER(x92,3)*POWER(x26,3) + POWER(x92,3)*
     POWER(x27,3) + POWER(x92,3)*POWER(x28,3) + POWER(x92,3)*POWER(x29,3) + 
     POWER(x92,3)*POWER(x30,3) + POWER(x92,3)*POWER(x31,3) + POWER(x92,3)*
     POWER(x32,3) + POWER(x92,3)*POWER(x33,3) + POWER(x92,3)*POWER(x34,3) + 
     POWER(x92,3)*POWER(x35,3) + POWER(x92,3)*POWER(x36,3) + POWER(x92,3)*
     POWER(x37,3) + POWER(x92,3)*POWER(x38,3) + POWER(x92,3)*POWER(x39,3) + 
     POWER(x92,3)*POWER(x40,3) + POWER(x92,3)*POWER(x41,3) + POWER(x92,3)*
     POWER(x42,3) + POWER(x92,3)*POWER(x43,3) + POWER(x92,3)*POWER(x44,3) + 
     POWER(x92,3)*POWER(x45,3) + POWER(x92,3)*POWER(x46,3) + POWER(x92,3)*
     POWER(x47,3) + POWER(x92,3)*POWER(x48,3) + POWER(x92,3)*POWER(x49,3) + 
     POWER(x92,3)*POWER(x50,3) + POWER(x92,3)*POWER(x51,3) + POWER(x92,3)*
     POWER(x52,3) + POWER(x92,3)*POWER(x53,3) + POWER(x92,3)*POWER(x54,3) + 
     POWER(x92,3)*POWER(x55,3) + POWER(x92,3)*POWER(x56,3) + POWER(x92,3)*
     POWER(x57,3) + POWER(x92,3)*POWER(x58,3) + POWER(x92,3)*POWER(x59,3) + 
     POWER(x92,3)*POWER(x60,3) + POWER(x92,3)*POWER(x61,3) + POWER(x92,3)*
     POWER(x62,3) + POWER(x92,3)*POWER(x63,3) + POWER(x92,3)*POWER(x64,3) + 
     POWER(x92,3)*POWER(x65,3) + POWER(x92,3)*POWER(x66,3) + POWER(x92,3)*
     POWER(x67,3) + POWER(x92,3)*POWER(x68,3) + POWER(x92,3)*POWER(x69,3) + 
     POWER(x92,3)*POWER(x70,3) + POWER(x92,3)*POWER(x71,3) + POWER(x92,3)*
     POWER(x72,3) + POWER(x92,3)*POWER(x73,3) + POWER(x92,3)*POWER(x74,3) + 
     POWER(x92,3)*POWER(x75,3) + POWER(x92,3)*POWER(x76,3) + POWER(x92,3)*
     POWER(x77,3) + POWER(x92,3)*POWER(x78,3) + POWER(x92,3)*POWER(x79,3) + 
     POWER(x92,3)*POWER(x80,3) + POWER(x92,3)*POWER(x81,3) + POWER(x92,3)*
     POWER(x82,3) + POWER(x92,3)*POWER(x83,3) + POWER(x92,3)*POWER(x84,3) + 
     POWER(x92,3)*POWER(x85,3) + POWER(x92,3)*POWER(x86,3) + POWER(x92,3)*
     POWER(x87,3) + POWER(x92,3)*POWER(x88,3) + POWER(x92,3)*POWER(x89,3) + 
     POWER(x92,3)*POWER(x90,3) + POWER(x92,3)*POWER(x91,3) + POWER(x92,3)*
     POWER(x92,3) + POWER(x92,3)*POWER(x93,3) + POWER(x92,3)*POWER(x94,3) + 
     POWER(x92,3)*POWER(x95,3) + POWER(x92,3)*POWER(x96,3) + POWER(x92,3)*
     POWER(x97,3) + POWER(x92,3)*POWER(x98,3) + POWER(x92,3)*POWER(x99,3) + 
     POWER(x92,3)*POWER(x100,3) + POWER(x93,3)*POWER(x1,3) + POWER(x93,3)*
     POWER(x2,3) + POWER(x93,3)*POWER(x3,3) + POWER(x93,3)*POWER(x4,3) + POWER(
     x93,3)*POWER(x5,3) + POWER(x93,3)*POWER(x6,3) + POWER(x93,3)*POWER(x7,3)
      + POWER(x93,3)*POWER(x8,3) + POWER(x93,3)*POWER(x9,3) + POWER(x93,3)*
     POWER(x10,3) + POWER(x93,3)*POWER(x11,3) + POWER(x93,3)*POWER(x12,3) + 
     POWER(x93,3)*POWER(x13,3) + POWER(x93,3)*POWER(x14,3) + POWER(x93,3)*
     POWER(x15,3) + POWER(x93,3)*POWER(x16,3) + POWER(x93,3)*POWER(x17,3) + 
     POWER(x93,3)*POWER(x18,3) + POWER(x93,3)*POWER(x19,3) + POWER(x93,3)*
     POWER(x20,3) + POWER(x93,3)*POWER(x21,3) + POWER(x93,3)*POWER(x22,3) + 
     POWER(x93,3)*POWER(x23,3) + POWER(x93,3)*POWER(x24,3) + POWER(x93,3)*
     POWER(x25,3) + POWER(x93,3)*POWER(x26,3) + POWER(x93,3)*POWER(x27,3) + 
     POWER(x93,3)*POWER(x28,3) + POWER(x93,3)*POWER(x29,3) + POWER(x93,3)*
     POWER(x30,3) + POWER(x93,3)*POWER(x31,3) + POWER(x93,3)*POWER(x32,3) + 
     POWER(x93,3)*POWER(x33,3) + POWER(x93,3)*POWER(x34,3) + POWER(x93,3)*
     POWER(x35,3) + POWER(x93,3)*POWER(x36,3) + POWER(x93,3)*POWER(x37,3) + 
     POWER(x93,3)*POWER(x38,3) + POWER(x93,3)*POWER(x39,3) + POWER(x93,3)*
     POWER(x40,3) + POWER(x93,3)*POWER(x41,3) + POWER(x93,3)*POWER(x42,3) + 
     POWER(x93,3)*POWER(x43,3) + POWER(x93,3)*POWER(x44,3) + POWER(x93,3)*
     POWER(x45,3) + POWER(x93,3)*POWER(x46,3) + POWER(x93,3)*POWER(x47,3) + 
     POWER(x93,3)*POWER(x48,3) + POWER(x93,3)*POWER(x49,3) + POWER(x93,3)*
     POWER(x50,3) + POWER(x93,3)*POWER(x51,3) + POWER(x93,3)*POWER(x52,3) + 
     POWER(x93,3)*POWER(x53,3) + POWER(x93,3)*POWER(x54,3) + POWER(x93,3)*
     POWER(x55,3) + POWER(x93,3)*POWER(x56,3) + POWER(x93,3)*POWER(x57,3) + 
     POWER(x93,3)*POWER(x58,3) + POWER(x93,3)*POWER(x59,3) + POWER(x93,3)*
     POWER(x60,3) + POWER(x93,3)*POWER(x61,3) + POWER(x93,3)*POWER(x62,3) + 
     POWER(x93,3)*POWER(x63,3) + POWER(x93,3)*POWER(x64,3) + POWER(x93,3)*
     POWER(x65,3) + POWER(x93,3)*POWER(x66,3) + POWER(x93,3)*POWER(x67,3) + 
     POWER(x93,3)*POWER(x68,3) + POWER(x93,3)*POWER(x69,3) + POWER(x93,3)*
     POWER(x70,3) + POWER(x93,3)*POWER(x71,3) + POWER(x93,3)*POWER(x72,3) + 
     POWER(x93,3)*POWER(x73,3) + POWER(x93,3)*POWER(x74,3) + POWER(x93,3)*
     POWER(x75,3) + POWER(x93,3)*POWER(x76,3) + POWER(x93,3)*POWER(x77,3) + 
     POWER(x93,3)*POWER(x78,3) + POWER(x93,3)*POWER(x79,3) + POWER(x93,3)*
     POWER(x80,3) + POWER(x93,3)*POWER(x81,3) + POWER(x93,3)*POWER(x82,3) + 
     POWER(x93,3)*POWER(x83,3) + POWER(x93,3)*POWER(x84,3) + POWER(x93,3)*
     POWER(x85,3) + POWER(x93,3)*POWER(x86,3) + POWER(x93,3)*POWER(x87,3) + 
     POWER(x93,3)*POWER(x88,3) + POWER(x93,3)*POWER(x89,3) + POWER(x93,3)*
     POWER(x90,3) + POWER(x93,3)*POWER(x91,3) + POWER(x93,3)*POWER(x92,3) + 
     POWER(x93,3)*POWER(x93,3) + POWER(x93,3)*POWER(x94,3) + POWER(x93,3)*
     POWER(x95,3) + POWER(x93,3)*POWER(x96,3) + POWER(x93,3)*POWER(x97,3) + 
     POWER(x93,3)*POWER(x98,3) + POWER(x93,3)*POWER(x99,3) + POWER(x93,3)*
     POWER(x100,3) + POWER(x94,3)*POWER(x1,3) + POWER(x94,3)*POWER(x2,3) + 
     POWER(x94,3)*POWER(x3,3) + POWER(x94,3)*POWER(x4,3) + POWER(x94,3)*POWER(
     x5,3) + POWER(x94,3)*POWER(x6,3) + POWER(x94,3)*POWER(x7,3) + POWER(x94,3)
     *POWER(x8,3) + POWER(x94,3)*POWER(x9,3) + POWER(x94,3)*POWER(x10,3) + 
     POWER(x94,3)*POWER(x11,3) + POWER(x94,3)*POWER(x12,3) + POWER(x94,3)*
     POWER(x13,3) + POWER(x94,3)*POWER(x14,3) + POWER(x94,3)*POWER(x15,3) + 
     POWER(x94,3)*POWER(x16,3) + POWER(x94,3)*POWER(x17,3) + POWER(x94,3)*
     POWER(x18,3) + POWER(x94,3)*POWER(x19,3) + POWER(x94,3)*POWER(x20,3) + 
     POWER(x94,3)*POWER(x21,3) + POWER(x94,3)*POWER(x22,3) + POWER(x94,3)*
     POWER(x23,3) + POWER(x94,3)*POWER(x24,3) + POWER(x94,3)*POWER(x25,3) + 
     POWER(x94,3)*POWER(x26,3) + POWER(x94,3)*POWER(x27,3) + POWER(x94,3)*
     POWER(x28,3) + POWER(x94,3)*POWER(x29,3) + POWER(x94,3)*POWER(x30,3) + 
     POWER(x94,3)*POWER(x31,3) + POWER(x94,3)*POWER(x32,3) + POWER(x94,3)*
     POWER(x33,3) + POWER(x94,3)*POWER(x34,3) + POWER(x94,3)*POWER(x35,3) + 
     POWER(x94,3)*POWER(x36,3) + POWER(x94,3)*POWER(x37,3) + POWER(x94,3)*
     POWER(x38,3) + POWER(x94,3)*POWER(x39,3) + POWER(x94,3)*POWER(x40,3) + 
     POWER(x94,3)*POWER(x41,3) + POWER(x94,3)*POWER(x42,3) + POWER(x94,3)*
     POWER(x43,3) + POWER(x94,3)*POWER(x44,3) + POWER(x94,3)*POWER(x45,3) + 
     POWER(x94,3)*POWER(x46,3) + POWER(x94,3)*POWER(x47,3) + POWER(x94,3)*
     POWER(x48,3) + POWER(x94,3)*POWER(x49,3) + POWER(x94,3)*POWER(x50,3) + 
     POWER(x94,3)*POWER(x51,3) + POWER(x94,3)*POWER(x52,3) + POWER(x94,3)*
     POWER(x53,3) + POWER(x94,3)*POWER(x54,3) + POWER(x94,3)*POWER(x55,3) + 
     POWER(x94,3)*POWER(x56,3) + POWER(x94,3)*POWER(x57,3) + POWER(x94,3)*
     POWER(x58,3) + POWER(x94,3)*POWER(x59,3) + POWER(x94,3)*POWER(x60,3) + 
     POWER(x94,3)*POWER(x61,3) + POWER(x94,3)*POWER(x62,3) + POWER(x94,3)*
     POWER(x63,3) + POWER(x94,3)*POWER(x64,3) + POWER(x94,3)*POWER(x65,3) + 
     POWER(x94,3)*POWER(x66,3) + POWER(x94,3)*POWER(x67,3) + POWER(x94,3)*
     POWER(x68,3) + POWER(x94,3)*POWER(x69,3) + POWER(x94,3)*POWER(x70,3) + 
     POWER(x94,3)*POWER(x71,3) + POWER(x94,3)*POWER(x72,3) + POWER(x94,3)*
     POWER(x73,3) + POWER(x94,3)*POWER(x74,3) + POWER(x94,3)*POWER(x75,3) + 
     POWER(x94,3)*POWER(x76,3) + POWER(x94,3)*POWER(x77,3) + POWER(x94,3)*
     POWER(x78,3) + POWER(x94,3)*POWER(x79,3) + POWER(x94,3)*POWER(x80,3) + 
     POWER(x94,3)*POWER(x81,3) + POWER(x94,3)*POWER(x82,3) + POWER(x94,3)*
     POWER(x83,3) + POWER(x94,3)*POWER(x84,3) + POWER(x94,3)*POWER(x85,3) + 
     POWER(x94,3)*POWER(x86,3) + POWER(x94,3)*POWER(x87,3) + POWER(x94,3)*
     POWER(x88,3) + POWER(x94,3)*POWER(x89,3) + POWER(x94,3)*POWER(x90,3) + 
     POWER(x94,3)*POWER(x91,3) + POWER(x94,3)*POWER(x92,3) + POWER(x94,3)*
     POWER(x93,3) + POWER(x94,3)*POWER(x94,3) + POWER(x94,3)*POWER(x95,3) + 
     POWER(x94,3)*POWER(x96,3) + POWER(x94,3)*POWER(x97,3) + POWER(x94,3)*
     POWER(x98,3) + POWER(x94,3)*POWER(x99,3) + POWER(x94,3)*POWER(x100,3) + 
     POWER(x95,3)*POWER(x1,3) + POWER(x95,3)*POWER(x2,3) + POWER(x95,3)*POWER(
     x3,3) + POWER(x95,3)*POWER(x4,3) + POWER(x95,3)*POWER(x5,3) + POWER(x95,3)
     *POWER(x6,3) + POWER(x95,3)*POWER(x7,3) + POWER(x95,3)*POWER(x8,3) + 
     POWER(x95,3)*POWER(x9,3) + POWER(x95,3)*POWER(x10,3) + POWER(x95,3)*POWER(
     x11,3) + POWER(x95,3)*POWER(x12,3) + POWER(x95,3)*POWER(x13,3) + POWER(x95
     ,3)*POWER(x14,3) + POWER(x95,3)*POWER(x15,3) + POWER(x95,3)*POWER(x16,3)
      + POWER(x95,3)*POWER(x17,3) + POWER(x95,3)*POWER(x18,3) + POWER(x95,3)*
     POWER(x19,3) + POWER(x95,3)*POWER(x20,3) + POWER(x95,3)*POWER(x21,3) + 
     POWER(x95,3)*POWER(x22,3) + POWER(x95,3)*POWER(x23,3) + POWER(x95,3)*
     POWER(x24,3) + POWER(x95,3)*POWER(x25,3) + POWER(x95,3)*POWER(x26,3) + 
     POWER(x95,3)*POWER(x27,3) + POWER(x95,3)*POWER(x28,3) + POWER(x95,3)*
     POWER(x29,3) + POWER(x95,3)*POWER(x30,3) + POWER(x95,3)*POWER(x31,3) + 
     POWER(x95,3)*POWER(x32,3) + POWER(x95,3)*POWER(x33,3) + POWER(x95,3)*
     POWER(x34,3) + POWER(x95,3)*POWER(x35,3) + POWER(x95,3)*POWER(x36,3) + 
     POWER(x95,3)*POWER(x37,3) + POWER(x95,3)*POWER(x38,3) + POWER(x95,3)*
     POWER(x39,3) + POWER(x95,3)*POWER(x40,3) + POWER(x95,3)*POWER(x41,3) + 
     POWER(x95,3)*POWER(x42,3) + POWER(x95,3)*POWER(x43,3) + POWER(x95,3)*
     POWER(x44,3) + POWER(x95,3)*POWER(x45,3) + POWER(x95,3)*POWER(x46,3) + 
     POWER(x95,3)*POWER(x47,3) + POWER(x95,3)*POWER(x48,3) + POWER(x95,3)*
     POWER(x49,3) + POWER(x95,3)*POWER(x50,3) + POWER(x95,3)*POWER(x51,3) + 
     POWER(x95,3)*POWER(x52,3) + POWER(x95,3)*POWER(x53,3) + POWER(x95,3)*
     POWER(x54,3) + POWER(x95,3)*POWER(x55,3) + POWER(x95,3)*POWER(x56,3) + 
     POWER(x95,3)*POWER(x57,3) + POWER(x95,3)*POWER(x58,3) + POWER(x95,3)*
     POWER(x59,3) + POWER(x95,3)*POWER(x60,3) + POWER(x95,3)*POWER(x61,3) + 
     POWER(x95,3)*POWER(x62,3) + POWER(x95,3)*POWER(x63,3) + POWER(x95,3)*
     POWER(x64,3) + POWER(x95,3)*POWER(x65,3) + POWER(x95,3)*POWER(x66,3) + 
     POWER(x95,3)*POWER(x67,3) + POWER(x95,3)*POWER(x68,3) + POWER(x95,3)*
     POWER(x69,3) + POWER(x95,3)*POWER(x70,3) + POWER(x95,3)*POWER(x71,3) + 
     POWER(x95,3)*POWER(x72,3) + POWER(x95,3)*POWER(x73,3) + POWER(x95,3)*
     POWER(x74,3) + POWER(x95,3)*POWER(x75,3) + POWER(x95,3)*POWER(x76,3) + 
     POWER(x95,3)*POWER(x77,3) + POWER(x95,3)*POWER(x78,3) + POWER(x95,3)*
     POWER(x79,3) + POWER(x95,3)*POWER(x80,3) + POWER(x95,3)*POWER(x81,3) + 
     POWER(x95,3)*POWER(x82,3) + POWER(x95,3)*POWER(x83,3) + POWER(x95,3)*
     POWER(x84,3) + POWER(x95,3)*POWER(x85,3) + POWER(x95,3)*POWER(x86,3) + 
     POWER(x95,3)*POWER(x87,3) + POWER(x95,3)*POWER(x88,3) + POWER(x95,3)*
     POWER(x89,3) + POWER(x95,3)*POWER(x90,3) + POWER(x95,3)*POWER(x91,3) + 
     POWER(x95,3)*POWER(x92,3) + POWER(x95,3)*POWER(x93,3) + POWER(x95,3)*
     POWER(x94,3) + POWER(x95,3)*POWER(x95,3) + POWER(x95,3)*POWER(x96,3) + 
     POWER(x95,3)*POWER(x97,3) + POWER(x95,3)*POWER(x98,3) + POWER(x95,3)*
     POWER(x99,3) + POWER(x95,3)*POWER(x100,3) + POWER(x96,3)*POWER(x1,3) + 
     POWER(x96,3)*POWER(x2,3) + POWER(x96,3)*POWER(x3,3) + POWER(x96,3)*POWER(
     x4,3) + POWER(x96,3)*POWER(x5,3) + POWER(x96,3)*POWER(x6,3) + POWER(x96,3)
     *POWER(x7,3) + POWER(x96,3)*POWER(x8,3) + POWER(x96,3)*POWER(x9,3) + 
     POWER(x96,3)*POWER(x10,3) + POWER(x96,3)*POWER(x11,3) + POWER(x96,3)*
     POWER(x12,3) + POWER(x96,3)*POWER(x13,3) + POWER(x96,3)*POWER(x14,3) + 
     POWER(x96,3)*POWER(x15,3) + POWER(x96,3)*POWER(x16,3) + POWER(x96,3)*
     POWER(x17,3) + POWER(x96,3)*POWER(x18,3) + POWER(x96,3)*POWER(x19,3) + 
     POWER(x96,3)*POWER(x20,3) + POWER(x96,3)*POWER(x21,3) + POWER(x96,3)*
     POWER(x22,3) + POWER(x96,3)*POWER(x23,3) + POWER(x96,3)*POWER(x24,3) + 
     POWER(x96,3)*POWER(x25,3) + POWER(x96,3)*POWER(x26,3) + POWER(x96,3)*
     POWER(x27,3) + POWER(x96,3)*POWER(x28,3) + POWER(x96,3)*POWER(x29,3) + 
     POWER(x96,3)*POWER(x30,3) + POWER(x96,3)*POWER(x31,3) + POWER(x96,3)*
     POWER(x32,3) + POWER(x96,3)*POWER(x33,3) + POWER(x96,3)*POWER(x34,3) + 
     POWER(x96,3)*POWER(x35,3) + POWER(x96,3)*POWER(x36,3) + POWER(x96,3)*
     POWER(x37,3) + POWER(x96,3)*POWER(x38,3) + POWER(x96,3)*POWER(x39,3) + 
     POWER(x96,3)*POWER(x40,3) + POWER(x96,3)*POWER(x41,3) + POWER(x96,3)*
     POWER(x42,3) + POWER(x96,3)*POWER(x43,3) + POWER(x96,3)*POWER(x44,3) + 
     POWER(x96,3)*POWER(x45,3) + POWER(x96,3)*POWER(x46,3) + POWER(x96,3)*
     POWER(x47,3) + POWER(x96,3)*POWER(x48,3) + POWER(x96,3)*POWER(x49,3) + 
     POWER(x96,3)*POWER(x50,3) + POWER(x96,3)*POWER(x51,3) + POWER(x96,3)*
     POWER(x52,3) + POWER(x96,3)*POWER(x53,3) + POWER(x96,3)*POWER(x54,3) + 
     POWER(x96,3)*POWER(x55,3) + POWER(x96,3)*POWER(x56,3) + POWER(x96,3)*
     POWER(x57,3) + POWER(x96,3)*POWER(x58,3) + POWER(x96,3)*POWER(x59,3) + 
     POWER(x96,3)*POWER(x60,3) + POWER(x96,3)*POWER(x61,3) + POWER(x96,3)*
     POWER(x62,3) + POWER(x96,3)*POWER(x63,3) + POWER(x96,3)*POWER(x64,3) + 
     POWER(x96,3)*POWER(x65,3) + POWER(x96,3)*POWER(x66,3) + POWER(x96,3)*
     POWER(x67,3) + POWER(x96,3)*POWER(x68,3) + POWER(x96,3)*POWER(x69,3) + 
     POWER(x96,3)*POWER(x70,3) + POWER(x96,3)*POWER(x71,3) + POWER(x96,3)*
     POWER(x72,3) + POWER(x96,3)*POWER(x73,3) + POWER(x96,3)*POWER(x74,3) + 
     POWER(x96,3)*POWER(x75,3) + POWER(x96,3)*POWER(x76,3) + POWER(x96,3)*
     POWER(x77,3) + POWER(x96,3)*POWER(x78,3) + POWER(x96,3)*POWER(x79,3) + 
     POWER(x96,3)*POWER(x80,3) + POWER(x96,3)*POWER(x81,3) + POWER(x96,3)*
     POWER(x82,3) + POWER(x96,3)*POWER(x83,3) + POWER(x96,3)*POWER(x84,3) + 
     POWER(x96,3)*POWER(x85,3) + POWER(x96,3)*POWER(x86,3) + POWER(x96,3)*
     POWER(x87,3) + POWER(x96,3)*POWER(x88,3) + POWER(x96,3)*POWER(x89,3) + 
     POWER(x96,3)*POWER(x90,3) + POWER(x96,3)*POWER(x91,3) + POWER(x96,3)*
     POWER(x92,3) + POWER(x96,3)*POWER(x93,3) + POWER(x96,3)*POWER(x94,3) + 
     POWER(x96,3)*POWER(x95,3) + POWER(x96,3)*POWER(x96,3) + POWER(x96,3)*
     POWER(x97,3) + POWER(x96,3)*POWER(x98,3) + POWER(x96,3)*POWER(x99,3) + 
     POWER(x96,3)*POWER(x100,3) + POWER(x97,3)*POWER(x1,3) + POWER(x97,3)*
     POWER(x2,3) + POWER(x97,3)*POWER(x3,3) + POWER(x97,3)*POWER(x4,3) + POWER(
     x97,3)*POWER(x5,3) + POWER(x97,3)*POWER(x6,3) + POWER(x97,3)*POWER(x7,3)
      + POWER(x97,3)*POWER(x8,3) + POWER(x97,3)*POWER(x9,3) + POWER(x97,3)*
     POWER(x10,3) + POWER(x97,3)*POWER(x11,3) + POWER(x97,3)*POWER(x12,3) + 
     POWER(x97,3)*POWER(x13,3) + POWER(x97,3)*POWER(x14,3) + POWER(x97,3)*
     POWER(x15,3) + POWER(x97,3)*POWER(x16,3) + POWER(x97,3)*POWER(x17,3) + 
     POWER(x97,3)*POWER(x18,3) + POWER(x97,3)*POWER(x19,3) + POWER(x97,3)*
     POWER(x20,3) + POWER(x97,3)*POWER(x21,3) + POWER(x97,3)*POWER(x22,3) + 
     POWER(x97,3)*POWER(x23,3) + POWER(x97,3)*POWER(x24,3) + POWER(x97,3)*
     POWER(x25,3) + POWER(x97,3)*POWER(x26,3) + POWER(x97,3)*POWER(x27,3) + 
     POWER(x97,3)*POWER(x28,3) + POWER(x97,3)*POWER(x29,3) + POWER(x97,3)*
     POWER(x30,3) + POWER(x97,3)*POWER(x31,3) + POWER(x97,3)*POWER(x32,3) + 
     POWER(x97,3)*POWER(x33,3) + POWER(x97,3)*POWER(x34,3) + POWER(x97,3)*
     POWER(x35,3) + POWER(x97,3)*POWER(x36,3) + POWER(x97,3)*POWER(x37,3) + 
     POWER(x97,3)*POWER(x38,3) + POWER(x97,3)*POWER(x39,3) + POWER(x97,3)*
     POWER(x40,3) + POWER(x97,3)*POWER(x41,3) + POWER(x97,3)*POWER(x42,3) + 
     POWER(x97,3)*POWER(x43,3) + POWER(x97,3)*POWER(x44,3) + POWER(x97,3)*
     POWER(x45,3) + POWER(x97,3)*POWER(x46,3) + POWER(x97,3)*POWER(x47,3) + 
     POWER(x97,3)*POWER(x48,3) + POWER(x97,3)*POWER(x49,3) + POWER(x97,3)*
     POWER(x50,3) + POWER(x97,3)*POWER(x51,3) + POWER(x97,3)*POWER(x52,3) + 
     POWER(x97,3)*POWER(x53,3) + POWER(x97,3)*POWER(x54,3) + POWER(x97,3)*
     POWER(x55,3) + POWER(x97,3)*POWER(x56,3) + POWER(x97,3)*POWER(x57,3) + 
     POWER(x97,3)*POWER(x58,3) + POWER(x97,3)*POWER(x59,3) + POWER(x97,3)*
     POWER(x60,3) + POWER(x97,3)*POWER(x61,3) + POWER(x97,3)*POWER(x62,3) + 
     POWER(x97,3)*POWER(x63,3) + POWER(x97,3)*POWER(x64,3) + POWER(x97,3)*
     POWER(x65,3) + POWER(x97,3)*POWER(x66,3) + POWER(x97,3)*POWER(x67,3) + 
     POWER(x97,3)*POWER(x68,3) + POWER(x97,3)*POWER(x69,3) + POWER(x97,3)*
     POWER(x70,3) + POWER(x97,3)*POWER(x71,3) + POWER(x97,3)*POWER(x72,3) + 
     POWER(x97,3)*POWER(x73,3) + POWER(x97,3)*POWER(x74,3) + POWER(x97,3)*
     POWER(x75,3) + POWER(x97,3)*POWER(x76,3) + POWER(x97,3)*POWER(x77,3) + 
     POWER(x97,3)*POWER(x78,3) + POWER(x97,3)*POWER(x79,3) + POWER(x97,3)*
     POWER(x80,3) + POWER(x97,3)*POWER(x81,3) + POWER(x97,3)*POWER(x82,3) + 
     POWER(x97,3)*POWER(x83,3) + POWER(x97,3)*POWER(x84,3) + POWER(x97,3)*
     POWER(x85,3) + POWER(x97,3)*POWER(x86,3) + POWER(x97,3)*POWER(x87,3) + 
     POWER(x97,3)*POWER(x88,3) + POWER(x97,3)*POWER(x89,3) + POWER(x97,3)*
     POWER(x90,3) + POWER(x97,3)*POWER(x91,3) + POWER(x97,3)*POWER(x92,3) + 
     POWER(x97,3)*POWER(x93,3) + POWER(x97,3)*POWER(x94,3) + POWER(x97,3)*
     POWER(x95,3) + POWER(x97,3)*POWER(x96,3) + POWER(x97,3)*POWER(x97,3) + 
     POWER(x97,3)*POWER(x98,3) + POWER(x97,3)*POWER(x99,3) + POWER(x97,3)*
     POWER(x100,3) + POWER(x98,3)*POWER(x1,3) + POWER(x98,3)*POWER(x2,3) + 
     POWER(x98,3)*POWER(x3,3) + POWER(x98,3)*POWER(x4,3) + POWER(x98,3)*POWER(
     x5,3) + POWER(x98,3)*POWER(x6,3) + POWER(x98,3)*POWER(x7,3) + POWER(x98,3)
     *POWER(x8,3) + POWER(x98,3)*POWER(x9,3) + POWER(x98,3)*POWER(x10,3) + 
     POWER(x98,3)*POWER(x11,3) + POWER(x98,3)*POWER(x12,3) + POWER(x98,3)*
     POWER(x13,3) + POWER(x98,3)*POWER(x14,3) + POWER(x98,3)*POWER(x15,3) + 
     POWER(x98,3)*POWER(x16,3) + POWER(x98,3)*POWER(x17,3) + POWER(x98,3)*
     POWER(x18,3) + POWER(x98,3)*POWER(x19,3) + POWER(x98,3)*POWER(x20,3) + 
     POWER(x98,3)*POWER(x21,3) + POWER(x98,3)*POWER(x22,3) + POWER(x98,3)*
     POWER(x23,3) + POWER(x98,3)*POWER(x24,3) + POWER(x98,3)*POWER(x25,3) + 
     POWER(x98,3)*POWER(x26,3) + POWER(x98,3)*POWER(x27,3) + POWER(x98,3)*
     POWER(x28,3) + POWER(x98,3)*POWER(x29,3) + POWER(x98,3)*POWER(x30,3) + 
     POWER(x98,3)*POWER(x31,3) + POWER(x98,3)*POWER(x32,3) + POWER(x98,3)*
     POWER(x33,3) + POWER(x98,3)*POWER(x34,3) + POWER(x98,3)*POWER(x35,3) + 
     POWER(x98,3)*POWER(x36,3) + POWER(x98,3)*POWER(x37,3) + POWER(x98,3)*
     POWER(x38,3) + POWER(x98,3)*POWER(x39,3) + POWER(x98,3)*POWER(x40,3) + 
     POWER(x98,3)*POWER(x41,3) + POWER(x98,3)*POWER(x42,3) + POWER(x98,3)*
     POWER(x43,3) + POWER(x98,3)*POWER(x44,3) + POWER(x98,3)*POWER(x45,3) + 
     POWER(x98,3)*POWER(x46,3) + POWER(x98,3)*POWER(x47,3) + POWER(x98,3)*
     POWER(x48,3) + POWER(x98,3)*POWER(x49,3) + POWER(x98,3)*POWER(x50,3) + 
     POWER(x98,3)*POWER(x51,3) + POWER(x98,3)*POWER(x52,3) + POWER(x98,3)*
     POWER(x53,3) + POWER(x98,3)*POWER(x54,3) + POWER(x98,3)*POWER(x55,3) + 
     POWER(x98,3)*POWER(x56,3) + POWER(x98,3)*POWER(x57,3) + POWER(x98,3)*
     POWER(x58,3) + POWER(x98,3)*POWER(x59,3) + POWER(x98,3)*POWER(x60,3) + 
     POWER(x98,3)*POWER(x61,3) + POWER(x98,3)*POWER(x62,3) + POWER(x98,3)*
     POWER(x63,3) + POWER(x98,3)*POWER(x64,3) + POWER(x98,3)*POWER(x65,3) + 
     POWER(x98,3)*POWER(x66,3) + POWER(x98,3)*POWER(x67,3) + POWER(x98,3)*
     POWER(x68,3) + POWER(x98,3)*POWER(x69,3) + POWER(x98,3)*POWER(x70,3) + 
     POWER(x98,3)*POWER(x71,3) + POWER(x98,3)*POWER(x72,3) + POWER(x98,3)*
     POWER(x73,3) + POWER(x98,3)*POWER(x74,3) + POWER(x98,3)*POWER(x75,3) + 
     POWER(x98,3)*POWER(x76,3) + POWER(x98,3)*POWER(x77,3) + POWER(x98,3)*
     POWER(x78,3) + POWER(x98,3)*POWER(x79,3) + POWER(x98,3)*POWER(x80,3) + 
     POWER(x98,3)*POWER(x81,3) + POWER(x98,3)*POWER(x82,3) + POWER(x98,3)*
     POWER(x83,3) + POWER(x98,3)*POWER(x84,3) + POWER(x98,3)*POWER(x85,3) + 
     POWER(x98,3)*POWER(x86,3) + POWER(x98,3)*POWER(x87,3) + POWER(x98,3)*
     POWER(x88,3) + POWER(x98,3)*POWER(x89,3) + POWER(x98,3)*POWER(x90,3) + 
     POWER(x98,3)*POWER(x91,3) + POWER(x98,3)*POWER(x92,3) + POWER(x98,3)*
     POWER(x93,3) + POWER(x98,3)*POWER(x94,3) + POWER(x98,3)*POWER(x95,3) + 
     POWER(x98,3)*POWER(x96,3) + POWER(x98,3)*POWER(x97,3) + POWER(x98,3)*
     POWER(x98,3) + POWER(x98,3)*POWER(x99,3) + POWER(x98,3)*POWER(x100,3) + 
     POWER(x99,3)*POWER(x1,3) + POWER(x99,3)*POWER(x2,3) + POWER(x99,3)*POWER(
     x3,3) + POWER(x99,3)*POWER(x4,3) + POWER(x99,3)*POWER(x5,3) + POWER(x99,3)
     *POWER(x6,3) + POWER(x99,3)*POWER(x7,3) + POWER(x99,3)*POWER(x8,3) + 
     POWER(x99,3)*POWER(x9,3) + POWER(x99,3)*POWER(x10,3) + POWER(x99,3)*POWER(
     x11,3) + POWER(x99,3)*POWER(x12,3) + POWER(x99,3)*POWER(x13,3) + POWER(x99
     ,3)*POWER(x14,3) + POWER(x99,3)*POWER(x15,3) + POWER(x99,3)*POWER(x16,3)
      + POWER(x99,3)*POWER(x17,3) + POWER(x99,3)*POWER(x18,3) + POWER(x99,3)*
     POWER(x19,3) + POWER(x99,3)*POWER(x20,3) + POWER(x99,3)*POWER(x21,3) + 
     POWER(x99,3)*POWER(x22,3) + POWER(x99,3)*POWER(x23,3) + POWER(x99,3)*
     POWER(x24,3) + POWER(x99,3)*POWER(x25,3) + POWER(x99,3)*POWER(x26,3) + 
     POWER(x99,3)*POWER(x27,3) + POWER(x99,3)*POWER(x28,3) + POWER(x99,3)*
     POWER(x29,3) + POWER(x99,3)*POWER(x30,3) + POWER(x99,3)*POWER(x31,3) + 
     POWER(x99,3)*POWER(x32,3) + POWER(x99,3)*POWER(x33,3) + POWER(x99,3)*
     POWER(x34,3) + POWER(x99,3)*POWER(x35,3) + POWER(x99,3)*POWER(x36,3) + 
     POWER(x99,3)*POWER(x37,3) + POWER(x99,3)*POWER(x38,3) + POWER(x99,3)*
     POWER(x39,3) + POWER(x99,3)*POWER(x40,3) + POWER(x99,3)*POWER(x41,3) + 
     POWER(x99,3)*POWER(x42,3) + POWER(x99,3)*POWER(x43,3) + POWER(x99,3)*
     POWER(x44,3) + POWER(x99,3)*POWER(x45,3) + POWER(x99,3)*POWER(x46,3) + 
     POWER(x99,3)*POWER(x47,3) + POWER(x99,3)*POWER(x48,3) + POWER(x99,3)*
     POWER(x49,3) + POWER(x99,3)*POWER(x50,3) + POWER(x99,3)*POWER(x51,3) + 
     POWER(x99,3)*POWER(x52,3) + POWER(x99,3)*POWER(x53,3) + POWER(x99,3)*
     POWER(x54,3) + POWER(x99,3)*POWER(x55,3) + POWER(x99,3)*POWER(x56,3) + 
     POWER(x99,3)*POWER(x57,3) + POWER(x99,3)*POWER(x58,3) + POWER(x99,3)*
     POWER(x59,3) + POWER(x99,3)*POWER(x60,3) + POWER(x99,3)*POWER(x61,3) + 
     POWER(x99,3)*POWER(x62,3) + POWER(x99,3)*POWER(x63,3) + POWER(x99,3)*
     POWER(x64,3) + POWER(x99,3)*POWER(x65,3) + POWER(x99,3)*POWER(x66,3) + 
     POWER(x99,3)*POWER(x67,3) + POWER(x99,3)*POWER(x68,3) + POWER(x99,3)*
     POWER(x69,3) + POWER(x99,3)*POWER(x70,3) + POWER(x99,3)*POWER(x71,3) + 
     POWER(x99,3)*POWER(x72,3) + POWER(x99,3)*POWER(x73,3) + POWER(x99,3)*
     POWER(x74,3) + POWER(x99,3)*POWER(x75,3) + POWER(x99,3)*POWER(x76,3) + 
     POWER(x99,3)*POWER(x77,3) + POWER(x99,3)*POWER(x78,3) + POWER(x99,3)*
     POWER(x79,3) + POWER(x99,3)*POWER(x80,3) + POWER(x99,3)*POWER(x81,3) + 
     POWER(x99,3)*POWER(x82,3) + POWER(x99,3)*POWER(x83,3) + POWER(x99,3)*
     POWER(x84,3) + POWER(x99,3)*POWER(x85,3) + POWER(x99,3)*POWER(x86,3) + 
     POWER(x99,3)*POWER(x87,3) + POWER(x99,3)*POWER(x88,3) + POWER(x99,3)*
     POWER(x89,3) + POWER(x99,3)*POWER(x90,3) + POWER(x99,3)*POWER(x91,3) + 
     POWER(x99,3)*POWER(x92,3) + POWER(x99,3)*POWER(x93,3) + POWER(x99,3)*
     POWER(x94,3) + POWER(x99,3)*POWER(x95,3) + POWER(x99,3)*POWER(x96,3) + 
     POWER(x99,3)*POWER(x97,3) + POWER(x99,3)*POWER(x98,3) + POWER(x99,3)*
     POWER(x99,3) + POWER(x99,3)*POWER(x100,3) + POWER(x100,3)*POWER(x1,3) + 
     POWER(x100,3)*POWER(x2,3) + POWER(x100,3)*POWER(x3,3) + POWER(x100,3)*
     POWER(x4,3) + POWER(x100,3)*POWER(x5,3) + POWER(x100,3)*POWER(x6,3) + 
     POWER(x100,3)*POWER(x7,3) + POWER(x100,3)*POWER(x8,3) + POWER(x100,3)*
     POWER(x9,3) + POWER(x100,3)*POWER(x10,3) + POWER(x100,3)*POWER(x11,3) + 
     POWER(x100,3)*POWER(x12,3) + POWER(x100,3)*POWER(x13,3) + POWER(x100,3)*
     POWER(x14,3) + POWER(x100,3)*POWER(x15,3) + POWER(x100,3)*POWER(x16,3) + 
     POWER(x100,3)*POWER(x17,3) + POWER(x100,3)*POWER(x18,3) + POWER(x100,3)*
     POWER(x19,3) + POWER(x100,3)*POWER(x20,3) + POWER(x100,3)*POWER(x21,3) + 
     POWER(x100,3)*POWER(x22,3) + POWER(x100,3)*POWER(x23,3) + POWER(x100,3)*
     POWER(x24,3) + POWER(x100,3)*POWER(x25,3) + POWER(x100,3)*POWER(x26,3) + 
     POWER(x100,3)*POWER(x27,3) + POWER(x100,3)*POWER(x28,3) + POWER(x100,3)*
     POWER(x29,3) + POWER(x100,3)*POWER(x30,3) + POWER(x100,3)*POWER(x31,3) + 
     POWER(x100,3)*POWER(x32,3) + POWER(x100,3)*POWER(x33,3) + POWER(x100,3)*
     POWER(x34,3) + POWER(x100,3)*POWER(x35,3) + POWER(x100,3)*POWER(x36,3) + 
     POWER(x100,3)*POWER(x37,3) + POWER(x100,3)*POWER(x38,3) + POWER(x100,3)*
     POWER(x39,3) + POWER(x100,3)*POWER(x40,3) + POWER(x100,3)*POWER(x41,3) + 
     POWER(x100,3)*POWER(x42,3) + POWER(x100,3)*POWER(x43,3) + POWER(x100,3)*
     POWER(x44,3) + POWER(x100,3)*POWER(x45,3) + POWER(x100,3)*POWER(x46,3) + 
     POWER(x100,3)*POWER(x47,3) + POWER(x100,3)*POWER(x48,3) + POWER(x100,3)*
     POWER(x49,3) + POWER(x100,3)*POWER(x50,3) + POWER(x100,3)*POWER(x51,3) + 
     POWER(x100,3)*POWER(x52,3) + POWER(x100,3)*POWER(x53,3) + POWER(x100,3)*
     POWER(x54,3) + POWER(x100,3)*POWER(x55,3) + POWER(x100,3)*POWER(x56,3) + 
     POWER(x100,3)*POWER(x57,3) + POWER(x100,3)*POWER(x58,3) + POWER(x100,3)*
     POWER(x59,3) + POWER(x100,3)*POWER(x60,3) + POWER(x100,3)*POWER(x61,3) + 
     POWER(x100,3)*POWER(x62,3) + POWER(x100,3)*POWER(x63,3) + POWER(x100,3)*
     POWER(x64,3) + POWER(x100,3)*POWER(x65,3) + POWER(x100,3)*POWER(x66,3) + 
     POWER(x100,3)*POWER(x67,3) + POWER(x100,3)*POWER(x68,3) + POWER(x100,3)*
     POWER(x69,3) + POWER(x100,3)*POWER(x70,3) + POWER(x100,3)*POWER(x71,3) + 
     POWER(x100,3)*POWER(x72,3) + POWER(x100,3)*POWER(x73,3) + POWER(x100,3)*
     POWER(x74,3) + POWER(x100,3)*POWER(x75,3) + POWER(x100,3)*POWER(x76,3) + 
     POWER(x100,3)*POWER(x77,3) + POWER(x100,3)*POWER(x78,3) + POWER(x100,3)*
     POWER(x79,3) + POWER(x100,3)*POWER(x80,3) + POWER(x100,3)*POWER(x81,3) + 
     POWER(x100,3)*POWER(x82,3) + POWER(x100,3)*POWER(x83,3) + POWER(x100,3)*
     POWER(x84,3) + POWER(x100,3)*POWER(x85,3) + POWER(x100,3)*POWER(x86,3) + 
     POWER(x100,3)*POWER(x87,3) + POWER(x100,3)*POWER(x88,3) + POWER(x100,3)*
     POWER(x89,3) + POWER(x100,3)*POWER(x90,3) + POWER(x100,3)*POWER(x91,3) + 
     POWER(x100,3)*POWER(x92,3) + POWER(x100,3)*POWER(x93,3) + POWER(x100,3)*
     POWER(x94,3) + POWER(x100,3)*POWER(x95,3) + POWER(x100,3)*POWER(x96,3) + 
     POWER(x100,3)*POWER(x97,3) + POWER(x100,3)*POWER(x98,3) + POWER(x100,3)*
     POWER(x99,3) + POWER(x100,3)*POWER(x100,3)) + objvar =E= 0;

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
x25.up = 1; 
x26.up = 1; 
x27.up = 1; 
x28.up = 1; 
x29.up = 1; 
x30.up = 1; 
x31.up = 1; 
x32.up = 1; 
x33.up = 1; 
x34.up = 1; 
x35.up = 1; 
x36.up = 1; 
x37.up = 1; 
x38.up = 1; 
x39.up = 1; 
x40.up = 1; 
x41.up = 1; 
x42.up = 1; 
x43.up = 1; 
x44.up = 1; 
x45.up = 1; 
x46.up = 1; 
x47.up = 1; 
x48.up = 1; 
x49.up = 1; 
x50.up = 1; 
x51.up = 1; 
x52.up = 1; 
x53.up = 1; 
x54.up = 1; 
x55.up = 1; 
x56.up = 1; 
x57.up = 1; 
x58.up = 1; 
x59.up = 1; 
x60.up = 1; 
x61.up = 1; 
x62.up = 1; 
x63.up = 1; 
x64.up = 1; 
x65.up = 1; 
x66.up = 1; 
x67.up = 1; 
x68.up = 1; 
x69.up = 1; 
x70.up = 1; 
x71.up = 1; 
x72.up = 1; 
x73.up = 1; 
x74.up = 1; 
x75.up = 1; 
x76.up = 1; 
x77.up = 1; 
x78.up = 1; 
x79.up = 1; 
x80.up = 1; 
x81.up = 1; 
x82.up = 1; 
x83.up = 1; 
x84.up = 1; 
x85.up = 1; 
x86.up = 1; 
x87.up = 1; 
x88.up = 1; 
x89.up = 1; 
x90.up = 1; 
x91.up = 1; 
x92.up = 1; 
x93.up = 1; 
x94.up = 1; 
x95.up = 1; 
x96.up = 1; 
x97.up = 1; 
x98.up = 1; 
x99.up = 1; 
x100.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
