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

parameter  a;        a     = 131.078 ;
parameter  b;        b     = 1.48477 ;
parameter  c;        c     = 0.90798 ;
parameter  d0;       d0    = 1.47588 ;
parameter  e0;       e0    = 1.47588 ;
parameter  lim1;     lim1  = 300     ;
parameter  lim2;     lim2  = 100     ;
parameter  lim3;     lim3  = 200     ;
parameter  rate1;    rate1 = 30      ;
parameter  rate2;    rate2 = 31      ;
parameter  rate3;    rate3 = 28      ;
parameter  rate4;    rate4 = 29      ;
parameter  rate5;    rate5 = 30      ;

* Hock & Schittkowski say b = 1.48577

parameter d;  d = cos(d0);
parameter e;  e = sin(e0);

Variable x1, x2, x3, x4, x5, x6, x11, x12, x21, x22, x23, loss;

Equation e1, e2, e3, e4, eq_x1, eq_x2,  Def_loss;

eq_x1..  x1 =e= x11 + x12      ;
eq_x2..  x2 =e= x21 + x22 + x23;

e1.. x1 =e= 300 - x3*x4*cos(b - x6)/a + c* sqr(x3) *d/a ;
e2.. x2 =e= -x3*x4*cos(b + x6)/a + c*sqr(x4)*d/a        ;
e3.. x5 =e= -x3*x4*sin(b + x6)/a + c*sqr(x4)*e/a        ;
e4.. 0  =e= 200 - x3*x4*sin(b - x6)/a + c*sqr(x3)*e/a   ;

Def_loss.. loss =e=  x11*rate1 + x12*rate2
                    +x21*rate3 + x22*rate4 + x23*rate5;

x1.l = 390     ;
x2.l = 1000    ;
x3.l = 419.5   ;
x4.l = 340.5   ;
x5.l = 198.175 ;
x6.l = 0.5     ;

x1.lo = 0    ; x1.up =     400    ;
x2.lo = 0    ; x2.up =     1000   ;
x3.lo = 340  ; x3.up =     420    ;
x4.lo = 340  ; x4.up =     420    ;
x5.lo = -1000; x5.up =     1000   ;
* Hock & Schittkowski say <= 10000
x6.lo = 0    ; x6.up =     0.5236 ;

* AP added bounds
x11.lo = 0;    x11.up = lim1;
x12.lo = 0;    x12.up = 400  - lim1;
x21.lo = 0;    x21.up = lim2;
x22.lo = 0;    x22.up = lim3 - lim2;
x23.lo = 0;    x23.up = 1000 - lim3;

* Hock & Schittkowski have an incorrectly placed decimal point in
* the x5 component of the solution they give, which should be
* 21.307... rather than 213.07...

* The formulation stated here has initial objective value
* loss = 41490 and optimal value
* loss = 8827.5977 at
* x1 = 107.8119
* x2 = 196.3187
* x3 = 373.8307
* x4 = 420
* x5 = 21.30716
* x6 = 0.153292

model hs87 /all/;
solve hs87 using nlp minimize loss;
