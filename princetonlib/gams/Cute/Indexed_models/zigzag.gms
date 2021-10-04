*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A nonlinear optimal control problem with both state- and
*   control constraints.
*   The problem is to control (using an applied force of limited
*   magnitude) a mass moving in the plane, such that its
*   trajectory lies within a prescribed distance TOL of the curve y=sin(x),
*   and such that it stops at a given abscissa XT in minimum time.
*   The mass is initially stationary at the origin.
*   Source:
*   Ph. Toint, private communication.
*   SIF input: Ph. Toint, April 1991.
*   classification SOR2-AN-V-V
*   Number of time intervals
*   The number of variables is 6T+4, of which 6 are fixed.
*IE T                   50             $ n = 304
*IE T                   100            $ n = 604
*IE T                   500            $ n = 3004
*   Target abscissa
*   Mass
*   Tolerance along the sine trajectory
*   Constants
*   Useful parameters
*   Maximal force at any time
*   Solution
*LO SOLTN(10)           1.79999921
*LO SOLTN(50)           3.37869476
*LO SOLTN(100)          5.23053464
$offdigit ;
Parameter      t ;     t = 10;
Parameter     xt ;    xt = 10.0;
Parameter   mass ;  mass = 0.5;
Parameter    tol ;   tol = 0.1;
Parameter     rt ;    rt = 10.0;
Parameter    tp1 ;   tp1 = 1.0 + (10.0);
Parameter      h ;     h = (10.0) / (10.0);
Parameter    mdh ;   mdh = (0.5) / ((10.0) / (10.0));
Parameter  xttp1 ; xttp1 = (10.0) * (1.0 + (10.0));
Parameter      w ;     w = 0.5 * ((10.0) * (1.0 + (10.0)));
Parameter     ri ;    ri = 10;
Parameter     ti ;    ti = (10) * ((10.0) / (10.0));
Parameter   wdt1 ;  wdt1 = (0.5 * (10.0*(1.0 + 10.0))) / ( 1*(10.0 / 10.0)) ;
Parameter   wdt2 ;  wdt2 = (0.5 * (10.0*(1.0 + 10.0))) / ( 2*(10.0 / 10.0)) ;
Parameter   wdt3 ;  wdt3 = (0.5 * (10.0*(1.0 + 10.0))) / ( 3*(10.0 / 10.0)) ;
Parameter   wdt4 ;  wdt4 = (0.5 * (10.0*(1.0 + 10.0))) / ( 4*(10.0 / 10.0)) ;
Parameter   wdt5 ;  wdt5 = (0.5 * (10.0*(1.0 + 10.0))) / ( 5*(10.0 / 10.0)) ;
Parameter   wdt6 ;  wdt6 = (0.5 * (10.0*(1.0 + 10.0))) / ( 6*(10.0 / 10.0)) ;
Parameter   wdt7 ;  wdt7 = (0.5 * (10.0*(1.0 + 10.0))) / ( 7*(10.0 / 10.0)) ;
Parameter   wdt8 ;  wdt8 = (0.5 * (10.0*(1.0 + 10.0))) / ( 8*(10.0 / 10.0)) ;
Parameter   wdt9 ;  wdt9 = (0.5 * (10.0*(1.0 + 10.0))) / ( 9*(10.0 / 10.0)) ;
Parameter  wdt10 ; wdt10 = (0.5 * (10.0*(1.0 + 10.0))) / (10*(10.0 / 10.0)) ;
Parameter   fmax ;  fmax = (10.0) / (10.0);
Parameter    im1 ;   im1 = -1 + (10);


Variable x0 ,  y0 ,  vx0 ,  vy0 ,  x1 ,
         y1 , vx1 ,  vy1 ,   x2 ,  y2 ,
        vx2 , vy2 ,   x3 ,   y3 , vx3 ,
        vy3 ,  x4 ,   y4 ,  vx4 , vy4 ,
         x5 ,  y5 ,  vx5 ,  vy5 ,  x6 ,
         y6 , vx6 ,  vy6 ,   x7 ,  y7 ,
        vx7 , vy7 ,   x8 ,   y8 , vx8 ,
        vy8 ,  x9 ,   y9 ,  vx9 , vy9 ,
        x10 , y10 , vx10 , vy10 , ux1 ,
        uy1 , ux2 ,  uy2 ,  ux3 , uy3 ,
        ux4 , uy4 ,  ux5 ,  uy5 , ux6 ,
        uy6 , ux7 ,  uy7 ,  ux8 , uy8 ,
        ux9 , uy9 , ux10 , uy10 , obj ;

Equation  acx1 , acy1 , psx1 , psy1 , acx2,
          acy2 , psx2 , psy2 , acx3 , acy3,
          psx3 , psy3 , acx4 , acy4 , psx4,
          psy4 , acx5 , acy5 , psx5 , psy5,
          acx6 , acy6 , psx6 , psy6 , acx7,
          acy7 , psx7 , psy7 , acx8 , acy8,
          psx8 , psy8 , acx9 , acy9 , psx9,
          psy9 , acx10, acy10,psx10 ,psy10,
          sc1a , sc2a , sc3a , sc4a , sc5a,
          sc6a , sc7a , sc8a , sc9a ,sc10a,
          sc1b , sc2b , sc3b , sc4b ,sc5b ,
          sc6b , sc7b , sc8b , sc9b, sc10b, Def_obj ;


 acx1.. 0.5*vx1 - 0.5*vx0 - ux1 =e= 0 ;
 acy1.. 0.5*vy1 - 0.5*vy0 - uy1 =e= 0 ;
 psx1.. x1 - x0 - vx1 =e= 0 ;
 psy1.. y1 - y0 - vy1 =e= 0 ;
 acx2.. 0.5*vx2 - 0.5*vx1 - ux2 =e= 0 ;
 acy2.. 0.5*vy2 - 0.5*vy1 - uy2 =e= 0 ;
 psx2.. x2 - x1 - vx2 =e= 0 ;
 psy2.. y2 - y1 - vy2 =e= 0 ;
 acx3.. 0.5*vx3 - 0.5*vx2 - ux3 =e= 0 ;
 acy3.. 0.5*vy3 - 0.5*vy2 - uy3 =e= 0 ;
 psx3.. x3 - x2 - vx3 =e= 0 ;
 psy3.. y3 - y2 - vy3 =e= 0 ;
 acx4.. 0.5*vx4 - 0.5*vx3 - ux4 =e= 0 ;
 acy4.. 0.5*vy4 - 0.5*vy3 - uy4 =e= 0 ;
 psx4.. x4 - x3 - vx4 =e= 0 ;
 psy4.. y4 - y3 - vy4 =e= 0 ;
 acx5.. 0.5*vx5 - 0.5*vx4 - ux5 =e= 0 ;
 acy5.. 0.5*vy5 - 0.5*vy4 - uy5 =e= 0 ;
 psx5.. x5 - x4 - vx5 =e= 0 ;
 psy5.. y5 - y4 - vy5 =e= 0 ;
 acx6.. 0.5*vx6 - 0.5*vx5 - ux6 =e= 0 ;
 acy6.. 0.5*vy6 - 0.5*vy5 - uy6 =e= 0 ;
 psx6.. x6 - x5 - vx6 =e= 0 ;
 psy6.. y6 - y5 - vy6 =e= 0 ;
 acx7.. 0.5*vx7 - 0.5*vx6 - ux7 =e= 0 ;
 acy7.. 0.5*vy7 - 0.5*vy6 - uy7 =e= 0 ;
 psx7.. x7 - x6 - vx7 =e= 0 ;
 psy7.. y7 - y6 - vy7 =e= 0 ;
 acx8.. 0.5*vx8 - 0.5*vx7 - ux8 =e= 0 ;
 acy8.. 0.5*vy8 - 0.5*vy7 - uy8 =e= 0 ;
 psx8.. x8 - x7 - vx8 =e= 0 ;
 psy8.. y8 - y7 - vy8 =e= 0 ;
 acx9.. 0.5*vx9 - 0.5*vx8 - ux9 =e= 0 ;
 acy9.. 0.5*vy9 - 0.5*vy8 - uy9 =e= 0 ;
 psx9.. x9 - x8 - vx9 =e= 0 ;
 psy9.. y9 - y8 - vy9 =e= 0 ;
acx10.. 0.5*vx10 - 0.5*vx9 - ux10 =e= 0 ;
acy10.. 0.5*vy10 - 0.5*vy9 - uy10 =e= 0 ;
psx10.. x10 - x9 - vx10 =e= 0 ;
psy10.. y10 - y9 - vy10 =e= 0 ;

 sc1a..  -sin (  x1 )  +  y1 + 0.1 =l= 0.2 ;
 sc2a..  -sin (  x2 )  +  y2 + 0.1 =l= 0.2 ;
 sc3a..  -sin (  x3 )  +  y3 + 0.1 =l= 0.2 ;
 sc4a..  -sin (  x4 )  +  y4 + 0.1 =l= 0.2 ;
 sc5a..  -sin (  x5 )  +  y5 + 0.1 =l= 0.2 ;
 sc6a..  -sin (  x6 )  +  y6 + 0.1 =l= 0.2 ;
 sc7a..  -sin (  x7 )  +  y7 + 0.1 =l= 0.2 ;
 sc8a..  -sin (  x8 )  +  y8 + 0.1 =l= 0.2 ;
 sc9a..  -sin (  x9 )  +  y9 + 0.1 =l= 0.2 ;
sc10a..  -sin ( x10 )  + y10 + 0.1 =l= 0.2 ;

 sc1b.. 0 =l= -sin (  x1 )  +  y1 + 0.1 ;
 sc2b.. 0 =l= -sin (  x2 )  +  y2 + 0.1 ;
 sc3b.. 0 =l= -sin (  x3 )  +  y3 + 0.1 ;
 sc4b.. 0 =l= -sin (  x4 )  +  y4 + 0.1 ;
 sc5b.. 0 =l= -sin (  x5 )  +  y5 + 0.1 ;
 sc6b.. 0 =l= -sin (  x6 )  +  y6 + 0.1 ;
 sc7b.. 0 =l= -sin (  x7 )  +  y7 + 0.1 ;
 sc8b.. 0 =l= -sin (  x8 )  +  y8 + 0.1 ;
 sc9b.. 0 =l= -sin (  x9 )  +  y9 + 0.1 ;
sc10b.. 0 =l= -sin ( x10 )  + y10 + 0.1 ;

Def_obj..  obj =e= ((( x1 - 10.0)*( x1 - 10.0)) /55.0               ) +
                   ((( x2 - 10.0)*( x2 - 10.0)) /27.5               ) +
                   ((( x3 - 10.0)*( x3 - 10.0)) /18.333333333333332 ) +
                   ((( x4 - 10.0)*( x4 - 10.0)) /13.75              ) +
                   ((( x5 - 10.0)*( x5 - 10.0)) /11.0               ) +
                   ((( x6 - 10.0)*( x6 - 10.0)) / 9.166666666666666 ) +
                   ((( x7 - 10.0)*( x7 - 10.0)) / 7.857142857142857 ) +
                   ((( x8 - 10.0)*( x8 - 10.0)) / 6.875             ) +
                   ((( x9 - 10.0)*( x9 - 10.0)) / 6.111111111111111 ) +
                   (((x10 - 10.0)*(x10 - 10.0)) / 5.5               ) ;

 vx1.l =  1.0 ;
 vx2.l =  1.0 ;
 vx3.l =  1.0 ;
 vx4.l =  1.0 ;
 vx5.l =  1.0 ;
 vx6.l =  1.0 ;
 vx7.l =  1.0 ;
 vx8.l =  1.0 ;
 vx9.l =  1.0 ;

  x0.lo =  0.0 ;  x0.up  = 0.0 ;
  y0.lo =  0.0 ;  y0.up  = 0.0 ;
 vx0.lo =  0.0 ; vx0.up  = 0.0 ;
 vy0.lo =  0.0 ; vy0.up  = 0.0 ;

  x1.lo =  0.0 ;  x1.up  = 10.0 ;  x1.l  = 1.0 ;
  x2.lo =  0.0 ;  x2.up  = 10.0 ;  x2.l  = 2.0 ;
  x3.lo =  0.0 ;  x3.up  = 10.0 ;  x3.l  = 3.0 ;
  x4.lo =  0.0 ;  x4.up  = 10.0 ;  x4.l  = 4.0 ;
  x5.lo =  0.0 ;  x5.up  = 10.0 ;  x5.l  = 5.0 ;

  x6.lo =  0.0 ;   x6.up = 10.0 ;   x6.l =  6.0 ;
  x7.lo =  0.0 ;   x7.up = 10.0 ;   x7.l =  7.0 ;
  x8.lo =  0.0 ;   x8.up = 10.0 ;   x8.l =  8.0 ;
  x9.lo =  0.0 ;   x9.up = 10.0 ;   x9.l =  9.0 ;
 x10.lo =  0.0 ;  x10.up = 10.0 ;  x10.l = 10.0 ;
vx10.lo =  0.0 ; vx10.up =  0.0 ; vx10.l =  1.0 ;

vy10.lo =  0.0 ; vy10.up  = 0.0 ;
 ux1.lo = -1.0 ;  ux1.up  = 1.0 ;
 uy1.lo = -1.0 ;  uy1.up  = 1.0 ;
 ux2.lo = -1.0 ;  ux2.up  = 1.0 ;
 uy2.lo = -1.0 ;  uy2.up  = 1.0 ;
 ux3.lo = -1.0 ;  ux3.up  = 1.0 ;
 uy3.lo = -1.0 ;  uy3.up  = 1.0 ;
 ux4.lo = -1.0 ;  ux4.up  = 1.0 ;
 uy4.lo = -1.0 ;  uy4.up  = 1.0 ;
 ux5.lo = -1.0 ;  ux5.up  = 1.0 ;
 uy5.lo = -1.0 ;  uy5.up  = 1.0 ;
 ux6.lo = -1.0 ;  ux6.up  = 1.0 ;
 uy6.lo = -1.0 ;  uy6.up  = 1.0 ;
 ux7.lo = -1.0 ;  ux7.up  = 1.0 ;
 uy7.lo = -1.0 ;  uy7.up  = 1.0 ;
 ux8.lo = -1.0 ;  ux8.up  = 1.0 ;
 uy8.lo = -1.0 ;  uy8.up  = 1.0 ;
 ux9.lo = -1.0 ;  ux9.up  = 1.0 ;
 uy9.lo = -1.0 ;  uy9.up  = 1.0 ;
ux10.lo = -1.0 ; ux10.up  = 1.0 ;
uy10.lo = -1.0 ; uy10.up  = 1.0 ;

Model zigzag /all/ ;

Solve zigzag  using nlp minimazing obj ;

display  x0.l  ;  display  y0.l  ;  display  vx0.l  ;  display  vy0.l  ;
display  x1.l  ;  display  y1.l  ;  display  vx1.l  ;  display  vy1.l  ;
display  x2.l  ;  display  y2.l  ;  display  vx2.l  ;  display  vy2.l  ;
display  x3.l  ;  display  y3.l  ;  display  vx3.l  ;  display  vy3.l  ;
display  x4.l  ;  display  y4.l  ;  display  vx4.l  ;  display  vy4.l  ;
display  x5.l  ;  display  y5.l  ;  display  vx5.l  ;  display  vy5.l  ;
display  x6.l  ;  display  y6.l  ;  display  vx6.l  ;  display  vy6.l  ;
display  x7.l  ;  display  y7.l  ;  display  vx7.l  ;  display  vy7.l  ;
display  x8.l  ;  display  y8.l  ;  display  vx8.l  ;  display  vy8.l  ;
display  x9.l  ;  display  y9.l  ;  display  vx9.l  ;  display  vy9.l  ;
display x10.l  ;  display y10.l  ;  display vx10.l  ;  display vy10.l  ;
display ux1.l  ;  display uy1.l  ;  display  ux2.l  ;  display  uy2.l  ;
display ux3.l  ;  display uy3.l  ;  display  ux4.l  ;  display  uy4.l  ;
display ux5.l  ;  display uy5.l  ;  display  ux6.l  ;  display  uy6.l  ;
display ux7.l  ;  display uy7.l  ;  display  ux8.l  ;  display  uy8.l  ;
display ux9.l  ;  display uy9.l  ;  display ux10.l  ;  display uy10.l  ;
display obj.l  ;
