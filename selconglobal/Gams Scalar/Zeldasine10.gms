*  NLP written by GAMS Convert at 11/11/08 09:35:13
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1;


e1.. 2.5*sin((-0.523598775598333) + x1)*sin((-0.523598775598333) + x2)*sin((-
     0.523598775598333) + x3)*sin((-0.523598775598333) + x4)*sin((-
     0.523598775598333) + x5)*sin((-0.523598775598333) + x6)*sin((-
     0.523598775598333) + x7)*sin((-0.523598775598333) + x8)*sin((-
     0.523598775598333) + x9)*sin((-0.523598775598333) + x10) + sin((-
     2.61799387799167) + 5*x1)*sin((-2.61799387799167) + 5*x2)*sin((-
     2.61799387799167) + 5*x3)*sin((-2.61799387799167) + 5*x4)*sin((-
     2.61799387799167) + 5*x5)*sin((-2.61799387799167) + 5*x6)*sin((-
     2.61799387799167) + 5*x7)*sin((-2.61799387799167) + 5*x8)*sin((-
     2.61799387799167) + 5*x9)*sin((-2.61799387799167) + 5*x10) + objvar =E= 0;

* set non default bounds

 x1.up = 3.14159265359;
 x2.up = 3.14159265359;
 x3.up = 3.14159265359;
 x4.up = 3.14159265359;
 x5.up = 3.14159265359;
 x6.up = 3.14159265359;
 x7.up = 3.14159265359;
 x8.up = 3.14159265359;
 x9.up = 3.14159265359;
x10.up = 3.14159265359;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
 x1.l = 2/3*pi;
 x2.l = 2/3*pi;
 x3.l = 2/3*pi;
 x4.l = 2/3*pi;
 x5.l = 2/3*pi;
 x6.l = 2/3*pi;
 x7.l = 2/3*pi;
 x8.l = 2/3*pi;
 x9.l = 2/3*pi;
x10.l = 2/3*pi;

objvar.l = -3.5;

$goto cont

$label cont


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
