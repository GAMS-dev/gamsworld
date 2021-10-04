*  DNLP written by GAMS Convert at 10/06/06 11:16:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        103        3       50       50        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        564        3      561        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar,x8,x9;

Positive Variables  x5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103;


e1.. sqr((-0.514) + x4*x3*cos(x5) + x1) + sqr((-0.176) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e2.. sqr((-0.948) + x4*x3*cos(x5) + x1) + sqr((-0.172) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e3.. sqr((-0.702) + x4*x3*cos(x5) + x1) + sqr((-0.226) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e4.. sqr((-0.495) + x4*x3*cos(x5) + x1) + sqr((-0.125) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e5.. sqr((-0.823) + x4*x3*cos(x5) + x1) + sqr((-0.152) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e6.. sqr((-0.625) + x4*x3*cos(x5) + x1) + sqr((-0.315) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e7.. sqr((-0.347) + x4*x3*cos(x5) + x1) + sqr((-0.917) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e8.. sqr((-0.52) + x4*x3*cos(x5) + x1) + sqr((-0.401) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e9.. sqr((-0.607) + x4*x3*cos(x5) + x1) + sqr((-0.785) + x4*x3*sin(x5) + x2) - 
     sqr(x3 + x6) =L= 1;

e10.. sqr((-0.758) + x4*x3*cos(x5) + x1) + sqr((-0.582) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e11.. sqr((-0.2) + x4*x3*cos(x5) + x1) + sqr((-0.827) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e12.. sqr((-0.416) + x4*x3*cos(x5) + x1) + sqr((-0.464) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e13.. sqr((-0.979) + x4*x3*cos(x5) + x1) + sqr((-0.126) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e14.. sqr((-0.213) + x4*x3*cos(x5) + x1) + sqr((-0.958) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e15.. sqr((-0.737) + x4*x3*cos(x5) + x1) + sqr((-0.409) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e16.. sqr((-0.957) + x4*x3*cos(x5) + x1) + sqr((-0.028) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e17.. sqr((-0.319) + x4*x3*cos(x5) + x1) + sqr((-0.757) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e18.. sqr((-0.572) + x4*x3*cos(x5) + x1) + sqr((-0.119) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e19.. sqr((-0.57) + x4*x3*cos(x5) + x1) + sqr((-0.252) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e20.. sqr((-0.496) + x4*x3*cos(x5) + x1) + sqr((-0.237) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e21.. sqr((-0.477) + x4*x3*cos(x5) + x1) + sqr((-0.406) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e22.. sqr((-0.873) + x4*x3*cos(x5) + x1) + sqr((-0.427) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e23.. sqr((-0.522) + x4*x3*cos(x5) + x1) + sqr((-0.697) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e24.. sqr((-0.773) + x4*x3*cos(x5) + x1) + sqr((-0.245) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e25.. sqr((-0.887) + x4*x3*cos(x5) + x1) + sqr((-0.037) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e26.. sqr((-0.651) + x4*x3*cos(x5) + x1) + sqr((-0.399) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e27.. sqr((-0.676) + x4*x3*cos(x5) + x1) + sqr((-0.733) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e28.. sqr((-0.938) + x4*x3*cos(x5) + x1) + sqr((-0.233) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e29.. sqr((-0.779) + x4*x3*cos(x5) + x1) + sqr((-0.431) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e30.. sqr((-0.75) + x4*x3*cos(x5) + x1) + sqr((-0.208) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e31.. sqr((-0.803) + x4*x3*cos(x5) + x1) + sqr((-0.219) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e32.. sqr((-0.563) + x4*x3*cos(x5) + x1) + sqr((-0.716) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e33.. sqr((-0.653) + x4*x3*cos(x5) + x1) + sqr((-0.604) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e34.. sqr((-0.79) + x4*x3*cos(x5) + x1) + sqr((-0.079) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e35.. sqr((-0.246) + x4*x3*cos(x5) + x1) + sqr((-0.945) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e36.. sqr((-0.477) + x4*x3*cos(x5) + x1) + sqr((-0.8) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e37.. sqr((-0.744) + x4*x3*cos(x5) + x1) + sqr((-0.381) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e38.. sqr((-0.48) + x4*x3*cos(x5) + x1) + sqr((-0.527) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e39.. sqr((-0.446) + x4*x3*cos(x5) + x1) + sqr((-0.705) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e40.. sqr((-0.095) + x4*x3*cos(x5) + x1) + sqr((-0.963) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e41.. sqr((-0.551) + x4*x3*cos(x5) + x1) + sqr((-0.74) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e42.. sqr((-0.579) + x4*x3*cos(x5) + x1) + sqr((-0.638) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e43.. sqr((-0.782) + x4*x3*cos(x5) + x1) + sqr((-0.188) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e44.. sqr((-0.684) + x4*x3*cos(x5) + x1) + sqr((-0.293) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e45.. sqr((-0.565) + x4*x3*cos(x5) + x1) + sqr((-0.418) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e46.. sqr((-0.566) + x4*x3*cos(x5) + x1) + sqr((-0.488) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e47.. sqr((-0.607) + x4*x3*cos(x5) + x1) + sqr((-0.416) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e48.. sqr((-0.036) + x4*x3*cos(x5) + x1) + sqr((-0.977) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e49.. sqr((-0.647) + x4*x3*cos(x5) + x1) + sqr((-0.35) + x4*x3*sin(x5) + x2) - 
      sqr(x3 + x6) =L= 1;

e50.. sqr((-0.553) + x4*x3*cos(x5) + x1) + sqr((-0.358) + x4*x3*sin(x5) + x2)
       - sqr(x3 + x6) =L= 1;

e51.. sqr((-0.514) + x1) + sqr((-0.176) + x2) - sqr(x4*x3 + x6) =G= 0;

e52.. sqr((-0.948) + x1) + sqr((-0.172) + x2) - sqr(x4*x3 + x6) =G= 0;

e53.. sqr((-0.702) + x1) + sqr((-0.226) + x2) - sqr(x4*x3 + x6) =G= 0;

e54.. sqr((-0.495) + x1) + sqr((-0.125) + x2) - sqr(x4*x3 + x6) =G= 0;

e55.. sqr((-0.823) + x1) + sqr((-0.152) + x2) - sqr(x4*x3 + x6) =G= 0;

e56.. sqr((-0.625) + x1) + sqr((-0.315) + x2) - sqr(x4*x3 + x6) =G= 0;

e57.. sqr((-0.347) + x1) + sqr((-0.917) + x2) - sqr(x4*x3 + x6) =G= 0;

e58.. sqr((-0.52) + x1) + sqr((-0.401) + x2) - sqr(x4*x3 + x6) =G= 0;

e59.. sqr((-0.607) + x1) + sqr((-0.785) + x2) - sqr(x4*x3 + x6) =G= 0;

e60.. sqr((-0.758) + x1) + sqr((-0.582) + x2) - sqr(x4*x3 + x6) =G= 0;

e61.. sqr((-0.2) + x1) + sqr((-0.827) + x2) - sqr(x4*x3 + x6) =G= 0;

e62.. sqr((-0.416) + x1) + sqr((-0.464) + x2) - sqr(x4*x3 + x6) =G= 0;

e63.. sqr((-0.979) + x1) + sqr((-0.126) + x2) - sqr(x4*x3 + x6) =G= 0;

e64.. sqr((-0.213) + x1) + sqr((-0.958) + x2) - sqr(x4*x3 + x6) =G= 0;

e65.. sqr((-0.737) + x1) + sqr((-0.409) + x2) - sqr(x4*x3 + x6) =G= 0;

e66.. sqr((-0.957) + x1) + sqr((-0.028) + x2) - sqr(x4*x3 + x6) =G= 0;

e67.. sqr((-0.319) + x1) + sqr((-0.757) + x2) - sqr(x4*x3 + x6) =G= 0;

e68.. sqr((-0.572) + x1) + sqr((-0.119) + x2) - sqr(x4*x3 + x6) =G= 0;

e69.. sqr((-0.57) + x1) + sqr((-0.252) + x2) - sqr(x4*x3 + x6) =G= 0;

e70.. sqr((-0.496) + x1) + sqr((-0.237) + x2) - sqr(x4*x3 + x6) =G= 0;

e71.. sqr((-0.477) + x1) + sqr((-0.406) + x2) - sqr(x4*x3 + x6) =G= 0;

e72.. sqr((-0.873) + x1) + sqr((-0.427) + x2) - sqr(x4*x3 + x6) =G= 0;

e73.. sqr((-0.522) + x1) + sqr((-0.697) + x2) - sqr(x4*x3 + x6) =G= 0;

e74.. sqr((-0.773) + x1) + sqr((-0.245) + x2) - sqr(x4*x3 + x6) =G= 0;

e75.. sqr((-0.887) + x1) + sqr((-0.037) + x2) - sqr(x4*x3 + x6) =G= 0;

e76.. sqr((-0.651) + x1) + sqr((-0.399) + x2) - sqr(x4*x3 + x6) =G= 0;

e77.. sqr((-0.676) + x1) + sqr((-0.733) + x2) - sqr(x4*x3 + x6) =G= 0;

e78.. sqr((-0.938) + x1) + sqr((-0.233) + x2) - sqr(x4*x3 + x6) =G= 0;

e79.. sqr((-0.779) + x1) + sqr((-0.431) + x2) - sqr(x4*x3 + x6) =G= 0;

e80.. sqr((-0.75) + x1) + sqr((-0.208) + x2) - sqr(x4*x3 + x6) =G= 0;

e81.. sqr((-0.803) + x1) + sqr((-0.219) + x2) - sqr(x4*x3 + x6) =G= 0;

e82.. sqr((-0.563) + x1) + sqr((-0.716) + x2) - sqr(x4*x3 + x6) =G= 0;

e83.. sqr((-0.653) + x1) + sqr((-0.604) + x2) - sqr(x4*x3 + x6) =G= 0;

e84.. sqr((-0.79) + x1) + sqr((-0.079) + x2) - sqr(x4*x3 + x6) =G= 0;

e85.. sqr((-0.246) + x1) + sqr((-0.945) + x2) - sqr(x4*x3 + x6) =G= 0;

e86.. sqr((-0.477) + x1) + sqr((-0.8) + x2) - sqr(x4*x3 + x6) =G= 0;

e87.. sqr((-0.744) + x1) + sqr((-0.381) + x2) - sqr(x4*x3 + x6) =G= 0;

e88.. sqr((-0.48) + x1) + sqr((-0.527) + x2) - sqr(x4*x3 + x6) =G= 0;

e89.. sqr((-0.446) + x1) + sqr((-0.705) + x2) - sqr(x4*x3 + x6) =G= 0;

e90.. sqr((-0.095) + x1) + sqr((-0.963) + x2) - sqr(x4*x3 + x6) =G= 0;

e91.. sqr((-0.551) + x1) + sqr((-0.74) + x2) - sqr(x4*x3 + x6) =G= 0;

e92.. sqr((-0.579) + x1) + sqr((-0.638) + x2) - sqr(x4*x3 + x6) =G= 0;

e93.. sqr((-0.782) + x1) + sqr((-0.188) + x2) - sqr(x4*x3 + x6) =G= 0;

e94.. sqr((-0.684) + x1) + sqr((-0.293) + x2) - sqr(x4*x3 + x6) =G= 0;

e95.. sqr((-0.565) + x1) + sqr((-0.418) + x2) - sqr(x4*x3 + x6) =G= 0;

e96.. sqr((-0.566) + x1) + sqr((-0.488) + x2) - sqr(x4*x3 + x6) =G= 0;

e97.. sqr((-0.607) + x1) + sqr((-0.416) + x2) - sqr(x4*x3 + x6) =G= 0;

e98.. sqr((-0.036) + x1) + sqr((-0.977) + x2) - sqr(x4*x3 + x6) =G= 0;

e99.. sqr((-0.647) + x1) + sqr((-0.35) + x2) - sqr(x4*x3 + x6) =G= 0;

e100.. sqr((-0.553) + x1) + sqr((-0.358) + x2) - sqr(x4*x3 + x6) =G= 0;

e101..  - (sqr(x3 + x6)*(1.5707963267949 - arctan(x8/sqrt(1 - x8*x8))) - sqr(x4
       *x3 + x6)*(1.5707963267949 - arctan(x9/sqrt(1 - x9*x9))) + (x3 + x6)*x4*
       x3*sin(1.5707963267949 - arctan(x8/sqrt(1 - x8*x8)))) + objvar =E= 0;

e102.. (sqr(x4*x3) - sqr(x4*x3 + x6) + sqr(x3 + x6))/((2*x3 + 2*x6)*x4*x3) + x8
        =E= 0;

e103..  - (sqr(x4*x3) + sqr(x4*x3 + x6) - sqr(x3 + x6))/((2*x4*x3 + 2*x6)*x4*x3
       ) + x9 =E= 0;

* set non default bounds

x3.lo = 1E-8; 
x4.lo = 1; 
x5.up = 6.2831852; 
x6.lo = 0.39; 
x8.lo = -0.999999; x8.up = 0.999999; 
x9.lo = -0.999999; x9.up = 0.999999; 

* set non default levels

x1.l = -40; 
x2.l = 5; 
x3.l = 1; 
x4.l = 2; 
x5.l = 1.5; 
x6.l = 0.75; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
