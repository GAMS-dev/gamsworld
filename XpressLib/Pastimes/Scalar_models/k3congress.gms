*  MIP written by GAMS Convert at 10/31/07 21:24:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         26       26        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        126        1      125        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        459      459        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114,b115,b116
          ,b117,b118,b119,b120,b121,b122,b123,b124,b125,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51
          ,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68
          ,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85
          ,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101
          ,b102,b103,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114
          ,b115,b116,b117,b118,b119,b120,b121,b122,b123,b124,b125;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13
      + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 + b25
      =E= 1;

e2..    b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36 + b37
      + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49
      + b50 =E= 1;

e3..    b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 + b61 + b62
      + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74
      + b75 =E= 1;

e4..    b76 + b77 + b78 + b79 + b80 + b81 + b82 + b83 + b84 + b85 + b86 + b87
      + b88 + b89 + b90 + b91 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99
      + b100 =E= 1;

e5..    b101 + b102 + b103 + b104 + b105 + b106 + b107 + b108 + b109 + b110
      + b111 + b112 + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120
      + b121 + b122 + b123 + b124 + b125 =E= 1;

e6..    b1 + b2 + b3 + b4 + b5 + b26 + b27 + b28 + b29 + b30 + b51 + b52 + b53
      + b54 + b55 + b76 + b77 + b78 + b79 + b80 + b101 + b102 + b103 + b104
      + b105 =E= 1;

e7..    b6 + b7 + b8 + b9 + b10 + b31 + b32 + b33 + b34 + b35 + b56 + b57 + b58
      + b59 + b60 + b81 + b82 + b83 + b84 + b85 + b106 + b107 + b108 + b109
      + b110 =E= 1;

e8..    b11 + b12 + b13 + b14 + b15 + b36 + b37 + b38 + b39 + b40 + b61 + b62
      + b63 + b64 + b65 + b86 + b87 + b88 + b89 + b90 + b111 + b112 + b113
      + b114 + b115 =E= 1;

e9..    b16 + b17 + b18 + b19 + b20 + b41 + b42 + b43 + b44 + b45 + b66 + b67
      + b68 + b69 + b70 + b91 + b92 + b93 + b94 + b95 + b116 + b117 + b118
      + b119 + b120 =E= 1;

e10..    b21 + b22 + b23 + b24 + b25 + b46 + b47 + b48 + b49 + b50 + b71 + b72
       + b73 + b74 + b75 + b96 + b97 + b98 + b99 + b100 + b121 + b122 + b123
       + b124 + b125 =E= 1;

e11..    b1 + b6 + b11 + b16 + b21 + b26 + b31 + b36 + b41 + b46 + b51 + b56
       + b61 + b66 + b71 + b76 + b81 + b86 + b91 + b96 + b101 + b106 + b111
       + b116 + b121 =E= 1;

e12..    b2 + b7 + b12 + b17 + b22 + b27 + b32 + b37 + b42 + b47 + b52 + b57
       + b62 + b67 + b72 + b77 + b82 + b87 + b92 + b97 + b102 + b107 + b112
       + b117 + b122 =E= 1;

e13..    b3 + b8 + b13 + b18 + b23 + b28 + b33 + b38 + b43 + b48 + b53 + b58
       + b63 + b68 + b73 + b78 + b83 + b88 + b93 + b98 + b103 + b108 + b113
       + b118 + b123 =E= 1;

e14..    b4 + b9 + b14 + b19 + b24 + b29 + b34 + b39 + b44 + b49 + b54 + b59
       + b64 + b69 + b74 + b79 + b84 + b89 + b94 + b99 + b104 + b109 + b114
       + b119 + b124 =E= 1;

e15..    b5 + b10 + b15 + b20 + b25 + b30 + b35 + b40 + b45 + b50 + b55 + b60
       + b65 + b70 + b75 + b80 + b85 + b90 + b95 + b100 + b105 + b110 + b115
       + b120 + b125 =E= 1;

e16..    b76 + b77 + b78 + b79 + b80 =E= 0;

e17..    b31 + b32 + b33 =E= 1;

e18..    b3 + b8 + b13 + b18 + b23 =E= 1;

e19..    b61 + b62 + b63 + b64 + b65 + b86 + b87 + b88 + b89 + b90 =E= 0;

e20..    b12 + b37 + b62 + b87 + b112 =E= 1;

e21..    b78 + b79 + b80 + b83 + b84 + b85 + b88 + b89 + b90 + b93 + b94 + b95
       + b98 + b99 + b100 =E= 1;

e22..    b51 + b55 + b56 + b60 + b61 + b65 + b66 + b70 + b71 + b75 =E= 0;

e23..    b24 + b25 + b49 + b50 + b74 + b75 + b99 + b100 + b124 + b125 =E= 0;

e24..    b16 + b17 + b41 + b42 + b66 + b67 + b91 + b92 + b116 + b117 =E= 0;

e25..    b66 + b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74 + b75 =E= 0;

e26..    objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
