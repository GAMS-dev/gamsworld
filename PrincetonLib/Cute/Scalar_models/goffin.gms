*  NLP written by GAMS Convert at 10/06/06 11:32:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         51        1       50        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         52       52        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       2552     2552        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51;


e1..  - 49*x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e2..    x1 - 49*x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e3..    x1 + x2 - 49*x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e4..    x1 + x2 + x3 - 49*x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e5..    x1 + x2 + x3 + x4 - 49*x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e6..    x1 + x2 + x3 + x4 + x5 - 49*x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e7..    x1 + x2 + x3 + x4 + x5 + x6 - 49*x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e8..    x1 + x2 + x3 + x4 + x5 + x6 + x7 - 49*x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e9..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 - 49*x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 =G= 0;

e10..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 - 49*x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
       + x50 + x51 =G= 0;

e11..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 - 49*x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
       + x50 + x51 =G= 0;

e12..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 - 49*x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
       + x50 + x51 =G= 0;

e13..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 - 49*x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
       + x50 + x51 =G= 0;

e14..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       - 49*x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e15..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 - 49*x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e16..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 - 49*x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e17..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 - 49*x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e18..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 - 49*x18 + x19 + x20 + x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e19..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 - 49*x19 + x20 + x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e20..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 - 49*x20 + x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e21..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 - 49*x21 + x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e22..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 - 49*x22 + x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e23..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 - 49*x23 + x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e24..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 - 49*x24
       + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e25..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
       - 49*x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35
       + x36 + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47
       + x48 + x49 + x50 + x51 =G= 0;

e26..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       - 49*x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e27..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 - 49*x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e28..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 - 49*x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e29..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 - 49*x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e30..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 - 49*x30 + x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e31..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 - 49*x31 + x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e32..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 - 49*x32 + x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e33..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 - 49*x33 + x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e34..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 - 49*x34 + x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e35..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 - 49*x35 + x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e36..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 - 49*x36
       + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e37..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
       - 49*x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47
       + x48 + x49 + x50 + x51 =G= 0;

e38..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       - 49*x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e39..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 - 49*x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e40..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 - 49*x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e41..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 - 49*x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e42..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 - 49*x42 + x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e43..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 - 49*x43 + x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e44..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 - 49*x44 + x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e45..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 - 49*x45 + x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e46..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 - 49*x46 + x47 + x48
       + x49 + x50 + x51 =G= 0;

e47..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 - 49*x47 + x48
       + x49 + x50 + x51 =G= 0;

e48..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 - 49*x48
       + x49 + x50 + x51 =G= 0;

e49..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
       - 49*x49 + x50 + x51 =G= 0;

e50..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
       - 49*x50 + x51 =G= 0;

e51..  - x51 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -24.5; 
x2.l = -23.5; 
x3.l = -22.5; 
x4.l = -21.5; 
x5.l = -20.5; 
x6.l = -19.5; 
x7.l = -18.5; 
x8.l = -17.5; 
x9.l = -16.5; 
x10.l = -15.5; 
x11.l = -14.5; 
x12.l = -13.5; 
x13.l = -12.5; 
x14.l = -11.5; 
x15.l = -10.5; 
x16.l = -9.5; 
x17.l = -8.5; 
x18.l = -7.5; 
x19.l = -6.5; 
x20.l = -5.5; 
x21.l = -4.5; 
x22.l = -3.5; 
x23.l = -2.5; 
x24.l = -1.5; 
x25.l = -0.5; 
x26.l = 0.5; 
x27.l = 1.5; 
x28.l = 2.5; 
x29.l = 3.5; 
x30.l = 4.5; 
x31.l = 5.5; 
x32.l = 6.5; 
x33.l = 7.5; 
x34.l = 8.5; 
x35.l = 9.5; 
x36.l = 10.5; 
x37.l = 11.5; 
x38.l = 12.5; 
x39.l = 13.5; 
x40.l = 14.5; 
x41.l = 15.5; 
x42.l = 16.5; 
x43.l = 17.5; 
x44.l = 18.5; 
x45.l = 19.5; 
x46.l = 20.5; 
x47.l = 21.5; 
x48.l = 22.5; 
x49.l = 23.5; 
x50.l = 24.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
