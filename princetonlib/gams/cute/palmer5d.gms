*  NLP written by GAMS Convert at 10/06/06 11:47:11
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


e1..  - (sqr(83.57418 - x1) + sqr(81.007654 - x1 - 2.467400073616*x2 - 
     6.08806312328024*x3 - 15.0216873985605*x4) + sqr(18.983286 - x1 - 
     1.949550365169*x2 - 3.80074662633058*x3 - 7.40974697327763*x4) + sqr(
     8.051067 - x1 - 1.713473146009*x2 - 2.93599022209398*x3 - 5.03074040250303
     *x4) + sqr(2.044762 - x1 - 1.4926241929*x2 - 2.22792698123038*x3 - 
     3.32545771219912*x4) + sqr((-x1) - 1.267504447225*x2 - 1.60656752373515*x3
      - 2.03633148110156*x4) + sqr(1.170451 - x1 - 1.096623651204*x2 - 
     1.20258343237999*x3 - 1.31878143449399*x4) + sqr(10.479881 - x1 - 
     0.761544202225*x2 - 0.579949571942512*x3 - 0.44165723409569*x4) + sqr(
     25.785001 - x1 - 0.487388289424*x2 - 0.237547344667653*x3 - 
     0.115777793974781*x4) + sqr(44.126844 - x1 - 0.274155912801*x2 - 
     0.0751614645237495*x3 - 0.0206059599139685*x4) + sqr(62.822177 - x1 - 
     0.121847072356*x2 - 0.0148467090417283*x3 - 0.00180902803085595*x4) + sqr(
     77.719674 - x1 - 0.030461768089*x2 - 0.000927919315108019*x3 - 
     2.82660629821242e-5*x4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
