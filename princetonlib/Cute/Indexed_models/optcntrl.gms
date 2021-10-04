*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   An optimal control problem
*   Source:
*   B. Murtagh and M. Saunders,
*   Mathematical Programming studies 16, pp 84-117,
*   (example 5.11)
*   SIF input: Nick Gould, June 1990.
*   classification QQR2-AN-32-20
*   useful parameters
*   Least square problems are bounded below by zero
*   Solution

Parameter    t ;   t = 10      ;
Parameter  tm1 ; tm1 = -1 + 10 ;
Parameter  tp1 ; tp1 =  1 +  9 ;

Variable x0 , y0 , x1 , y1 ,  x2 ,  y2 , x3 , y3 ,
         x4 , y4 , x5 , y5 ,  x6 ,  y6 , x7 , y7 ,
         x8 , y8 , x9 , y9 , x10 , y10 , u0 , u1 ,
         u2 , u3 , u4 , u5 ,  u6 ,  u7 , u8 , u9 , obj ;

Equation obj_bnd , b0 , c0 , b1 , c1 , b2 , c2 ,
              b3 , c3 , b4 , c4 , b5 , c5 , b6 ,
              c6 , b7 , c7 , b8 , c8 , b9 , c9 , Def_obj;


 obj_bnd.. 0.0 =l= 0.5*x0 * x0 + 0.5*x1 * x1 + 0.5*x2 * x2 +
                   0.5*x3 * x3 + 0.5*x4 * x4 + 0.5*x5 * x5 +
                   0.5*x6 * x6 + 0.5*x7 * x7 + 0.5*x8 * x8 +
                   0.5*x9 * x9 + 0.5*x10 * x10;

 b0..      x1 - x0 - 0.2*y0 =e= 0;
 c0..      0.01*y0 * y0 +  y1 - y0 + 0.0040*x0 - 0.2*u0 =e=  0;
 b1..      x2 - x1 - 0.2*y1 =e=  0;
 c1..      0.01*y1 * y1 +  y2 - y1 + 0.0040*x1 - 0.2*u1 =e=  0;
 b2..      x3 - x2 - 0.2*y2 =e=  0;
 c2..      0.01*y2 * y2 +  y3 - y2 + 0.0040*x2 - 0.2*u2 =e=  0;
 b3..      x4 - x3 - 0.2*y3 =e=  0;
 c3..      0.01*y3 * y3 +  y4 - y3 + 0.0040*x3 - 0.2*u3 =e=  0;
 b4..      x5 - x4 - 0.2*y4 =e=  0;
 c4..      0.01*y4 * y4 +  y5 - y4 + 0.0040*x4 - 0.2*u4 =e=  0;
 b5..      x6 - x5 - 0.2*y5 =e=  0;
 c5..      0.01*y5 * y5 +  y6 - y5 + 0.0040*x5 - 0.2*u5 =e=  0;
 b6..      x7 - x6 - 0.2*y6 =e=  0;
 c6..      0.01*y6 * y6 +  y7 - y6 + 0.0040*x6 - 0.2*u6 =e=  0;
 b7..      x8 - x7 - 0.2*y7 =e=  0;
 c7..      0.01*y7 * y7 +  y8 - y7 + 0.0040*x7 - 0.2*u7 =e=  0;
 b8..      x9 - x8 - 0.2*y8 =e=  0;
 c8..      0.01*y8 * y8 +  y9 - y8 + 0.0040*x8 - 0.2*u8 =e=  0;
 b9..      x10 - x9 - 0.2*y9 =e=  0;
 c9..      0.01*y9 * y9 + y10 - y9 + 0.0040*x9 - 0.2*u9 =e=  0;

Def_obj.. obj =e= 0.5 * x0 * x0 + 0.5 *  x1 *  x1 + 0.5 * x2 * x2 +
                  0.5 * x3 * x3 + 0.5 *  x4 *  x4 + 0.5 * x5 * x5 +
                  0.5 * x6 * x6 + 0.5 *  x7 *  x7 + 0.5 * x8 * x8 +
                  0.5 * x9 * x9 + 0.5 * x10 * x10 ;

  x0.lo = 10.0 ; x0.up = 10.0 ;
  y0.lo =  0.0 ; y0.up =  0.0 ;
  y1.lo = -1.0 ;
  y2.lo = -1.0 ;
  y3.lo = -1.0 ;
  y4.lo = -1.0 ;
  y5.lo = -1.0 ;
  y6.lo = -1.0 ;
  y7.lo = -1.0 ;
  y8.lo = -1.0 ;
  y9.lo = -1.0 ;
 x10.lo =  0.0 ;

 y10.lo =  0.0 ; y10.up =  0.0 ;
  u0.lo = -0.2 ;  u0.up =  0.2 ;
  u1.lo = -0.2 ;  u1.up =  0.2 ;
  u2.lo = -0.2 ;  u2.up =  0.2 ;
  u3.lo = -0.2 ;  u3.up =  0.2 ;
  u4.lo = -0.2 ;  u4.up =  0.2 ;
  u5.lo = -0.2 ;  u5.up =  0.2 ;
  u6.lo = -0.2 ;  u6.up =  0.2 ;
  u7.lo = -0.2 ;  u7.up =  0.2 ;
  u8.lo = -0.2 ;  u8.up =  0.2 ;
  u9.lo = -0.2 ;  u9.up =  0.2 ;

Model optcntrl /all/ ;

Solve optcntrl using nlp minimazing obj ;

display  x0.l ; display y0.l ; display  x1.l ;
display  y1.l ; display x2.l ; display  y2.l ;
display  x3.l ; display y3.l ; display  x4.l ;
display  y4.l ; display x5.l ; display  y5.l ;
display  x6.l ; display y6.l ; display  x7.l ;
display  y7.l ; display x8.l ; display  y8.l ;
display  x9.l ; display y9.l ; display x10.l ;
display y10.l ; display u0.l ; display  u1.l ;
display  u2.l ; display u3.l ; display  u4.l ;
display  u5.l ; display u6.l ; display  u7.l ;
display  u8.l ; display u9.l ; display obj.l ;
