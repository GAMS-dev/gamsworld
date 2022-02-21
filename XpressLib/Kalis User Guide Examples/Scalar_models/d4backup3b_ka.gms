*  MIP written by GAMS Convert at 10/17/08 03:00:57
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        102       17       80        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         81        1       80        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        400      400        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51
          ,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68
          ,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102;


e1..    46*b1 + 55*b6 + 62*b11 + 87*b16 + 108*b21 + 114*b26 + 137*b31 + 164*b36
      + 253*b41 + 364*b46 + 372*b51 + 388*b56 + 406*b61 + 432*b66 + 461*b71
      + 851*b76 =L= 1440;

e2..    46*b2 + 55*b7 + 62*b12 + 87*b17 + 108*b22 + 114*b27 + 137*b32 + 164*b37
      + 253*b42 + 364*b47 + 372*b52 + 388*b57 + 406*b62 + 432*b67 + 461*b72
      + 851*b77 =L= 1440;

e3..    46*b3 + 55*b8 + 62*b13 + 87*b18 + 108*b23 + 114*b28 + 137*b33 + 164*b38
      + 253*b43 + 364*b48 + 372*b53 + 388*b58 + 406*b63 + 432*b68 + 461*b73
      + 851*b78 =L= 1440;

e4..    46*b4 + 55*b9 + 62*b14 + 87*b19 + 108*b24 + 114*b29 + 137*b34 + 164*b39
      + 253*b44 + 364*b49 + 372*b54 + 388*b59 + 406*b64 + 432*b69 + 461*b74
      + 851*b79 =L= 1440;

e5..    46*b5 + 55*b10 + 62*b15 + 87*b20 + 108*b25 + 114*b30 + 137*b35
      + 164*b40 + 253*b45 + 364*b50 + 372*b55 + 388*b60 + 406*b65 + 432*b70
      + 461*b75 + 851*b80 =L= 1440;

e6..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13
      + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 + b25
      + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36 + b37
      + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49
      + b50 + b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 + b61
      + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71 + b72 + b73
      + b74 + b75 + b76 + b77 + b78 + b79 + b80 =E= 16;

e7..    b1 + b2 + b3 + b4 + b5 =E= 1;

e8..    b6 + b7 + b8 + b9 + b10 =E= 1;

e9..    b11 + b12 + b13 + b14 + b15 =E= 1;

e10..    b16 + b17 + b18 + b19 + b20 =E= 1;

e11..    b21 + b22 + b23 + b24 + b25 =E= 1;

e12..    b26 + b27 + b28 + b29 + b30 =E= 1;

e13..    b31 + b32 + b33 + b34 + b35 =E= 1;

e14..    b36 + b37 + b38 + b39 + b40 =E= 1;

e15..    b41 + b42 + b43 + b44 + b45 =E= 1;

e16..    b46 + b47 + b48 + b49 + b50 =E= 1;

e17..    b51 + b52 + b53 + b54 + b55 =E= 1;

e18..    b56 + b57 + b58 + b59 + b60 =E= 1;

e19..    b61 + b62 + b63 + b64 + b65 =E= 1;

e20..    b66 + b67 + b68 + b69 + b70 =E= 1;

e21..    b71 + b72 + b73 + b74 + b75 =E= 1;

e22..    b76 + b77 + b78 + b79 + b80 =E= 1;

e23..  - b1 + objvar =G= 0;

e24..  - 2*b2 + objvar =G= 0;

e25..  - 3*b3 + objvar =G= 0;

e26..  - 4*b4 + objvar =G= 0;

e27..  - 5*b5 + objvar =G= 0;

e28..  - b6 + objvar =G= 0;

e29..  - 2*b7 + objvar =G= 0;

e30..  - 3*b8 + objvar =G= 0;

e31..  - 4*b9 + objvar =G= 0;

e32..  - 5*b10 + objvar =G= 0;

e33..  - b11 + objvar =G= 0;

e34..  - 2*b12 + objvar =G= 0;

e35..  - 3*b13 + objvar =G= 0;

e36..  - 4*b14 + objvar =G= 0;

e37..  - 5*b15 + objvar =G= 0;

e38..  - b16 + objvar =G= 0;

e39..  - 2*b17 + objvar =G= 0;

e40..  - 3*b18 + objvar =G= 0;

e41..  - 4*b19 + objvar =G= 0;

e42..  - 5*b20 + objvar =G= 0;

e43..  - b21 + objvar =G= 0;

e44..  - 2*b22 + objvar =G= 0;

e45..  - 3*b23 + objvar =G= 0;

e46..  - 4*b24 + objvar =G= 0;

e47..  - 5*b25 + objvar =G= 0;

e48..  - b26 + objvar =G= 0;

e49..  - 2*b27 + objvar =G= 0;

e50..  - 3*b28 + objvar =G= 0;

e51..  - 4*b29 + objvar =G= 0;

e52..  - 5*b30 + objvar =G= 0;

e53..  - b31 + objvar =G= 0;

e54..  - 2*b32 + objvar =G= 0;

e55..  - 3*b33 + objvar =G= 0;

e56..  - 4*b34 + objvar =G= 0;

e57..  - 5*b35 + objvar =G= 0;

e58..  - b36 + objvar =G= 0;

e59..  - 2*b37 + objvar =G= 0;

e60..  - 3*b38 + objvar =G= 0;

e61..  - 4*b39 + objvar =G= 0;

e62..  - 5*b40 + objvar =G= 0;

e63..  - b41 + objvar =G= 0;

e64..  - 2*b42 + objvar =G= 0;

e65..  - 3*b43 + objvar =G= 0;

e66..  - 4*b44 + objvar =G= 0;

e67..  - 5*b45 + objvar =G= 0;

e68..  - b46 + objvar =G= 0;

e69..  - 2*b47 + objvar =G= 0;

e70..  - 3*b48 + objvar =G= 0;

e71..  - 4*b49 + objvar =G= 0;

e72..  - 5*b50 + objvar =G= 0;

e73..  - b51 + objvar =G= 0;

e74..  - 2*b52 + objvar =G= 0;

e75..  - 3*b53 + objvar =G= 0;

e76..  - 4*b54 + objvar =G= 0;

e77..  - 5*b55 + objvar =G= 0;

e78..  - b56 + objvar =G= 0;

e79..  - 2*b57 + objvar =G= 0;

e80..  - 3*b58 + objvar =G= 0;

e81..  - 4*b59 + objvar =G= 0;

e82..  - 5*b60 + objvar =G= 0;

e83..  - b61 + objvar =G= 0;

e84..  - 2*b62 + objvar =G= 0;

e85..  - 3*b63 + objvar =G= 0;

e86..  - 4*b64 + objvar =G= 0;

e87..  - 5*b65 + objvar =G= 0;

e88..  - b66 + objvar =G= 0;

e89..  - 2*b67 + objvar =G= 0;

e90..  - 3*b68 + objvar =G= 0;

e91..  - 4*b69 + objvar =G= 0;

e92..  - 5*b70 + objvar =G= 0;

e93..  - b71 + objvar =G= 0;

e94..  - 2*b72 + objvar =G= 0;

e95..  - 3*b73 + objvar =G= 0;

e96..  - 4*b74 + objvar =G= 0;

e97..  - 5*b75 + objvar =G= 0;

e98..  - b76 + objvar =G= 0;

e99..  - 2*b77 + objvar =G= 0;

e100..  - 3*b78 + objvar =G= 0;

e101..  - 4*b79 + objvar =G= 0;

e102..  - 5*b80 + objvar =G= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
