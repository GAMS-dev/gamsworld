*  NLP written by GAMS Convert at 10/06/06 11:47:10
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

Positive Variables  x1,x2,x3;

Equations  e1;


e1..  - (sqr(64.87939 - x1/(2.749172911969/x3 + x2) - 2.749172911969*x4) + sqr(
     50.46046 - x1/(2.467400073616/x3 + x2) - 2.467400073616*x4) + sqr(28.2034
      - x1/(1.949550365169/x3 + x2) - 1.949550365169*x4) + sqr(13.4575 - x1/(
     1.4926241929/x3 + x2) - 1.4926241929*x4) + sqr(4.6547 - x1/(1.096623651204
     /x3 + x2) - 1.096623651204*x4) + sqr(0.59447 - x1/(0.761544202225/x3 + x2)
      - 0.761544202225*x4) + sqr((-x1/(0.587569773961/x3 + x2)) - 
     0.587569773961*x4) + sqr(0.2177 - x1/(0.487388289424/x3 + x2) - 
     0.487388289424*x4) + sqr(2.3029 - x1/(0.274155912801/x3 + x2) - 
     0.274155912801*x4) + sqr(5.5191 - x1/(0.121847072356/x3 + x2) - 
     0.121847072356*x4) + sqr(8.5519 - x1/(0.030461768089/x3 + x2) - 
     0.030461768089*x4) + sqr(9.8919 - x1/x2) + sqr(8.5519 - x1/(0.030461768089
     /x3 + x2) - 0.030461768089*x4) + sqr(5.5191 - x1/(0.121847072356/x3 + x2)
      - 0.121847072356*x4) + sqr(2.3029 - x1/(0.274155912801/x3 + x2) - 
     0.274155912801*x4) + sqr(0.2177 - x1/(0.487388289424/x3 + x2) - 
     0.487388289424*x4) + sqr((-x1/(0.587569773961/x3 + x2)) - 0.587569773961*
     x4) + sqr(0.59447 - x1/(0.761544202225/x3 + x2) - 0.761544202225*x4) + 
     sqr(4.6547 - x1/(1.096623651204/x3 + x2) - 1.096623651204*x4) + sqr(
     13.4575 - x1/(1.4926241929/x3 + x2) - 1.4926241929*x4) + sqr(28.2034 - x1/
     (1.949550365169/x3 + x2) - 1.949550365169*x4) + sqr(50.46046 - x1/(
     2.467400073616/x3 + x2) - 2.467400073616*x4) + sqr(64.87939 - x1/(
     2.749172911969/x3 + x2) - 2.749172911969*x4)) + objvar =E= 0;

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
