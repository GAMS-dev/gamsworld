*  NLP written by GAMS Convert at 10/06/06 11:15:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1;


e1..  - (sqr(sqr((-1.22140275816017) + x1 + 0.2*x2) + sqr((-0.980066577841242)
      + x3 + 0.198669330795061*x4)) + sqr(sqr((-1.49182469764127) + x1 + 0.4*x2
     ) + sqr((-0.921060994002885) + x3 + 0.389418342308651*x4)) + sqr(sqr((-
     1.82211880039051) + x1 + 0.6*x2) + sqr((-0.825335614909678) + x3 + 
     0.564642473395035*x4)) + sqr(sqr((-2.22554092849247) + x1 + 0.8*x2) + sqr(
     (-0.696706709347165) + x3 + 0.717356090899523*x4)) + sqr(sqr((-
     2.71828182845905) + x1 + x2) + sqr((-0.54030230586814) + x3 + 
     0.841470984807897*x4)) + sqr(sqr((-3.32011692273655) + x1 + 1.2*x2) + sqr(
     (-0.362357754476674) + x3 + 0.932039085967226*x4)) + sqr(sqr((-
     4.05519996684467) + x1 + 1.4*x2) + sqr((-0.169967142900241) + x3 + 
     0.98544972998846*x4)) + sqr(sqr((-4.95303242439511) + x1 + 1.6*x2) + sqr(
     0.0291995223012888 + x3 + 0.999573603041505*x4)) + sqr(sqr((-
     6.04964746441295) + x1 + 1.8*x2) + sqr(0.227202094693087 + x3 + 
     0.973847630878195*x4)) + sqr(sqr((-7.38905609893065) + x1 + 2*x2) + sqr(
     0.416146836547142 + x3 + 0.909297426825682*x4)) + sqr(sqr((-
     9.02501349943412) + x1 + 2.2*x2) + sqr(0.588501117255346 + x3 + 
     0.80849640381959*x4)) + sqr(sqr((-11.0231763806416) + x1 + 2.4*x2) + sqr(
     0.737393715541245 + x3 + 0.675463180551151*x4)) + sqr(sqr((-
     13.4637380350017) + x1 + 2.6*x2) + sqr(0.856888753368947 + x3 + 
     0.515501371821464*x4)) + sqr(sqr((-16.444646771097) + x1 + 2.8*x2) + sqr(
     0.942222340668658 + x3 + 0.334988150155905*x4)) + sqr(sqr((-
     20.0855369231877) + x1 + 3*x2) + sqr(0.989992496600445 + x3 + 
     0.141120008059867*x4)) + sqr(sqr((-24.5325301971094) + x1 + 3.2*x2) + sqr(
     0.998294775794753 + x3 - 0.0583741434275801*x4)) + sqr(sqr((-
     29.964100047397) + x1 + 3.4*x2) + sqr(0.966798192579461 + x3 - 
     0.255541102026831*x4)) + sqr(sqr((-36.598234443678) + x1 + 3.6*x2) + sqr(
     0.896758416334147 + x3 - 0.442520443294852*x4)) + sqr(sqr((-
     44.7011844933008) + x1 + 3.8*x2) + sqr(0.790967711914417 + x3 - 
     0.611857890942719*x4)) + sqr(sqr((-54.5981500331442) + x1 + 4*x2) + sqr(
     0.653643620863612 + x3 - 0.756802495307928*x4))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 25; 
x2.l = 5; 
x3.l = -5; 
x4.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
