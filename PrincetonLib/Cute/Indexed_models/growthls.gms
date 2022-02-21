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
*   SIF input: Nick Gould, Nov, 1991, modified by Ph. Toint, March 1994.
*   classification SUR2-AN-3-0
*   Solution
$Set N 12
Set i /i1*i%N%/;

Parameter n ; n = 3;
Parameter a1 ,a2 ,a3 ,a4 ,a5 ,a6 ,a7 ,a8 ,a9 ,a10 ,a11 ,a12 ;

 a1  = log( 8.0) ;
 a2  = log( 9.0) ;
 a3  = log(10.0) ;
 a4  = log(11.0) ;
 a5  = log(12.0) ;
 a6  = log(13.0) ;
 a7  = log(14.0) ;
 a8  = log(15.0) ;
 a9  = log(16.0) ;
a10  = log(18.0) ;
a11  = log(20.0) ;
a12  = log(25.0) ;

Variable u1 , u2 , u3 , obj ;
Equation Def_obj ;

Def_obj..
obj=e= (u1*exp( a1*(u2+  a1*u3))- 8.0   )*(u1*exp( a1*(u2+(  a1)*u3))- 8.0   )+
       (u1*exp( a2*(u2+  a2*u3))- 8.4305)*(u1*exp( a2*(u2+(  a2)*u3))- 8.4305)+
       (u1*exp( a3*(u2+  a3*u3))- 9.5294)*(u1*exp( a3*(u2+(  a3)*u3))- 9.5294)+
       (u1*exp( a4*(u2+  a4*u3))-10.4627)*(u1*exp( a4*(u2+(  a4)*u3))-10.4627)+
       (u1*exp( a5*(u2+  a5*u3))-12.0   )*(u1*exp( a5*(u2+(  a5)*u3))-12.0   )+
       (u1*exp( a6*(u2+  a6*u3))-13.0205)*(u1*exp( a6*(u2+(  a6)*u3))-13.0205)+
       (u1*exp( a7*(u2+  a7*u3))-14.5949)*(u1*exp( a7*(u2+(  a7)*u3))-14.5949)+
       (u1*exp( a8*(u2+  a8*u3))-16.1078)*(u1*exp( a8*(u2+(  a8)*u3))-16.1078)+
       (u1*exp( a9*(u2+  a9*u3))-18.0596)*(u1*exp( a9*(u2+(  a9)*u3))-18.0596)+
       (u1*exp(a10*(u2+ a10*u3))-20.4569)*(u1*exp(a10*(u2+( a10)*u3))-20.4569)+
       (u1*exp(a11*(u2+ a11*u3))-24.25  )*(u1*exp(a11*(u2+( a11)*u3))-24.25  )+
       (u1*exp(a12*(u2+ a12*u3))-32.9863)*(u1*exp(a12*(u2+( a12)*u3))-32.9863);

u1.l = 100 ;

Model growthls  /all/;
Solve growthls  using nlp minimize obj;

display  u1.l         ;
display  u2.l         ;
display  u3.l         ;
display obj.l         ;
