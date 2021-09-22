*  NLP written by GAMS Convert at 07/19/01 13:39:33
*  
*  Equation counts
*     Total       E       G       L       N       X
*         1       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         2       2       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         2       1       1       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,objvar;

Equations  e1;


e1..  - (2.5*sqr(x1) - 500*x1 + 1.666666666*POWER(x1,3) + 1.25*POWER(x1,4) + 
     POWER(x1,5) + 0.8333333*POWER(x1,6) + 0.714285714*POWER(x1,7) + 0.625*
     POWER(x1,8) + 0.555555555*POWER(x1,9) + POWER(x1,10) - 43.6363636*POWER(x1
     ,11) + 0.41666666*POWER(x1,12) + 0.384615384*POWER(x1,13) + 0.357142857*
     POWER(x1,14) + 0.3333333*POWER(x1,15) + 0.3125*POWER(x1,16) + 0.294117647*
     POWER(x1,17) + 0.277777777*POWER(x1,18) + 0.263157894*POWER(x1,19) + 0.25*
     POWER(x1,20) + 0.238095238*POWER(x1,21) + 0.227272727*POWER(x1,22) + 
     0.217391304*POWER(x1,23) + 0.208333333*POWER(x1,24) + 0.2*POWER(x1,25) + 
     0.192307692*POWER(x1,26) + 0.185185185*POWER(x1,27) + 0.178571428*POWER(x1
     ,28) + 0.344827586*POWER(x1,29) + 0.6666666*POWER(x1,30) - 15.48387097*
     POWER(x1,31) + 0.15625*POWER(x1,32) + 0.1515151*POWER(x1,33) + 0.14705882*
     POWER(x1,34) + 0.14285712*POWER(x1,35) + 0.138888888*POWER(x1,36) + 
     0.135135135*POWER(x1,37) + 0.131578947*POWER(x1,38) + 0.128205128*POWER(x1
     ,39) + 0.125*POWER(x1,40) + 0.121951219*POWER(x1,41) + 0.119047619*POWER(
     x1,42) + 0.116279069*POWER(x1,43) + 0.113636363*POWER(x1,44) + 0.1111111*
     POWER(x1,45) + 0.108695652*POWER(x1,46) + 0.106382978*POWER(x1,47) + 
     0.208333333*POWER(x1,48) + 0.408163265*POWER(x1,49) + 0.8*POWER(x1,50))
      + objvar =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 2; 

* set non default levels

x1.l = 1.0911; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
