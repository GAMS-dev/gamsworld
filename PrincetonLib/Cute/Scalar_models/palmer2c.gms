*  NLP written by GAMS Convert at 10/06/06 11:47:10
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        1        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Equations  e1;


e1..  - (sqr(72.676767 - x1 - 3.046173318241*x2 - 9.27917188476338*x3 - 
     28.2659658107383*x4 - 86.1030308669832*x5 - 262.284755246686*x6 - 
     798.964823213824*x7 - 2433.78532668709*x8) + sqr(40.149455 - x1 - 
     2.467400073616*x2 - 6.08806312328024*x3 - 15.0216873985605*x4 - 
     37.0645125930448*x5 - 91.4529811006199*x6 - 225.651092300072*x7 - 
     556.771521752729*x8) + sqr(18.8548 - x1 - 1.949550365169*x2 - 
     3.80074662633058*x3 - 7.40974697327763*x4 - 14.4456749175633*x5 - 
     28.1625708106482*x6 - 54.904350207997*x7 - 107.038795997367*x8) + sqr(
     6.4762 - x1 - 1.4926241929*x2 - 2.22792698123038*x3 - 3.32545771219912*x4
      - 4.9636586336943*x5 - 7.40887696194907*x6 - 11.0586689956246*x7 - 
     16.5064368841425*x8) + sqr(0.8596 - x1 - 1.096623651204*x2 - 
     1.20258343237999*x3 - 1.31878143449399*x4 - 1.44620691183484*x5 - 
     1.58594470405279*x6 - 1.73918447196602*x7 - 1.90723082576467*x8) + sqr((-
     x1) - 0.878319472969*x2 - 0.771445096596542*x3 - 0.677575250667194*x4 - 
     0.595127537062848*x5 - 0.52271210470238*x6 - 0.459108220316711*x7 - 
     0.403243690104309*x8) + sqr(0.273 - x1 - 0.761544202225*x2 - 
     0.579949571942512*x3 - 0.44165723409569*x4 - 0.336341505996303*x5 - 
     0.256138923859109*x6 - 0.195061112429055*x7 - 0.148547659249906*x8) + sqr(
     3.2043 - x1 - 0.487388289424*x2 - 0.237547344667653*x3 - 0.115777793974781
     *x4 - 0.0564287409586526*x5 - 0.0275027075301877*x6 - 0.0134044975776667*
     x7 - 0.00653319514496715*x8) + sqr(8.108 - x1 - 0.274155912801*x2 - 
     0.0751614645237495*x3 - 0.0206059599139685*x4 - 0.00564924574935486*x5 - 
     0.00154877412505155*x6 - 0.000424605583976078*x7 - 0.000116408131455363*x8
     ) + sqr(13.4291 - x1 - 0.121847072356*x2 - 0.0148467090417283*x3 - 
     0.00180902803085595*x4 - 0.000220424769369737*x5 - 2.68581128224489e-5*x6
      - 3.27258241642255e-6*x7 - 3.98754586484811e-7*x8) + sqr(17.714 - x1 - 
     0.030461768089*x2 - 0.000927919315108019*x3 - 2.82660629821242e-5*x4 - 
     8.61034255350534e-7*x5 - 2.62286258031728e-8*x6 - 7.98970316509411e-10*x7
      - 2.43380484915046e-11*x8) + sqr(19.4529 - x1) + sqr(17.7149 - x1 - 
     0.030461768089*x2 - 0.000927919315108019*x3 - 2.82660629821242e-5*x4 - 
     8.61034255350534e-7*x5 - 2.62286258031728e-8*x6 - 7.98970316509411e-10*x7
      - 2.43380484915046e-11*x8) + sqr(13.4291 - x1 - 0.121847072356*x2 - 
     0.0148467090417283*x3 - 0.00180902803085595*x4 - 0.000220424769369737*x5
      - 2.68581128224489e-5*x6 - 3.27258241642255e-6*x7 - 3.98754586484811e-7*
     x8) + sqr(8.108 - x1 - 0.274155912801*x2 - 0.0751614645237495*x3 - 
     0.0206059599139685*x4 - 0.00564924574935486*x5 - 0.00154877412505155*x6 - 
     0.000424605583976078*x7 - 0.000116408131455363*x8) + sqr(3.2053 - x1 - 
     0.487388289424*x2 - 0.237547344667653*x3 - 0.115777793974781*x4 - 
     0.0564287409586526*x5 - 0.0275027075301877*x6 - 0.0134044975776667*x7 - 
     0.00653319514496715*x8) + sqr(0.273 - x1 - 0.761544202225*x2 - 
     0.579949571942512*x3 - 0.44165723409569*x4 - 0.336341505996303*x5 - 
     0.256138923859109*x6 - 0.195061112429055*x7 - 0.148547659249906*x8) + sqr(
     (-x1) - 0.878319472969*x2 - 0.771445096596542*x3 - 0.677575250667194*x4 - 
     0.595127537062848*x5 - 0.52271210470238*x6 - 0.459108220316711*x7 - 
     0.403243690104309*x8) + sqr(0.8596 - x1 - 1.096623651204*x2 - 
     1.20258343237999*x3 - 1.31878143449399*x4 - 1.44620691183484*x5 - 
     1.58594470405279*x6 - 1.73918447196602*x7 - 1.90723082576467*x8) + sqr(
     6.4762 - x1 - 1.4926241929*x2 - 2.22792698123038*x3 - 3.32545771219912*x4
      - 4.9636586336943*x5 - 7.40887696194907*x6 - 11.0586689956246*x7 - 
     16.5064368841425*x8) + sqr(18.8548 - x1 - 1.949550365169*x2 - 
     3.80074662633058*x3 - 7.40974697327763*x4 - 14.4456749175633*x5 - 
     28.1625708106482*x6 - 54.904350207997*x7 - 107.038795997367*x8) + sqr(
     40.149455 - x1 - 2.467400073616*x2 - 6.08806312328024*x3 - 
     15.0216873985605*x4 - 37.0645125930448*x5 - 91.4529811006199*x6 - 
     225.651092300072*x7 - 556.771521752729*x8) + sqr(72.676767 - x1 - 
     3.046173318241*x2 - 9.27917188476338*x3 - 28.2659658107383*x4 - 
     86.1030308669832*x5 - 262.284755246686*x6 - 798.964823213824*x7 - 
     2433.78532668709*x8)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
