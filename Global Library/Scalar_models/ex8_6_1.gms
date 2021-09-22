*  NLP written by GAMS Convert at 07/19/01 13:40:15
*  
*  Equation counts
*     Total       E       G       L       N       X
*        46      46       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        76      76       0       0       0       0       0       0
*  FX     6       6       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       361      46     315       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,objvar;

Positive Variables x1,x11,x12,x21,x22,x23;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46;


e1..  - (POWER(x31,6) - 2*POWER(x31,3) + POWER(x32,6) - 2*POWER(x32,3) + POWER(
     x33,6) - 2*POWER(x33,3) + POWER(x34,6) - 2*POWER(x34,3) + POWER(x35,6) - 2
     *POWER(x35,3) + POWER(x36,6) - 2*POWER(x36,3) + POWER(x37,6) - 2*POWER(x37
     ,3) + POWER(x38,6) - 2*POWER(x38,3) + POWER(x39,6) - 2*POWER(x39,3) + 
     POWER(x40,6) - 2*POWER(x40,3) + POWER(x41,6) - 2*POWER(x41,3) + POWER(x42,
     6) - 2*POWER(x42,3) + POWER(x43,6) - 2*POWER(x43,3) + POWER(x44,6) - 2*
     POWER(x44,3) + POWER(x45,6) - 2*POWER(x45,3) + POWER(x46,6) - 2*POWER(x46,
     3) + POWER(x47,6) - 2*POWER(x47,3) + POWER(x48,6) - 2*POWER(x48,3) + 
     POWER(x49,6) - 2*POWER(x49,3) + POWER(x50,6) - 2*POWER(x50,3) + POWER(x51,
     6) - 2*POWER(x51,3) + POWER(x52,6) - 2*POWER(x52,3) + POWER(x53,6) - 2*
     POWER(x53,3) + POWER(x54,6) - 2*POWER(x54,3) + POWER(x55,6) - 2*POWER(x55,
     3) + POWER(x56,6) - 2*POWER(x56,3) + POWER(x57,6) - 2*POWER(x57,3) + 
     POWER(x58,6) - 2*POWER(x58,3) + POWER(x59,6) - 2*POWER(x59,3) + POWER(x60,
     6) - 2*POWER(x60,3) + POWER(x61,6) - 2*POWER(x61,3) + POWER(x62,6) - 2*
     POWER(x62,3) + POWER(x63,6) - 2*POWER(x63,3) + POWER(x64,6) - 2*POWER(x64,
     3) + POWER(x65,6) - 2*POWER(x65,3) + POWER(x66,6) - 2*POWER(x66,3) + 
     POWER(x67,6) - 2*POWER(x67,3) + POWER(x68,6) - 2*POWER(x68,3) + POWER(x69,
     6) - 2*POWER(x69,3) + POWER(x70,6) - 2*POWER(x70,3) + POWER(x71,6) - 2*
     POWER(x71,3) + POWER(x72,6) - 2*POWER(x72,3) + POWER(x73,6) - 2*POWER(x73,
     3) + POWER(x74,6) - 2*POWER(x74,3) + POWER(x75,6) - 2*POWER(x75,3))
      + objvar =E= 0;

e2..  - 1/(sqr(x1 - x2) + sqr(x11 - x12) + sqr(x21 - x22)) + x31 =E= 0;

e3..  - 1/(sqr(x1 - x3) + sqr(x11 - x13) + sqr(x21 - x23)) + x32 =E= 0;

e4..  - 1/(sqr(x1 - x4) + sqr(x11 - x14) + sqr(x21 - x24)) + x33 =E= 0;

e5..  - 1/(sqr(x1 - x5) + sqr(x11 - x15) + sqr(x21 - x25)) + x34 =E= 0;

e6..  - 1/(sqr(x1 - x6) + sqr(x11 - x16) + sqr(x21 - x26)) + x35 =E= 0;

e7..  - 1/(sqr(x1 - x7) + sqr(x11 - x17) + sqr(x21 - x27)) + x36 =E= 0;

e8..  - 1/(sqr(x1 - x8) + sqr(x11 - x18) + sqr(x21 - x28)) + x37 =E= 0;

e9..  - 1/(sqr(x1 - x9) + sqr(x11 - x19) + sqr(x21 - x29)) + x38 =E= 0;

e10..  - 1/(sqr(x1 - x10) + sqr(x11 - x20) + sqr(x21 - x30)) + x39 =E= 0;

e11..  - 1/(sqr(x2 - x3) + sqr(x12 - x13) + sqr(x22 - x23)) + x40 =E= 0;

e12..  - 1/(sqr(x2 - x4) + sqr(x12 - x14) + sqr(x22 - x24)) + x41 =E= 0;

e13..  - 1/(sqr(x2 - x5) + sqr(x12 - x15) + sqr(x22 - x25)) + x42 =E= 0;

e14..  - 1/(sqr(x2 - x6) + sqr(x12 - x16) + sqr(x22 - x26)) + x43 =E= 0;

e15..  - 1/(sqr(x2 - x7) + sqr(x12 - x17) + sqr(x22 - x27)) + x44 =E= 0;

e16..  - 1/(sqr(x2 - x8) + sqr(x12 - x18) + sqr(x22 - x28)) + x45 =E= 0;

e17..  - 1/(sqr(x2 - x9) + sqr(x12 - x19) + sqr(x22 - x29)) + x46 =E= 0;

e18..  - 1/(sqr(x2 - x10) + sqr(x12 - x20) + sqr(x22 - x30)) + x47 =E= 0;

e19..  - 1/(sqr(x3 - x4) + sqr(x13 - x14) + sqr(x23 - x24)) + x48 =E= 0;

e20..  - 1/(sqr(x3 - x5) + sqr(x13 - x15) + sqr(x23 - x25)) + x49 =E= 0;

e21..  - 1/(sqr(x3 - x6) + sqr(x13 - x16) + sqr(x23 - x26)) + x50 =E= 0;

e22..  - 1/(sqr(x3 - x7) + sqr(x13 - x17) + sqr(x23 - x27)) + x51 =E= 0;

e23..  - 1/(sqr(x3 - x8) + sqr(x13 - x18) + sqr(x23 - x28)) + x52 =E= 0;

e24..  - 1/(sqr(x3 - x9) + sqr(x13 - x19) + sqr(x23 - x29)) + x53 =E= 0;

e25..  - 1/(sqr(x3 - x10) + sqr(x13 - x20) + sqr(x23 - x30)) + x54 =E= 0;

e26..  - 1/(sqr(x4 - x5) + sqr(x14 - x15) + sqr(x24 - x25)) + x55 =E= 0;

e27..  - 1/(sqr(x4 - x6) + sqr(x14 - x16) + sqr(x24 - x26)) + x56 =E= 0;

e28..  - 1/(sqr(x4 - x7) + sqr(x14 - x17) + sqr(x24 - x27)) + x57 =E= 0;

e29..  - 1/(sqr(x4 - x8) + sqr(x14 - x18) + sqr(x24 - x28)) + x58 =E= 0;

e30..  - 1/(sqr(x4 - x9) + sqr(x14 - x19) + sqr(x24 - x29)) + x59 =E= 0;

e31..  - 1/(sqr(x4 - x10) + sqr(x14 - x20) + sqr(x24 - x30)) + x60 =E= 0;

e32..  - 1/(sqr(x5 - x6) + sqr(x15 - x16) + sqr(x25 - x26)) + x61 =E= 0;

e33..  - 1/(sqr(x5 - x7) + sqr(x15 - x17) + sqr(x25 - x27)) + x62 =E= 0;

e34..  - 1/(sqr(x5 - x8) + sqr(x15 - x18) + sqr(x25 - x28)) + x63 =E= 0;

e35..  - 1/(sqr(x5 - x9) + sqr(x15 - x19) + sqr(x25 - x29)) + x64 =E= 0;

e36..  - 1/(sqr(x5 - x10) + sqr(x15 - x20) + sqr(x25 - x30)) + x65 =E= 0;

e37..  - 1/(sqr(x6 - x7) + sqr(x16 - x17) + sqr(x26 - x27)) + x66 =E= 0;

e38..  - 1/(sqr(x6 - x8) + sqr(x16 - x18) + sqr(x26 - x28)) + x67 =E= 0;

e39..  - 1/(sqr(x6 - x9) + sqr(x16 - x19) + sqr(x26 - x29)) + x68 =E= 0;

e40..  - 1/(sqr(x6 - x10) + sqr(x16 - x20) + sqr(x26 - x30)) + x69 =E= 0;

e41..  - 1/(sqr(x7 - x8) + sqr(x17 - x18) + sqr(x27 - x28)) + x70 =E= 0;

e42..  - 1/(sqr(x7 - x9) + sqr(x17 - x19) + sqr(x27 - x29)) + x71 =E= 0;

e43..  - 1/(sqr(x7 - x10) + sqr(x17 - x20) + sqr(x27 - x30)) + x72 =E= 0;

e44..  - 1/(sqr(x8 - x9) + sqr(x18 - x19) + sqr(x28 - x29)) + x73 =E= 0;

e45..  - 1/(sqr(x8 - x10) + sqr(x18 - x20) + sqr(x28 - x30)) + x74 =E= 0;

e46..  - 1/(sqr(x9 - x10) + sqr(x19 - x20) + sqr(x29 - x30)) + x75 =E= 0;

* set non default bounds

x1.fx = 0; 
x2.lo = -5; x2.up = 5; 
x3.lo = -5; x3.up = 5; 
x4.lo = -5; x4.up = 5; 
x5.lo = -5; x5.up = 5; 
x6.lo = -5; x6.up = 5; 
x7.lo = -5; x7.up = 5; 
x8.lo = -5; x8.up = 5; 
x9.lo = -5; x9.up = 5; 
x10.lo = -5; x10.up = 5; 
x11.fx = 0; 
x12.fx = 0; 
x13.lo = -5; x13.up = 5; 
x14.lo = -5; x14.up = 5; 
x15.lo = -5; x15.up = 5; 
x16.lo = -5; x16.up = 5; 
x17.lo = -5; x17.up = 5; 
x18.lo = -5; x18.up = 5; 
x19.lo = -5; x19.up = 5; 
x20.lo = -5; x20.up = 5; 
x21.fx = 0; 
x22.fx = 0; 
x23.fx = 0; 
x24.lo = -5; x24.up = 5; 
x25.lo = -5; x25.up = 5; 
x26.lo = -5; x26.up = 5; 
x27.lo = -5; x27.up = 5; 
x28.lo = -5; x28.up = 5; 
x29.lo = -5; x29.up = 5; 
x30.lo = -5; x30.up = 5; 

* set non default levels

x2.l = 3.43266708; 
x3.l = 0.50375356; 
x4.l = -1.98862096; 
x5.l = -2.07787883; 
x6.l = -2.75947133; 
x7.l = -1.50169496; 
x8.l = 3.56270347; 
x9.l = -4.32886277; 
x10.l = 0.00210668999999974; 
x13.l = 4.91133039; 
x14.l = 2.62250467; 
x15.l = -3.69307517; 
x16.l = 1.39718759; 
x17.l = -3.40482136; 
x18.l = -2.49919467; 
x19.l = 1.68928609; 
x20.l = -0.64643619; 
x24.l = -3.49898212; 
x25.l = 0.8911365; 
x26.l = 3.30892812; 
x27.l = -2.69184262; 
x28.l = 1.6573446; 
x29.l = 2.75857606; 
x30.l = -1.96341523; 
x31.l = 0.0848665660820583; 
x32.l = 0.0410257523649882; 
x33.l = 0.0433369072910337; 
x34.l = 0.0533318858204364; 
x35.l = 0.048742871418623; 
x36.l = 0.0474070412149129; 
x37.l = 0.0461135050589101; 
x38.l = 0.0342436643329313; 
x39.l = 0.234033993203568; 
x40.l = 0.0305813197498946; 
x41.l = 0.0206139788536328; 
x42.l = 0.022321904556586; 
x43.l = 0.019514587685195; 
x44.l = 0.0231552480584656; 
x45.l = 0.110991800051043; 
x46.l = 0.0141433163490096; 
x47.l = 0.06233782929589; 
x48.l = 0.0422056151370249; 
x49.l = 0.0122707298338899; 
x50.l = 0.0294578214857431; 
x51.l = 0.0124337559964587; 
x52.l = 0.0149209531159923; 
x53.l = 0.0241864337079319; 
x54.l = 0.0285751692200051; 
x55.l = 0.0169011255076456; 
x56.l = 0.0206427090641815; 
x57.l = 0.0268692752074436; 
x58.l = 0.0119564718949588; 
x59.l = 0.0219757698125455; 
x60.l = 0.0587995371380756; 
x61.l = 0.0310356025470503; 
x62.l = 0.075455653192454; 
x63.l = 0.0295607909263086; 
x64.l = 0.0266495598227703; 
x65.l = 0.0459626111078803; 
x66.l = 0.0164878991409964; 
x67.l = 0.0172772991007472; 
x68.l = 0.350729712295995; 
x69.l = 0.0252523239258106; 
x70.l = 0.0220343327084997; 
x71.l = 0.0157109506031469; 
x72.l = 0.0961472396262811; 
x73.l = 0.0123406666409974; 
x74.l = 0.0342225900399961; 
x75.l = 0.0215007077887895; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
