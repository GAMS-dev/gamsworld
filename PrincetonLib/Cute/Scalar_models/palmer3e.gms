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


e1..  - (sqr(64.87939 - exp(x7 - 2.749172911969*x8) - x1 - 2.749172911969*x2 - 
     7.55795169990411*x3 - 20.7781160833464*x4 - 57.1226338980835*x5 - 
     157.039997772933*x6) + sqr(50.46046 - exp(x7 - 2.467400073616*x8) - x1 - 
     2.467400073616*x2 - 6.08806312328024*x3 - 15.0216873985605*x4 - 
     37.0645125930448*x5 - 91.4529811006199*x6) + sqr(28.2034 - exp(x7 - 
     1.949550365169*x8) - x1 - 1.949550365169*x2 - 3.80074662633058*x3 - 
     7.40974697327763*x4 - 14.4456749175633*x5 - 28.1625708106482*x6) + sqr(
     13.4575 - exp(x7 - 1.4926241929*x8) - x1 - 1.4926241929*x2 - 
     2.22792698123038*x3 - 3.32545771219912*x4 - 4.9636586336943*x5 - 
     7.40887696194907*x6) + sqr(4.6547 - exp(x7 - 1.096623651204*x8) - x1 - 
     1.096623651204*x2 - 1.20258343237999*x3 - 1.31878143449399*x4 - 
     1.44620691183484*x5 - 1.58594470405279*x6) + sqr(0.59447 - exp(x7 - 
     0.761544202225*x8) - x1 - 0.761544202225*x2 - 0.579949571942512*x3 - 
     0.44165723409569*x4 - 0.336341505996303*x5 - 0.256138923859109*x6) + sqr((
     -exp(x7 - 0.587569773961*x8)) - x1 - 0.587569773961*x2 - 0.345238239272581
     *x3 - 0.202851554212084*x4 - 0.119189441856032*x5 - 0.0700321134098862*x6)
      + sqr(0.2177 - exp(x7 - 0.487388289424*x8) - x1 - 0.487388289424*x2 - 
     0.237547344667653*x3 - 0.115777793974781*x4 - 0.0564287409586526*x5 - 
     0.0275027075301877*x6) + sqr(2.3029 - exp(x7 - 0.274155912801*x8) - x1 - 
     0.274155912801*x2 - 0.0751614645237495*x3 - 0.0206059599139685*x4 - 
     0.00564924574935486*x5 - 0.00154877412505155*x6) + sqr(5.5191 - exp(x7 - 
     0.121847072356*x8) - x1 - 0.121847072356*x2 - 0.0148467090417283*x3 - 
     0.00180902803085595*x4 - 0.000220424769369737*x5 - 2.68581128224489e-5*x6)
      + sqr(8.5519 - exp(x7 - 0.030461768089*x8) - x1 - 0.030461768089*x2 - 
     0.000927919315108019*x3 - 2.82660629821242e-5*x4 - 8.61034255350534e-7*x5
      - 2.62286258031728e-8*x6) + sqr(9.8919 - exp(x7) - x1) + sqr(8.5519 - 
     exp(x7 - 0.030461768089*x8) - x1 - 0.030461768089*x2 - 
     0.000927919315108019*x3 - 2.82660629821242e-5*x4 - 8.61034255350534e-7*x5
      - 2.62286258031728e-8*x6) + sqr(5.5191 - exp(x7 - 0.121847072356*x8) - x1
      - 0.121847072356*x2 - 0.0148467090417283*x3 - 0.00180902803085595*x4 - 
     0.000220424769369737*x5 - 2.68581128224489e-5*x6) + sqr(2.3029 - exp(x7 - 
     0.274155912801*x8) - x1 - 0.274155912801*x2 - 0.0751614645237495*x3 - 
     0.0206059599139685*x4 - 0.00564924574935486*x5 - 0.00154877412505155*x6)
      + sqr(0.2177 - exp(x7 - 0.487388289424*x8) - x1 - 0.487388289424*x2 - 
     0.237547344667653*x3 - 0.115777793974781*x4 - 0.0564287409586526*x5 - 
     0.0275027075301877*x6) + sqr((-exp(x7 - 0.587569773961*x8)) - x1 - 
     0.587569773961*x2 - 0.345238239272581*x3 - 0.202851554212084*x4 - 
     0.119189441856032*x5 - 0.0700321134098862*x6) + sqr(0.59447 - exp(x7 - 
     0.761544202225*x8) - x1 - 0.761544202225*x2 - 0.579949571942512*x3 - 
     0.44165723409569*x4 - 0.336341505996303*x5 - 0.256138923859109*x6) + sqr(
     4.6547 - exp(x7 - 1.096623651204*x8) - x1 - 1.096623651204*x2 - 
     1.20258343237999*x3 - 1.31878143449399*x4 - 1.44620691183484*x5 - 
     1.58594470405279*x6) + sqr(13.4575 - exp(x7 - 1.4926241929*x8) - x1 - 
     1.4926241929*x2 - 2.22792698123038*x3 - 3.32545771219912*x4 - 
     4.9636586336943*x5 - 7.40887696194907*x6) + sqr(28.2034 - exp(x7 - 
     1.949550365169*x8) - x1 - 1.949550365169*x2 - 3.80074662633058*x3 - 
     7.40974697327763*x4 - 14.4456749175633*x5 - 28.1625708106482*x6) + sqr(
     50.46046 - exp(x7 - 2.467400073616*x8) - x1 - 2.467400073616*x2 - 
     6.08806312328024*x3 - 15.0216873985605*x4 - 37.0645125930448*x5 - 
     91.4529811006199*x6) + sqr(64.87939 - exp(x7 - 2.749172911969*x8) - x1 - 
     2.749172911969*x2 - 7.55795169990411*x3 - 20.7781160833464*x4 - 
     57.1226338980835*x5 - 157.039997772933*x6)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x8.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
