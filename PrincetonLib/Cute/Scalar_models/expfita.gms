*  NLP written by GAMS Convert at 10/06/06 11:32:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         22        1       21        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         77       72        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1..    x1 + 5*x4 - 25*x5 =G= 1;

e2..    x1 + 0.5*x2 + 0.25*x3 + 7.41924571815058*x4 - 33.3866057316776*x5
      =G= 1.64872127070013;

e3..    x1 + x2 + x3 + 10.8731273138362*x4 - 43.4925092553447*x5
      =G= 2.71828182845905;

e4..    x1 + 1.5*x2 + 2.25*x3 + 15.6859117461832*x4 - 54.9006911116413*x5
      =G= 4.48168907033806;

e5..    x1 + 2*x2 + 4*x3 + 22.1671682967919*x4 - 66.5015048903759*x5
      =G= 7.38905609893065;

e6..    x1 + 2.5*x2 + 6.25*x3 + 30.4562349017587*x4 - 76.1405872543967*x5
      =G= 12.1824939607035;

e7..    x1 + 3*x2 + 9*x3 + 40.1710738463753*x4 - 80.3421476927507*x5
      =G= 20.0855369231877;

e8..    x1 + 3.5*x2 + 12.25*x3 + 49.6731779380385*x4 - 74.5097669070577*x5
      =G= 33.1154519586923;

e9..    x1 + 4*x2 + 16*x3 + 54.5981500331442*x4 - 54.5981500331442*x5
      =G= 54.5981500331442;

e10..    x1 + 4.5*x2 + 20.25*x3 + 45.0085656502609*x4 - 22.5042828251305*x5
       =G= 90.0171313005218;

e11..    x1 + 5*x2 + 25*x3 =G= 148.413159102577;

e12..  - 5*x4 + 25*x5 =G= -0.99999;

e13..  - 4.5*x4 + 20.25*x5 =G= -0.99999;

e14..  - 4*x4 + 16*x5 =G= -0.99999;

e15..  - 3.5*x4 + 12.25*x5 =G= -0.99999;

e16..  - 3*x4 + 9*x5 =G= -0.99999;

e17..  - 2.5*x4 + 6.25*x5 =G= -0.99999;

e18..  - 2*x4 + 4*x5 =G= -0.99999;

e19..  - 1.5*x4 + 2.25*x5 =G= -0.99999;

e20..  - x4 + x5 =G= -0.99999;

e21..  - 0.5*x4 + 0.25*x5 =G= -0.99999;

e22..  - (sqr((-1) + x1/(1 - 5*x4 + 25*x5)) + sqr((-1) + (x1 + 0.5*x2 + 0.25*x3
      )/(1.64872127070013 - 7.41924571815058*x4 + 33.3866057316776*x5)) + sqr((
      -1) + (x1 + x2 + x3)/(2.71828182845905 - 10.8731273138362*x4 + 
      43.4925092553447*x5)) + sqr((-1) + (x1 + 1.5*x2 + 2.25*x3)/(
      4.48168907033806 - 15.6859117461832*x4 + 54.9006911116413*x5)) + sqr((-1)
       + (x1 + 2*x2 + 4*x3)/(7.38905609893065 - 22.1671682967919*x4 + 
      66.5015048903759*x5)) + sqr((-1) + (x1 + 2.5*x2 + 6.25*x3)/(
      12.1824939607035 - 30.4562349017587*x4 + 76.1405872543967*x5)) + sqr((-1)
       + (x1 + 3*x2 + 9*x3)/(20.0855369231877 - 40.1710738463753*x4 + 
      80.3421476927507*x5)) + sqr((-1) + (x1 + 3.5*x2 + 12.25*x3)/(
      33.1154519586923 - 49.6731779380385*x4 + 74.5097669070577*x5)) + sqr((-1)
       + (x1 + 4*x2 + 16*x3)/(54.5981500331442 - 54.5981500331442*x4 + 
      54.5981500331442*x5)) + sqr((-1) + (x1 + 4.5*x2 + 20.25*x3)/(
      90.0171313005218 - 45.0085656502609*x4 + 22.5042828251305*x5)) + sqr((-1)
       + 0.00673794699908547*x1 + 0.0336897349954273*x2 + 0.168448674977137*x3)
      ) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
