*  NLP written by GAMS Convert at 10/06/06 11:47:09
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x5,x6;

Equations  e1;


e1..  - (sqr(78.596218 - x5/(3.200388615369 + x6) - x1 - 3.200388615369*x2 - 
     10.2424872893835*x3 - 32.7799397140047*x4) + sqr(65.77963 - x5/(
     3.046173318241 + x6) - x1 - 3.046173318241*x2 - 9.27917188476338*x3 - 
     28.2659658107383*x4) + sqr(43.96947 - x5/(2.749172911969 + x6) - x1 - 
     2.749172911969*x2 - 7.55795169990411*x3 - 20.7781160833464*x4) + sqr(
     27.038816 - x5/(2.467400073616 + x6) - x1 - 2.467400073616*x2 - 
     6.08806312328024*x3 - 15.0216873985605*x4) + sqr(14.6126 - x5/(
     2.2008612609 + x6) - x1 - 2.2008612609*x2 - 4.84379028973034*x3 - 
     10.6605104045911*x4) + sqr(6.2614 - x5/(1.949550365169 + x6) - x1 - 
     1.949550365169*x2 - 3.80074662633058*x3 - 7.40974697327763*x4) + sqr(
     1.53833 - x5/(1.713473146009 + x6) - x1 - 1.713473146009*x2 - 
     2.93599022209398*x3 - 5.03074040250303*x4) + sqr((-x5/(1.485015206544 + x6
     )) - x1 - 1.485015206544*x2 - 2.20527016366692*x3 - 3.27485972758315*x4)
      + sqr(1.188045 - x5/(1.287008567296 + x6) - x1 - 1.287008567296*x2 - 
     1.6563910522933*x3 - 2.13178947509392*x4) + sqr(4.6841 - x5/(
     1.096623651204 + x6) - x1 - 1.096623651204*x2 - 1.20258343237999*x3 - 
     1.31878143449399*x4) + sqr(16.9321 - x5/(0.761544202225 + x6) - x1 - 
     0.761544202225*x2 - 0.579949571942512*x3 - 0.44165723409569*x4) + sqr(
     33.6988 - x5/(0.487388289424 + x6) - x1 - 0.487388289424*x2 - 
     0.237547344667653*x3 - 0.115777793974781*x4) + sqr(52.3664 - x5/(
     0.274155912801 + x6) - x1 - 0.274155912801*x2 - 0.0751614645237495*x3 - 
     0.0206059599139685*x4) + sqr(70.163 - x5/(0.121847072356 + x6) - x1 - 
     0.121847072356*x2 - 0.0148467090417283*x3 - 0.00180902803085595*x4) + sqr(
     83.4221 - x5/(0.030461768089 + x6) - x1 - 0.030461768089*x2 - 
     0.000927919315108019*x3 - 2.82660629821242e-5*x4) + sqr(88.3995 - x5/x6 - 
     x1) + sqr(78.596218 - x5/(3.200388615369 + x6) - x1 - 3.200388615369*x2 - 
     10.2424872893835*x3 - 32.7799397140047*x4) + sqr(65.77963 - x5/(
     3.046173318241 + x6) - x1 - 3.046173318241*x2 - 9.27917188476338*x3 - 
     28.2659658107383*x4) + sqr(43.96947 - x5/(2.749172911969 + x6) - x1 - 
     2.749172911969*x2 - 7.55795169990411*x3 - 20.7781160833464*x4) + sqr(
     27.038816 - x5/(2.467400073616 + x6) - x1 - 2.467400073616*x2 - 
     6.08806312328024*x3 - 15.0216873985605*x4) + sqr(14.6126 - x5/(
     2.2008612609 + x6) - x1 - 2.2008612609*x2 - 4.84379028973034*x3 - 
     10.6605104045911*x4) + sqr(6.2614 - x5/(1.949550365169 + x6) - x1 - 
     1.949550365169*x2 - 3.80074662633058*x3 - 7.40974697327763*x4) + sqr(
     1.53833 - x5/(1.713473146009 + x6) - x1 - 1.713473146009*x2 - 
     2.93599022209398*x3 - 5.03074040250303*x4) + sqr((-x5/(1.485015206544 + x6
     )) - x1 - 1.485015206544*x2 - 2.20527016366692*x3 - 3.27485972758315*x4)
      + sqr(1.188045 - x5/(1.287008567296 + x6) - x1 - 1.287008567296*x2 - 
     1.6563910522933*x3 - 2.13178947509392*x4) + sqr(4.6841 - x5/(
     1.096623651204 + x6) - x1 - 1.096623651204*x2 - 1.20258343237999*x3 - 
     1.31878143449399*x4) + sqr(16.9321 - x5/(0.761544202225 + x6) - x1 - 
     0.761544202225*x2 - 0.579949571942512*x3 - 0.44165723409569*x4) + sqr(
     33.6988 - x5/(0.487388289424 + x6) - x1 - 0.487388289424*x2 - 
     0.237547344667653*x3 - 0.115777793974781*x4) + sqr(52.3664 - x5/(
     0.274155912801 + x6) - x1 - 0.274155912801*x2 - 0.0751614645237495*x3 - 
     0.0206059599139685*x4) + sqr(70.163 - x5/(0.121847072356 + x6) - x1 - 
     0.121847072356*x2 - 0.0148467090417283*x3 - 0.00180902803085595*x4) + sqr(
     83.4221 - x5/(0.030461768089 + x6) - x1 - 0.030461768089*x2 - 
     0.000927919315108019*x3 - 2.82660629821242e-5*x4) + sqr(108.18086 - x5/(
     3.52023488519521 + x6) - x1 - 3.52023488519521*x2 - 12.3920536469453*x3 - 
     43.6229395471875*x4) + sqr(92.733676 - x5/(3.35840699965849 + x6) - x1 - 
     3.35840699965849*x2 - 11.2788975753551*x3 - 37.8791285655039*x4) + sqr(
     108.18086 - x5/(3.52023488519521 + x6) - x1 - 3.52023488519521*x2 - 
     12.3920536469453*x3 - 43.6229395471875*x4) + sqr(92.733676 - x5/(
     3.35840699965849 + x6) - x1 - 3.35840699965849*x2 - 11.2788975753551*x3 - 
     37.8791285655039*x4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
