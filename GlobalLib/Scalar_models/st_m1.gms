*  NLP written by GAMS Convert at 08/30/02 11:13:56
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        12       1       0      11       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        21      21       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       226     206      20       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..  - 6*x1 + x2 + x3 - 3*x4 - 9*x5 - 7*x6 - x8 + 3*x9 + 7*x10 + x11 + 7*x12
      + 4*x13 - 2*x14 - 2*x15 + 3*x16 + 8*x17 - 3*x18 - 6*x19 - x20 =L= 5;

e2..  - 9*x1 + 3*x2 - 8*x3 + 3*x4 + 3*x5 - 5*x7 + 9*x8 + 5*x9 - 2*x10 + 6*x11
      - 7*x12 + 9*x13 - 7*x15 - 7*x16 - x17 - 5*x18 + 4*x19 + 9*x20 =L= 8;

e3..    4*x1 - 10*x2 + 3*x3 + 5*x4 + 8*x5 + 8*x6 - 8*x7 - 9*x8 + 5*x9 + 7*x10
      - 9*x11 - 6*x12 - 5*x13 - 7*x14 + x15 + 3*x16 - 7*x17 - 7*x18 + 8*x19
      + 3*x20 =L= -5;

e4..    4*x1 - 2*x2 - 2*x3 + 10*x4 - 5*x5 + 8*x6 + 9*x7 + 5*x8 + 10*x9 - 5*x10
      + x11 + 4*x12 - 6*x13 + 2*x14 - 5*x15 + 2*x16 + 9*x17 + 6*x18 - 5*x19
      - x20 =L= 49;

e5..    9*x1 - 9*x2 + 4*x3 - 3*x4 - x5 - 9*x6 - 9*x7 + 5*x8 + 8*x9 - 2*x10
      - 7*x12 - 4*x13 + 7*x14 + 6*x16 - 2*x17 - x18 + 7*x19 + 6*x20 =L= 17;

e6..  - 2*x1 - 2*x2 + 8*x3 - 5*x4 + 5*x5 + 8*x6 + 7*x8 - 5*x9 + x10 + 9*x11
      - 8*x12 + 8*x13 + 2*x14 - x15 - 5*x16 - 7*x17 - 3*x18 - x19 + 4*x20
      =L= 22;

e7..    4*x2 + 5*x3 + 10*x4 - 2*x7 - 7*x8 - 4*x9 - x10 + 5*x11 - 5*x12 + 3*x13
      + 9*x14 + 9*x15 + 8*x17 - x18 + 4*x20 =L= 46;

e8..    7*x1 + 2*x2 - 5*x3 + 4*x4 - 5*x5 - 4*x7 - 10*x8 - 3*x9 - 4*x10 + x11
      - 10*x12 - 7*x13 + x14 - 7*x15 - 2*x16 - 8*x17 + 6*x18 + 2*x19 + 10*x20
      =L= -23;

e9..  - 9*x1 + 9*x2 - 9*x3 + 5*x4 - 5*x5 - 4*x6 + 8*x7 + 4*x8 - 6*x10 + 8*x11
      - 2*x12 + 4*x13 - 7*x14 - 6*x15 - 6*x16 - 7*x17 + 9*x18 + 6*x19 + 9*x20
      =L= 11;

e10..    3*x1 + 5*x2 + 5*x3 + x4 + 4*x5 + 6*x6 + 9*x7 + 5*x8 + 7*x9 + 9*x10
       + 7*x11 + 8*x12 + 7*x13 + 7*x14 + 9*x16 + 5*x17 + 5*x18 + x19 + 7*x20
       =L= 1210;

e11..    0.123612846515*x1 + 0.164817128686*x2 - 0.247225693029*x3
       + 0.329634257372*x4 + 0.288429975201*x5 + 0.329634257372*x6
       + 0.0412042821715*x7 - 0.288429975201*x8 - 0.0412042821715*x9
       + 0.412042821715*x10 - 0.247225693029*x11 - 0.0412042821715*x12
       - 0.164817128686*x13 + 0.329634257372*x15 - 0.0412042821715*x16
       - 0.0412042821715*x17 + 0.247225693029*x18 - 0.123612846515*x19
       - 0.247225693029*x20 =L= -5.52216398993;

e12..  - (540.792129732*x1 - 3*sqr(x1) - sqr(x2) + 92.0068003629*x2 - 7*sqr(x3)
       - 2390.75252039*x3 - 7*sqr(x4) - 8085.40130479*x4 - 9*sqr(x5) - 
      4627.10173328*x5 - 4*sqr(x6) - 12452.7098353*x6 - 6*sqr(x7) + 
      9419.17874069*x7 - 8*sqr(x8) + 7689.14130566*x8 - sqr(x9) - 5154.76865125
      *x9 - sqr(x10) - 9814.99860313*x10 - 6*sqr(x11) - 3701.15304202*x11 - 7*
      sqr(x12) + 12818.4489533*x12 - sqr(x13) - 7825.52846743*x13 - 4*sqr(x14)
       - 52.6053189782*x14 - 2*sqr(x15) + 6727.68114413*x15 - 5*sqr(x16) + 
      6093.30280299*x16 - 7*sqr(x17) - 1139.49658357*x17 - 6*sqr(x18) + 
      7666.77668727*x18 - 9*sqr(x19) + 7371.88647018*x19 - 9*sqr(x20) - 
      16412.9116807*x20) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;