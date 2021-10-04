* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source: modified version of problem 19 in
*   W. Hock and K. Schittkowski,
*   "Test examples for nonlinear programming codes",
*   Lectures Notes in Economics and Mathematical Systems 187, Springer
*   Verlag, Heidelberg, 1981.
*   that is meant to simulate the Lagrangian barrier objective function
*   for particular values of the shifts and multipliers

*   SIF input: A.R. Conn August 1993

*   classification OUR2-AN-2-0

*rvdb: this is stupid
Parameter    a ;    a = 10000000000;
Parameter epsi ; epsi  = 0.0000000001;
Variable x1 , x2 , f ;

Equation Def_obj ;


Def_obj..  f =e={ power((x1-10),3) +  power((x2-20),3) +



*    if (-sqr(x1-5)-sqr(x2-5)+200+1 <= 0.0) then 1D10*sqr(-sqr(x1-5)-sqr(x2-5)+200)
*    else                                          -log(-sqr(x1-5)-sqr(x2-5)+200+1)
  [1- max(0,(-sqr(x1-5)-sqr(x2-5)+200+1))/
         (epsi+max(0,(-sqr(x1-5)-sqr(x2-5)+200+1)))] *
                                   {a*sqr(-sqr(x1-5)-sqr(x2-5)+200) } +
  [   max(0,(-sqr(x1-5)-sqr(x2-5)+200+1))/
         (epsi+max(0,(-sqr(x1-5)-sqr(x2-5)+200+1)))] *
                                   { -log(epsi+abs(-sqr(x1-5)-sqr(x2-5)+200+1)) } +

*       + if (sqr(x1-5)+sqr(x2-5)-100+1 <= 0.0) then  1D10*sqr(sqr(x1-5)+sqr(x2-5)-100)
*         else                                      -log(sqr(x1-5)+sqr(x2-5)-100+1)
     [1- max(0,(sqr(x1-5)+sqr(x2-5)-100+1))/
          (epsi+max(0,(sqr(x1-5)+sqr(x2-5)-100+1)))] *
                                {a*sqr(sqr(x1-5)+sqr(x2-5)-100) } +
     [   max(0,(sqr(x1-5)+sqr(x2-5)-100+1))/
          (epsi+max(0,(sqr(x1-5)+sqr(x2-5)-100+1)))] *
                                { -log(epsi+abs(sqr(x1-5)+sqr(x2-5)-100+1)) }     +

*       + if (sqr(x2-5)+sqr(x1-6)+1 <= 0.0) then    1D10*sqr(sqr(x2-5)+sqr(x1-6))
*         else                                    -log(sqr(x2-5)+sqr(x1-6)+1)
     [1- max(0,(sqr(x2-5)+sqr(x1-6)+1))/
          (epsi+max(0,(sqr(x2-5)+sqr(x1-6)+1)))] *
                                {a*sqr(sqr(x2-5)+sqr(x1-6)) } +
     [   max(0,(sqr(x2-5)+sqr(x1-6)+1))/
                        (epsi+max(0,(sqr(x2-5)+sqr(x1-6)+1)))] *
                                { -log(epsi+abs(sqr(x2-5)+sqr(x1-6)+1)) }          +

*       + if (-sqr(x2-5)-sqr(x1-6)+82.81+1 <= 0.0) then  1D10*sqr(-sqr(x2-5)-sqr(x1-6)+82.81)
*         else                                        -log(-sqr(x2-5)-sqr(x1-6)+82.81+1)
     [1- max(0,(-sqr(x2-5)-sqr(x1-6)+82.81+1))/
                  (epsi+max(0,(-sqr(x2-5)-sqr(x1-6)+82.81+1)))] *
                                {a*sqr(-sqr(x2-5)-sqr(x1-6)+82.81) } +
     [   max(0,(-sqr(x2-5)-sqr(x1-6)+82.81+1))/
                  (epsi+max(0,(-sqr(x2-5)-sqr(x1-6)+82.81+1)))] *
                                { -log(epsi+abs(-sqr(x2-5)-sqr(x1-6)+82.81+1)) }   +

*       + if (100-x1+1 <= 0.0) then  1D10*(100-x1)^2
*         else                      -log(100-x1+1)
     [1- max(0,(100-x1+1))/(epsi+max(0,(100-x1+1)))] * {a*sqr(100-x1)   } +
     [   max(0,(100-x1+1))/(epsi+max(0,(100-x1+1)))] * { -log(epsi+abs(100-x1+1)) } +

*       + if (x1-13+1 <= 0.0) then  1D10*(x1-13)^2
*         else                     -log(x1-13+1)
     [1- max(0,(x1-13+1))/(epsi+max(0,(x1-13+1)))] * {a*sqr(x1-13)   } +
     [   max(0,(x1-13+1))/(epsi+max(0,(x1-13+1)))] * { -log(epsi+abs(x1-13+1)) } +

*       + if (100-x2+1 <= 0.0) then  1D10*(100-x2)^2
*         else                      -log(100-x2+1)
     [1- max(0,(100-x2+1))/(epsi+max(0,(100-x2+1)))] * {a*sqr(100-x2)   } +
     [   max(0,(100-x2+1))/(epsi+max(0,(100-x2+1)))] * { -log(epsi+abs(100-x2+1)) } +

*        + if (x2+1<= 0.0) then    1D10*(x2)^2
*          else                    -log(x2+1)
     [1- max(0,(x2+1))/(epsi+max(0,(x2+1)))] * {a*sqr(x2) } +
     [   max(0,(x2+1))/(epsi+max(0,(x2+1)))] * { -log(epsi+abs(x2+1)) }


          }*0.001 ;

x1.l = 15 ;
x2.l = -1 ;

* AMPL answers below
*x1.fx = 13.0962   ;
*x2.fx = -0.783888 ;


Model djtl /all/ ;

Solve djtl using dnlp minimazing f ;
 f.l =f.l*1000;
display f.l;
display x1.l, x2.l;
