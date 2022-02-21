*  MIP written by GAMS Convert at 10/23/07 22:15:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        117        1      116        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         50        1       49        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        282      282        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117;


e1..    b1 + b2 =G= 1;

e2..    b1 + b3 =G= 1;

e3..    b1 + b2 =G= 1;

e4..    b2 + b39 =G= 1;

e5..    b2 + b41 =G= 1;

e6..    b1 + b3 =G= 1;

e7..    b3 + b4 =G= 1;

e8..    b3 + b11 =G= 1;

e9..    b3 + b12 =G= 1;

e10..    b3 + b16 =G= 1;

e11..    b3 + b4 =G= 1;

e12..    b4 + b5 =G= 1;

e13..    b4 + b6 =G= 1;

e14..    b4 + b9 =G= 1;

e15..    b4 + b5 =G= 1;

e16..    b4 + b6 =G= 1;

e17..    b6 + b7 =G= 1;

e18..    b6 + b8 =G= 1;

e19..    b6 + b7 =G= 1;

e20..    b6 + b8 =G= 1;

e21..    b4 + b9 =G= 1;

e22..    b9 + b10 =G= 1;

e23..    b9 + b10 =G= 1;

e24..    b3 + b11 =G= 1;

e25..    b11 + b21 =G= 1;

e26..    b3 + b12 =G= 1;

e27..    b12 + b13 =G= 1;

e28..    b12 + b15 =G= 1;

e29..    b12 + b13 =G= 1;

e30..    b13 + b14 =G= 1;

e31..    b13 + b14 =G= 1;

e32..    b14 + b15 =G= 1;

e33..    b14 + b18 =G= 1;

e34..    b12 + b15 =G= 1;

e35..    b14 + b15 =G= 1;

e36..    b15 + b16 =G= 1;

e37..    b15 + b19 =G= 1;

e38..    b3 + b16 =G= 1;

e39..    b15 + b16 =G= 1;

e40..    b16 + b20 =G= 1;

e41..    b17 + b18 =G= 1;

e42..    b14 + b18 =G= 1;

e43..    b17 + b18 =G= 1;

e44..    b18 + b19 =G= 1;

e45..    b15 + b19 =G= 1;

e46..    b18 + b19 =G= 1;

e47..    b19 + b20 =G= 1;

e48..    b16 + b20 =G= 1;

e49..    b19 + b20 =G= 1;

e50..    b20 + b21 =G= 1;

e51..    b11 + b21 =G= 1;

e52..    b20 + b21 =G= 1;

e53..    b21 + b22 =G= 1;

e54..    b21 + b22 =G= 1;

e55..    b22 + b23 =G= 1;

e56..    b22 + b25 =G= 1;

e57..    b22 + b23 =G= 1;

e58..    b23 + b32 =G= 1;

e59..    b24 + b25 =G= 1;

e60..    b22 + b25 =G= 1;

e61..    b24 + b25 =G= 1;

e62..    b25 + b26 =G= 1;

e63..    b25 + b30 =G= 1;

e64..    b25 + b26 =G= 1;

e65..    b26 + b27 =G= 1;

e66..    b26 + b28 =G= 1;

e67..    b26 + b27 =G= 1;

e68..    b26 + b28 =G= 1;

e69..    b28 + b29 =G= 1;

e70..    b28 + b29 =G= 1;

e71..    b25 + b30 =G= 1;

e72..    b30 + b31 =G= 1;

e73..    b30 + b31 =G= 1;

e74..    b31 + b32 =G= 1;

e75..    b31 + b33 =G= 1;

e76..    b23 + b32 =G= 1;

e77..    b31 + b32 =G= 1;

e78..    b32 + b38 =G= 1;

e79..    b32 + b39 =G= 1;

e80..    b31 + b33 =G= 1;

e81..    b33 + b34 =G= 1;

e82..    b33 + b37 =G= 1;

e83..    b33 + b34 =G= 1;

e84..    b34 + b35 =G= 1;

e85..    b34 + b35 =G= 1;

e86..    b35 + b36 =G= 1;

e87..    b35 + b36 =G= 1;

e88..    b33 + b37 =G= 1;

e89..    b37 + b38 =G= 1;

e90..    b37 + b43 =G= 1;

e91..    b32 + b38 =G= 1;

e92..    b37 + b38 =G= 1;

e93..    b38 + b40 =G= 1;

e94..    b2 + b39 =G= 1;

e95..    b32 + b39 =G= 1;

e96..    b39 + b40 =G= 1;

e97..    b38 + b40 =G= 1;

e98..    b39 + b40 =G= 1;

e99..    b40 + b41 =G= 1;

e100..    b2 + b41 =G= 1;

e101..    b40 + b41 =G= 1;

e102..    b41 + b42 =G= 1;

e103..    b41 + b42 =G= 1;

e104..    b37 + b43 =G= 1;

e105..    b43 + b44 =G= 1;

e106..    b43 + b44 =G= 1;

e107..    b44 + b45 =G= 1;

e108..    b44 + b49 =G= 1;

e109..    b44 + b45 =G= 1;

e110..    b45 + b46 =G= 1;

e111..    b45 + b47 =G= 1;

e112..    b45 + b46 =G= 1;

e113..    b45 + b47 =G= 1;

e114..    b47 + b48 =G= 1;

e115..    b47 + b48 =G= 1;

e116..    b44 + b49 =G= 1;

e117..  - b1 - b2 - b3 - b4 - b5 - b6 - b7 - b8 - b9 - b10 - b11 - b12 - b13
        - b14 - b15 - b16 - b17 - b18 - b19 - b20 - b21 - b22 - b23 - b24 - b25
        - b26 - b27 - b28 - b29 - b30 - b31 - b32 - b33 - b34 - b35 - b36 - b37
        - b38 - b39 - b40 - b41 - b42 - b43 - b44 - b45 - b46 - b47 - b48 - b49
        + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
