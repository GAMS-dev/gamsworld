* Cute AMPL model  (translation to GAMS)
*
* hs87.mod      LOR2-RN-11-24
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* The problem given here is stated in the notation of Hock & Schittkowski,
* but is corrected to conform to the problem as stated in
*       D. M. Himmelblau, Applied Nonlinear Programming,
*       McGraw-Hill, 1972, pp. 413-414
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

parameter      a ;               a  = 131.078 ;
parameter      b ;               b  = 1.48477 ;
* Hock & Schittkowski say b =  1.48577


parameter      c ;               c  = 0.90798 ;
parameter     d0 ;              d0  = 1.47588 ;
parameter      d ;               d  = cos(d0) ;
parameter     e0 ;              e0  = 1.47588 ;
parameter      e ;               e  = sin(e0) ;
parameter   lim1 ;            lim1  = 300     ;
parameter   lim2 ;            lim2  = 100     ;
parameter   lim3 ;            lim3  = 200     ;
parameter  rate1 ;           rate1  = 30      ;
parameter  rate2 ;           rate2  = 31      ;
parameter  rate3 ;           rate3  = 28      ;
parameter  rate4 ;           rate4  = 29      ;
parameter  rate5 ;           rate5  = 30      ;

Variable x1 ,x2 ,x3 ,x4 ,x5 ,x6 , obj ;

Equation e1 , e2 , e3 , e4 , Def_obj ;


e1..        x1  =e= 300 - x3*x4*cos(b - x6)/a + c*sqr(x3)*d/a ;
e2..        x2  =e=     - x3*x4*cos(b + x6)/a + c*sqr(x4)*d/a ;
e3..        x5  =e=     - x3*x4*sin(b + x6)/a + c*sqr(x4)*e/a ;
e4..         0  =e= 200 - x3*x4*sin(b - x6)/a + c*sqr(x3)*e/a ;

Def_obj..   obj =e=
                    rate1* x1*{lim1/(x1-lim1)}*{(min(x1,lim1)/lim1)-1}+
                    rate2* x1*{lim1/(x1-lim1)}*{(max(x1,lim1)/lim1)-1}+

                    rate3* x2*{lim2/(x2-lim2)}*{(min(x2,lim2)/lim2)-1}+

                    rate4* x2*{lim2/(x2-lim2)}*{(max(x2,lim2)/lim2)-1}*
                              {lim3/(x2-lim3)}*{(min(x2,lim3)/lim3)-1}+

                    rate5* x2*{lim3/(x2-lim3)}*{(max(x2,lim3)/lim3)-1}
;

* <<lim1; rate1, rate2>> x1 + <<lim2, lim3; rate3, rate4, rate5>> x2;


x1.lo  =     0 ; x1.up =  400      ;
x2.lo  =     0 ; x2.up = 1000      ;
x3.lo  =   340 ; x3.up =  420      ;
x4.lo  =   340 ; x4.up =  420      ;
x5.lo  = -1000 ; x5.up = 1000      ;
x6.lo  =     0 ; x6.up =    0.5236 ;
* Hock & Schittkowski say x5<= 10000


x1.l =  390.000 ;
x2.l = 1000.000 ;
x3.l =  419.500 ;
x4.l =  340.500 ;
x5.l =  198.175 ;
x6.l =    0.500 ;



* Hock & Schittkowski have an incorrectly placed decimal point in
* the x5 component of the solution they give, which should be
* 21.307... rather than 213.07...

* The formulation stated here has initial objective value
* obj = 41490 and optimal value
* obj = 8827.5977 at

*printf "optimal solution as starting point \n";
* let x1 := 107.8119
* let x2 := 196.3187
* let x3 := 373.8307
* let x4 := 420
* let x5 := 21.30716
* let x6 := 0.153292

Model hs087  /all/;

Solve hs087 using dnlp minimize obj;

display x1.l, x2.l, x3.l, x4.l, x5.l;

obj.l = obj.l  - 8827.5977;
display obj.l;

parameter a1,a2,a3,a4,a5,a6;
              a1  =   rate1* x1.l*{lim1/(x1.l-lim1)}*{(min(x1.l,lim1)/lim1)-1};
              a2  =   rate2* x1.l*{lim1/(x1.l-lim1)}*{(max(x1.l,lim1)/lim1)-1};
              a3  =   rate3* x2.l*{lim2/(x2.l-lim2)}*{(min(x2.l,lim2)/lim2)-1};
              a4  =   rate4* x2.l*{lim2/(x2.l-lim2)}*{(max(x2.l,lim2)/lim2)-1}*
                                  {lim3/(x2.l-lim3)}*{(min(x2.l,lim3)/lim3)-1};
              a5  =   rate5* x2.l*{lim3/(x2.l-lim3)}*{(max(x2.l,lim3)/lim3)-1};
              a6 = a1+a2+a3+a4+a5;
display a1,a2,a3,a4,a5,a6 ;
