*  NLP written by GAMS Convert at 10/06/06 11:46:58
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         10        1        9        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Equations  e1;


e1..  - (sqr((-0.925959366733121) + x1*x1 + x2*x1 + x3*x1) + sqr(
     0.157503469054834 + x1*x2 + x2*x2 + x3*x2) + sqr((-0.837777972640949) + x1
     *x3 + x2*x3 + x3*x3) + sqr(0.204157779584037 + x4*x4 + x5*x4 + x6*x4) + 
     sqr(0.677059435087132 + x4*x5 + x5*x5 + x6*x5) + sqr((-0.637322980962176)
      + x4*x6 + x5*x6 + x6*x6) + sqr(0.264878547815076 + x7*x7 + x8*x7 + x9*x7)
      + sqr(0.701280412170914 + x7*x8 + x8*x8 + x9*x8) + sqr(0.515703483969531
      + x7*x9 + x8*x9 + x9*x9)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.168294196961579; 
x2.l = -0.151360499061586; 
x3.l = 0.0824236970483513; 
x4.l = -0.0575806633330131; 
x5.l = -0.0264703500195546; 
x6.l = -0.198355770688623; 
x7.l = 0.763002122207578; 
x8.l = 0.184005207639358; 
x9.l = -0.125977598854891; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
