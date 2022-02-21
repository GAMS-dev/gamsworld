*  MIP written by GAMS Convert at 07/30/07 17:11:59
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        7        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         19        1        0        0       18        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         48       48        0        0
*
*  Solve m using MIP maximizing objvar;
*

Sets  s1 /1*6/,s2 /7*12/,s3 /13*18/;

Variables  s1s1(s1),s1s2(s2),s1s3(s3),objvar;

SOS1 Variables  s1s1(s1),s1s2(s2),s1s3(s3);

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    s1s1('1') + s1s1('2') + s1s1('3') + s1s1('4') + s1s1('5') + s1s1('6')
      =E= 1;

e2..    s1s2('7') + s1s2('8') + s1s2('9') + s1s2('10') + s1s2('11')
      + s1s2('12') =E= 1;

e3..    s1s3('13') + s1s3('14') + s1s3('15') + s1s3('16') + s1s3('17')
      + s1s3('18') =E= 1;

e4..    3*s1s1('1') =L= 5;

e5..    5*s1s1('2') =L= 6;

e6..    6*s1s1('3') =L= 7;

e7..    8*s1s1('4') =L= 7;

e8..    8*s1s1('5') =L= 6;

e9..    8*s1s1('6') =L= 6;

e10..    s1s1('1') + 2*s1s1('2') + 3*s1s1('3') + 4*s1s1('4') + 5*s1s1('5')
       + 6*s1s1('6') =E= 1;

e11..    s1s2('7') + 2*s1s2('8') + 3*s1s2('9') + 4*s1s2('10') + 5*s1s2('11')
       + 6*s1s2('12') =E= 1;

e12..    s1s3('13') + 2*s1s3('14') + 3*s1s3('15') + 4*s1s3('16') + 5*s1s3('17')
       + 6*s1s3('18') =E= 1;

e13..  - 30.6*s1s1('1') - 20.4*s1s1('2') - 36.9*s1s2('7') - 24.6*s1s2('8')
       - 22.4*s1s3('13') + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
