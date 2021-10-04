*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   An optimal control version of the Singly Supported NonLinear BEAM problem.
*   The energy of a beam of length 1 compressed by a force P is to be
*   minimized.  The control variable is the derivative of the deflection angle.
*   The problem is discretized using the trapezoidal rule. It is non convex.
*   Source:
*   H. Maurer and H.D. Mittelman,
*   "The non-linear beam via optimal control with bound state variables",
*   Optimal Control Applications and Methods 12, pp. 19-31, 1991.
*   SIF input: Ph. Toint, Nov 1993.
*   classification  OOR2-MN-V-V
*   Discretization: specify the number of interior points + 1
*IE NI                  50             $ n =   153, m =   100
*IE NI                  100            $ n =   303, m =   200
*IE NI                  500            $ n =  1503, m =  1000
*IE NI                  1000           $ n =  3003, m =  1000
*IE NI                  5000           $ n = 15003, m = 10000
*  Set ALPHA to the force divided by the bending stiffness.
*  For this value, 3 contact zones with the boundary of maximum displacement
*  occur, alternatively with negative and positive displacement.
*   Useful constants
*   deflection angle
*   displacement
*   derivative of the deflection angle (control variable)
*   objective function: energy
*   state equations
*   All variables are free
*   Impose the bound on the displacements
*   Impose that the beam does not curve too far backwards
*XL SSNLBEAM  T(I)      -1.57079663
*XU SSNLBEAM  T(I)      1.57079663
*   Boundary conditions
*  The origin is a saddle point!
*  Perturb the origin
*   Solution
*LO SOLTN(10)           337.7716271268
*LO SOLTN(50)           340.0150353685
*LO SOLTN(100)          340.0284918253
*LO SOLTN(500)          340.0323978636
*LO SOLTN(1000)
$offdigit
  Parameter     ni ;     ni = 10;
  Parameter  alpha ;  alpha = 350.0;
  Parameter    rni ;    rni = 10.0;
  Parameter   nim1 ;   nim1 = -1 + (10);
  Parameter      h ;      h = 1.0 / (10.0);
  Parameter    hd4 ;    hd4 = 0.25 * (1.0 / (10.0));
  Parameter    hd2 ;    hd2 = 0.5 * (1.0 / (10.0));
  Parameter     ah ;     ah = (350.0) * (1.0 / (10.0));
  Parameter   ahd2 ;   ahd2 = 0.5 * ((350.0) * (1.0 / (10.0)));
  Parameter    ip1 ;    ip1 = 1 + (9);
  Parameter     ri ;     ri = 10;
  Parameter     tt ;     tt = (10) * (1.0 / (10.0));
  Parameter    ctt ;    ctt = cos((10) * (1.0 / (10.0)));
  Parameter   sctt ;   sctt = 0.05 * (cos((10) * (1.0 / (10.0))));

Variable t0 , t1 , t2 , t3 , t4 , t5 , t6 , t7 , t8 , t9 , t10 ,
         x0 , x1 , x2 , x3 , x4 , x5 , x6 , x7 , x8 , x9 , x10 ,
         u0 , u1 , u2 , u3 , u4 , u5 , u6 , u7 , u8 , u9 , u10 ,
        obj ;

Equation ex0 , et0 , ex1 , et1 , ex2 ,
         et2 , ex3 , et3 , ex4 , et4 ,
         ex5 , et5 , ex6 , et6 , ex7 ,
         et7 , ex8 , et8 , ex9 , et9 , Def_obj ;

ex0..       -0.05*(sin(t1)) - 0.05*(sin(t0)) + x1 - x0 =e= 0;
et0..        t1 - t0 - 0.05*u1 - 0.05*u0 =e= 0;
ex1..       -0.05*(sin(t2)) - 0.05*(sin(t1)) + x2 - x1 =e= 0;
et1..        t2 - t1 - 0.05*u2 - 0.05*u1 =e= 0;
ex2..       -0.05*(sin(t3)) - 0.05*(sin(t2)) + x3 - x2 =e= 0;
et2..        t3 - t2 - 0.05*u3 - 0.05*u2 =e= 0;
ex3..       -0.05*(sin(t4)) - 0.05*(sin(t3)) + x4 - x3 =e= 0;
et3..        t4 - t3 - 0.05*u4 - 0.05*u3 =e= 0;
ex4..       -0.05*(sin(t5)) - 0.05*(sin(t4)) + x5 - x4 =e= 0;
et4..        t5 - t4 - 0.05*u5 - 0.05*u4 =e= 0;
ex5..       -0.05*(sin(t6)) - 0.05*(sin(t5)) + x6 - x5 =e= 0;
et5..        t6 - t5 - 0.05*u6 - 0.05*u5 =e= 0;
ex6..       -0.05*(sin(t7)) - 0.05*(sin(t6)) + x7 - x6 =e= 0;
et6..        t7 - t6 - 0.05*u7 - 0.05*u6 =e= 0;
ex7..       -0.05*(sin(t8)) - 0.05*(sin(t7)) + x8 - x7 =e= 0;
et7..        t8 - t7 - 0.05*u8 - 0.05*u7 =e= 0;
ex8..       -0.05*(sin(t9)) - 0.05*(sin(t8)) + x9 - x8 =e= 0;
et8..        t9 - t8 - 0.05*u9 - 0.05*u8 =e= 0;
ex9..       -0.05*(sin(t10)) - 0.05*(sin(t9)) + x10 - x9 =e= 0;
et9..        t10 - t9 - 0.05*u10 - 0.05*u9 =e= 0;

Def_obj..  obj =e= 0.05*u1 * u1 + 0.05*u0 * u0 +
                   17.5*(cos(t1)) + 17.5*(cos(t0)) +
                   0.05*u2 * u2 + 0.05*u1 * u1 +
                   17.5*(cos(t2)) + 17.5*(cos(t1)) +
                   0.05*u3 * u3 + 0.05*u2 * u2 +
                   17.5*(cos(t3)) + 17.5*(cos(t2)) +
                   0.05*u4 * u4 + 0.05*u3 * u3 +
                   17.5*(cos(t4)) + 17.5*(cos(t3)) +
                   0.05*u5 * u5 + 0.05*u4 * u4 +
                   17.5*(cos(t5)) + 17.5*(cos(t4)) +
                   0.05*u6 * u6 + 0.05*u5 * u5 +
                   17.5*(cos(t6)) + 17.5*(cos(t5)) +
                   0.05*u7 * u7 + 0.05*u6 * u6 +
                   17.5*(cos(t7)) + 17.5*(cos(t6)) +
                   0.05*u8 * u8 + 0.05*u7 * u7 +
                   17.5*(cos(t8)) + 17.5*(cos(t7)) +
                   0.05*u9 * u9 + 0.05*u8 * u8 +
                   17.5*(cos(t9)) + 17.5*(cos(t8)) +
                   0.05*u10 * u10 + 0.05*u9 * u9 +
                   17.5*(cos(t10)) + 17.5*(cos(t9));

  t0.lo = -1.0  ;   t0.up = 1.0  ;   t0.l = 0.05                 ;
  t1.lo = -1.0  ;   t1.up = 1.0  ;   t1.l = 0.04975020826390129  ;
  t2.lo = -1.0  ;   t2.up = 1.0  ;   t2.l = 0.04900332889206208  ;
  t3.lo = -1.0  ;   t3.up = 1.0  ;   t3.l = 0.047766824456280305 ;
  t4.lo = -1.0  ;   t4.up = 1.0  ;   t4.l = 0.04605304970014426  ;
  t5.lo = -1.0  ;   t5.up = 1.0  ;   t5.l = 0.04387912809451864  ;
  t6.lo = -1.0  ;   t6.up = 1.0  ;   t6.l = 0.041266780745483914 ;
  t7.lo = -1.0  ;   t7.up = 1.0  ;   t7.l = 0.038242109364224425 ;
  t8.lo = -1.0  ;   t8.up = 1.0  ;   t8.l = 0.03483533546735827  ;
  t9.lo = -1.0  ;   t9.up = 1.0  ;   t9.l = 0.03108049841353322  ;
 t10.lo = -1.0  ;  t10.up = 1.0  ;  t10.l = 0.027015115293406985 ;
  x0.lo =  0.0  ;   x0.up = 0.0  ;   x0.l = 0.05                 ;
  x1.lo = -0.05 ;   x1.up = 0.05 ;   x1.l = 0.04975020826390129  ;
  x2.lo = -0.05 ;   x2.up = 0.05 ;   x2.l = 0.04900332889206208  ;
  x3.lo = -0.05 ;   x3.up = 0.05 ;   x3.l = 0.047766824456280305 ;
  x4.lo = -0.05 ;   x4.up = 0.05 ;   x4.l = 0.04605304970014426  ;
  x5.lo = -0.05 ;   x5.up = 0.05 ;   x5.l = 0.04387912809451864  ;
  x6.lo = -0.05 ;   x6.up = 0.05 ;   x6.l = 0.041266780745483914 ;
  x7.lo = -0.05 ;   x7.up = 0.05 ;   x7.l = 0.038242109364224425 ;
  x8.lo = -0.05 ;   x8.up = 0.05 ;   x8.l = 0.03483533546735827  ;
  x9.lo = -0.05 ;   x9.up = 0.05 ;   x9.l = 0.03108049841353322  ;
 x10.lo =  0.0  ;  x10.up = 0.0  ;  x10.l = 0.027015115293406985 ;

Model ssnlbeam / all / ;

Solve ssnlbeam  using nlp minimazing obj ;

display  t0.l ; display  t1.l ; display  t2.l ; display t3.l ;
display  t4.l ; display  t5.l ; display  t6.l ; display t7.l ;
display  t8.l ; display  t9.l ; display t10.l ; display x0.l ;
display  x1.l ; display  x2.l ; display  x3.l ; display x4.l ;
display  x5.l ; display  x6.l ; display  x7.l ; display x8.l ;
display  x9.l ; display x10.l ; display  u0.l ; display u1.l ;
display  u2.l ; display  u3.l ; display  u4.l ; display u5.l ;
display  u6.l ; display  u7.l ; display  u8.l ; display u9.l ;
display u10.l ; display obj.l ;
