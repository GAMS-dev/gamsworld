*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   An orthogonal regression problem.
*   The problem is to fit (orthogonally) an ellipse to a set of 6 points
*   in the 3D space. These points are compatible with this constraint.
*   Source:
*   M. Gulliksson,
*   "Algorithms for nonlinear Least-squares with Applications to
*   Orthogonal Regression",
*   UMINF-178.90, University of Umea, Sweden, 1990.
*   SIF input: Ph. Toint, June 1990.
*              correction by Ph. Shott, Jan 1995.
*   classification QQR2-AN-27-6
*   Parameters for the generation of the data points
*   Constants
*   Computed parameters
*   Construct the data points
*   Parameters of the ellipse
*   Projections of the data points onto the ellipse
*   Solution

Parameter     a ;    a = 9.0;
Parameter     b ;    b = 6.0;
Parameter     c ;    c = 7.0;
Parameter    cx ;   cx = 0.5;
Parameter    cy ;   cy = 0.5;
Parameter    cz ;   cz = 0.5;
Parameter  npts ; npts = 1 + (1 + (1 + (1 + (1 + (1)))));
Parameter    xz ;   xz = 0.5;
Parameter    yz ;   yz = 0.5;
Parameter    zz ;   zz = 0.5;
Parameter   xd1 ;  xd1 = (0.5) + (9.0);
Parameter   yd1 ;  yd1 = (0.5) + (9.0);
Parameter   zd1 ;  zd1 = 0.5;
Parameter   xd2 ;  xd2 = (0.5) + (6.0);
Parameter   yd2 ;  yd2 = (0.5) + (-1.0 * (6.0));
Parameter   zd2 ;  zd2 = 0.5;
Parameter   xd3 ;  xd3 = (0.5) + (-1.0 * (9.0));
Parameter   yd3 ;  yd3 = (0.5) + (-1.0 * (9.0));
Parameter   zd3 ;  zd3 = 0.5;
Parameter   xd4 ;  xd4 = (0.5) + (-1.0 * (6.0));
Parameter   yd4 ;  yd4 = (0.5) + (6.0);
Parameter   zd4 ;  zd4 = 0.5;
Parameter   xd5 ;  xd5 = 0.5;
Parameter   yd5 ;  yd5 = 0.5;
Parameter   zd5 ;  zd5 = (0.5) + (7.0);
Parameter   xd6 ;  xd6 = 0.5;
Parameter   yd6 ;  yd6 = 0.5;
Parameter   zd6 ;  zd6 = (0.5) + (-1.0 * (7.0));


Variable h11 ,h12 ,h13 ,h22 ,h23 ,h33 ,
          g1 , g2 , g3 , x1 , y1 , z1 , x2 ,
          y2 , z2 , x3 , y3 , z3 , x4 , y4 ,
          z4 , x5 , y5 , z5 , x6 , y6 , z6 , obj ;

Equation e1 , e2 , e3 , e4 , e5 , e6 , Def_obj ;

e1.. h11 * x1 * x1 + 2.0*h12 * x1 * y1 + h22 * y1 * y1 - 2.0*g1 *
     x1 - 2.0*g2 * y1 + 2.0*h13 * x1 * z1 + 2.0*h23 * y1 * z1 + h33 * z1 * z1
     - 2.0*g3 * z1 - 1.0 =e= 0 ;
e2.. h11 * x2 * x2 + 2.0*h12 * x2 * y2 + h22 * y2 * y2 - 2.0*g1 *
     x2 - 2.0*g2 * y2+ 2.0*h13 * x2 * z2 + 2.0*h23 * y2 * z2 + h33 * z2 * z2
     - 2.0*g3 * z2 - 1.0 =e= 0 ;
e3.. h11 * x3 * x3 + 2.0*h12 * x3 * y3 + h22 * y3 * y3 - 2.0*g1 *
     x3 - 2.0*g2 * y3 +  2.0*h13 * x3 * z3 + 2.0*h23 * y3 * z3 + h33 * z3 * z3
     - 2.0*g3 * z3 - 1.0 =e= 0 ;
e4.. h11 * x4 * x4 + 2.0*h12 * x4 * y4 + h22 * y4 * y4 - 2.0*g1 *
     x4 - 2.0*g2 * y4 +  2.0*h13 * x4 * z4 + 2.0*h23 * y4 * z4 + h33 * z4 * z4
     - 2.0*g3 * z4 - 1.0 =e= 0 ;
e5.. h11 * x5 * x5 + 2.0*h12 * x5 * y5 + h22 * y5 * y5 - 2.0*g1 *
     x5 - 2.0*g2 * y5 + 2.0*h13 * x5 * z5 + 2.0*h23 * y5 * z5 + h33 * z5 * z5
     - 2.0*g3 * z5 - 1.0 =e= 0 ;
e6.. h11 * x6 * x6 + 2.0*h12 * x6 * y6 + h22 * y6 * y6 - 2.0*g1 *
     x6 - 2.0*g2 * y6 +  2.0*h13 * x6 * z6 + 2.0*h23 * y6 * z6 + h33 * z6 * z6
     - 2.0*g3 * z6 - 1.0 =e= 0 ;
Def_obj..
obj =e= (x1 -9.5)*(x1 -9.5) + (y1 -9.5)*(y1 -9.5) + (z1 -0.5)*(z1 -0.5) +
        (x2 -6.5)*(x2 -6.5) + (y2 +5.5)*(y2 +5.5) + (z2 -0.5)*(z2 -0.5) +
        (x3 +8.5)*(x3 +8.5) + (y3 +8.5)*(y3 +8.5) + (z3 -0.5)*(z3 -0.5) +
        (x4 +5.5)*(x4 +5.5) + (y4 -6.5)*(y4 -6.5) + (z4 -0.5)*(z4 -0.5) +
        (x5 -0.5)*(x5 -0.5) + (y5 -0.5)*(y5 -0.5) + (z5 -7.5)*(z5 -7.5) +
        (x6 -0.5)*(x6 -0.5) + (y6 -0.5)*(y6 -0.5) + (z6 +6.5)*(z6 +6.5)  ;

h11.l =  1.0 ; h22.l =  1.0 ; h33.l =  1.0 ;
 x1.l =  9.5 ;  y1.l =  9.5 ;  z1.l =  0.5 ;
 x2.l =  6.5 ;  y2.l = -5.5 ;  z2.l =  0.5 ;
 x3.l = -8.5 ;  y3.l = -8.5 ;  z3.l =  0.5 ;
 x4.l = -5.5 ;  y4.l =  6.5 ;  z4.l =  0.5 ;
 x5.l =  0.5 ;  y5.l =  0.5 ;  z5.l =  7.5 ;
 x6.l =  0.5 ;  y6.l =  0.5 ;  z6.l = -6.5 ;

Model opthregb /all/ ;

Solve opthregb using nlp minimazing obj ;

 display h11.l ; display h12.l ; display h13.l ;
 display h22.l ; display h23.l ; display h33.l ;
 display  g1.l ; display  g2.l ; display  g3.l ;
 display  x1.l ; display  y1.l ; display  z1.l ;
 display  x2.l ; display  y2.l ; display  z2.l ;
 display  x3.l ; display  y3.l ; display  z3.l ;
 display  x4.l ; display  y4.l ; display  z4.l ;
 display  x5.l ; display  y5.l ; display  z5.l ;
 display  x6.l ; display  y6.l ; display  z6.l ; display obj.l;
