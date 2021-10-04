*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem:
*   ********
*   A nonlinear least-squares problem.  This problem arises in measuring
*   angles and distances to a vibrating beam using a laser-Doppler
*   velocimeter.
*   This is an unconstrained variant of the bounded constrained problem YFIT.
*   Source:
*   an exercize for L. Watson course on LANCELOT in the Spring 1993.
*   SIF input: B. E. Lindholm, Virginia Tech., Spring 1993,
*              modified by Ph. Toint, March 1994.
*   classification SUR2-MN-3-0

   Parameter   zero ;  zero =   0         ;
   Parameter      p ;     p =  16         ;
   Parameter  realp ; realp =  16.0       ;
   Parameter     y0 ;    y0 =  21.158931  ;
   Parameter     y1 ;    y1 =  17.591719  ;
   Parameter     y2 ;    y2 =  14.046854  ;
   Parameter     y3 ;    y3 =  10.519732  ;
   Parameter     y4 ;    y4 =   7.0058392 ;
   Parameter     y5 ;    y5 =   3.5007293 ;
   Parameter     y6 ;    y6 =   0.0       ;
   Parameter     y7 ;    y7 =  -3.5007293 ;
   Parameter     y8 ;    y8 =  -7.0058392 ;
   Parameter     y9 ;    y9 = -10.519732  ;
   Parameter    y10 ;   y10 = -14.046854  ;
   Parameter    y11 ;   y11 = -17.591719  ;
   Parameter    y12 ;   y12 = -21.158931  ;
   Parameter    y13 ;   y13 = -24.753206  ;
   Parameter    y14 ;   y14 = -28.379405  ;
   Parameter    y15 ;   y15 = -32.042552  ;
   Parameter    y16 ;   y16 = -35.747869  ;
   Parameter  index ; index =  16         ;

Variable alpha , beta , dist , obj ;

Equation  Def_obj ;


Def_obj..

obj =e=(dist *
       (arctan(alpha*(1.0-( 0.0/16.0))+beta*( 0.0/16.0))) - 21.158931 )*(dist *
       (arctan(alpha*(1.0-( 0.0/16.0))+beta*( 0.0/16.0))) - 21.158931 )+(dist *
       (arctan(alpha*(1.0-( 1.0/16.0))+beta*( 1.0/16.0))) - 17.591719 )*(dist *
       (arctan(alpha*(1.0-( 1.0/16.0))+beta*( 1.0/16.0))) - 17.591719 )+(dist *
       (arctan(alpha*(1.0-( 2.0/16.0))+beta*( 2.0/16.0))) - 14.046854 )*(dist *
       (arctan(alpha*(1.0-( 2.0/16.0))+beta*( 2.0/16.0))) - 14.046854 )+(dist *
       (arctan(alpha*(1.0-( 3.0/16.0))+beta*( 3.0/16.0))) - 10.519732 )*(dist *
       (arctan(alpha*(1.0-( 3.0/16.0))+beta*( 3.0/16.0))) - 10.519732 )+(dist *
       (arctan(alpha*(1.0-( 4.0/16.0))+beta*( 4.0/16.0))) -  7.0058392)*(dist *
       (arctan(alpha*(1.0-( 4.0/16.0))+beta*( 4.0/16.0))) -  7.0058392)+(dist *
       (arctan(alpha*(1.0-( 5.0/16.0))+beta*( 5.0/16.0))) -  3.5007293)*(dist *
       (arctan(alpha*(1.0-( 5.0/16.0))+beta*( 5.0/16.0))) -  3.5007293)+(dist *
       (arctan(alpha*(1.0-( 6.0/16.0))+beta*( 6.0/16.0)))             )*(dist *
       (arctan(alpha*(1.0-( 6.0/16.0))+beta*( 6.0/16.0)))             )+(dist *
       (arctan(alpha*(1.0-( 7.0/16.0))+beta*( 7.0/16.0))) +  3.5007293)*(dist *
       (arctan(alpha*(1.0-( 7.0/16.0))+beta*( 7.0/16.0))) +  3.5007293)+(dist *
       (arctan(alpha*(1.0-( 8.0/16.0))+beta*( 8.0/16.0))) +  7.0058392)*(dist *
       (arctan(alpha*(1.0-( 8.0/16.0))+beta*( 8.0/16.0))) +  7.0058392)+(dist *
       (arctan(alpha*(1.0-( 9.0/16.0))+beta*( 9.0/16.0))) + 10.519732 )*(dist *
       (arctan(alpha*(1.0-( 9.0/16.0))+beta*( 9.0/16.0))) + 10.519732 )+(dist *
       (arctan(alpha*(1.0-(10.0/16.0))+beta*(10.0/16.0))) + 14.046854 )*(dist *
       (arctan(alpha*(1.0-(10.0/16.0))+beta*(10.0/16.0))) + 14.046854 )+(dist *
       (arctan(alpha*(1.0-(11.0/16.0))+beta*(11.0/16.0))) + 17.591719 )*(dist *
       (arctan(alpha*(1.0-(11.0/16.0))+beta*(11.0/16.0))) + 17.591719 )+(dist *
       (arctan(alpha*(1.0-(12.0/16.0))+beta*(12.0/16.0))) + 21.158931 )*(dist *
       (arctan(alpha*(1.0-(12.0/16.0))+beta*(12.0/16.0))) + 21.158931 )+(dist *
       (arctan(alpha*(1.0-(13.0/16.0))+beta*(13.0/16.0))) + 24.753206 )*(dist *
       (arctan(alpha*(1.0-(13.0/16.0))+beta*(13.0/16.0))) + 24.753206 )+(dist *
       (arctan(alpha*(1.0-(14.0/16.0))+beta*(14.0/16.0))) + 28.379405 )*(dist *
       (arctan(alpha*(1.0-(14.0/16.0))+beta*(14.0/16.0))) + 28.379405 )+(dist *
       (arctan(alpha*(1.0-(15.0/16.0))+beta*(15.0/16.0))) + 32.042552 )*(dist *
       (arctan(alpha*(1.0-(15.0/16.0))+beta*(15.0/16.0))) + 32.042552 )+(dist *
       (arctan(alpha*(1.0-(16.0/16.0))+beta*(16.0/16.0))) + 35.747869 )*(dist *
       (arctan(alpha*(1.0-(16.0/16.0))+beta*(16.0/16.0))) + 35.747869 );



 alpha.l  =  0.6 ;
  beta.l  = -0.6 ;
  dist.lo =  0.0 ;
  dist.l  = 20.0 ;

Model yfitu /all/ ;

Solve yfitu using nlp minimazing obj ;
Solve yfitu using nlp minimazing obj ; 
        display alpha.l ;
        display  beta.l ;
        display  dist.l ;
        display   obj.l ;
