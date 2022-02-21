* hs87.mod     LOR2-RN-11-24
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* The problem given here is stated in the notation of Hock & Schittkowski,
* but is corrected to conform to the problem as stated in
*    D. M. Himmelblau, Applied Nonlinear Programming,
*    McGraw-Hill, 1972, pp. 413-414
* except that jump-discontinuities in the objective function are
* omitted by stating it as the sum of two piecewise-linear terms.
* Errors in the problem statement by Hock & Schittkowski are noted in
* comments below.  (dmg, 19970820)


* Nonlinear electrical network

* Ref.: A.R.Colville. A Comparative Study on Nonlinear Programming
* Codes. IBM Scientific Center Report 320-2949, no.6, 1968.

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 106.

* Number of variables:  11 (6 before presolve and linearization of pl terms)
* Number of constraints:  24 (16 before presolve and linearization of pl terms)
* Objective convex piece-wise linear
* Nonlinear constraints

Parameter  a   ;     a = 131.078;
Parameter  b   ;     b = 1.48477;
* Hock & Schittkowski say 1.48577
Parameter  c   ;     c = 0.90798;
Parameter  d0  ;    d0 = 1.47588;
Parameter  d   ;    d  = cos(d0);
Parameter  e0  ;    e0 = 1.47588;
Parameter  e   ;    e  = sin(e0);

Parameter  lim1;  lim1 = 300;
Parameter  lim2;  lim2 = 100;
Parameter  lim3;  lim3 = 200;
Parameter rate1; rate1 = 30;
Parameter rate2; rate2 = 31;
Parameter rate3; rate3 = 28;
Parameter rate4; rate4 = 29;
Parameter rate5; rate5 = 30;

Variable x1 , x2 , x3 , x4 , x5 , x6 , obj ;
Equation   eq_e1 , eq_e2 , eq_e3 , eq_e4 , Def_obj ;

eq_e1.. x1 =e= 300 - x3*x4*cos(b - x6)/a + c*sqr(x3)*d/a ;
eq_e2.. x2 =e= -x3*x4*cos(b + x6)/a + c*sqr(x4)*d/a      ;
eq_e3.. x5 =e= -x3*x4*sin(b + x6)/a + c*sqr(x4)*e/a      ;
eq_e4..  0 =e= 200 - x3*x4*sin(b - x6)/a + c*sqr(x3)*e/a ;

Def_obj..
obj=e=      x1*rate1*(abs(x1-lim1)-(x1-lim1))/(abs(x1-lim1)-(x1-lim1) +0.0000000001)   +
            x1*rate2*(abs(x1-lim1)+(x1-lim1))/(abs(x1-lim1)+(x1-lim1) +0.0000000001)   +

            x2*rate3*(abs(x2-lim2)-(x2-lim2))/(abs(x2-lim2)-(x2-lim2) +0.0000000001)   +
            x2*rate4*((abs(x2-lim2)+(x2-lim2))/(abs(x2-lim2)+(x2-lim2)+0.0000000001)*
                      (abs(x2-lim3)-(x2-lim3))/(abs(x2-lim3)-(x2-lim3)+0.0000000001)) +
            x2*rate5*(abs(x2-lim3)+(x2-lim3))/(abs(x2-lim3)+(x2-lim3) +0.0000000001)    ;



x1.lo =       0      ;   x1.up =     400      ;
x2.lo =       0      ;   x2.up =    1000      ;
x3.lo =     340      ;   x3.up =     420      ;
x4.lo =     340      ;   x4.up =     420      ;
x5.lo =   -1000      ;   x5.up =    1000      ;
* Hock & Schittkowski for x5 say <= 10000
x6.lo =       0      ;   x6.up =       0.5236 ;

x1.l =  390     ;
x2.l = 1000     ;
x3.l =  419.5   ;
x4.l =  340.5   ;
x5.l =  198.175 ;
x6.l =    0.5   ;

* Hock & Schittkowski have an incorrectly placed decimal point in
* the x5 component of the solution they give, which should be
* 21.307... rather than 213.07...

* The formulation stated here has initial objective value
* obj = 41490 and optimal value
* obj = 8827.5977 at

* "optimal solution as starting point ";
*x1.l = 107.8119   ;
*x2.l = 196.3187   ;
*x3.l = 373.8307   ;
*x4.l = 420        ;
*x5.l =  21.30716  ;
*x6.l =   0.153292 ;

Model hs087 /all/ ;
Solve hs087 using dnlp minimazing obj ;
Solve hs087 using dnlp minimazing obj ;


obj.l = obj.l - 8827.5977;
display obj.l;

display x1.l, x2.l, x3.l, x4.l, x5.l;
