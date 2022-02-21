* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   GROWTH problem in 3 variables
*   Fit the observed growth g(n) from Gaussian Elimination
*   with complete pivoting to a function of the form
*
*        U1 * n ** ( U2 + LOG(n) * U3 )
*   SIF input: Nick Gould, Nov, 1991.
*   classification NOR2-AN-3-12
*T  'DEFAULT' L2
*   Solution

Parameter n ; n = 3;
Variable u1 , u2 , u3 , obj ;

Equation Def_obj ;

Def_obj.. obj=e= sqr(u1 * exp(log( 8.0)*(u2+(log( 8.0))*u3)) -  8.0   ) +
                 sqr(u1 * exp(log( 9.0)*(u2+(log( 9.0))*u3)) -  8.4305) +
                 sqr(u1 * exp(log(10.0)*(u2+(log(10.0))*u3)) -  9.5294) +
                 sqr(u1 * exp(log(11.0)*(u2+(log(11.0))*u3)) - 10.4627) +
                 sqr(u1 * exp(log(12.0)*(u2+(log(12.0))*u3)) - 12.0   ) +
                 sqr(u1 * exp(log(13.0)*(u2+(log(13.0))*u3)) - 13.0205) +
                 sqr(u1 * exp(log(14.0)*(u2+(log(14.0))*u3)) - 14.5949) +
                 sqr(u1 * exp(log(15.0)*(u2+(log(15.0))*u3)) - 16.1078) +
                 sqr(u1 * exp(log(16.0)*(u2+(log(16.0))*u3)) - 18.0596) +
                 sqr(u1 * exp(log(18.0)*(u2+(log(18.0))*u3)) - 20.4569) +
                 sqr(u1 * exp(log(20.0)*(u2+(log(20.0))*u3)) - 24.25  ) +
                 sqr(u1 * exp(log(25.0)*(u2+(log(25.0))*u3)) - 32.9863)  ;

u1.l = 100 ;

Model growth  /all/;
Solve growth  using nlp minimize obj;

display  u1.l         ;
display  u2.l         ;
display  u3.l         ;
display obj.l         ;
