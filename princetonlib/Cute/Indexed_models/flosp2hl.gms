* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A  two-dimensional base  flow  problem in an inclined enclosure.
*   Heat flux constant at y = +/- 1
*   Low Reynold's number
*   The flow is considered in a square of length 2,  centered on the
*   origin and aligned with the x-y axes. The square is divided into
*   4 n ** 2  sub-squares,  each of  length 1 / n.  The differential
*   equation is replaced by  discrete nonlinear equations at each of
*   the grid points.
*   The differential equation relates the vorticity, temperature and
*   a stream function.
*
*   Source:
*   J. N. Shadid
*   "Experimental and computational study of the stability
*   of Natural convection flow in an inclined enclosure",
*   Ph. D. Thesis, University of Minnesota, 1989,
*   problem SP2 (pp.128-130),
*   SIF input: Nick Gould, August 1993.
*   classification NQR2-MY-V-V
*   Half the number of discretization intervals
*   Number of variables = 3(2M+1)**2
*IE M                   1              $ n=27
*IE M                   2              $ n=75
*IE M                   5              $ n=363
*IE M                   8              $ n=867
*   Define the Rayleigh number. NB: This determines the difficulty
*   of the problem.
*   Set pi.
*   Define other problem parameters
* Case 2. Constant heat flux at y = +/- 1
*   Define a few helpful parameters
*   Define a vorticity(OM), temperature(PH) and stream function(PS)
*   variable per discretized point in the square
*   Define three equations per interior node
*   The stream function equation(S) - linear (6.57a in the thesis).
*   The vorticity equation(V) - linear (6.57b in the thesis).
*   The thermal energy equation(E) - quadratic (6.57c in the thesis).
*  Boundary conditions on the temperature.
*  Boundary conditions on the vorticity. NB: Steady state assumed

$offdigit ;

        parameter       m ;      m = 10;
        parameter      ra ;     ra = 1000.0;
        parameter    pid4 ;   pid4 = arctan(1.0);
        parameter      pi ;     pi = 4.0 * (arctan(1.0));
        parameter      ax ;     ax = 1.0;
        parameter   theta ;  theta = 0.5 * (4.0 * (arctan(1.0)));
        parameter      a1 ;     a1 = 1.0;
        parameter      a2 ;     a2 = 0.0;
        parameter      a3 ;     a3 = -1.0;
        parameter      b1 ;     b1 = 1.0;
        parameter      b2 ;     b2 = 0.0;
        parameter      b3 ;     b3 = -1.0;
        parameter      f1 ;     f1 = 1.0;
        parameter      f2 ;     f2 = 0.0;
        parameter      f3 ;     f3 = 0.0;
        parameter      g1 ;     g1 = 1.0;
        parameter      g2 ;     g2 = 0.0;
        parameter      g3 ;     g3 = 0.0;
        parameter     mm1 ;    mm1 = -1 + (10);
        parameter       h ;      h = 1.0 / (10.0);
        parameter      h2 ;     h2 = (1.0 / (10.0)) * (1.0 / (10.0));
        parameter     axx ;    axx = (1.0) * (1.0);
        parameter     pi1 ;    pi1 = -0.5 * (((1.0) * (1000.0)) * (cos(0.5 * (4.0*(arctan(1.0))))));
        parameter     pi2 ;    pi2 = 0.5 * ((((1.0) * (1.0)) * (1000.0)) * (sin(0.5 *(4.0 *(arctan(1.0))))));
        parameter    axd2 ;   axd2 = 0.5 * (1.0);
        parameter   axxd2 ;  axxd2 = 0.5 * ((1.0) * (1.0));
        parameter   axxd4 ;  axxd4 = 0.25 * ((1.0) * (1.0));
        parameter  pi1d2h ; pi1d2h = (-0.5 * (((1.0) * (1000.0)) * (cos(0.5 * (4.0 *(arctan(1.0))))))) * (0.5 * (10.0));
        parameter  pi2d2h ; pi2d2h = (0.5 * ((((1.0) * (1.0)) * (1000.0)) * (sin(0.5 * (4.0 *(arctan(1.0))))))) * (0.5 * (10.0));
        parameter   axdh2 ;  axdh2 = (1.0) * ((10.0) * (10.0));
        parameter  axd4h2 ; axd4h2 = 0.25 * ((1.0) * ((10.0) * (10.0)));
        parameter  axxdh2 ; axxdh2 = ((1.0) * (1.0)) * ((10.0) * (10.0));
        parameter      jp ;     jp = 1 + (9);
        parameter      jm ;     jm = -1 + (9);
        parameter      ip ;     ip = 1 + (9);
        parameter      im ;     im = -1 + (9);
        parameter sintheta;sintheta= sin(0.5 * (4.0 * (arctan(1.0))));
        parameter costheta;costheta= cos(0.5 * (4.0 * (arctan(1.0))));

Variable
   omm10_m10 , phm10_m10 , psm10_m10 , omm9_m10 , phm9_m10 , psm9_m10 ,
   omm8_m10  , phm8_m10  , psm8_m10  , omm7_m10 , phm7_m10 , psm7_m10 ,
   omm6_m10  , phm6_m10  , psm6_m10  , omm5_m10 , phm5_m10 , psm5_m10 ,
   omm4_m10  , phm4_m10  , psm4_m10  , omm3_m10 , phm3_m10 , psm3_m10 ,
   omm2_m10  , phm2_m10  , psm2_m10  , omm1_m10 , phm1_m10 , psm1_m10 ,
   om0_m10   , ph0_m10   , ps0_m10   , om1_m10  , ph1_m10  , ps1_m10  ,
   ph2_m10   , ps2_m10   , om3_m10   , ph3_m10  , ps3_m10  , om4_m10  ,
   ps4_m10   , om5_m10   , ph5_m10   , ps5_m10  , om6_m10  , ph6_m10  ,
   om7_m10   , ph7_m10   , ps7_m10   , om8_m10  , ph8_m10  , ps8_m10  ,
   ph9_m10   , ps9_m10   , om10_m10  , ph10_m10 , ps10_m10 , omm10_m9 ,
   phm10_m9  , psm10_m9  , omm9_m9   , phm9_m9  , psm9_m9  , omm8_m9  ,
   phm8_m9   , psm8_m9   , omm7_m9   , phm7_m9  , psm7_m9  , omm6_m9  ,
   phm6_m9   , psm6_m9   , omm5_m9   , phm5_m9  , psm5_m9  , omm4_m9  ,
   phm4_m9   , psm4_m9   , omm3_m9   , phm3_m9  , psm3_m9  , omm2_m9  ,
   phm2_m9   , psm2_m9   , omm1_m9   , phm1_m9  , psm1_m9  , om0_m9   ,
   ph0_m9    , ps0_m9    , om1_m9    , ph1_m9   , ps1_m9   , om2_m9   ,
   ph2_m9    , ps2_m9    , om3_m9    , ph3_m9   , ps3_m9   , om4_m9   ,
   ph4_m9    , ps4_m9    , om5_m9    , ph5_m9   , ps5_m9   , om6_m9   ,
   ph6_m9    , ps6_m9    , om7_m9    , ph7_m9   , ps7_m9   , om8_m9   ,
   ph8_m9    , ps8_m9    , om9_m9    , ph9_m9   , ps9_m9   , om10_m9  ,
   ph10_m9   , ps10_m9   , omm10_m8  ,phm10_m8  , psm10_m8 , omm9_m8  ,
   phm9_m8   , psm9_m8   , omm8_m8   , phm8_m8  , psm8_m8  , omm7_m8  ,
   phm7_m8   , psm7_m8   , omm6_m8   , phm6_m8  , psm6_m8  , omm5_m8  ,
   phm5_m8   , psm5_m8   , omm4_m8   , phm4_m8  , psm4_m8  , omm3_m8  ,
   phm3_m8   , psm3_m8   , omm2_m8   , phm2_m8  , psm2_m8  , omm1_m8  ,
   phm1_m8   , psm1_m8   , om0_m8    , ph0_m8   , ps0_m8   , om1_m8   ,
   ph1_m8    , ps1_m8    , om2_m8    , ph2_m8   , ps2_m8   , om3_m8   ,
   ph3_m8    , ps3_m8    , om4_m8    , ph4_m8   , ps4_m8   , om5_m8   ,
   ph5_m8    , ps5_m8    , om6_m8    , ph6_m8   , ps6_m8   , om7_m8   ,
   ph7_m8    , ps7_m8    , om8_m8    , ph8_m8   , ps8_m8   , om9_m8   ,
   ph9_m8    , ps9_m8    , om10_m8   , ph10_m8  , ps10_m8  , omm10_m7 ,
   phm10_m7  , psm10_m7  , omm9_m7   , phm9_m7  , psm9_m7  , omm8_m7  ,
   phm8_m7   , psm8_m7   , omm7_m7   , phm7_m7  , psm7_m7  , omm6_m7  ,
   phm6_m7   , psm6_m7   , omm5_m7   , phm5_m7  , psm5_m7  , omm4_m7  ,
   phm4_m7   , psm4_m7   , omm3_m7   , phm3_m7  , psm3_m7  , omm2_m7  ,
   phm2_m7   , psm2_m7   , omm1_m7   , phm1_m7  , psm1_m7  , om0_m7   ,
   ph0_m7    , ps0_m7    , om1_m7    , ph1_m7   , ps1_m7   , om2_m7   ,
   ph2_m7    , ps2_m7    , om3_m7    , ph3_m7   , ps3_m7   , om4_m7   ,
   ph4_m7    , ps4_m7    , om5_m7    , ph5_m7   , ps5_m7   , om6_m7   ,
   ph6_m7    , ps6_m7    , om7_m7    , ph7_m7   , ps7_m7   , om8_m7   ,
   ph8_m7    , ps8_m7    , om9_m7    , ph9_m7   , ps9_m7   , om10_m7  ,
   ph10_m7   , ps10_m7   , omm10_m6  , phm10_m6 , psm10_m6 , omm9_m6  ,
   phm9_m6   , psm9_m6   , omm8_m6   , phm8_m6  , psm8_m6  , omm7_m6  ,
   phm7_m6   , psm7_m6   , omm6_m6   , phm6_m6  , psm6_m6  , omm5_m6  ,
   phm5_m6   , psm5_m6   , omm4_m6   , phm4_m6  , psm4_m6  , omm3_m6  ,
   phm3_m6   , psm3_m6   , omm2_m6   , phm2_m6  , psm2_m6  , omm1_m6  ,
   phm1_m6   , psm1_m6   , om0_m6    , ph0_m6   , ps0_m6   , om1_m6   ,
   ph1_m6    , ps1_m6    , om2_m6    , ph2_m6   , ps2_m6   , om3_m6   ,
   ph3_m6    , ps3_m6    , om4_m6    , ph4_m6   , ps4_m6   , om5_m6   ,
   ph5_m6    , ps5_m6    , om6_m6    , ph6_m6   , ps6_m6   , om7_m6   ,
   ph7_m6    , ps7_m6    , om8_m6    , ph8_m6   , ps8_m6   , om9_m6   ,
   ph9_m6    , ps9_m6    , om10_m6   , ph10_m6  , ps10_m6  , omm10_m5 ,
   phm10_m5  , psm10_m5  , omm9_m5   , phm9_m5  , psm9_m5  , omm8_m5  ,
   phm8_m5   , psm8_m5   , omm7_m5   , phm7_m5  , psm7_m5  , omm6_m5  ,
   phm6_m5   , psm6_m5   , omm5_m5   , phm5_m5  , psm5_m5  , omm4_m5  ,
   phm4_m5   , psm4_m5   , omm3_m5   , phm3_m5  , psm3_m5  , omm2_m5  ,
   phm2_m5   , psm2_m5   , omm1_m5   , phm1_m5  , psm1_m5  , om0_m5   ,
   ph0_m5    , ps0_m5    , om1_m5    , ph1_m5   , ps1_m5   , om2_m5   ,
   ps2_m5    , om3_m5    , ph3_m5    , ps3_m5   , om4_m5   , ph4_m5   ,
   om5_m5    , ph5_m5    , ps5_m5    , om6_m5   , ph6_m5   , ps6_m5   ,
   ph7_m5    , ps7_m5    , om8_m5    , ph8_m5   , ps8_m5   , om9_m5   ,
   ps9_m5    , om10_m5   , ph10_m5   , ps10_m5  , omm10_m4 , phm10_m4 ,
   psm10_m4  , omm9_m4   , phm9_m4   , psm9_m4  , omm8_m4  , phm8_m4  ,
   psm8_m4   , omm7_m4   , phm7_m4   , psm7_m4  , omm6_m4  , phm6_m4  ,
   psm6_m4   , omm5_m4   , phm5_m4   , psm5_m4  , omm4_m4  , phm4_m4  ,
   psm4_m4   , omm3_m4   , phm3_m4   , psm3_m4  , omm2_m4  , phm2_m4  ,
   psm2_m4   , omm1_m4   , phm1_m4   , psm1_m4  , om0_m4   , ph0_m4   ,
   ps0_m4    , om1_m4    , ph1_m4    , ps1_m4   , om2_m4   , ph2_m4   ,
   om3_m4    , ph3_m4    , ps3_m4    , om4_m4   , ph4_m4   , ps4_m4   ,
   ph5_m4    , ps5_m4    , om6_m4    , ph6_m4   , ps6_m4   , om7_m4   ,
   ps7_m4    , om8_m4    , ph8_m4    , ps8_m4   , om9_m4   , ph9_m4   ,
   om10_m4   , ph10_m4   , ps10_m4   , omm10_m3 , phm10_m3 , psm10_m3 ,
   omm9_m3   , phm9_m3   , psm9_m3   , omm8_m3  , phm8_m3  , psm8_m3  ,
   omm7_m3   , phm7_m3   , psm7_m3   , omm6_m3  , phm6_m3  , psm6_m3  ,
   omm5_m3   , phm5_m3   , psm5_m3   , omm4_m3  , phm4_m3  , psm4_m3  ,
   omm3_m3   , phm3_m3   , psm3_m3   , omm2_m3  , phm2_m3  , psm2_m3  ,
   omm1_m3   , phm1_m3   , ph2_m5    , ps2_m4   , ps4_m5   , om5_m4   ,
   om7_m5    , ph7_m4    , ph9_m5    , ps9_m4   , psm1_m3  , om0_m3   ,
   ph0_m3    , ps0_m3    , om1_m3    , ph1_m3   , ps1_m3   , om2_m3   ,
   ph2_m3    , ps2_m3    , om3_m3    , ph3_m3   , ps3_m3   , om4_m3   ,
   ph4_m3    , ps4_m3    , om5_m3    , ph5_m3   , ps5_m3   , om6_m3   ,
   ph6_m3    , ps6_m3    , om7_m3    , ph7_m3   , ps7_m3   , om8_m3   ,
   ph8_m3    , ps8_m3    , om9_m3    , ph9_m3   , ps9_m3   , om10_m3  ,
   ph10_m3   , ps10_m3   , omm10_m2  , phm10_m2 , psm10_m2 , omm9_m2  ,
   phm9_m2   , psm9_m2   , omm8_m2   , phm8_m2  , psm8_m2  , omm7_m2  ,
   phm7_m2   , psm7_m2   , omm6_m2   , phm6_m2  , psm6_m2  , omm5_m2  ,
   phm5_m2   , psm5_m2   , omm4_m2   , phm4_m2  , psm4_m2  , omm3_m2  ,
   phm3_m2   , psm3_m2   , omm2_m2   , phm2_m2  , psm2_m2  , omm1_m2  ,
   phm1_m2   , psm1_m2   , om0_m2    , ph0_m2   , ps0_m2   , om1_m2   ,
   ph1_m2    , ps1_m2    , om2_m2    , ph2_m2   , ps2_m2   , om3_m2   ,
   ph3_m2    , ps3_m2    , om4_m2    , ph4_m2   , ps4_m2   , om5_m2   ,
   ph5_m2    , ps5_m2    , om6_m2    , ph6_m2   , ps6_m2   , om7_m2   ,
   ph7_m2    , ps7_m2    , om8_m2    , ph8_m2   , ps8_m2   , om9_m2   ,
   ph9_m2    , ps9_m2    , om10_m2   , ph10_m2  , ps10_m2  , omm10_m1 ,
   phm10_m1  , psm10_m1  , omm9_m1   , phm9_m1  , psm9_m1  , omm8_m1  ,
   phm8_m1   , psm8_m1   , omm7_m1   , phm7_m1  , psm7_m1  , omm6_m1  ,
   phm6_m1   , psm6_m1   , omm5_m1   , phm5_m1  , psm5_m1  , omm4_m1  ,
   phm4_m1   , psm4_m1   , omm3_m1   , phm3_m1  , psm3_m1  , omm2_m1  ,
   phm2_m1   , psm2_m1   , omm1_m1   , phm1_m1  , psm1_m1  , om0_m1   ,
   ph0_m1    , ps0_m1    , om1_m1    , ph1_m1   , ps1_m1   , om2_m1   ,
   ph2_m1    , ps2_m1    , om3_m1    , ph3_m1   , ps3_m1   , om4_m1   ,
   ph4_m1    , ps4_m1    , om5_m1    , ph5_m1   , ps5_m1   , om6_m1   ,
   ph6_m1    , ps6_m1    , om7_m1    , ph7_m1   , ps7_m1   , om8_m1   ,
   ph8_m1    , ps8_m1    , om9_m1    , ph9_m1   , ps9_m1   , om10_m1  ,
   ph10_m1   , ps10_m1   , omm10_0   , phm10_0  , psm10_0  , omm9_0   ,
   phm9_0    , psm9_0    , omm8_0    , phm8_0   , psm8_0   , omm7_0   ,
   phm7_0    , psm7_0    , omm6_0    , phm6_0   , psm6_0   , omm5_0   ,
   phm5_0    , psm5_0    , omm4_0    , phm4_0   , psm4_0   , omm3_0   ,
   phm3_0    , psm3_0    , omm2_0    , phm2_0   , psm2_0   , omm1_0   ,
   phm1_0    , psm1_0    , om0_0     , ph0_0    , ps0_0    , om1_0    ,
   ph1_0     , ps1_0     , om2_0     , ph2_0    , ps2_0    , om3_0    ,
   ph3_0     , ps3_0     , om4_0     , ph4_0    , ps4_0    , om5_0    ,
   ph5_0     , ps5_0     , om6_0     , ph6_0    , ps6_0    , om7_0    ,
    ph7_0    , ps7_0     , om8_0     , ph8_0    , ps8_0    , om9_0    ,
    ph9_0    , ps9_0     , om10_0    , ph10_0   , ps10_0   , omm10_1  ,
   phm10_1   , psm10_1   , omm9_1    ,  phm9_1  , psm9_1   , omm8_1   ,
   phm8_1    , psm8_1    , omm7_1    , phm7_1   , psm7_1   , omm6_1   ,
   phm6_1    , psm6_1    , omm5_1    , phm5_1   , psm5_1   , omm4_1   ,
   phm4_1    , psm4_1    , omm3_1    , phm3_1   , psm3_1   , omm2_1   ,
   phm2_1    , psm2_1    , omm1_1    , phm1_1   , psm1_1   , om0_1    ,
   ph0_1     , ps0_1     , om1_1     , ph1_1    , ps1_1    , om2_1    ,
   ph2_1     , ps2_1     , om3_1     , ph3_1    , ps3_1    , om4_1    ,
   ph4_1     , ps4_1     , om5_1     , ph5_1    , ps5_1    , om6_1    ,
   ph6_1     , ps6_1     , om7_1     , ph7_1    , ps7_1    , om8_1    ,
   ph8_1     , ps8_1     , om9_1     , ph9_1    , ps9_1    , om10_1   ,
   ph10_1    , ps10_1    , omm10_2   , phm10_2  , psm10_2  , omm9_2   ,
   phm9_2    , psm9_2    , omm8_2    , phm8_2   , psm8_2   , omm7_2   ,
   phm7_2    , psm7_2    , omm6_2    , phm6_2   , psm6_2   , omm5_2   ,
   phm5_2    , psm5_2    , omm4_2    , phm4_2   , psm4_2   , omm3_2   ,
   phm3_2    , psm3_2    , omm2_2    , phm2_2   , psm2_2   , omm1_2   ,
   phm1_2    , psm1_2    , om0_2     , ph0_2    , ps0_2    , om1_2    ,
   ps1_2     , om2_2     , ph2_2     , ps2_2    , om3_2    , ph3_2    ,
   om4_2     , ph4_2     , ps4_2     , om5_2    , ph5_2    , ps5_2    ,
   ph6_2     , ps6_2     , om7_2     , ph7_2    , ps7_2    , om8_2    ,
   ph1_2     , ps3_2     , om6_2     , ph8_2    , ps8_2    , om9_2    ,
   ph9_2     , ps9_2     , om10_2    , ph10_2   , ps10_2   , omm10_3  ,
   phm10_3   , psm10_3   , omm9_3    , phm9_3   , psm9_3   , omm8_3   ,
   phm8_3    , psm8_3    , omm7_3    , phm7_3   , psm7_3   , omm6_3   ,
   phm6_3    , psm6_3    , omm5_3    , phm5_3   , psm5_3   , omm4_3   ,
   phm4_3    , psm4_3    , omm3_3    , phm3_3   , psm3_3   , omm2_3   ,
   phm2_3    , psm2_3    , omm1_3    , phm1_3   , psm1_3   , om0_3    ,
   ph0_3     , ps0_3     , om1_3     , ph1_3    , ps1_3    , om2_3    ,
   ps2_3     , om3_3     , ph3_3     , ps3_3    , om4_3    , ph4_3    ,
   om5_3     , ph5_3     , ps5_3     , om6_3    , ph6_3    , ps6_3    ,
   ph7_3     , ps7_3     , om8_3     , ph8_3    , ps8_3    , om9_3    ,
   ps9_3     , om10_3    , ph10_3    , ps10_3   , omm10_4  , phm10_4  ,
   psm10_4   , omm9_4    , phm9_4    , psm9_4   , omm8_4   , phm8_4   ,
   psm8_4    , omm7_4    , phm7_4    , psm7_4   , omm6_4   , phm6_4   ,
   psm6_4    , omm5_4    , phm5_4    , psm5_4   , omm4_4   , phm4_4   ,
   psm4_4    , ph2_3     , ps4_3     , om7_3    , ph9_3    , omm3_4   ,
   phm3_4    , psm3_4    , omm2_4    , phm2_4   , psm2_4   , omm1_4   ,
   phm1_4    , psm1_4    , om0_4     , ph0_4    , ps0_4    , om1_4    ,
   ph1_4     , ps1_4     , om2_4     , ph2_4    , ps2_4    , om3_4    ,
   ps3_4     , om4_4     , ph4_4     , ps4_4    , om5_4    , ph5_4    ,
   om6_4     , ph6_4     , ps6_4     , om7_4    , ph7_4    , ps7_4    ,
   ph8_4     , ps8_4     , om9_4     , ph9_4    , ps9_4    , om10_4   ,
   ps10_4    , omm10_5   , phm10_5   , psm10_5  , omm9_5   , phm9_5   ,
   psm9_5    , omm8_5    , phm8_5    , psm8_5   , omm7_5   , phm7_5   ,
   psm7_5    , omm6_5    , phm6_5    , psm6_5   , omm5_5   , phm5_5   ,
   psm5_5    , omm4_5    , phm4_5    , psm4_5   , omm3_5   , phm3_5   ,
   psm3_5    , omm2_5    , phm2_5    , psm2_5   , omm1_5   , phm1_5   ,
   ph3_4     , ps5_4     , om8_4     , ph10_4   , psm1_5   , om0_5    ,
   ph0_5     , ps0_5     , om1_5     , ph1_5    , ps1_5    , om2_5    ,
   ps2_5     , om3_5     , ph3_5     , ps3_5    , om4_5    , ph4_5    ,
   om5_5     , ph5_5     , ps5_5     , om6_5    , ph6_5    , ps6_5    ,
   ph7_5     , ps7_5     , om8_5     , ph8_5    , ps8_5    , om9_5    ,
   ps9_5     , om10_5    , ph10_5    , ps10_5   , omm10_6  , phm10_6  ,
   psm10_6   , omm9_6    , phm9_6    , psm9_6   , omm8_6   , phm8_6   ,
   psm8_6    , omm7_6    , phm7_6    , psm7_6   , omm6_6   , phm6_6   ,
   psm6_6    , omm5_6    , phm5_6    , psm5_6   , omm4_6   , phm4_6   ,
   psm4_6    , omm3_6    , phm3_6    , psm3_6   , omm2_6   , phm2_6   ,
   psm2_6    , omm1_6    , phm1_6    , psm1_6   , om0_6    , ph0_6    ,
   ps0_6     , om1_6     , ph1_6     , ps1_6    , ph2_5    , ps4_5    ,
   om7_5     , ph9_5     , om2_6     , ph2_6    , ps2_6    , om3_6    ,
   ps3_6     , om4_6     , ph4_6     , ps4_6    , om5_6    , ph5_6    ,
   om6_6     , ph6_6     , ps6_6     , om7_6    , ph7_6    , ps7_6    ,
   ph8_6     , ps8_6     , om9_6     , ph9_6    , ps9_6    , om10_6   ,
   ps10_6    , omm10_7   , phm10_7   , psm10_7  , omm9_7   , phm9_7   ,
   psm9_7    , omm8_7    , phm8_7    , psm8_7   , omm7_7   , phm7_7   ,
   psm7_7    , omm6_7    , phm6_7    , psm6_7   , omm5_7   , phm5_7   ,
   psm5_7    , omm4_7    , phm4_7    , psm4_7   , omm3_7   , phm3_7   ,
   psm3_7    , omm2_7    , phm2_7    , psm2_7   , omm1_7   , phm1_7   ,
   psm1_7    , om0_7     , ph0_7     , ps0_7    , om1_7    , ph1_7    ,
   om2_7     , ph2_7     , ps2_7     , om3_7    , ph3_7    , ps3_7    ,
   ph4_7     , ps4_7     , om5_7     , ph5_7    , ps5_7    , om6_7    ,
   ps6_7     , om7_7     , ph7_7     , ps7_7    , om8_7    , ph8_7    ,
   om9_7     , ph9_7     , ps9_7     , om10_7   , ph10_7   , ps10_7   ,
   ph3_6     , ps5_6     , om8_6     , ph10_6   , ps1_7    , om4_7    ,
   ph6_7     , ps8_7     , omm10_8   , phm10_8  , psm10_8  , omm9_8   ,
   phm9_8    , psm9_8    , omm8_8    , phm8_8   , psm8_8   , omm7_8   ,
   phm7_8    , psm7_8    , omm6_8    , phm6_8   , psm6_8   , omm5_8   ,
   phm5_8    , psm5_8    , omm4_8    , phm4_8   , psm4_8   , omm3_8   ,
   phm3_8    , psm3_8    , omm2_8    , phm2_8   , psm2_8   , omm1_8   ,
   phm1_8    , psm1_8    , om0_8     , ph0_8    , ps0_8    , om1_8    ,
   ps1_8     , om2_8     , ph2_8     , ps2_8    , om3_8    , ph3_8    ,
   om4_8     , ph4_8     , ps4_8     , om5_8    , ph5_8    , ps5_8    ,
   ph6_8     , ps6_8     , om7_8     , ph7_8    , ps7_8    , om8_8    ,
   ps8_8     , om9_8     , ph9_8     , ps9_8    , om10_8   , ph10_8   ,
   ps10_8    , omm10_9   , phm10_9   , psm10_9  , omm9_9   , phm9_9   ,
   psm9_9    , omm8_9    , phm8_9    , psm8_9   , omm7_9   , phm7_9   ,
   psm7_9    , omm6_9    , phm6_9    , psm6_9   , omm5_9   , phm5_9   ,
   psm5_9    , omm4_9    , phm4_9    , psm4_9   , omm3_9   , phm3_9   ,
   psm3_9    , omm2_9    , phm2_9    , psm2_9   , omm1_9   , phm1_9   ,
   ph1_8     , ps3_8     , om6_8     , ph8_8    , psm1_9   , om0_9    ,
   ph0_9     , ps0_9     , om1_9     , ph1_9    , ps1_9    , om2_9    ,
   ps2_9     , om3_9     , ph3_9     , ps3_9    , om4_9    , ph4_9    ,
   om5_9     , ph5_9     , ps5_9     , om6_9    , ph6_9    , ps6_9    ,
   ph7_9     , ps7_9     , om8_9     , ph8_9    , ps8_9    , om9_9    ,
   ps9_9     , om10_9    , ph10_9    , ps10_9   , omm10_10 , phm10_10 ,
   psm10_10  , omm9_10   , phm9_10   , psm9_10  , omm8_10  , ph2_9    ,
   phm8_10   , psm8_10   , omm7_10   , phm7_10  , psm7_10  , omm6_10  ,
   phm6_10   , psm6_10   , omm5_10   , phm5_10  , psm5_10  , ps4_9    ,
   omm4_10   , phm4_10   , psm4_10   , omm3_10  , phm3_10  , psm3_10  ,
   omm2_10   , phm2_10   , psm2_10   , omm1_10  , phm1_10  , ph9_9    ,
   psm1_10   , om0_10    , ph0_10    , ps0_10   , om1_10   , ph1_10   ,
   ps1_10    , om2_10    , ph2_10    , ps2_10   , om3_10   , ph3_10   ,
   ps3_10    , om4_10    , ph4_10    , ps4_10   , om5_10   , ph5_10   ,
   ps5_10    , om6_10    , ph6_10    , ps6_10   , om7_10   , ph7_10   ,
   ps7_10    , om8_10    , ph8_10    , ps8_10   , om9_10   , ph9_10   ,
   ps9_10    , om10_10   , ph10_10   , ps10_10  , om2_m10  , ph4_m10  ,
   ps6_m10   , om9_m10   , om7_9     , obj      ;
Equation Def_obj ;

Def_obj..

obj =e= sqr(-200.0*omm9_9 + 100.0*omm8_9 + 100.0*omm10_9 -
        200.0*omm9_9 + 100.0*omm9_8 + 100.0*omm9_10 +
        1.5308084989341916e-13*phm8_9 -
        1.5308084989341916e-13*phm10_9 - 2500.0*phm9_8 +
        2500.0*phm9_10)

+ sqr(-200.0*psm9_9 + 100.0*psm8_9 + 100.0*psm10_9 -
       200.0*psm9_9 + 100.0*psm9_8 + 100.0*psm9_10 +
       0.25*omm9_9)

+ sqr(-25.0*(psm9_8-psm9_10) * (phm8_9-phm10_9) +
       25.0*(psm8_9-psm10_9) * (phm9_8-phm9_10) -
       200.0*phm9_9 + 100.0*phm8_9 + 100.0*phm10_9 -
       200.0*phm9_9 + 100.0*phm9_8 + 100.0*phm9_10)

+ sqr(-200.0*omm8_9 + 100.0*omm7_9 + 100.0*omm9_9 -
       200.0*omm8_9 + 100.0*omm8_8 + 100.0*omm8_10 +
       1.5308084989341916e-13*phm7_9 -
       1.5308084989341916e-13*phm9_9 - 2500.0*phm8_8 +
       2500.0*phm8_10)

+ sqr(-200.0*psm8_9 + 100.0*psm7_9 + 100.0*psm9_9 -
       200.0*psm8_9 + 100.0*psm8_8 + 100.0*psm8_10 +
       0.25*omm8_9)

+ sqr(-25.0*(psm8_8-psm8_10) * (phm7_9-phm9_9) +
       25.0*(psm7_9-psm9_9) * (phm8_8-phm8_10) -
       200.0*phm8_9 + 100.0*phm7_9 + 100.0*phm9_9 -
       200.0*phm8_9 + 100.0*phm8_8 + 100.0*phm8_10)

+ sqr(-200.0*omm7_9 + 100.0*omm6_9 + 100.0*omm8_9 -
       200.0*omm7_9 + 100.0*omm7_8 + 100.0*omm7_10 +
       1.5308084989341916e-13*phm6_9 -
       1.5308084989341916e-13*phm8_9 - 2500.0*phm7_8 +
       2500.0*phm7_10)

+ sqr(-200.0*psm7_9 + 100.0*psm6_9 + 100.0*psm8_9 -
       200.0*psm7_9 + 100.0*psm7_8 + 100.0*psm7_10 +
       0.25*omm7_9)

+ sqr(-25.0*(psm7_8-psm7_10) * (phm6_9-phm8_9) +
       25.0*(psm6_9-psm8_9) * (phm7_8-phm7_10) -
       200.0*phm7_9 + 100.0*phm6_9 + 100.0*phm8_9 -
       200.0*phm7_9 + 100.0*phm7_8 + 100.0*phm7_10)

+ sqr(-200.0*omm6_9 + 100.0*omm5_9 + 100.0*omm7_9 -
       200.0*omm6_9 + 100.0*omm6_8 + 100.0*omm6_10 +
       1.5308084989341916e-13*phm5_9 -
       1.5308084989341916e-13*phm7_9 - 2500.0*phm6_8 +
       2500.0*phm6_10)

+ sqr(-200.0*psm6_9 + 100.0*psm5_9 + 100.0*psm7_9 -
       200.0*psm6_9 + 100.0*psm6_8 + 100.0*psm6_10 +
       0.25*omm6_9)

+ sqr(-25.0*(psm6_8-psm6_10) * (phm5_9-phm7_9) +
       25.0*(psm5_9-psm7_9) * (phm6_8-phm6_10) -
       200.0*phm6_9 + 100.0*phm5_9 + 100.0*phm7_9 -
       200.0*phm6_9 + 100.0*phm6_8 + 100.0*phm6_10)

+ sqr(-200.0*omm5_9 + 100.0*omm4_9 + 100.0*omm6_9 -
       200.0*omm5_9 + 100.0*omm5_8 + 100.0*omm5_10 +
       1.5308084989341916e-13*phm4_9 -
       1.5308084989341916e-13*phm6_9 - 2500.0*phm5_8 +
       2500.0*phm5_10)

+ sqr(-200.0*psm5_9 + 100.0*psm4_9 + 100.0*psm6_9 -
       200.0*psm5_9 + 100.0*psm5_8 + 100.0*psm5_10 +
       0.25*omm5_9)

+ sqr(-25.0*(psm5_8-psm5_10) * (phm4_9-phm6_9) +
       25.0*(psm4_9-psm6_9) * (phm5_8-phm5_10) -
       200.0*phm5_9 + 100.0*phm4_9 + 100.0*phm6_9 -
       200.0*phm5_9 + 100.0*phm5_8 + 100.0*phm5_10)

+ sqr(-200.0*omm4_9 + 100.0*omm3_9 + 100.0*omm5_9 -
       200.0*omm4_9 + 100.0*omm4_8 + 100.0*omm4_10 +
       1.5308084989341916e-13*phm3_9 -
       1.5308084989341916e-13*phm5_9 - 2500.0*phm4_8 +
       2500.0*phm4_10)

+ sqr(-200.0*psm4_9 + 100.0*psm3_9 + 100.0*psm5_9 -
       200.0*psm4_9 + 100.0*psm4_8 + 100.0*psm4_10 +
       0.25*omm4_9)

+ sqr(-25.0*(psm4_8-psm4_10) * (phm3_9-phm5_9) +
       25.0*(psm3_9-psm5_9) * (phm4_8-phm4_10) -
       200.0*phm4_9 + 100.0*phm3_9 + 100.0*phm5_9 -
       200.0*phm4_9 + 100.0*phm4_8 + 100.0*phm4_10)

+ sqr(-200.0*omm3_9 + 100.0*omm2_9 + 100.0*omm4_9 -
       200.0*omm3_9 + 100.0*omm3_8 + 100.0*omm3_10 +
       1.5308084989341916e-13*phm2_9 -
       1.5308084989341916e-13*phm4_9 - 2500.0*phm3_8 +
       2500.0*phm3_10)

+ sqr(-200.0*psm3_9 + 100.0*psm2_9 + 100.0*psm4_9 -
       200.0*psm3_9 + 100.0*psm3_8 + 100.0*psm3_10 +
       0.25*omm3_9)

+ sqr(-25.0*(psm3_8-psm3_10) * (phm2_9-phm4_9) +
       25.0*(psm2_9-psm4_9) * (phm3_8-phm3_10) -
       200.0*phm3_9 + 100.0*phm2_9 + 100.0*phm4_9 -
       200.0*phm3_9 + 100.0*phm3_8 + 100.0*phm3_10)

+ sqr(-200.0*omm2_9 + 100.0*omm1_9 + 100.0*omm3_9 -
       200.0*omm2_9 + 100.0*omm2_8 + 100.0*omm2_10 +
       1.5308084989341916e-13*phm1_9 -
       1.5308084989341916e-13*phm3_9 - 2500.0*phm2_8 +
       2500.0*phm2_10)

+ sqr(-200.0*psm2_9 + 100.0*psm1_9 + 100.0*psm3_9 -
       200.0*psm2_9 + 100.0*psm2_8 + 100.0*psm2_10 +
       0.25*omm2_9)

+ sqr(-25.0*(psm2_8-psm2_10) * (phm1_9-phm3_9) +
       25.0*(psm1_9-psm3_9) * (phm2_8-phm2_10) -
       200.0*phm2_9 + 100.0*phm1_9 + 100.0*phm3_9 -
       200.0*phm2_9 + 100.0*phm2_8 + 100.0*phm2_10)

+ sqr(-200.0*omm1_9 + 100.0*om0_9 + 100.0*omm2_9 -
       200.0*omm1_9 + 100.0*omm1_8 + 100.0*omm1_10 +
       1.5308084989341916e-13*ph0_9 -
       1.5308084989341916e-13*phm2_9 - 2500.0*phm1_8 +
       2500.0*phm1_10)

+ sqr(-200.0*psm1_9 + 100.0*ps0_9 + 100.0*psm2_9 -
       200.0*psm1_9 + 100.0*psm1_8 + 100.0*psm1_10 +
       0.25*omm1_9)

+ sqr(-25.0*(psm1_8-psm1_10) * (ph0_9-phm2_9) +
       25.0*(ps0_9-psm2_9) * (phm1_8-phm1_10) - 200.0*phm1_9
       + 100.0*ph0_9 + 100.0*phm2_9 - 200.0*phm1_9 +
       100.0*phm1_8 + 100.0*phm1_10)

+ sqr(-200.0*om0_9 + 100.0*om1_9 + 100.0*omm1_9 -
       200.0*om0_9 + 100.0*om0_8 + 100.0*om0_10 +
       1.5308084989341916e-13*ph1_9 -
       1.5308084989341916e-13*phm1_9 - 2500.0*ph0_8 +
       2500.0*ph0_10)

+ sqr(-200.0*ps0_9 + 100.0*ps1_9 + 100.0*psm1_9 -
       200.0*ps0_9 + 100.0*ps0_8 + 100.0*ps0_10 +
       0.25*om0_9)

+ sqr(-25.0*(ps0_8-ps0_10) * (ph1_9-phm1_9) +
       25.0*(ps1_9-psm1_9) * (ph0_8-ph0_10) - 200.0*ph0_9 +
       100.0*ph1_9 + 100.0*phm1_9 - 200.0*ph0_9 +
       100.0*ph0_8 + 100.0*ph0_10)

+ sqr(-200.0*om1_9 + 100.0*om2_9 + 100.0*om0_9 - 200.0*om1_9
       + 100.0*om1_8 + 100.0*om1_10 +
       1.5308084989341916e-13*ph2_9 -
       1.5308084989341916e-13*ph0_9 - 2500.0*ph1_8 +
       2500.0*ph1_10)

+ sqr(-200.0*ps1_9 + 100.0*ps2_9 + 100.0*ps0_9 - 200.0*ps1_9
       + 100.0*ps1_8 + 100.0*ps1_10 + 0.25*om1_9)

+ sqr(-25.0*(ps1_8-ps1_10) * (ph2_9-ph0_9) +
       25.0*(ps2_9-ps0_9) * (ph1_8-ph1_10) - 200.0*ph1_9 +
       100.0*ph2_9 + 100.0*ph0_9 - 200.0*ph1_9 + 100.0*ph1_8
       + 100.0*ph1_10)

+ sqr(-200.0*om2_9 + 100.0*om3_9 + 100.0*om1_9 - 200.0*om2_9
       + 100.0*om2_8 + 100.0*om2_10 +
       1.5308084989341916e-13*ph3_9 -
       1.5308084989341916e-13*ph1_9 - 2500.0*ph2_8 +
       2500.0*ph2_10)

+ sqr(-200.0*ps2_9 + 100.0*ps3_9 + 100.0*ps1_9 - 200.0*ps2_9
       + 100.0*ps2_8 + 100.0*ps2_10 + 0.25*om2_9)

+ sqr(-25.0*(ps2_8-ps2_10) * (ph3_9-ph1_9) +
       25.0*(ps3_9-ps1_9) * (ph2_8-ph2_10) - 200.0*ph2_9 +
       100.0*ph3_9 + 100.0*ph1_9 - 200.0*ph2_9 + 100.0*ph2_8
       + 100.0*ph2_10)

+ sqr(-200.0*om3_9 + 100.0*om4_9 + 100.0*om2_9 - 200.0*om3_9
       + 100.0*om3_8 + 100.0*om3_10 +
       1.5308084989341916e-13*ph4_9 -
       1.5308084989341916e-13*ph2_9 - 2500.0*ph3_8 +
       2500.0*ph3_10)

+ sqr(-200.0*ps3_9 + 100.0*ps4_9 + 100.0*ps2_9 - 200.0*ps3_9
       + 100.0*ps3_8 + 100.0*ps3_10 + 0.25*om3_9)

+ sqr(-25.0*(ps3_8-ps3_10) * (ph4_9-ph2_9) +
       25.0*(ps4_9-ps2_9) * (ph3_8-ph3_10) - 200.0*ph3_9 +
       100.0*ph4_9 + 100.0*ph2_9 - 200.0*ph3_9 + 100.0*ph3_8
       + 100.0*ph3_10)

+ sqr(-200.0*om4_9 + 100.0*om5_9 + 100.0*om3_9 - 200.0*om4_9
       + 100.0*om4_8 + 100.0*om4_10 +
       1.5308084989341916e-13*ph5_9 -
       1.5308084989341916e-13*ph3_9 - 2500.0*ph4_8 +
       2500.0*ph4_10)

+ sqr(-200.0*ps4_9 + 100.0*ps5_9 + 100.0*ps3_9 - 200.0*ps4_9
       + 100.0*ps4_8 + 100.0*ps4_10 + 0.25*om4_9)

+ sqr(-25.0*(ps4_8-ps4_10) * (ph5_9-ph3_9) +
       25.0*(ps5_9-ps3_9) * (ph4_8-ph4_10) - 200.0*ph4_9 +
       100.0*ph5_9 + 100.0*ph3_9 - 200.0*ph4_9 + 100.0*ph4_8
       + 100.0*ph4_10)

+ sqr(-200.0*om5_9 + 100.0*om6_9 + 100.0*om4_9 - 200.0*om5_9
       + 100.0*om5_8 + 100.0*om5_10 +
       1.5308084989341916e-13*ph6_9 -
       1.5308084989341916e-13*ph4_9 - 2500.0*ph5_8 +
       2500.0*ph5_10)

+ sqr(-200.0*ps5_9 + 100.0*ps6_9 + 100.0*ps4_9 - 200.0*ps5_9
       + 100.0*ps5_8 + 100.0*ps5_10 + 0.25*om5_9)

+ sqr(-25.0*(ps5_8-ps5_10) * (ph6_9-ph4_9) +
       25.0*(ps6_9-ps4_9) * (ph5_8-ph5_10) - 200.0*ph5_9 +
       100.0*ph6_9 + 100.0*ph4_9 - 200.0*ph5_9 + 100.0*ph5_8
       + 100.0*ph5_10)

+ sqr(-200.0*om6_9 + 100.0*om7_9 + 100.0*om5_9 - 200.0*om6_9
       + 100.0*om6_8 + 100.0*om6_10 +
       1.5308084989341916e-13*ph7_9 -
       1.5308084989341916e-13*ph5_9 - 2500.0*ph6_8 +
       2500.0*ph6_10)

+ sqr(-200.0*ps6_9 + 100.0*ps7_9 + 100.0*ps5_9 - 200.0*ps6_9
       + 100.0*ps6_8 + 100.0*ps6_10 + 0.25*om6_9)

+ sqr(-25.0*(ps6_8-ps6_10) * (ph7_9-ph5_9) +
       25.0*(ps7_9-ps5_9) * (ph6_8-ph6_10) - 200.0*ph6_9 +
       100.0*ph7_9 + 100.0*ph5_9 - 200.0*ph6_9 + 100.0*ph6_8
       + 100.0*ph6_10)

+ sqr(-200.0*om7_9 + 100.0*om8_9 + 100.0*om6_9 - 200.0*om7_9
       + 100.0*om7_8 + 100.0*om7_10 +
       1.5308084989341916e-13*ph8_9 -
       1.5308084989341916e-13*ph6_9 - 2500.0*ph7_8 +
       2500.0*ph7_10)

+ sqr(-200.0*ps7_9 + 100.0*ps8_9 + 100.0*ps6_9 - 200.0*ps7_9
       + 100.0*ps7_8 + 100.0*ps7_10 + 0.25*om7_9)

+ sqr(-25.0*(ps7_8-ps7_10) * (ph8_9-ph6_9) +
       25.0*(ps8_9-ps6_9) * (ph7_8-ph7_10) - 200.0*ph7_9 +
       100.0*ph8_9 + 100.0*ph6_9 - 200.0*ph7_9 + 100.0*ph7_8
       + 100.0*ph7_10)

+ sqr(-200.0*om8_9 + 100.0*om9_9 + 100.0*om7_9 - 200.0*om8_9
       + 100.0*om8_8 + 100.0*om8_10 +
       1.5308084989341916e-13*ph9_9 -
       1.5308084989341916e-13*ph7_9 - 2500.0*ph8_8 +
       2500.0*ph8_10)

+ sqr(-200.0*ps8_9 + 100.0*ps9_9 + 100.0*ps7_9 - 200.0*ps8_9
       + 100.0*ps8_8 + 100.0*ps8_10 + 0.25*om8_9)

+ sqr(-25.0*(ps8_8-ps8_10) * (ph9_9-ph7_9) +
       25.0*(ps9_9-ps7_9) * (ph8_8-ph8_10) - 200.0*ph8_9 +
       100.0*ph9_9 + 100.0*ph7_9 - 200.0*ph8_9 + 100.0*ph8_8
       + 100.0*ph8_10)

+ sqr(-200.0*om9_9 + 100.0*om10_9 + 100.0*om8_9 -
       200.0*om9_9 + 100.0*om9_8 + 100.0*om9_10 +
       1.5308084989341916e-13*ph10_9 -
       1.5308084989341916e-13*ph8_9 - 2500.0*ph9_8 +
       2500.0*ph9_10)

+ sqr(-200.0*ps9_9 + 100.0*ps10_9 + 100.0*ps8_9 -
       200.0*ps9_9 + 100.0*ps9_8 + 100.0*ps9_10 +
       0.25*om9_9)

+ sqr(-25.0*(ps9_8-ps9_10) * (ph10_9-ph8_9) +
       25.0*(ps10_9-ps8_9) * (ph9_8-ph9_10) - 200.0*ph9_9 +
       100.0*ph10_9 + 100.0*ph8_9 - 200.0*ph9_9 +
       100.0*ph9_8 + 100.0*ph9_10)

+ sqr(-200.0*omm9_8 + 100.0*omm8_8 + 100.0*omm10_8 -
       200.0*omm9_8 + 100.0*omm9_7 + 100.0*omm9_9 +
       1.5308084989341916e-13*phm8_8 -
       1.5308084989341916e-13*phm10_8 - 2500.0*phm9_7 +
       2500.0*phm9_9)

+ sqr(-200.0*psm9_8 + 100.0*psm8_8 + 100.0*psm10_8 -
       200.0*psm9_8 + 100.0*psm9_7 + 100.0*psm9_9 +
       0.25*omm9_8)

+ sqr(-25.0*(psm9_7-psm9_9) * (phm8_8-phm10_8) +
       25.0*(psm8_8-psm10_8) * (phm9_7-phm9_9) -
       200.0*phm9_8 + 100.0*phm8_8 + 100.0*phm10_8 -
       200.0*phm9_8 + 100.0*phm9_7 + 100.0*phm9_9)

+ sqr(-200.0*omm8_8 + 100.0*omm7_8 + 100.0*omm9_8 -
       200.0*omm8_8 + 100.0*omm8_7 + 100.0*omm8_9 +
       1.5308084989341916e-13*phm7_8 -
       1.5308084989341916e-13*phm9_8 - 2500.0*phm8_7 +
       2500.0*phm8_9)

+ sqr(-200.0*psm8_8 + 100.0*psm7_8 + 100.0*psm9_8 -
       200.0*psm8_8 + 100.0*psm8_7 + 100.0*psm8_9 +
       0.25*omm8_8)

+ sqr(-25.0*(psm8_7-psm8_9) * (phm7_8-phm9_8) +
       25.0*(psm7_8-psm9_8) * (phm8_7-phm8_9) - 200.0*phm8_8
       + 100.0*phm7_8 + 100.0*phm9_8 - 200.0*phm8_8 +
       100.0*phm8_7 + 100.0*phm8_9)

+ sqr(-200.0*omm7_8 + 100.0*omm6_8 + 100.0*omm8_8 -
       200.0*omm7_8 + 100.0*omm7_7 + 100.0*omm7_9 +
       1.5308084989341916e-13*phm6_8 -
       1.5308084989341916e-13*phm8_8 - 2500.0*phm7_7 +
       2500.0*phm7_9)

+ sqr(-200.0*psm7_8 + 100.0*psm6_8 + 100.0*psm8_8 -
       200.0*psm7_8 + 100.0*psm7_7 + 100.0*psm7_9 +
       0.25*omm7_8)

+ sqr(-25.0*(psm7_7-psm7_9) * (phm6_8-phm8_8) +
       25.0*(psm6_8-psm8_8) * (phm7_7-phm7_9) - 200.0*phm7_8
       + 100.0*phm6_8 + 100.0*phm8_8 - 200.0*phm7_8 +
       100.0*phm7_7 + 100.0*phm7_9)

+ sqr(-200.0*omm6_8 + 100.0*omm5_8 + 100.0*omm7_8 -
       200.0*omm6_8 + 100.0*omm6_7 + 100.0*omm6_9 +
       1.5308084989341916e-13*phm5_8 -
       1.5308084989341916e-13*phm7_8 - 2500.0*phm6_7 +
       2500.0*phm6_9)

+ sqr(-200.0*psm6_8 + 100.0*psm5_8 + 100.0*psm7_8 -
       200.0*psm6_8 + 100.0*psm6_7 + 100.0*psm6_9 +
       0.25*omm6_8)

+ sqr(-25.0*(psm6_7-psm6_9) * (phm5_8-phm7_8) +
       25.0*(psm5_8-psm7_8) * (phm6_7-phm6_9) - 200.0*phm6_8
       + 100.0*phm5_8 + 100.0*phm7_8 - 200.0*phm6_8 +
       100.0*phm6_7 + 100.0*phm6_9)

+ sqr(-200.0*omm5_8 + 100.0*omm4_8 + 100.0*omm6_8 -
       200.0*omm5_8 + 100.0*omm5_7 + 100.0*omm5_9 +
       1.5308084989341916e-13*phm4_8 -
       1.5308084989341916e-13*phm6_8 - 2500.0*phm5_7 +
       2500.0*phm5_9)

+ sqr(-200.0*psm5_8 + 100.0*psm4_8 + 100.0*psm6_8 -
       200.0*psm5_8 + 100.0*psm5_7 + 100.0*psm5_9 +
       0.25*omm5_8)

+ sqr(-25.0*(psm5_7-psm5_9) * (phm4_8-phm6_8) +
       25.0*(psm4_8-psm6_8) * (phm5_7-phm5_9) - 200.0*phm5_8
       + 100.0*phm4_8 + 100.0*phm6_8 - 200.0*phm5_8 +
       100.0*phm5_7 + 100.0*phm5_9)

+ sqr(-200.0*omm4_8 + 100.0*omm3_8 + 100.0*omm5_8 -
       200.0*omm4_8 + 100.0*omm4_7 + 100.0*omm4_9 +
       1.5308084989341916e-13*phm3_8 -
       1.5308084989341916e-13*phm5_8 - 2500.0*phm4_7 +
       2500.0*phm4_9)

+ sqr(-200.0*psm4_8 + 100.0*psm3_8 + 100.0*psm5_8 -
       200.0*psm4_8 + 100.0*psm4_7 + 100.0*psm4_9 +
       0.25*omm4_8)

+ sqr(-25.0*(psm4_7-psm4_9) * (phm3_8-phm5_8) +
       25.0*(psm3_8-psm5_8) * (phm4_7-phm4_9) - 200.0*phm4_8
       + 100.0*phm3_8 + 100.0*phm5_8 - 200.0*phm4_8 +
       100.0*phm4_7 + 100.0*phm4_9)

+ sqr(-200.0*omm3_8 + 100.0*omm2_8 + 100.0*omm4_8 -
       200.0*omm3_8 + 100.0*omm3_7 + 100.0*omm3_9 +
       1.5308084989341916e-13*phm2_8 -
       1.5308084989341916e-13*phm4_8 - 2500.0*phm3_7 +
       2500.0*phm3_9)

+ sqr(-200.0*psm3_8 + 100.0*psm2_8 + 100.0*psm4_8 -
       200.0*psm3_8 + 100.0*psm3_7 + 100.0*psm3_9 +
       0.25*omm3_8)

+ sqr(-25.0*(psm3_7-psm3_9) * (phm2_8-phm4_8) +
       25.0*(psm2_8-psm4_8) * (phm3_7-phm3_9) - 200.0*phm3_8
       + 100.0*phm2_8 + 100.0*phm4_8 - 200.0*phm3_8 +
       100.0*phm3_7 + 100.0*phm3_9)

+ sqr(-200.0*omm2_8 + 100.0*omm1_8 + 100.0*omm3_8 -
       200.0*omm2_8 + 100.0*omm2_7 + 100.0*omm2_9 +
       1.5308084989341916e-13*phm1_8 -
       1.5308084989341916e-13*phm3_8 - 2500.0*phm2_7 +
       2500.0*phm2_9)

+ sqr(-200.0*psm2_8 + 100.0*psm1_8 + 100.0*psm3_8 -
       200.0*psm2_8 + 100.0*psm2_7 + 100.0*psm2_9 +
       0.25*omm2_8)

+ sqr(-25.0*(psm2_7-psm2_9) * (phm1_8-phm3_8) +
       25.0*(psm1_8-psm3_8) * (phm2_7-phm2_9) - 200.0*phm2_8
       + 100.0*phm1_8 + 100.0*phm3_8 - 200.0*phm2_8 +
       100.0*phm2_7 + 100.0*phm2_9)

+ sqr(-200.0*omm1_8 + 100.0*om0_8 + 100.0*omm2_8 -
       200.0*omm1_8 + 100.0*omm1_7 + 100.0*omm1_9 +
       1.5308084989341916e-13*ph0_8 -
       1.5308084989341916e-13*phm2_8 - 2500.0*phm1_7 +
       2500.0*phm1_9)

+ sqr(-200.0*psm1_8 + 100.0*ps0_8 + 100.0*psm2_8 -
       200.0*psm1_8 + 100.0*psm1_7 + 100.0*psm1_9 +
       0.25*omm1_8)

+ sqr(-25.0*(psm1_7-psm1_9) * (ph0_8-phm2_8) +
       25.0*(ps0_8-psm2_8) * (phm1_7-phm1_9) - 200.0*phm1_8
       + 100.0*ph0_8 + 100.0*phm2_8 - 200.0*phm1_8 +
       100.0*phm1_7 + 100.0*phm1_9)

+ sqr(-200.0*om0_8 + 100.0*om1_8 + 100.0*omm1_8 -
       200.0*om0_8 + 100.0*om0_7 + 100.0*om0_9 +
       1.5308084989341916e-13*ph1_8 -
       1.5308084989341916e-13*phm1_8 - 2500.0*ph0_7 +
       2500.0*ph0_9)

+ sqr(-200.0*ps0_8 + 100.0*ps1_8 + 100.0*psm1_8 -
       200.0*ps0_8 + 100.0*ps0_7 + 100.0*ps0_9 + 0.25*om0_8)

+ sqr(-25.0*(ps0_7-ps0_9) * (ph1_8-phm1_8) +
       25.0*(ps1_8-psm1_8) * (ph0_7-ph0_9) - 200.0*ph0_8 +
       100.0*ph1_8 + 100.0*phm1_8 - 200.0*ph0_8 +
       100.0*ph0_7 + 100.0*ph0_9)

+ sqr(-200.0*om1_8 + 100.0*om2_8 + 100.0*om0_8 - 200.0*om1_8
       + 100.0*om1_7 + 100.0*om1_9 +
       1.5308084989341916e-13*ph2_8 -
       1.5308084989341916e-13*ph0_8 - 2500.0*ph1_7 +
       2500.0*ph1_9)

+ sqr(-200.0*ps1_8 + 100.0*ps2_8 + 100.0*ps0_8 - 200.0*ps1_8
       + 100.0*ps1_7 + 100.0*ps1_9 + 0.25*om1_8)

+ sqr(-25.0*(ps1_7-ps1_9) * (ph2_8-ph0_8) +
       25.0*(ps2_8-ps0_8) * (ph1_7-ph1_9) - 200.0*ph1_8 +
       100.0*ph2_8 + 100.0*ph0_8 - 200.0*ph1_8 + 100.0*ph1_7
       + 100.0*ph1_9)

+ sqr(-200.0*om2_8 + 100.0*om3_8 + 100.0*om1_8 - 200.0*om2_8
       + 100.0*om2_7 + 100.0*om2_9 +
       1.5308084989341916e-13*ph3_8 -
       1.5308084989341916e-13*ph1_8 - 2500.0*ph2_7 +
       2500.0*ph2_9)

+ sqr(-200.0*ps2_8 + 100.0*ps3_8 + 100.0*ps1_8 - 200.0*ps2_8
       + 100.0*ps2_7 + 100.0*ps2_9 + 0.25*om2_8)

+ sqr(-25.0*(ps2_7-ps2_9) * (ph3_8-ph1_8) +
       25.0*(ps3_8-ps1_8) * (ph2_7-ph2_9) - 200.0*ph2_8 +
       100.0*ph3_8 + 100.0*ph1_8 - 200.0*ph2_8 + 100.0*ph2_7
       + 100.0*ph2_9)

+ sqr(-200.0*om3_8 + 100.0*om4_8 + 100.0*om2_8 - 200.0*om3_8
       + 100.0*om3_7 + 100.0*om3_9 +
       1.5308084989341916e-13*ph4_8 -
       1.5308084989341916e-13*ph2_8 - 2500.0*ph3_7 +
       2500.0*ph3_9)

+ sqr(-200.0*ps3_8 + 100.0*ps4_8 + 100.0*ps2_8 - 200.0*ps3_8
       + 100.0*ps3_7 + 100.0*ps3_9 + 0.25*om3_8)

+ sqr(-25.0*(ps3_7-ps3_9) * (ph4_8-ph2_8) +
       25.0*(ps4_8-ps2_8) * (ph3_7-ph3_9) - 200.0*ph3_8 +
       100.0*ph4_8 + 100.0*ph2_8 - 200.0*ph3_8 + 100.0*ph3_7
       + 100.0*ph3_9)

+ sqr(-200.0*om4_8 + 100.0*om5_8 + 100.0*om3_8 - 200.0*om4_8
       + 100.0*om4_7 + 100.0*om4_9 +
       1.5308084989341916e-13*ph5_8 -
       1.5308084989341916e-13*ph3_8 - 2500.0*ph4_7 +
       2500.0*ph4_9)

+ sqr(-200.0*ps4_8 + 100.0*ps5_8 + 100.0*ps3_8 - 200.0*ps4_8
       + 100.0*ps4_7 + 100.0*ps4_9 + 0.25*om4_8)

+ sqr(-25.0*(ps4_7-ps4_9) * (ph5_8-ph3_8) +
       25.0*(ps5_8-ps3_8) * (ph4_7-ph4_9) - 200.0*ph4_8 +
       100.0*ph5_8 + 100.0*ph3_8 - 200.0*ph4_8 + 100.0*ph4_7
       + 100.0*ph4_9)

+ sqr(-200.0*om5_8 + 100.0*om6_8 + 100.0*om4_8 - 200.0*om5_8
       + 100.0*om5_7 + 100.0*om5_9 +
       1.5308084989341916e-13*ph6_8 -
       1.5308084989341916e-13*ph4_8 - 2500.0*ph5_7 +
       2500.0*ph5_9)

+ sqr(-200.0*ps5_8 + 100.0*ps6_8 + 100.0*ps4_8 - 200.0*ps5_8
       + 100.0*ps5_7 + 100.0*ps5_9 + 0.25*om5_8)

+ sqr(-25.0*(ps5_7-ps5_9) * (ph6_8-ph4_8) +
       25.0*(ps6_8-ps4_8) * (ph5_7-ph5_9) - 200.0*ph5_8 +
       100.0*ph6_8 + 100.0*ph4_8 - 200.0*ph5_8 + 100.0*ph5_7
       + 100.0*ph5_9)

+ sqr(-200.0*om6_8 + 100.0*om7_8 + 100.0*om5_8 - 200.0*om6_8
       + 100.0*om6_7 + 100.0*om6_9 +
       1.5308084989341916e-13*ph7_8 -
       1.5308084989341916e-13*ph5_8 - 2500.0*ph6_7 +
       2500.0*ph6_9)

+ sqr(-200.0*ps6_8 + 100.0*ps7_8 + 100.0*ps5_8 - 200.0*ps6_8
       + 100.0*ps6_7 + 100.0*ps6_9 + 0.25*om6_8)

+ sqr(-25.0*(ps6_7-ps6_9) * (ph7_8-ph5_8) +
       25.0*(ps7_8-ps5_8) * (ph6_7-ph6_9) - 200.0*ph6_8 +
       100.0*ph7_8 + 100.0*ph5_8 - 200.0*ph6_8 + 100.0*ph6_7
       + 100.0*ph6_9)

+ sqr(-200.0*om7_8 + 100.0*om8_8 + 100.0*om6_8 - 200.0*om7_8
       + 100.0*om7_7 + 100.0*om7_9 +
       1.5308084989341916e-13*ph8_8 -
       1.5308084989341916e-13*ph6_8 - 2500.0*ph7_7 +
       2500.0*ph7_9)

+ sqr(-200.0*ps7_8 + 100.0*ps8_8 + 100.0*ps6_8 - 200.0*ps7_8
       + 100.0*ps7_7 + 100.0*ps7_9 + 0.25*om7_8)

+ sqr(-25.0*(ps7_7-ps7_9) * (ph8_8-ph6_8) +
       25.0*(ps8_8-ps6_8) * (ph7_7-ph7_9) - 200.0*ph7_8 +
       100.0*ph8_8 + 100.0*ph6_8 - 200.0*ph7_8 + 100.0*ph7_7
       + 100.0*ph7_9)

+ sqr(-200.0*om8_8 + 100.0*om9_8 + 100.0*om7_8 - 200.0*om8_8
       + 100.0*om8_7 + 100.0*om8_9 +
       1.5308084989341916e-13*ph9_8 -
       1.5308084989341916e-13*ph7_8 - 2500.0*ph8_7 +
       2500.0*ph8_9)

+ sqr(-200.0*ps8_8 + 100.0*ps9_8 + 100.0*ps7_8 - 200.0*ps8_8
       + 100.0*ps8_7 + 100.0*ps8_9 + 0.25*om8_8)

+ sqr(-25.0*(ps8_7-ps8_9) * (ph9_8-ph7_8) +
       25.0*(ps9_8-ps7_8) * (ph8_7-ph8_9) - 200.0*ph8_8 +
       100.0*ph9_8 + 100.0*ph7_8 - 200.0*ph8_8 + 100.0*ph8_7
       + 100.0*ph8_9)

+ sqr(-200.0*om9_8 + 100.0*om10_8 + 100.0*om8_8 -
       200.0*om9_8 + 100.0*om9_7 + 100.0*om9_9 +
       1.5308084989341916e-13*ph10_8 -
       1.5308084989341916e-13*ph8_8 - 2500.0*ph9_7 +
       2500.0*ph9_9)

+ sqr(-200.0*ps9_8 + 100.0*ps10_8 + 100.0*ps8_8 -
       200.0*ps9_8 + 100.0*ps9_7 + 100.0*ps9_9 + 0.25*om9_8)

+ sqr(-25.0*(ps9_7-ps9_9) * (ph10_8-ph8_8) +
       25.0*(ps10_8-ps8_8) * (ph9_7-ph9_9) - 200.0*ph9_8 +
       100.0*ph10_8 + 100.0*ph8_8 - 200.0*ph9_8 +
       100.0*ph9_7 + 100.0*ph9_9)

+ sqr(-200.0*omm9_7 + 100.0*omm8_7 + 100.0*omm10_7 -
       200.0*omm9_7 + 100.0*omm9_6 + 100.0*omm9_8 +
       1.5308084989341916e-13*phm8_7 -
       1.5308084989341916e-13*phm10_7 - 2500.0*phm9_6 +
       2500.0*phm9_8)

+ sqr(-200.0*psm9_7 + 100.0*psm8_7 + 100.0*psm10_7 -
       200.0*psm9_7 + 100.0*psm9_6 + 100.0*psm9_8 +
       0.25*omm9_7)

+ sqr(-25.0*(psm9_6-psm9_8) * (phm8_7-phm10_7) +
       25.0*(psm8_7-psm10_7) * (phm9_6-phm9_8) -
       200.0*phm9_7 + 100.0*phm8_7 + 100.0*phm10_7 -
       200.0*phm9_7 + 100.0*phm9_6 + 100.0*phm9_8)

+ sqr(-200.0*omm8_7 + 100.0*omm7_7 + 100.0*omm9_7 -
       200.0*omm8_7 + 100.0*omm8_6 + 100.0*omm8_8 +
       1.5308084989341916e-13*phm7_7 -
       1.5308084989341916e-13*phm9_7 - 2500.0*phm8_6 +
       2500.0*phm8_8)

+ sqr(-200.0*psm8_7 + 100.0*psm7_7 + 100.0*psm9_7 -
       200.0*psm8_7 + 100.0*psm8_6 + 100.0*psm8_8 +
       0.25*omm8_7)

+ sqr(-25.0*(psm8_6-psm8_8) * (phm7_7-phm9_7) +
       25.0*(psm7_7-psm9_7) * (phm8_6-phm8_8) - 200.0*phm8_7
       + 100.0*phm7_7 + 100.0*phm9_7 - 200.0*phm8_7 +
       100.0*phm8_6 + 100.0*phm8_8)

+ sqr(-200.0*omm7_7 + 100.0*omm6_7 + 100.0*omm8_7 -
       200.0*omm7_7 + 100.0*omm7_6 + 100.0*omm7_8 +
       1.5308084989341916e-13*phm6_7 -
       1.5308084989341916e-13*phm8_7 - 2500.0*phm7_6 +
       2500.0*phm7_8)

+ sqr(-200.0*psm7_7 + 100.0*psm6_7 + 100.0*psm8_7 -
       200.0*psm7_7 + 100.0*psm7_6 + 100.0*psm7_8 +
       0.25*omm7_7)

+ sqr(-25.0*(psm7_6-psm7_8) * (phm6_7-phm8_7) +
       25.0*(psm6_7-psm8_7) * (phm7_6-phm7_8) - 200.0*phm7_7
       + 100.0*phm6_7 + 100.0*phm8_7 - 200.0*phm7_7 +
       100.0*phm7_6 + 100.0*phm7_8)

+ sqr(-200.0*omm6_7 + 100.0*omm5_7 + 100.0*omm7_7 -
       200.0*omm6_7 + 100.0*omm6_6 + 100.0*omm6_8 +
       1.5308084989341916e-13*phm5_7 -
       1.5308084989341916e-13*phm7_7 - 2500.0*phm6_6 +
       2500.0*phm6_8)

+ sqr(-200.0*psm6_7 + 100.0*psm5_7 + 100.0*psm7_7 -
       200.0*psm6_7 + 100.0*psm6_6 + 100.0*psm6_8 +
       0.25*omm6_7)

+ sqr(-25.0*(psm6_6-psm6_8) * (phm5_7-phm7_7) +
       25.0*(psm5_7-psm7_7) * (phm6_6-phm6_8) - 200.0*phm6_7
       + 100.0*phm5_7 + 100.0*phm7_7 - 200.0*phm6_7 +
       100.0*phm6_6 + 100.0*phm6_8)

+ sqr(-200.0*omm5_7 + 100.0*omm4_7 + 100.0*omm6_7 -
       200.0*omm5_7 + 100.0*omm5_6 + 100.0*omm5_8 +
       1.5308084989341916e-13*phm4_7 -
       1.5308084989341916e-13*phm6_7 - 2500.0*phm5_6 +
       2500.0*phm5_8)

+ sqr(-200.0*psm5_7 + 100.0*psm4_7 + 100.0*psm6_7 -
       200.0*psm5_7 + 100.0*psm5_6 + 100.0*psm5_8 +
       0.25*omm5_7)

+ sqr(-25.0*(psm5_6-psm5_8) * (phm4_7-phm6_7) +
       25.0*(psm4_7-psm6_7) * (phm5_6-phm5_8) - 200.0*phm5_7
       + 100.0*phm4_7 + 100.0*phm6_7 - 200.0*phm5_7 +
       100.0*phm5_6 + 100.0*phm5_8)

+ sqr(-200.0*omm4_7 + 100.0*omm3_7 + 100.0*omm5_7 -
       200.0*omm4_7 + 100.0*omm4_6 + 100.0*omm4_8 +
       1.5308084989341916e-13*phm3_7 -
       1.5308084989341916e-13*phm5_7 - 2500.0*phm4_6 +
       2500.0*phm4_8)

+ sqr(-200.0*psm4_7 + 100.0*psm3_7 + 100.0*psm5_7 -
       200.0*psm4_7 + 100.0*psm4_6 + 100.0*psm4_8 +
       0.25*omm4_7)

+ sqr(-25.0*(psm4_6-psm4_8) * (phm3_7-phm5_7) +
       25.0*(psm3_7-psm5_7) * (phm4_6-phm4_8) - 200.0*phm4_7
       + 100.0*phm3_7 + 100.0*phm5_7 - 200.0*phm4_7 +
       100.0*phm4_6 + 100.0*phm4_8)

+ sqr(-200.0*omm3_7 + 100.0*omm2_7 + 100.0*omm4_7 -
       200.0*omm3_7 + 100.0*omm3_6 + 100.0*omm3_8 +
       1.5308084989341916e-13*phm2_7 -
       1.5308084989341916e-13*phm4_7 - 2500.0*phm3_6 +
       2500.0*phm3_8)

+ sqr(-200.0*psm3_7 + 100.0*psm2_7 + 100.0*psm4_7 -
       200.0*psm3_7 + 100.0*psm3_6 + 100.0*psm3_8 +
       0.25*omm3_7)

+ sqr(-25.0*(psm3_6-psm3_8) * (phm2_7-phm4_7) +
       25.0*(psm2_7-psm4_7) * (phm3_6-phm3_8) - 200.0*phm3_7
       + 100.0*phm2_7 + 100.0*phm4_7 - 200.0*phm3_7 +
       100.0*phm3_6 + 100.0*phm3_8)

+ sqr(-200.0*omm2_7 + 100.0*omm1_7 + 100.0*omm3_7 -
       200.0*omm2_7 + 100.0*omm2_6 + 100.0*omm2_8 +
       1.5308084989341916e-13*phm1_7 -
       1.5308084989341916e-13*phm3_7 - 2500.0*phm2_6 +
       2500.0*phm2_8)

+ sqr(-200.0*psm2_7 + 100.0*psm1_7 + 100.0*psm3_7 -
       200.0*psm2_7 + 100.0*psm2_6 + 100.0*psm2_8 +
       0.25*omm2_7)

+ sqr(-25.0*(psm2_6-psm2_8) * (phm1_7-phm3_7) +
       25.0*(psm1_7-psm3_7) * (phm2_6-phm2_8) - 200.0*phm2_7
       + 100.0*phm1_7 + 100.0*phm3_7 - 200.0*phm2_7 +
       100.0*phm2_6 + 100.0*phm2_8)

+ sqr(-200.0*omm1_7 + 100.0*om0_7 + 100.0*omm2_7 -
       200.0*omm1_7 + 100.0*omm1_6 + 100.0*omm1_8 +
       1.5308084989341916e-13*ph0_7 -
       1.5308084989341916e-13*phm2_7 - 2500.0*phm1_6 +
       2500.0*phm1_8)

+ sqr(-200.0*psm1_7 + 100.0*ps0_7 + 100.0*psm2_7 -
       200.0*psm1_7 + 100.0*psm1_6 + 100.0*psm1_8 +
       0.25*omm1_7)

+ sqr(-25.0*(psm1_6-psm1_8) * (ph0_7-phm2_7) +
       25.0*(ps0_7-psm2_7) * (phm1_6-phm1_8) - 200.0*phm1_7
       + 100.0*ph0_7 + 100.0*phm2_7 - 200.0*phm1_7 +
       100.0*phm1_6 + 100.0*phm1_8)

+ sqr(-200.0*om0_7 + 100.0*om1_7 + 100.0*omm1_7 -
       200.0*om0_7 + 100.0*om0_6 + 100.0*om0_8 +
       1.5308084989341916e-13*ph1_7 -
       1.5308084989341916e-13*phm1_7 - 2500.0*ph0_6 +
       2500.0*ph0_8)

+ sqr(-200.0*ps0_7 + 100.0*ps1_7 + 100.0*psm1_7 -
       200.0*ps0_7 + 100.0*ps0_6 + 100.0*ps0_8 + 0.25*om0_7)

+ sqr(-25.0*(ps0_6-ps0_8) * (ph1_7-phm1_7) +
       25.0*(ps1_7-psm1_7) * (ph0_6-ph0_8) - 200.0*ph0_7 +
       100.0*ph1_7 + 100.0*phm1_7 - 200.0*ph0_7 +
       100.0*ph0_6 + 100.0*ph0_8)

+ sqr(-200.0*om1_7 + 100.0*om2_7 + 100.0*om0_7 - 200.0*om1_7
       + 100.0*om1_6 + 100.0*om1_8 +
       1.5308084989341916e-13*ph2_7 -
       1.5308084989341916e-13*ph0_7 - 2500.0*ph1_6 +
       2500.0*ph1_8)

+ sqr(-200.0*ps1_7 + 100.0*ps2_7 + 100.0*ps0_7 - 200.0*ps1_7
       + 100.0*ps1_6 + 100.0*ps1_8 + 0.25*om1_7)

+ sqr(-25.0*(ps1_6-ps1_8) * (ph2_7-ph0_7) +
       25.0*(ps2_7-ps0_7) * (ph1_6-ph1_8) - 200.0*ph1_7 +
       100.0*ph2_7 + 100.0*ph0_7 - 200.0*ph1_7 + 100.0*ph1_6
       + 100.0*ph1_8)

+ sqr(-200.0*om2_7 + 100.0*om3_7 + 100.0*om1_7 - 200.0*om2_7
       + 100.0*om2_6 + 100.0*om2_8 +
       1.5308084989341916e-13*ph3_7 -
       1.5308084989341916e-13*ph1_7 - 2500.0*ph2_6 +
       2500.0*ph2_8)

+ sqr(-200.0*ps2_7 + 100.0*ps3_7 + 100.0*ps1_7 - 200.0*ps2_7
       + 100.0*ps2_6 + 100.0*ps2_8 + 0.25*om2_7)

+ sqr(-25.0*(ps2_6-ps2_8) * (ph3_7-ph1_7) +
       25.0*(ps3_7-ps1_7) * (ph2_6-ph2_8) - 200.0*ph2_7 +
       100.0*ph3_7 + 100.0*ph1_7 - 200.0*ph2_7 + 100.0*ph2_6
       + 100.0*ph2_8)

+ sqr(-200.0*om3_7 + 100.0*om4_7 + 100.0*om2_7 - 200.0*om3_7
       + 100.0*om3_6 + 100.0*om3_8 +
       1.5308084989341916e-13*ph4_7 -
       1.5308084989341916e-13*ph2_7 - 2500.0*ph3_6 +
       2500.0*ph3_8)

+ sqr(-200.0*ps3_7 + 100.0*ps4_7 + 100.0*ps2_7 - 200.0*ps3_7
       + 100.0*ps3_6 + 100.0*ps3_8 + 0.25*om3_7)

+ sqr(-25.0*(ps3_6-ps3_8) * (ph4_7-ph2_7) +
       25.0*(ps4_7-ps2_7) * (ph3_6-ph3_8) - 200.0*ph3_7 +
       100.0*ph4_7 + 100.0*ph2_7 - 200.0*ph3_7 + 100.0*ph3_6
       + 100.0*ph3_8)

+ sqr(-200.0*om4_7 + 100.0*om5_7 + 100.0*om3_7 - 200.0*om4_7
       + 100.0*om4_6 + 100.0*om4_8 +
       1.5308084989341916e-13*ph5_7 -
       1.5308084989341916e-13*ph3_7 - 2500.0*ph4_6 +
       2500.0*ph4_8)

+ sqr(-200.0*ps4_7 + 100.0*ps5_7 + 100.0*ps3_7 - 200.0*ps4_7
       + 100.0*ps4_6 + 100.0*ps4_8 + 0.25*om4_7)

+ sqr(-25.0*(ps4_6-ps4_8) * (ph5_7-ph3_7) +
       25.0*(ps5_7-ps3_7) * (ph4_6-ph4_8) - 200.0*ph4_7 +
       100.0*ph5_7 + 100.0*ph3_7 - 200.0*ph4_7 + 100.0*ph4_6
       + 100.0*ph4_8)

+ sqr(-200.0*om5_7 + 100.0*om6_7 + 100.0*om4_7 - 200.0*om5_7
       + 100.0*om5_6 + 100.0*om5_8 +
       1.5308084989341916e-13*ph6_7 -
       1.5308084989341916e-13*ph4_7 - 2500.0*ph5_6 +
       2500.0*ph5_8)

+ sqr(-200.0*ps5_7 + 100.0*ps6_7 + 100.0*ps4_7 - 200.0*ps5_7
       + 100.0*ps5_6 + 100.0*ps5_8 + 0.25*om5_7)

+ sqr(-25.0*(ps5_6-ps5_8) * (ph6_7-ph4_7) +
       25.0*(ps6_7-ps4_7) * (ph5_6-ph5_8) - 200.0*ph5_7 +
       100.0*ph6_7 + 100.0*ph4_7 - 200.0*ph5_7 + 100.0*ph5_6
       + 100.0*ph5_8)

+ sqr(-200.0*om6_7 + 100.0*om7_7 + 100.0*om5_7 - 200.0*om6_7
       + 100.0*om6_6 + 100.0*om6_8 +
       1.5308084989341916e-13*ph7_7 -
       1.5308084989341916e-13*ph5_7 - 2500.0*ph6_6 +
       2500.0*ph6_8)

+ sqr(-200.0*ps6_7 + 100.0*ps7_7 + 100.0*ps5_7 - 200.0*ps6_7
       + 100.0*ps6_6 + 100.0*ps6_8 + 0.25*om6_7)

+ sqr(-25.0*(ps6_6-ps6_8) * (ph7_7-ph5_7) +
       25.0*(ps7_7-ps5_7) * (ph6_6-ph6_8) - 200.0*ph6_7 +
       100.0*ph7_7 + 100.0*ph5_7 - 200.0*ph6_7 + 100.0*ph6_6
       + 100.0*ph6_8)

+ sqr(-200.0*om7_7 + 100.0*om8_7 + 100.0*om6_7 - 200.0*om7_7
       + 100.0*om7_6 + 100.0*om7_8 +
       1.5308084989341916e-13*ph8_7 -
       1.5308084989341916e-13*ph6_7 - 2500.0*ph7_6 +
       2500.0*ph7_8)

+ sqr(-200.0*ps7_7 + 100.0*ps8_7 + 100.0*ps6_7 - 200.0*ps7_7
       + 100.0*ps7_6 + 100.0*ps7_8 + 0.25*om7_7)

+ sqr(-25.0*(ps7_6-ps7_8) * (ph8_7-ph6_7) +
       25.0*(ps8_7-ps6_7) * (ph7_6-ph7_8) - 200.0*ph7_7 +
       100.0*ph8_7 + 100.0*ph6_7 - 200.0*ph7_7 + 100.0*ph7_6
       + 100.0*ph7_8)

+ sqr(-200.0*om8_7 + 100.0*om9_7 + 100.0*om7_7 - 200.0*om8_7
       + 100.0*om8_6 + 100.0*om8_8 +
       1.5308084989341916e-13*ph9_7 -
       1.5308084989341916e-13*ph7_7 - 2500.0*ph8_6 +
       2500.0*ph8_8)

+ sqr(-200.0*ps8_7 + 100.0*ps9_7 + 100.0*ps7_7 - 200.0*ps8_7
       + 100.0*ps8_6 + 100.0*ps8_8 + 0.25*om8_7)

+ sqr(-25.0*(ps8_6-ps8_8) * (ph9_7-ph7_7) +
       25.0*(ps9_7-ps7_7) * (ph8_6-ph8_8) - 200.0*ph8_7 +
       100.0*ph9_7 + 100.0*ph7_7 - 200.0*ph8_7 + 100.0*ph8_6
       + 100.0*ph8_8)

+ sqr(-200.0*om9_7 + 100.0*om10_7 + 100.0*om8_7 -
       200.0*om9_7 + 100.0*om9_6 + 100.0*om9_8 +
       1.5308084989341916e-13*ph10_7 -
       1.5308084989341916e-13*ph8_7 - 2500.0*ph9_6 +
       2500.0*ph9_8)

+ sqr(-200.0*ps9_7 + 100.0*ps10_7 + 100.0*ps8_7 -
       200.0*ps9_7 + 100.0*ps9_6 + 100.0*ps9_8 + 0.25*om9_7)

+ sqr(-25.0*(ps9_6-ps9_8) * (ph10_7-ph8_7) +
       25.0*(ps10_7-ps8_7) * (ph9_6-ph9_8) - 200.0*ph9_7 +
       100.0*ph10_7 + 100.0*ph8_7 - 200.0*ph9_7 +
       100.0*ph9_6 + 100.0*ph9_8)

+ sqr(-200.0*omm9_6 + 100.0*omm8_6 + 100.0*omm10_6 -
       200.0*omm9_6 + 100.0*omm9_5 + 100.0*omm9_7 +
       1.5308084989341916e-13*phm8_6 -
       1.5308084989341916e-13*phm10_6 - 2500.0*phm9_5 +
       2500.0*phm9_7)

+ sqr(-200.0*psm9_6 + 100.0*psm8_6 + 100.0*psm10_6 -
       200.0*psm9_6 + 100.0*psm9_5 + 100.0*psm9_7 +
       0.25*omm9_6)

+ sqr(-25.0*(psm9_5-psm9_7) * (phm8_6-phm10_6) +
       25.0*(psm8_6-psm10_6) * (phm9_5-phm9_7) -
       200.0*phm9_6 + 100.0*phm8_6 + 100.0*phm10_6 -
       200.0*phm9_6 + 100.0*phm9_5 + 100.0*phm9_7)

+ sqr(-200.0*omm8_6 + 100.0*omm7_6 + 100.0*omm9_6 -
       200.0*omm8_6 + 100.0*omm8_5 + 100.0*omm8_7 +
       1.5308084989341916e-13*phm7_6 -
       1.5308084989341916e-13*phm9_6 - 2500.0*phm8_5 +
       2500.0*phm8_7)

+ sqr(-200.0*psm8_6 + 100.0*psm7_6 + 100.0*psm9_6 -
       200.0*psm8_6 + 100.0*psm8_5 + 100.0*psm8_7 +
       0.25*omm8_6)

+ sqr(-25.0*(psm8_5-psm8_7) * (phm7_6-phm9_6) +
       25.0*(psm7_6-psm9_6) * (phm8_5-phm8_7) - 200.0*phm8_6
       + 100.0*phm7_6 + 100.0*phm9_6 - 200.0*phm8_6 +
       100.0*phm8_5 + 100.0*phm8_7)

+ sqr(-200.0*omm7_6 + 100.0*omm6_6 + 100.0*omm8_6 -
       200.0*omm7_6 + 100.0*omm7_5 + 100.0*omm7_7 +
       1.5308084989341916e-13*phm6_6 -
       1.5308084989341916e-13*phm8_6 - 2500.0*phm7_5 +
       2500.0*phm7_7)

+ sqr(-200.0*psm7_6 + 100.0*psm6_6 + 100.0*psm8_6 -
       200.0*psm7_6 + 100.0*psm7_5 + 100.0*psm7_7 +
       0.25*omm7_6)

+ sqr(-25.0*(psm7_5-psm7_7) * (phm6_6-phm8_6) +
       25.0*(psm6_6-psm8_6) * (phm7_5-phm7_7) - 200.0*phm7_6
       + 100.0*phm6_6 + 100.0*phm8_6 - 200.0*phm7_6 +
       100.0*phm7_5 + 100.0*phm7_7)

+ sqr(-200.0*omm6_6 + 100.0*omm5_6 + 100.0*omm7_6 -
       200.0*omm6_6 + 100.0*omm6_5 + 100.0*omm6_7 +
       1.5308084989341916e-13*phm5_6 -
       1.5308084989341916e-13*phm7_6 - 2500.0*phm6_5 +
       2500.0*phm6_7)

+ sqr(-200.0*psm6_6 + 100.0*psm5_6 + 100.0*psm7_6 -
       200.0*psm6_6 + 100.0*psm6_5 + 100.0*psm6_7 +
       0.25*omm6_6)

+ sqr(-25.0*(psm6_5-psm6_7) * (phm5_6-phm7_6) +
       25.0*(psm5_6-psm7_6) * (phm6_5-phm6_7) - 200.0*phm6_6
       + 100.0*phm5_6 + 100.0*phm7_6 - 200.0*phm6_6 +
       100.0*phm6_5 + 100.0*phm6_7)

+ sqr(-200.0*omm5_6 + 100.0*omm4_6 + 100.0*omm6_6 -
       200.0*omm5_6 + 100.0*omm5_5 + 100.0*omm5_7 +
       1.5308084989341916e-13*phm4_6 -
       1.5308084989341916e-13*phm6_6 - 2500.0*phm5_5 +
       2500.0*phm5_7)

+ sqr(-200.0*psm5_6 + 100.0*psm4_6 + 100.0*psm6_6 -
       200.0*psm5_6 + 100.0*psm5_5 + 100.0*psm5_7 +
       0.25*omm5_6)

+ sqr(-25.0*(psm5_5-psm5_7) * (phm4_6-phm6_6) +
       25.0*(psm4_6-psm6_6) * (phm5_5-phm5_7) - 200.0*phm5_6
       + 100.0*phm4_6 + 100.0*phm6_6 - 200.0*phm5_6 +
       100.0*phm5_5 + 100.0*phm5_7)

+ sqr(-200.0*omm4_6 + 100.0*omm3_6 + 100.0*omm5_6 -
       200.0*omm4_6 + 100.0*omm4_5 + 100.0*omm4_7 +
       1.5308084989341916e-13*phm3_6 -
       1.5308084989341916e-13*phm5_6 - 2500.0*phm4_5 +
       2500.0*phm4_7)

+ sqr(-200.0*psm4_6 + 100.0*psm3_6 + 100.0*psm5_6 -
       200.0*psm4_6 + 100.0*psm4_5 + 100.0*psm4_7 +
       0.25*omm4_6)

+ sqr(-25.0*(psm4_5-psm4_7) * (phm3_6-phm5_6) +
       25.0*(psm3_6-psm5_6) * (phm4_5-phm4_7) - 200.0*phm4_6
       + 100.0*phm3_6 + 100.0*phm5_6 - 200.0*phm4_6 +
       100.0*phm4_5 + 100.0*phm4_7)

+ sqr(-200.0*omm3_6 + 100.0*omm2_6 + 100.0*omm4_6 -
       200.0*omm3_6 + 100.0*omm3_5 + 100.0*omm3_7 +
       1.5308084989341916e-13*phm2_6 -
       1.5308084989341916e-13*phm4_6 - 2500.0*phm3_5 +
       2500.0*phm3_7)

+ sqr(-200.0*psm3_6 + 100.0*psm2_6 + 100.0*psm4_6 -
       200.0*psm3_6 + 100.0*psm3_5 + 100.0*psm3_7 +
       0.25*omm3_6)

+ sqr(-25.0*(psm3_5-psm3_7) * (phm2_6-phm4_6) +
       25.0*(psm2_6-psm4_6) * (phm3_5-phm3_7) - 200.0*phm3_6
       + 100.0*phm2_6 + 100.0*phm4_6 - 200.0*phm3_6 +
       100.0*phm3_5 + 100.0*phm3_7)

+ sqr(-200.0*omm2_6 + 100.0*omm1_6 + 100.0*omm3_6 -
       200.0*omm2_6 + 100.0*omm2_5 + 100.0*omm2_7 +
       1.5308084989341916e-13*phm1_6 -
       1.5308084989341916e-13*phm3_6 - 2500.0*phm2_5 +
       2500.0*phm2_7)

+ sqr(-200.0*psm2_6 + 100.0*psm1_6 + 100.0*psm3_6 -
       200.0*psm2_6 + 100.0*psm2_5 + 100.0*psm2_7 +
       0.25*omm2_6)

+ sqr(-25.0*(psm2_5-psm2_7) * (phm1_6-phm3_6) +
       25.0*(psm1_6-psm3_6) * (phm2_5-phm2_7) - 200.0*phm2_6
       + 100.0*phm1_6 + 100.0*phm3_6 - 200.0*phm2_6 +
       100.0*phm2_5 + 100.0*phm2_7)

+ sqr(-200.0*omm1_6 + 100.0*om0_6 + 100.0*omm2_6 -
       200.0*omm1_6 + 100.0*omm1_5 + 100.0*omm1_7 +
       1.5308084989341916e-13*ph0_6 -
       1.5308084989341916e-13*phm2_6 - 2500.0*phm1_5 +
       2500.0*phm1_7)

+ sqr(-200.0*psm1_6 + 100.0*ps0_6 + 100.0*psm2_6 -
       200.0*psm1_6 + 100.0*psm1_5 + 100.0*psm1_7 +
       0.25*omm1_6)

+ sqr(-25.0*(psm1_5-psm1_7) * (ph0_6-phm2_6) +
       25.0*(ps0_6-psm2_6) * (phm1_5-phm1_7) - 200.0*phm1_6
       + 100.0*ph0_6 + 100.0*phm2_6 - 200.0*phm1_6 +
       100.0*phm1_5 + 100.0*phm1_7)

+ sqr(-200.0*om0_6 + 100.0*om1_6 + 100.0*omm1_6 -
       200.0*om0_6 + 100.0*om0_5 + 100.0*om0_7 +
       1.5308084989341916e-13*ph1_6 -
       1.5308084989341916e-13*phm1_6 - 2500.0*ph0_5 +
       2500.0*ph0_7)

+ sqr(-200.0*ps0_6 + 100.0*ps1_6 + 100.0*psm1_6 -
       200.0*ps0_6 + 100.0*ps0_5 + 100.0*ps0_7 + 0.25*om0_6)

+ sqr(-25.0*(ps0_5-ps0_7) * (ph1_6-phm1_6) +
       25.0*(ps1_6-psm1_6) * (ph0_5-ph0_7) - 200.0*ph0_6 +
       100.0*ph1_6 + 100.0*phm1_6 - 200.0*ph0_6 +
       100.0*ph0_5 + 100.0*ph0_7)

+ sqr(-200.0*om1_6 + 100.0*om2_6 + 100.0*om0_6 - 200.0*om1_6
       + 100.0*om1_5 + 100.0*om1_7 +
       1.5308084989341916e-13*ph2_6 -
       1.5308084989341916e-13*ph0_6 - 2500.0*ph1_5 +
       2500.0*ph1_7)

+ sqr(-200.0*ps1_6 + 100.0*ps2_6 + 100.0*ps0_6 - 200.0*ps1_6
       + 100.0*ps1_5 + 100.0*ps1_7 + 0.25*om1_6)

+ sqr(-25.0*(ps1_5-ps1_7) * (ph2_6-ph0_6) +
       25.0*(ps2_6-ps0_6) * (ph1_5-ph1_7) - 200.0*ph1_6 +
       100.0*ph2_6 + 100.0*ph0_6 - 200.0*ph1_6 + 100.0*ph1_5
       + 100.0*ph1_7)

+ sqr(-200.0*om2_6 + 100.0*om3_6 + 100.0*om1_6 - 200.0*om2_6
       + 100.0*om2_5 + 100.0*om2_7 +
       1.5308084989341916e-13*ph3_6 -
       1.5308084989341916e-13*ph1_6 - 2500.0*ph2_5 +
       2500.0*ph2_7)

+ sqr(-200.0*ps2_6 + 100.0*ps3_6 + 100.0*ps1_6 - 200.0*ps2_6
       + 100.0*ps2_5 + 100.0*ps2_7 + 0.25*om2_6)

+ sqr(-25.0*(ps2_5-ps2_7) * (ph3_6-ph1_6) +
       25.0*(ps3_6-ps1_6) * (ph2_5-ph2_7) - 200.0*ph2_6 +
       100.0*ph3_6 + 100.0*ph1_6 - 200.0*ph2_6 + 100.0*ph2_5
       + 100.0*ph2_7)

+ sqr(-200.0*om3_6 + 100.0*om4_6 + 100.0*om2_6 - 200.0*om3_6
       + 100.0*om3_5 + 100.0*om3_7 +
       1.5308084989341916e-13*ph4_6 -
       1.5308084989341916e-13*ph2_6 - 2500.0*ph3_5 +
       2500.0*ph3_7)

+ sqr(-200.0*ps3_6 + 100.0*ps4_6 + 100.0*ps2_6 - 200.0*ps3_6
       + 100.0*ps3_5 + 100.0*ps3_7 + 0.25*om3_6)

+ sqr(-25.0*(ps3_5-ps3_7) * (ph4_6-ph2_6) +
       25.0*(ps4_6-ps2_6) * (ph3_5-ph3_7) - 200.0*ph3_6 +
       100.0*ph4_6 + 100.0*ph2_6 - 200.0*ph3_6 + 100.0*ph3_5
       + 100.0*ph3_7)

+ sqr(-200.0*om4_6 + 100.0*om5_6 + 100.0*om3_6 - 200.0*om4_6
       + 100.0*om4_5 + 100.0*om4_7 +
       1.5308084989341916e-13*ph5_6 -
       1.5308084989341916e-13*ph3_6 - 2500.0*ph4_5 +
       2500.0*ph4_7)

+ sqr(-200.0*ps4_6 + 100.0*ps5_6 + 100.0*ps3_6 - 200.0*ps4_6
       + 100.0*ps4_5 + 100.0*ps4_7 + 0.25*om4_6)

+ sqr(-25.0*(ps4_5-ps4_7) * (ph5_6-ph3_6) +
       25.0*(ps5_6-ps3_6) * (ph4_5-ph4_7) - 200.0*ph4_6 +
       100.0*ph5_6 + 100.0*ph3_6 - 200.0*ph4_6 + 100.0*ph4_5
       + 100.0*ph4_7)

+ sqr(-200.0*om5_6 + 100.0*om6_6 + 100.0*om4_6 - 200.0*om5_6
       + 100.0*om5_5 + 100.0*om5_7 +
       1.5308084989341916e-13*ph6_6 -
       1.5308084989341916e-13*ph4_6 - 2500.0*ph5_5 +
       2500.0*ph5_7)

+ sqr(-200.0*ps5_6 + 100.0*ps6_6 + 100.0*ps4_6 - 200.0*ps5_6
       + 100.0*ps5_5 + 100.0*ps5_7 + 0.25*om5_6)

+ sqr(-25.0*(ps5_5-ps5_7) * (ph6_6-ph4_6) +
       25.0*(ps6_6-ps4_6) * (ph5_5-ph5_7) - 200.0*ph5_6 +
       100.0*ph6_6 + 100.0*ph4_6 - 200.0*ph5_6 + 100.0*ph5_5
       + 100.0*ph5_7)

+ sqr(-200.0*om6_6 + 100.0*om7_6 + 100.0*om5_6 - 200.0*om6_6
       + 100.0*om6_5 + 100.0*om6_7 +
       1.5308084989341916e-13*ph7_6 -
       1.5308084989341916e-13*ph5_6 - 2500.0*ph6_5 +
       2500.0*ph6_7)

+ sqr(-200.0*ps6_6 + 100.0*ps7_6 + 100.0*ps5_6 - 200.0*ps6_6
       + 100.0*ps6_5 + 100.0*ps6_7 + 0.25*om6_6)

+ sqr(-25.0*(ps6_5-ps6_7) * (ph7_6-ph5_6) +
       25.0*(ps7_6-ps5_6) * (ph6_5-ph6_7) - 200.0*ph6_6 +
       100.0*ph7_6 + 100.0*ph5_6 - 200.0*ph6_6 + 100.0*ph6_5
       + 100.0*ph6_7)

+ sqr(-200.0*om7_6 + 100.0*om8_6 + 100.0*om6_6 - 200.0*om7_6
       + 100.0*om7_5 + 100.0*om7_7 +
       1.5308084989341916e-13*ph8_6 -
       1.5308084989341916e-13*ph6_6 - 2500.0*ph7_5 +
       2500.0*ph7_7)

+ sqr(-200.0*ps7_6 + 100.0*ps8_6 + 100.0*ps6_6 - 200.0*ps7_6
       + 100.0*ps7_5 + 100.0*ps7_7 + 0.25*om7_6)

+ sqr(-25.0*(ps7_5-ps7_7) * (ph8_6-ph6_6) +
       25.0*(ps8_6-ps6_6) * (ph7_5-ph7_7) - 200.0*ph7_6 +
       100.0*ph8_6 + 100.0*ph6_6 - 200.0*ph7_6 + 100.0*ph7_5
       + 100.0*ph7_7)

+ sqr(-200.0*om8_6 + 100.0*om9_6 + 100.0*om7_6 - 200.0*om8_6
       + 100.0*om8_5 + 100.0*om8_7 +
       1.5308084989341916e-13*ph9_6 -
       1.5308084989341916e-13*ph7_6 - 2500.0*ph8_5 +
       2500.0*ph8_7)

+ sqr(-200.0*ps8_6 + 100.0*ps9_6 + 100.0*ps7_6 - 200.0*ps8_6
       + 100.0*ps8_5 + 100.0*ps8_7 + 0.25*om8_6)

+ sqr(-25.0*(ps8_5-ps8_7) * (ph9_6-ph7_6) +
       25.0*(ps9_6-ps7_6) * (ph8_5-ph8_7) - 200.0*ph8_6 +
       100.0*ph9_6 + 100.0*ph7_6 - 200.0*ph8_6 + 100.0*ph8_5
       + 100.0*ph8_7)

+ sqr(-200.0*om9_6 + 100.0*om10_6 + 100.0*om8_6 -
       200.0*om9_6 + 100.0*om9_5 + 100.0*om9_7 +
       1.5308084989341916e-13*ph10_6 -
       1.5308084989341916e-13*ph8_6 - 2500.0*ph9_5 +
       2500.0*ph9_7)

+ sqr(-200.0*ps9_6 + 100.0*ps10_6 + 100.0*ps8_6 -
       200.0*ps9_6 + 100.0*ps9_5 + 100.0*ps9_7 + 0.25*om9_6)

+ sqr(-25.0*(ps9_5-ps9_7) * (ph10_6-ph8_6) +
       25.0*(ps10_6-ps8_6) * (ph9_5-ph9_7) - 200.0*ph9_6 +
       100.0*ph10_6 + 100.0*ph8_6 - 200.0*ph9_6 +
       100.0*ph9_5 + 100.0*ph9_7)

+ sqr(-200.0*omm9_5 + 100.0*omm8_5 + 100.0*omm10_5 -
       200.0*omm9_5 + 100.0*omm9_4 + 100.0*omm9_6 +
       1.5308084989341916e-13*phm8_5 -
       1.5308084989341916e-13*phm10_5 - 2500.0*phm9_4 +
       2500.0*phm9_6)

+ sqr(-200.0*psm9_5 + 100.0*psm8_5 + 100.0*psm10_5 -
       200.0*psm9_5 + 100.0*psm9_4 + 100.0*psm9_6 +
       0.25*omm9_5)

+ sqr(-25.0*(psm9_4-psm9_6) * (phm8_5-phm10_5) +
       25.0*(psm8_5-psm10_5) * (phm9_4-phm9_6) -
       200.0*phm9_5 + 100.0*phm8_5 + 100.0*phm10_5 -
       200.0*phm9_5 + 100.0*phm9_4 + 100.0*phm9_6)

+ sqr(-200.0*omm8_5 + 100.0*omm7_5 + 100.0*omm9_5 -
       200.0*omm8_5 + 100.0*omm8_4 + 100.0*omm8_6 +
       1.5308084989341916e-13*phm7_5 -
       1.5308084989341916e-13*phm9_5 - 2500.0*phm8_4 +
       2500.0*phm8_6)

+ sqr(-200.0*psm8_5 + 100.0*psm7_5 + 100.0*psm9_5 -
       200.0*psm8_5 + 100.0*psm8_4 + 100.0*psm8_6 +
       0.25*omm8_5)

+ sqr(-25.0*(psm8_4-psm8_6) * (phm7_5-phm9_5) +
       25.0*(psm7_5-psm9_5) * (phm8_4-phm8_6) - 200.0*phm8_5
       + 100.0*phm7_5 + 100.0*phm9_5 - 200.0*phm8_5 +
       100.0*phm8_4 + 100.0*phm8_6)

+ sqr(-200.0*omm7_5 + 100.0*omm6_5 + 100.0*omm8_5 -
       200.0*omm7_5 + 100.0*omm7_4 + 100.0*omm7_6 +
       1.5308084989341916e-13*phm6_5 -
       1.5308084989341916e-13*phm8_5 - 2500.0*phm7_4 +
       2500.0*phm7_6)

+ sqr(-200.0*psm7_5 + 100.0*psm6_5 + 100.0*psm8_5 -
       200.0*psm7_5 + 100.0*psm7_4 + 100.0*psm7_6 +
       0.25*omm7_5)

+ sqr(-25.0*(psm7_4-psm7_6) * (phm6_5-phm8_5) +
       25.0*(psm6_5-psm8_5) * (phm7_4-phm7_6) - 200.0*phm7_5
       + 100.0*phm6_5 + 100.0*phm8_5 - 200.0*phm7_5 +
       100.0*phm7_4 + 100.0*phm7_6)

+ sqr(-200.0*omm6_5 + 100.0*omm5_5 + 100.0*omm7_5 -
       200.0*omm6_5 + 100.0*omm6_4 + 100.0*omm6_6 +
       1.5308084989341916e-13*phm5_5 -
       1.5308084989341916e-13*phm7_5 - 2500.0*phm6_4 +
       2500.0*phm6_6)

+ sqr(-200.0*psm6_5 + 100.0*psm5_5 + 100.0*psm7_5 -
       200.0*psm6_5 + 100.0*psm6_4 + 100.0*psm6_6 +
       0.25*omm6_5)

+ sqr(-25.0*(psm6_4-psm6_6) * (phm5_5-phm7_5) +
       25.0*(psm5_5-psm7_5) * (phm6_4-phm6_6) - 200.0*phm6_5
       + 100.0*phm5_5 + 100.0*phm7_5 - 200.0*phm6_5 +
       100.0*phm6_4 + 100.0*phm6_6)

+ sqr(-200.0*omm5_5 + 100.0*omm4_5 + 100.0*omm6_5 -
       200.0*omm5_5 + 100.0*omm5_4 + 100.0*omm5_6 +
       1.5308084989341916e-13*phm4_5 -
       1.5308084989341916e-13*phm6_5 - 2500.0*phm5_4 +
       2500.0*phm5_6)

+ sqr(-200.0*psm5_5 + 100.0*psm4_5 + 100.0*psm6_5 -
       200.0*psm5_5 + 100.0*psm5_4 + 100.0*psm5_6 +
       0.25*omm5_5)

+ sqr(-25.0*(psm5_4-psm5_6) * (phm4_5-phm6_5) +
       25.0*(psm4_5-psm6_5) * (phm5_4-phm5_6) - 200.0*phm5_5
       + 100.0*phm4_5 + 100.0*phm6_5 - 200.0*phm5_5 +
       100.0*phm5_4 + 100.0*phm5_6)

+ sqr(-200.0*omm4_5 + 100.0*omm3_5 + 100.0*omm5_5 -
       200.0*omm4_5 + 100.0*omm4_4 + 100.0*omm4_6 +
       1.5308084989341916e-13*phm3_5 -
       1.5308084989341916e-13*phm5_5 - 2500.0*phm4_4 +
       2500.0*phm4_6)

+ sqr(-200.0*psm4_5 + 100.0*psm3_5 + 100.0*psm5_5 -
       200.0*psm4_5 + 100.0*psm4_4 + 100.0*psm4_6 +
       0.25*omm4_5)

+ sqr(-25.0*(psm4_4-psm4_6) * (phm3_5-phm5_5) +
       25.0*(psm3_5-psm5_5) * (phm4_4-phm4_6) - 200.0*phm4_5
       + 100.0*phm3_5 + 100.0*phm5_5 - 200.0*phm4_5 +
       100.0*phm4_4 + 100.0*phm4_6)

+ sqr(-200.0*omm3_5 + 100.0*omm2_5 + 100.0*omm4_5 -
       200.0*omm3_5 + 100.0*omm3_4 + 100.0*omm3_6 +
       1.5308084989341916e-13*phm2_5 -
       1.5308084989341916e-13*phm4_5 - 2500.0*phm3_4 +
       2500.0*phm3_6)

+ sqr(-200.0*psm3_5 + 100.0*psm2_5 + 100.0*psm4_5 -
       200.0*psm3_5 + 100.0*psm3_4 + 100.0*psm3_6 +
       0.25*omm3_5)

+ sqr(-25.0*(psm3_4-psm3_6) * (phm2_5-phm4_5) +
       25.0*(psm2_5-psm4_5) * (phm3_4-phm3_6) - 200.0*phm3_5
       + 100.0*phm2_5 + 100.0*phm4_5 - 200.0*phm3_5 +
       100.0*phm3_4 + 100.0*phm3_6)

+ sqr(-200.0*omm2_5 + 100.0*omm1_5 + 100.0*omm3_5 -
       200.0*omm2_5 + 100.0*omm2_4 + 100.0*omm2_6 +
       1.5308084989341916e-13*phm1_5 -
       1.5308084989341916e-13*phm3_5 - 2500.0*phm2_4 +
       2500.0*phm2_6)

+ sqr(-200.0*psm2_5 + 100.0*psm1_5 + 100.0*psm3_5 -
       200.0*psm2_5 + 100.0*psm2_4 + 100.0*psm2_6 +
       0.25*omm2_5)

+ sqr(-25.0*(psm2_4-psm2_6) * (phm1_5-phm3_5) +
       25.0*(psm1_5-psm3_5) * (phm2_4-phm2_6) - 200.0*phm2_5
       + 100.0*phm1_5 + 100.0*phm3_5 - 200.0*phm2_5 +
       100.0*phm2_4 + 100.0*phm2_6)

+ sqr(-200.0*omm1_5 + 100.0*om0_5 + 100.0*omm2_5 -
       200.0*omm1_5 + 100.0*omm1_4 + 100.0*omm1_6 +
       1.5308084989341916e-13*ph0_5 -
       1.5308084989341916e-13*phm2_5 - 2500.0*phm1_4 +
       2500.0*phm1_6)

+ sqr(-200.0*psm1_5 + 100.0*ps0_5 + 100.0*psm2_5 -
       200.0*psm1_5 + 100.0*psm1_4 + 100.0*psm1_6 +
       0.25*omm1_5)

+ sqr(-25.0*(psm1_4-psm1_6) * (ph0_5-phm2_5) +
       25.0*(ps0_5-psm2_5) * (phm1_4-phm1_6) - 200.0*phm1_5
       + 100.0*ph0_5 + 100.0*phm2_5 - 200.0*phm1_5 +
       100.0*phm1_4 + 100.0*phm1_6)

+ sqr(-200.0*om0_5 + 100.0*om1_5 + 100.0*omm1_5 -
       200.0*om0_5 + 100.0*om0_4 + 100.0*om0_6 +
       1.5308084989341916e-13*ph1_5 -
       1.5308084989341916e-13*phm1_5 - 2500.0*ph0_4 +
       2500.0*ph0_6)

+ sqr(-200.0*ps0_5 + 100.0*ps1_5 + 100.0*psm1_5 -
       200.0*ps0_5 + 100.0*ps0_4 + 100.0*ps0_6 + 0.25*om0_5)

+ sqr(-25.0*(ps0_4-ps0_6) * (ph1_5-phm1_5) +
       25.0*(ps1_5-psm1_5) * (ph0_4-ph0_6) - 200.0*ph0_5 +
       100.0*ph1_5 + 100.0*phm1_5 - 200.0*ph0_5 +
       100.0*ph0_4 + 100.0*ph0_6)

+ sqr(-200.0*om1_5 + 100.0*om2_5 + 100.0*om0_5 - 200.0*om1_5
       + 100.0*om1_4 + 100.0*om1_6 +
       1.5308084989341916e-13*ph2_5 -
       1.5308084989341916e-13*ph0_5 - 2500.0*ph1_4 +
       2500.0*ph1_6)

+ sqr(-200.0*ps1_5 + 100.0*ps2_5 + 100.0*ps0_5 - 200.0*ps1_5
       + 100.0*ps1_4 + 100.0*ps1_6 + 0.25*om1_5)

+ sqr(-25.0*(ps1_4-ps1_6) * (ph2_5-ph0_5) +
       25.0*(ps2_5-ps0_5) * (ph1_4-ph1_6) - 200.0*ph1_5 +
       100.0*ph2_5 + 100.0*ph0_5 - 200.0*ph1_5 + 100.0*ph1_4
       + 100.0*ph1_6)

+ sqr(-200.0*om2_5 + 100.0*om3_5 + 100.0*om1_5 - 200.0*om2_5
       + 100.0*om2_4 + 100.0*om2_6 +
       1.5308084989341916e-13*ph3_5 -
       1.5308084989341916e-13*ph1_5 - 2500.0*ph2_4 +
       2500.0*ph2_6)

+ sqr(-200.0*ps2_5 + 100.0*ps3_5 + 100.0*ps1_5 - 200.0*ps2_5
       + 100.0*ps2_4 + 100.0*ps2_6 + 0.25*om2_5)

+ sqr(-25.0*(ps2_4-ps2_6) * (ph3_5-ph1_5) +
       25.0*(ps3_5-ps1_5) * (ph2_4-ph2_6) - 200.0*ph2_5 +
       100.0*ph3_5 + 100.0*ph1_5 - 200.0*ph2_5 + 100.0*ph2_4
       + 100.0*ph2_6)

+ sqr(-200.0*om3_5 + 100.0*om4_5 + 100.0*om2_5 - 200.0*om3_5
       + 100.0*om3_4 + 100.0*om3_6 +
       1.5308084989341916e-13*ph4_5 -
       1.5308084989341916e-13*ph2_5 - 2500.0*ph3_4 +
       2500.0*ph3_6)

+ sqr(-200.0*ps3_5 + 100.0*ps4_5 + 100.0*ps2_5 - 200.0*ps3_5
       + 100.0*ps3_4 + 100.0*ps3_6 + 0.25*om3_5)

+ sqr(-25.0*(ps3_4-ps3_6) * (ph4_5-ph2_5) +
       25.0*(ps4_5-ps2_5) * (ph3_4-ph3_6) - 200.0*ph3_5 +
       100.0*ph4_5 + 100.0*ph2_5 - 200.0*ph3_5 + 100.0*ph3_4
       + 100.0*ph3_6)

+ sqr(-200.0*om4_5 + 100.0*om5_5 + 100.0*om3_5 - 200.0*om4_5
       + 100.0*om4_4 + 100.0*om4_6 +
       1.5308084989341916e-13*ph5_5 -
       1.5308084989341916e-13*ph3_5 - 2500.0*ph4_4 +
       2500.0*ph4_6)

+ sqr(-200.0*ps4_5 + 100.0*ps5_5 + 100.0*ps3_5 - 200.0*ps4_5
       + 100.0*ps4_4 + 100.0*ps4_6 + 0.25*om4_5)

+ sqr(-25.0*(ps4_4-ps4_6) * (ph5_5-ph3_5) +
       25.0*(ps5_5-ps3_5) * (ph4_4-ph4_6) - 200.0*ph4_5 +
       100.0*ph5_5 + 100.0*ph3_5 - 200.0*ph4_5 + 100.0*ph4_4
       + 100.0*ph4_6)

+ sqr(-200.0*om5_5 + 100.0*om6_5 + 100.0*om4_5 - 200.0*om5_5
       + 100.0*om5_4 + 100.0*om5_6 +
       1.5308084989341916e-13*ph6_5 -
       1.5308084989341916e-13*ph4_5 - 2500.0*ph5_4 +
       2500.0*ph5_6)

+ sqr(-200.0*ps5_5 + 100.0*ps6_5 + 100.0*ps4_5 - 200.0*ps5_5
       + 100.0*ps5_4 + 100.0*ps5_6 + 0.25*om5_5)

+ sqr(-25.0*(ps5_4-ps5_6) * (ph6_5-ph4_5) +
       25.0*(ps6_5-ps4_5) * (ph5_4-ph5_6) - 200.0*ph5_5 +
       100.0*ph6_5 + 100.0*ph4_5 - 200.0*ph5_5 + 100.0*ph5_4
       + 100.0*ph5_6)

+ sqr(-200.0*om6_5 + 100.0*om7_5 + 100.0*om5_5 - 200.0*om6_5
       + 100.0*om6_4 + 100.0*om6_6 +
       1.5308084989341916e-13*ph7_5 -
       1.5308084989341916e-13*ph5_5 - 2500.0*ph6_4 +
       2500.0*ph6_6)

+ sqr(-200.0*ps6_5 + 100.0*ps7_5 + 100.0*ps5_5 - 200.0*ps6_5
       + 100.0*ps6_4 + 100.0*ps6_6 + 0.25*om6_5)

+ sqr(-25.0*(ps6_4-ps6_6) * (ph7_5-ph5_5) +
       25.0*(ps7_5-ps5_5) * (ph6_4-ph6_6) - 200.0*ph6_5 +
       100.0*ph7_5 + 100.0*ph5_5 - 200.0*ph6_5 + 100.0*ph6_4
       + 100.0*ph6_6)

+ sqr(-200.0*om7_5 + 100.0*om8_5 + 100.0*om6_5 - 200.0*om7_5
       + 100.0*om7_4 + 100.0*om7_6 +
       1.5308084989341916e-13*ph8_5 -
       1.5308084989341916e-13*ph6_5 - 2500.0*ph7_4 +
       2500.0*ph7_6)

+ sqr(-200.0*ps7_5 + 100.0*ps8_5 + 100.0*ps6_5 - 200.0*ps7_5
       + 100.0*ps7_4 + 100.0*ps7_6 + 0.25*om7_5)

+ sqr(-25.0*(ps7_4-ps7_6) * (ph8_5-ph6_5) +
       25.0*(ps8_5-ps6_5) * (ph7_4-ph7_6) - 200.0*ph7_5 +
       100.0*ph8_5 + 100.0*ph6_5 - 200.0*ph7_5 + 100.0*ph7_4
       + 100.0*ph7_6)

+ sqr(-200.0*om8_5 + 100.0*om9_5 + 100.0*om7_5 - 200.0*om8_5
       + 100.0*om8_4 + 100.0*om8_6 +
       1.5308084989341916e-13*ph9_5 -
       1.5308084989341916e-13*ph7_5 - 2500.0*ph8_4 +
       2500.0*ph8_6)

+ sqr(-200.0*ps8_5 + 100.0*ps9_5 + 100.0*ps7_5 - 200.0*ps8_5
       + 100.0*ps8_4 + 100.0*ps8_6 + 0.25*om8_5)

+ sqr(-25.0*(ps8_4-ps8_6) * (ph9_5-ph7_5) +
       25.0*(ps9_5-ps7_5) * (ph8_4-ph8_6) - 200.0*ph8_5 +
       100.0*ph9_5 + 100.0*ph7_5 - 200.0*ph8_5 + 100.0*ph8_4
       + 100.0*ph8_6)

+ sqr(-200.0*om9_5 + 100.0*om10_5 + 100.0*om8_5 -
       200.0*om9_5 + 100.0*om9_4 + 100.0*om9_6 +
       1.5308084989341916e-13*ph10_5 -
       1.5308084989341916e-13*ph8_5 - 2500.0*ph9_4 +
       2500.0*ph9_6)

+ sqr(-200.0*ps9_5 + 100.0*ps10_5 + 100.0*ps8_5 -
       200.0*ps9_5 + 100.0*ps9_4 + 100.0*ps9_6 + 0.25*om9_5)

+ sqr(-25.0*(ps9_4-ps9_6) * (ph10_5-ph8_5) +
       25.0*(ps10_5-ps8_5) * (ph9_4-ph9_6) - 200.0*ph9_5 +
       100.0*ph10_5 + 100.0*ph8_5 - 200.0*ph9_5 +
       100.0*ph9_4 + 100.0*ph9_6)

+ sqr(-200.0*omm9_4 + 100.0*omm8_4 + 100.0*omm10_4 -
       200.0*omm9_4 + 100.0*omm9_3 + 100.0*omm9_5 +
       1.5308084989341916e-13*phm8_4 -
       1.5308084989341916e-13*phm10_4 - 2500.0*phm9_3 +
       2500.0*phm9_5)

+ sqr(-200.0*psm9_4 + 100.0*psm8_4 + 100.0*psm10_4 -
       200.0*psm9_4 + 100.0*psm9_3 + 100.0*psm9_5 +
       0.25*omm9_4)

+ sqr(-25.0*(psm9_3-psm9_5) * (phm8_4-phm10_4) +
       25.0*(psm8_4-psm10_4) * (phm9_3-phm9_5) -
       200.0*phm9_4 + 100.0*phm8_4 + 100.0*phm10_4 -
       200.0*phm9_4 + 100.0*phm9_3 + 100.0*phm9_5)

+ sqr(-200.0*omm8_4 + 100.0*omm7_4 + 100.0*omm9_4 -
       200.0*omm8_4 + 100.0*omm8_3 + 100.0*omm8_5 +
       1.5308084989341916e-13*phm7_4 -
       1.5308084989341916e-13*phm9_4 - 2500.0*phm8_3 +
       2500.0*phm8_5)

+ sqr(-200.0*psm8_4 + 100.0*psm7_4 + 100.0*psm9_4 -
       200.0*psm8_4 + 100.0*psm8_3 + 100.0*psm8_5 +
       0.25*omm8_4)

+ sqr(-25.0*(psm8_3-psm8_5) * (phm7_4-phm9_4) +
       25.0*(psm7_4-psm9_4) * (phm8_3-phm8_5) - 200.0*phm8_4
       + 100.0*phm7_4 + 100.0*phm9_4 - 200.0*phm8_4 +
       100.0*phm8_3 + 100.0*phm8_5)

+ sqr(-200.0*omm7_4 + 100.0*omm6_4 + 100.0*omm8_4 -
       200.0*omm7_4 + 100.0*omm7_3 + 100.0*omm7_5 +
       1.5308084989341916e-13*phm6_4 -
       1.5308084989341916e-13*phm8_4 - 2500.0*phm7_3 +
       2500.0*phm7_5)

+ sqr(-200.0*psm7_4 + 100.0*psm6_4 + 100.0*psm8_4 -
       200.0*psm7_4 + 100.0*psm7_3 + 100.0*psm7_5 +
       0.25*omm7_4)

+ sqr(-25.0*(psm7_3-psm7_5) * (phm6_4-phm8_4) +
       25.0*(psm6_4-psm8_4) * (phm7_3-phm7_5) - 200.0*phm7_4
       + 100.0*phm6_4 + 100.0*phm8_4 - 200.0*phm7_4 +
       100.0*phm7_3 + 100.0*phm7_5)

+ sqr(-200.0*omm6_4 + 100.0*omm5_4 + 100.0*omm7_4 -
       200.0*omm6_4 + 100.0*omm6_3 + 100.0*omm6_5 +
       1.5308084989341916e-13*phm5_4 -
       1.5308084989341916e-13*phm7_4 - 2500.0*phm6_3 +
       2500.0*phm6_5)

+ sqr(-200.0*psm6_4 + 100.0*psm5_4 + 100.0*psm7_4 -
       200.0*psm6_4 + 100.0*psm6_3 + 100.0*psm6_5 +
       0.25*omm6_4)

+ sqr(-25.0*(psm6_3-psm6_5) * (phm5_4-phm7_4) +
       25.0*(psm5_4-psm7_4) * (phm6_3-phm6_5) - 200.0*phm6_4
       + 100.0*phm5_4 + 100.0*phm7_4 - 200.0*phm6_4 +
       100.0*phm6_3 + 100.0*phm6_5)

+ sqr(-200.0*omm5_4 + 100.0*omm4_4 + 100.0*omm6_4 -
       200.0*omm5_4 + 100.0*omm5_3 + 100.0*omm5_5 +
       1.5308084989341916e-13*phm4_4 -
       1.5308084989341916e-13*phm6_4 - 2500.0*phm5_3 +
       2500.0*phm5_5)

+ sqr(-200.0*psm5_4 + 100.0*psm4_4 + 100.0*psm6_4 -
       200.0*psm5_4 + 100.0*psm5_3 + 100.0*psm5_5 +
       0.25*omm5_4)

+ sqr(-25.0*(psm5_3-psm5_5) * (phm4_4-phm6_4) +
       25.0*(psm4_4-psm6_4) * (phm5_3-phm5_5) - 200.0*phm5_4
       + 100.0*phm4_4 + 100.0*phm6_4 - 200.0*phm5_4 +
       100.0*phm5_3 + 100.0*phm5_5)

+ sqr(-200.0*omm4_4 + 100.0*omm3_4 + 100.0*omm5_4 -
       200.0*omm4_4 + 100.0*omm4_3 + 100.0*omm4_5 +
       1.5308084989341916e-13*phm3_4 -
       1.5308084989341916e-13*phm5_4 - 2500.0*phm4_3 +
       2500.0*phm4_5)

+ sqr(-200.0*psm4_4 + 100.0*psm3_4 + 100.0*psm5_4 -
       200.0*psm4_4 + 100.0*psm4_3 + 100.0*psm4_5 +
       0.25*omm4_4)

+ sqr(-25.0*(psm4_3-psm4_5) * (phm3_4-phm5_4) +
       25.0*(psm3_4-psm5_4) * (phm4_3-phm4_5) - 200.0*phm4_4
       + 100.0*phm3_4 + 100.0*phm5_4 - 200.0*phm4_4 +
       100.0*phm4_3 + 100.0*phm4_5)

+ sqr(-200.0*omm3_4 + 100.0*omm2_4 + 100.0*omm4_4 -
       200.0*omm3_4 + 100.0*omm3_3 + 100.0*omm3_5 +
       1.5308084989341916e-13*phm2_4 -
       1.5308084989341916e-13*phm4_4 - 2500.0*phm3_3 +
       2500.0*phm3_5)

+ sqr(-200.0*psm3_4 + 100.0*psm2_4 + 100.0*psm4_4 -
       200.0*psm3_4 + 100.0*psm3_3 + 100.0*psm3_5 +
       0.25*omm3_4)

+ sqr(-25.0*(psm3_3-psm3_5) * (phm2_4-phm4_4) +
       25.0*(psm2_4-psm4_4) * (phm3_3-phm3_5) - 200.0*phm3_4
       + 100.0*phm2_4 + 100.0*phm4_4 - 200.0*phm3_4 +
       100.0*phm3_3 + 100.0*phm3_5)

+ sqr(-200.0*omm2_4 + 100.0*omm1_4 + 100.0*omm3_4 -
       200.0*omm2_4 + 100.0*omm2_3 + 100.0*omm2_5 +
       1.5308084989341916e-13*phm1_4 -
       1.5308084989341916e-13*phm3_4 - 2500.0*phm2_3 +
       2500.0*phm2_5)

+ sqr(-200.0*psm2_4 + 100.0*psm1_4 + 100.0*psm3_4 -
       200.0*psm2_4 + 100.0*psm2_3 + 100.0*psm2_5 +
       0.25*omm2_4)

+ sqr(-25.0*(psm2_3-psm2_5) * (phm1_4-phm3_4) +
       25.0*(psm1_4-psm3_4) * (phm2_3-phm2_5) - 200.0*phm2_4
       + 100.0*phm1_4 + 100.0*phm3_4 - 200.0*phm2_4 +
       100.0*phm2_3 + 100.0*phm2_5)

+ sqr(-200.0*omm1_4 + 100.0*om0_4 + 100.0*omm2_4 -
       200.0*omm1_4 + 100.0*omm1_3 + 100.0*omm1_5 +
       1.5308084989341916e-13*ph0_4 -
       1.5308084989341916e-13*phm2_4 - 2500.0*phm1_3 +
       2500.0*phm1_5)

+ sqr(-200.0*psm1_4 + 100.0*ps0_4 + 100.0*psm2_4 -
       200.0*psm1_4 + 100.0*psm1_3 + 100.0*psm1_5 +
       0.25*omm1_4)

+ sqr(-25.0*(psm1_3-psm1_5) * (ph0_4-phm2_4) +
       25.0*(ps0_4-psm2_4) * (phm1_3-phm1_5) - 200.0*phm1_4
       + 100.0*ph0_4 + 100.0*phm2_4 - 200.0*phm1_4 +
       100.0*phm1_3 + 100.0*phm1_5)

+ sqr(-200.0*om0_4 + 100.0*om1_4 + 100.0*omm1_4 -
       200.0*om0_4 + 100.0*om0_3 + 100.0*om0_5 +
       1.5308084989341916e-13*ph1_4 -
       1.5308084989341916e-13*phm1_4 - 2500.0*ph0_3 +
       2500.0*ph0_5)

+ sqr(-200.0*ps0_4 + 100.0*ps1_4 + 100.0*psm1_4 -
       200.0*ps0_4 + 100.0*ps0_3 + 100.0*ps0_5 + 0.25*om0_4)

+ sqr(-25.0*(ps0_3-ps0_5) * (ph1_4-phm1_4) +
       25.0*(ps1_4-psm1_4) * (ph0_3-ph0_5) - 200.0*ph0_4 +
       100.0*ph1_4 + 100.0*phm1_4 - 200.0*ph0_4 +
       100.0*ph0_3 + 100.0*ph0_5)

+ sqr(-200.0*om1_4 + 100.0*om2_4 + 100.0*om0_4 - 200.0*om1_4
       + 100.0*om1_3 + 100.0*om1_5 +
       1.5308084989341916e-13*ph2_4 -
       1.5308084989341916e-13*ph0_4 - 2500.0*ph1_3 +
       2500.0*ph1_5)

+ sqr(-200.0*ps1_4 + 100.0*ps2_4 + 100.0*ps0_4 - 200.0*ps1_4
       + 100.0*ps1_3 + 100.0*ps1_5 + 0.25*om1_4)

+ sqr(-25.0*(ps1_3-ps1_5) * (ph2_4-ph0_4) +
       25.0*(ps2_4-ps0_4) * (ph1_3-ph1_5) - 200.0*ph1_4 +
       100.0*ph2_4 + 100.0*ph0_4 - 200.0*ph1_4 + 100.0*ph1_3
       + 100.0*ph1_5)

+ sqr(-200.0*om2_4 + 100.0*om3_4 + 100.0*om1_4 - 200.0*om2_4
       + 100.0*om2_3 + 100.0*om2_5 +
       1.5308084989341916e-13*ph3_4 -
       1.5308084989341916e-13*ph1_4 - 2500.0*ph2_3 +
       2500.0*ph2_5)

+ sqr(-200.0*ps2_4 + 100.0*ps3_4 + 100.0*ps1_4 - 200.0*ps2_4
       + 100.0*ps2_3 + 100.0*ps2_5 + 0.25*om2_4)

+ sqr(-25.0*(ps2_3-ps2_5) * (ph3_4-ph1_4) +
       25.0*(ps3_4-ps1_4) * (ph2_3-ph2_5) - 200.0*ph2_4 +
       100.0*ph3_4 + 100.0*ph1_4 - 200.0*ph2_4 + 100.0*ph2_3
       + 100.0*ph2_5)

+ sqr(-200.0*om3_4 + 100.0*om4_4 + 100.0*om2_4 - 200.0*om3_4
       + 100.0*om3_3 + 100.0*om3_5 +
       1.5308084989341916e-13*ph4_4 -
       1.5308084989341916e-13*ph2_4 - 2500.0*ph3_3 +
       2500.0*ph3_5)

+ sqr(-200.0*ps3_4 + 100.0*ps4_4 + 100.0*ps2_4 - 200.0*ps3_4
       + 100.0*ps3_3 + 100.0*ps3_5 + 0.25*om3_4)

+ sqr(-25.0*(ps3_3-ps3_5) * (ph4_4-ph2_4) +
       25.0*(ps4_4-ps2_4) * (ph3_3-ph3_5) - 200.0*ph3_4 +
       100.0*ph4_4 + 100.0*ph2_4 - 200.0*ph3_4 + 100.0*ph3_3
       + 100.0*ph3_5)

+ sqr(-200.0*om4_4 + 100.0*om5_4 + 100.0*om3_4 - 200.0*om4_4
       + 100.0*om4_3 + 100.0*om4_5 +
       1.5308084989341916e-13*ph5_4 -
       1.5308084989341916e-13*ph3_4 - 2500.0*ph4_3 +
       2500.0*ph4_5)

+ sqr(-200.0*ps4_4 + 100.0*ps5_4 + 100.0*ps3_4 - 200.0*ps4_4
       + 100.0*ps4_3 + 100.0*ps4_5 + 0.25*om4_4)

+ sqr(-25.0*(ps4_3-ps4_5) * (ph5_4-ph3_4) +
       25.0*(ps5_4-ps3_4) * (ph4_3-ph4_5) - 200.0*ph4_4 +
       100.0*ph5_4 + 100.0*ph3_4 - 200.0*ph4_4 + 100.0*ph4_3
       + 100.0*ph4_5)

+ sqr(-200.0*om5_4 + 100.0*om6_4 + 100.0*om4_4 - 200.0*om5_4
       + 100.0*om5_3 + 100.0*om5_5 +
       1.5308084989341916e-13*ph6_4 -
       1.5308084989341916e-13*ph4_4 - 2500.0*ph5_3 +
       2500.0*ph5_5)

+ sqr(-200.0*ps5_4 + 100.0*ps6_4 + 100.0*ps4_4 - 200.0*ps5_4
       + 100.0*ps5_3 + 100.0*ps5_5 + 0.25*om5_4)

+ sqr(-25.0*(ps5_3-ps5_5) * (ph6_4-ph4_4) +
       25.0*(ps6_4-ps4_4) * (ph5_3-ph5_5) - 200.0*ph5_4 +
       100.0*ph6_4 + 100.0*ph4_4 - 200.0*ph5_4 + 100.0*ph5_3
       + 100.0*ph5_5)

+ sqr(-200.0*om6_4 + 100.0*om7_4 + 100.0*om5_4 - 200.0*om6_4
       + 100.0*om6_3 + 100.0*om6_5 +
       1.5308084989341916e-13*ph7_4 -
       1.5308084989341916e-13*ph5_4 - 2500.0*ph6_3 +
       2500.0*ph6_5)

+ sqr(-200.0*ps6_4 + 100.0*ps7_4 + 100.0*ps5_4 - 200.0*ps6_4
       + 100.0*ps6_3 + 100.0*ps6_5 + 0.25*om6_4)

+ sqr(-25.0*(ps6_3-ps6_5) * (ph7_4-ph5_4) +
       25.0*(ps7_4-ps5_4) * (ph6_3-ph6_5) - 200.0*ph6_4 +
       100.0*ph7_4 + 100.0*ph5_4 - 200.0*ph6_4 + 100.0*ph6_3
       + 100.0*ph6_5)

+ sqr(-200.0*om7_4 + 100.0*om8_4 + 100.0*om6_4 - 200.0*om7_4
       + 100.0*om7_3 + 100.0*om7_5 +
       1.5308084989341916e-13*ph8_4 -
       1.5308084989341916e-13*ph6_4 - 2500.0*ph7_3 +
       2500.0*ph7_5)

+ sqr(-200.0*ps7_4 + 100.0*ps8_4 + 100.0*ps6_4 - 200.0*ps7_4
       + 100.0*ps7_3 + 100.0*ps7_5 + 0.25*om7_4)

+ sqr(-25.0*(ps7_3-ps7_5) * (ph8_4-ph6_4) +
       25.0*(ps8_4-ps6_4) * (ph7_3-ph7_5) - 200.0*ph7_4 +
       100.0*ph8_4 + 100.0*ph6_4 - 200.0*ph7_4 + 100.0*ph7_3
       + 100.0*ph7_5)

+ sqr(-200.0*om8_4 + 100.0*om9_4 + 100.0*om7_4 - 200.0*om8_4
       + 100.0*om8_3 + 100.0*om8_5 +
       1.5308084989341916e-13*ph9_4 -
       1.5308084989341916e-13*ph7_4 - 2500.0*ph8_3 +
       2500.0*ph8_5)

+ sqr(-200.0*ps8_4 + 100.0*ps9_4 + 100.0*ps7_4 - 200.0*ps8_4
       + 100.0*ps8_3 + 100.0*ps8_5 + 0.25*om8_4)

+ sqr(-25.0*(ps8_3-ps8_5) * (ph9_4-ph7_4) +
       25.0*(ps9_4-ps7_4) * (ph8_3-ph8_5) - 200.0*ph8_4 +
       100.0*ph9_4 + 100.0*ph7_4 - 200.0*ph8_4 + 100.0*ph8_3
       + 100.0*ph8_5)

+ sqr(-200.0*om9_4 + 100.0*om10_4 + 100.0*om8_4 -
       200.0*om9_4 + 100.0*om9_3 + 100.0*om9_5 +
       1.5308084989341916e-13*ph10_4 -
       1.5308084989341916e-13*ph8_4 - 2500.0*ph9_3 +
       2500.0*ph9_5)

+ sqr(-200.0*ps9_4 + 100.0*ps10_4 + 100.0*ps8_4 -
       200.0*ps9_4 + 100.0*ps9_3 + 100.0*ps9_5 + 0.25*om9_4)

+ sqr(-25.0*(ps9_3-ps9_5) * (ph10_4-ph8_4) +
       25.0*(ps10_4-ps8_4) * (ph9_3-ph9_5) - 200.0*ph9_4 +
       100.0*ph10_4 + 100.0*ph8_4 - 200.0*ph9_4 +
       100.0*ph9_3 + 100.0*ph9_5)

+ sqr(-200.0*omm9_3 + 100.0*omm8_3 + 100.0*omm10_3 -
       200.0*omm9_3 + 100.0*omm9_2 + 100.0*omm9_4 +
       1.5308084989341916e-13*phm8_3 -
       1.5308084989341916e-13*phm10_3 - 2500.0*phm9_2 +
       2500.0*phm9_4)

+ sqr(-200.0*psm9_3 + 100.0*psm8_3 + 100.0*psm10_3 -
       200.0*psm9_3 + 100.0*psm9_2 + 100.0*psm9_4 +
       0.25*omm9_3)

+ sqr(-25.0*(psm9_2-psm9_4) * (phm8_3-phm10_3) +
       25.0*(psm8_3-psm10_3) * (phm9_2-phm9_4) -
       200.0*phm9_3 + 100.0*phm8_3 + 100.0*phm10_3 -
       200.0*phm9_3 + 100.0*phm9_2 + 100.0*phm9_4)

+ sqr(-200.0*omm8_3 + 100.0*omm7_3 + 100.0*omm9_3 -
       200.0*omm8_3 + 100.0*omm8_2 + 100.0*omm8_4 +
       1.5308084989341916e-13*phm7_3 -
       1.5308084989341916e-13*phm9_3 - 2500.0*phm8_2 +
       2500.0*phm8_4)

+ sqr(-200.0*psm8_3 + 100.0*psm7_3 + 100.0*psm9_3 -
       200.0*psm8_3 + 100.0*psm8_2 + 100.0*psm8_4 +
       0.25*omm8_3)

+ sqr(-25.0*(psm8_2-psm8_4) * (phm7_3-phm9_3) +
       25.0*(psm7_3-psm9_3) * (phm8_2-phm8_4) - 200.0*phm8_3
       + 100.0*phm7_3 + 100.0*phm9_3 - 200.0*phm8_3 +
       100.0*phm8_2 + 100.0*phm8_4)

+ sqr(-200.0*omm7_3 + 100.0*omm6_3 + 100.0*omm8_3 -
       200.0*omm7_3 + 100.0*omm7_2 + 100.0*omm7_4 +
       1.5308084989341916e-13*phm6_3 -
       1.5308084989341916e-13*phm8_3 - 2500.0*phm7_2 +
       2500.0*phm7_4)

+ sqr(-200.0*psm7_3 + 100.0*psm6_3 + 100.0*psm8_3 -
       200.0*psm7_3 + 100.0*psm7_2 + 100.0*psm7_4 +
       0.25*omm7_3)

+ sqr(-25.0*(psm7_2-psm7_4) * (phm6_3-phm8_3) +
       25.0*(psm6_3-psm8_3) * (phm7_2-phm7_4) - 200.0*phm7_3
       + 100.0*phm6_3 + 100.0*phm8_3 - 200.0*phm7_3 +
       100.0*phm7_2 + 100.0*phm7_4)

+ sqr(-200.0*omm6_3 + 100.0*omm5_3 + 100.0*omm7_3 -
       200.0*omm6_3 + 100.0*omm6_2 + 100.0*omm6_4 +
       1.5308084989341916e-13*phm5_3 -
       1.5308084989341916e-13*phm7_3 - 2500.0*phm6_2 +
       2500.0*phm6_4)

+ sqr(-200.0*psm6_3 + 100.0*psm5_3 + 100.0*psm7_3 -
       200.0*psm6_3 + 100.0*psm6_2 + 100.0*psm6_4 +
       0.25*omm6_3)

+ sqr(-25.0*(psm6_2-psm6_4) * (phm5_3-phm7_3) +
       25.0*(psm5_3-psm7_3) * (phm6_2-phm6_4) - 200.0*phm6_3
       + 100.0*phm5_3 + 100.0*phm7_3 - 200.0*phm6_3 +
       100.0*phm6_2 + 100.0*phm6_4)

+ sqr(-200.0*omm5_3 + 100.0*omm4_3 + 100.0*omm6_3 -
       200.0*omm5_3 + 100.0*omm5_2 + 100.0*omm5_4 +
       1.5308084989341916e-13*phm4_3 -
       1.5308084989341916e-13*phm6_3 - 2500.0*phm5_2 +
       2500.0*phm5_4)

+ sqr(-200.0*psm5_3 + 100.0*psm4_3 + 100.0*psm6_3 -
       200.0*psm5_3 + 100.0*psm5_2 + 100.0*psm5_4 +
       0.25*omm5_3)

+ sqr(-25.0*(psm5_2-psm5_4) * (phm4_3-phm6_3) +
       25.0*(psm4_3-psm6_3) * (phm5_2-phm5_4) - 200.0*phm5_3
       + 100.0*phm4_3 + 100.0*phm6_3 - 200.0*phm5_3 +
       100.0*phm5_2 + 100.0*phm5_4)

+ sqr(-200.0*omm4_3 + 100.0*omm3_3 + 100.0*omm5_3 -
       200.0*omm4_3 + 100.0*omm4_2 + 100.0*omm4_4 +
       1.5308084989341916e-13*phm3_3 -
       1.5308084989341916e-13*phm5_3 - 2500.0*phm4_2 +
       2500.0*phm4_4)

+ sqr(-200.0*psm4_3 + 100.0*psm3_3 + 100.0*psm5_3 -
       200.0*psm4_3 + 100.0*psm4_2 + 100.0*psm4_4 +
       0.25*omm4_3)

+ sqr(-25.0*(psm4_2-psm4_4) * (phm3_3-phm5_3) +
       25.0*(psm3_3-psm5_3) * (phm4_2-phm4_4) - 200.0*phm4_3
       + 100.0*phm3_3 + 100.0*phm5_3 - 200.0*phm4_3 +
       100.0*phm4_2 + 100.0*phm4_4)

+ sqr(-200.0*omm3_3 + 100.0*omm2_3 + 100.0*omm4_3 -
       200.0*omm3_3 + 100.0*omm3_2 + 100.0*omm3_4 +
       1.5308084989341916e-13*phm2_3 -
       1.5308084989341916e-13*phm4_3 - 2500.0*phm3_2 +
       2500.0*phm3_4)

+ sqr(-200.0*psm3_3 + 100.0*psm2_3 + 100.0*psm4_3 -
       200.0*psm3_3 + 100.0*psm3_2 + 100.0*psm3_4 +
       0.25*omm3_3)

+ sqr(-25.0*(psm3_2-psm3_4) * (phm2_3-phm4_3) +
       25.0*(psm2_3-psm4_3) * (phm3_2-phm3_4) - 200.0*phm3_3
       + 100.0*phm2_3 + 100.0*phm4_3 - 200.0*phm3_3 +
       100.0*phm3_2 + 100.0*phm3_4)

+ sqr(-200.0*omm2_3 + 100.0*omm1_3 + 100.0*omm3_3 -
       200.0*omm2_3 + 100.0*omm2_2 + 100.0*omm2_4 +
       1.5308084989341916e-13*phm1_3 -
       1.5308084989341916e-13*phm3_3 - 2500.0*phm2_2 +
       2500.0*phm2_4)

+ sqr(-200.0*psm2_3 + 100.0*psm1_3 + 100.0*psm3_3 -
       200.0*psm2_3 + 100.0*psm2_2 + 100.0*psm2_4 +
       0.25*omm2_3)

+ sqr(-25.0*(psm2_2-psm2_4) * (phm1_3-phm3_3) +
       25.0*(psm1_3-psm3_3) * (phm2_2-phm2_4) - 200.0*phm2_3
       + 100.0*phm1_3 + 100.0*phm3_3 - 200.0*phm2_3 +
       100.0*phm2_2 + 100.0*phm2_4)

+ sqr(-200.0*omm1_3 + 100.0*om0_3 + 100.0*omm2_3 -
       200.0*omm1_3 + 100.0*omm1_2 + 100.0*omm1_4 +
       1.5308084989341916e-13*ph0_3 -
       1.5308084989341916e-13*phm2_3 - 2500.0*phm1_2 +
       2500.0*phm1_4)

+ sqr(-200.0*psm1_3 + 100.0*ps0_3 + 100.0*psm2_3 -
       200.0*psm1_3 + 100.0*psm1_2 + 100.0*psm1_4 +
       0.25*omm1_3)

+ sqr(-25.0*(psm1_2-psm1_4) * (ph0_3-phm2_3) +
       25.0*(ps0_3-psm2_3) * (phm1_2-phm1_4) - 200.0*phm1_3
       + 100.0*ph0_3 + 100.0*phm2_3 - 200.0*phm1_3 +
       100.0*phm1_2 + 100.0*phm1_4)

+ sqr(-200.0*om0_3 + 100.0*om1_3 + 100.0*omm1_3 -
       200.0*om0_3 + 100.0*om0_2 + 100.0*om0_4 +
       1.5308084989341916e-13*ph1_3 -
       1.5308084989341916e-13*phm1_3 - 2500.0*ph0_2 +
       2500.0*ph0_4)

+ sqr(-200.0*ps0_3 + 100.0*ps1_3 + 100.0*psm1_3 -
       200.0*ps0_3 + 100.0*ps0_2 + 100.0*ps0_4 + 0.25*om0_3)

+ sqr(-25.0*(ps0_2-ps0_4) * (ph1_3-phm1_3) +
       25.0*(ps1_3-psm1_3) * (ph0_2-ph0_4) - 200.0*ph0_3 +
       100.0*ph1_3 + 100.0*phm1_3 - 200.0*ph0_3 +
       100.0*ph0_2 + 100.0*ph0_4)

+ sqr(-200.0*om1_3 + 100.0*om2_3 + 100.0*om0_3 - 200.0*om1_3
       + 100.0*om1_2 + 100.0*om1_4 +
       1.5308084989341916e-13*ph2_3 -
       1.5308084989341916e-13*ph0_3 - 2500.0*ph1_2 +
       2500.0*ph1_4)

+ sqr(-200.0*ps1_3 + 100.0*ps2_3 + 100.0*ps0_3 - 200.0*ps1_3
       + 100.0*ps1_2 + 100.0*ps1_4 + 0.25*om1_3)

+ sqr(-25.0*(ps1_2-ps1_4) * (ph2_3-ph0_3) +
       25.0*(ps2_3-ps0_3) * (ph1_2-ph1_4) - 200.0*ph1_3 +
       100.0*ph2_3 + 100.0*ph0_3 - 200.0*ph1_3 + 100.0*ph1_2
       + 100.0*ph1_4)

+ sqr(-200.0*om2_3 + 100.0*om3_3 + 100.0*om1_3 - 200.0*om2_3
       + 100.0*om2_2 + 100.0*om2_4 +
       1.5308084989341916e-13*ph3_3 -
       1.5308084989341916e-13*ph1_3 - 2500.0*ph2_2 +
       2500.0*ph2_4)

+ sqr(-200.0*ps2_3 + 100.0*ps3_3 + 100.0*ps1_3 - 200.0*ps2_3
       + 100.0*ps2_2 + 100.0*ps2_4 + 0.25*om2_3)

+ sqr(-25.0*(ps2_2-ps2_4) * (ph3_3-ph1_3) +
       25.0*(ps3_3-ps1_3) * (ph2_2-ph2_4) - 200.0*ph2_3 +
       100.0*ph3_3 + 100.0*ph1_3 - 200.0*ph2_3 + 100.0*ph2_2
       + 100.0*ph2_4)

+ sqr(-200.0*om3_3 + 100.0*om4_3 + 100.0*om2_3 - 200.0*om3_3
       + 100.0*om3_2 + 100.0*om3_4 +
       1.5308084989341916e-13*ph4_3 -
       1.5308084989341916e-13*ph2_3 - 2500.0*ph3_2 +
       2500.0*ph3_4)

+ sqr(-200.0*ps3_3 + 100.0*ps4_3 + 100.0*ps2_3 - 200.0*ps3_3
       + 100.0*ps3_2 + 100.0*ps3_4 + 0.25*om3_3)

+ sqr(-25.0*(ps3_2-ps3_4) * (ph4_3-ph2_3) +
       25.0*(ps4_3-ps2_3) * (ph3_2-ph3_4) - 200.0*ph3_3 +
       100.0*ph4_3 + 100.0*ph2_3 - 200.0*ph3_3 + 100.0*ph3_2
       + 100.0*ph3_4)

+ sqr(-200.0*om4_3 + 100.0*om5_3 + 100.0*om3_3 - 200.0*om4_3
       + 100.0*om4_2 + 100.0*om4_4 +
       1.5308084989341916e-13*ph5_3 -
       1.5308084989341916e-13*ph3_3 - 2500.0*ph4_2 +
       2500.0*ph4_4)

+ sqr(-200.0*ps4_3 + 100.0*ps5_3 + 100.0*ps3_3 - 200.0*ps4_3
       + 100.0*ps4_2 + 100.0*ps4_4 + 0.25*om4_3)

+ sqr(-25.0*(ps4_2-ps4_4) * (ph5_3-ph3_3) +
       25.0*(ps5_3-ps3_3) * (ph4_2-ph4_4) - 200.0*ph4_3 +
       100.0*ph5_3 + 100.0*ph3_3 - 200.0*ph4_3 + 100.0*ph4_2
       + 100.0*ph4_4)

+ sqr(-200.0*om5_3 + 100.0*om6_3 + 100.0*om4_3 - 200.0*om5_3
       + 100.0*om5_2 + 100.0*om5_4 +
       1.5308084989341916e-13*ph6_3 -
       1.5308084989341916e-13*ph4_3 - 2500.0*ph5_2 +
       2500.0*ph5_4)

+ sqr(-200.0*ps5_3 + 100.0*ps6_3 + 100.0*ps4_3 - 200.0*ps5_3
       + 100.0*ps5_2 + 100.0*ps5_4 + 0.25*om5_3)

+ sqr(-25.0*(ps5_2-ps5_4) * (ph6_3-ph4_3) +
       25.0*(ps6_3-ps4_3) * (ph5_2-ph5_4) - 200.0*ph5_3 +
       100.0*ph6_3 + 100.0*ph4_3 - 200.0*ph5_3 + 100.0*ph5_2
       + 100.0*ph5_4)

+ sqr(-200.0*om6_3 + 100.0*om7_3 + 100.0*om5_3 - 200.0*om6_3
       + 100.0*om6_2 + 100.0*om6_4 +
       1.5308084989341916e-13*ph7_3 -
       1.5308084989341916e-13*ph5_3 - 2500.0*ph6_2 +
       2500.0*ph6_4)

+ sqr(-200.0*ps6_3 + 100.0*ps7_3 + 100.0*ps5_3 - 200.0*ps6_3
       + 100.0*ps6_2 + 100.0*ps6_4 + 0.25*om6_3)

+ sqr(-25.0*(ps6_2-ps6_4) * (ph7_3-ph5_3) +
       25.0*(ps7_3-ps5_3) * (ph6_2-ph6_4) - 200.0*ph6_3 +
       100.0*ph7_3 + 100.0*ph5_3 - 200.0*ph6_3 + 100.0*ph6_2
       + 100.0*ph6_4)

+ sqr(-200.0*om7_3 + 100.0*om8_3 + 100.0*om6_3 - 200.0*om7_3
       + 100.0*om7_2 + 100.0*om7_4 +
       1.5308084989341916e-13*ph8_3 -
       1.5308084989341916e-13*ph6_3 - 2500.0*ph7_2 +
       2500.0*ph7_4)

+ sqr(-200.0*ps7_3 + 100.0*ps8_3 + 100.0*ps6_3 - 200.0*ps7_3
       + 100.0*ps7_2 + 100.0*ps7_4 + 0.25*om7_3)

+ sqr(-25.0*(ps7_2-ps7_4) * (ph8_3-ph6_3) +
       25.0*(ps8_3-ps6_3) * (ph7_2-ph7_4) - 200.0*ph7_3 +
       100.0*ph8_3 + 100.0*ph6_3 - 200.0*ph7_3 + 100.0*ph7_2
       + 100.0*ph7_4)

+ sqr(-200.0*om8_3 + 100.0*om9_3 + 100.0*om7_3 - 200.0*om8_3
       + 100.0*om8_2 + 100.0*om8_4 +
       1.5308084989341916e-13*ph9_3 -
       1.5308084989341916e-13*ph7_3 - 2500.0*ph8_2 +
       2500.0*ph8_4)

+ sqr(-200.0*ps8_3 + 100.0*ps9_3 + 100.0*ps7_3 - 200.0*ps8_3
       + 100.0*ps8_2 + 100.0*ps8_4 + 0.25*om8_3)

+ sqr(-25.0*(ps8_2-ps8_4) * (ph9_3-ph7_3) +
       25.0*(ps9_3-ps7_3) * (ph8_2-ph8_4) - 200.0*ph8_3 +
       100.0*ph9_3 + 100.0*ph7_3 - 200.0*ph8_3 + 100.0*ph8_2
       + 100.0*ph8_4)

+ sqr(-200.0*om9_3 + 100.0*om10_3 + 100.0*om8_3 -
       200.0*om9_3 + 100.0*om9_2 + 100.0*om9_4 +
       1.5308084989341916e-13*ph10_3 -
       1.5308084989341916e-13*ph8_3 - 2500.0*ph9_2 +
       2500.0*ph9_4)

+ sqr(-200.0*ps9_3 + 100.0*ps10_3 + 100.0*ps8_3 -
       200.0*ps9_3 + 100.0*ps9_2 + 100.0*ps9_4 + 0.25*om9_3)

+ sqr(-25.0*(ps9_2-ps9_4) * (ph10_3-ph8_3) +
       25.0*(ps10_3-ps8_3) * (ph9_2-ph9_4) - 200.0*ph9_3 +
       100.0*ph10_3 + 100.0*ph8_3 - 200.0*ph9_3 +
       100.0*ph9_2 + 100.0*ph9_4)

+ sqr(-200.0*omm9_2 + 100.0*omm8_2 + 100.0*omm10_2 -
       200.0*omm9_2 + 100.0*omm9_1 + 100.0*omm9_3 +
       1.5308084989341916e-13*phm8_2 -
       1.5308084989341916e-13*phm10_2 - 2500.0*phm9_1 +
       2500.0*phm9_3)

+ sqr(-200.0*psm9_2 + 100.0*psm8_2 + 100.0*psm10_2 -
       200.0*psm9_2 + 100.0*psm9_1 + 100.0*psm9_3 +
       0.25*omm9_2)

+ sqr(-25.0*(psm9_1-psm9_3) * (phm8_2-phm10_2) +
       25.0*(psm8_2-psm10_2) * (phm9_1-phm9_3) -
       200.0*phm9_2 + 100.0*phm8_2 + 100.0*phm10_2 -
       200.0*phm9_2 + 100.0*phm9_1 + 100.0*phm9_3)

+ sqr(-200.0*omm8_2 + 100.0*omm7_2 + 100.0*omm9_2 -
       200.0*omm8_2 + 100.0*omm8_1 + 100.0*omm8_3 +
       1.5308084989341916e-13*phm7_2 -
       1.5308084989341916e-13*phm9_2 - 2500.0*phm8_1 +
       2500.0*phm8_3)

+ sqr(-200.0*psm8_2 + 100.0*psm7_2 + 100.0*psm9_2 -
       200.0*psm8_2 + 100.0*psm8_1 + 100.0*psm8_3 +
       0.25*omm8_2)

+ sqr(-25.0*(psm8_1-psm8_3) * (phm7_2-phm9_2) +
       25.0*(psm7_2-psm9_2) * (phm8_1-phm8_3) - 200.0*phm8_2
       + 100.0*phm7_2 + 100.0*phm9_2 - 200.0*phm8_2 +
       100.0*phm8_1 + 100.0*phm8_3)

+ sqr(-200.0*omm7_2 + 100.0*omm6_2 + 100.0*omm8_2 -
       200.0*omm7_2 + 100.0*omm7_1 + 100.0*omm7_3 +
       1.5308084989341916e-13*phm6_2 -
       1.5308084989341916e-13*phm8_2 - 2500.0*phm7_1 +
       2500.0*phm7_3)

+ sqr(-200.0*psm7_2 + 100.0*psm6_2 + 100.0*psm8_2 -
       200.0*psm7_2 + 100.0*psm7_1 + 100.0*psm7_3 +
       0.25*omm7_2)

+ sqr(-25.0*(psm7_1-psm7_3) * (phm6_2-phm8_2) +
       25.0*(psm6_2-psm8_2) * (phm7_1-phm7_3) - 200.0*phm7_2
       + 100.0*phm6_2 + 100.0*phm8_2 - 200.0*phm7_2 +
       100.0*phm7_1 + 100.0*phm7_3)

+ sqr(-200.0*omm6_2 + 100.0*omm5_2 + 100.0*omm7_2 -
       200.0*omm6_2 + 100.0*omm6_1 + 100.0*omm6_3 +
       1.5308084989341916e-13*phm5_2 -
       1.5308084989341916e-13*phm7_2 - 2500.0*phm6_1 +
       2500.0*phm6_3)

+ sqr(-200.0*psm6_2 + 100.0*psm5_2 + 100.0*psm7_2 -
       200.0*psm6_2 + 100.0*psm6_1 + 100.0*psm6_3 +
       0.25*omm6_2)

+ sqr(-25.0*(psm6_1-psm6_3) * (phm5_2-phm7_2) +
       25.0*(psm5_2-psm7_2) * (phm6_1-phm6_3) - 200.0*phm6_2
       + 100.0*phm5_2 + 100.0*phm7_2 - 200.0*phm6_2 +
       100.0*phm6_1 + 100.0*phm6_3)

+ sqr(-200.0*omm5_2 + 100.0*omm4_2 + 100.0*omm6_2 -
       200.0*omm5_2 + 100.0*omm5_1 + 100.0*omm5_3 +
       1.5308084989341916e-13*phm4_2 -
       1.5308084989341916e-13*phm6_2 - 2500.0*phm5_1 +
       2500.0*phm5_3)

+ sqr(-200.0*psm5_2 + 100.0*psm4_2 + 100.0*psm6_2 -
       200.0*psm5_2 + 100.0*psm5_1 + 100.0*psm5_3 +
       0.25*omm5_2)

+ sqr(-25.0*(psm5_1-psm5_3) * (phm4_2-phm6_2) +
       25.0*(psm4_2-psm6_2) * (phm5_1-phm5_3) - 200.0*phm5_2
       + 100.0*phm4_2 + 100.0*phm6_2 - 200.0*phm5_2 +
       100.0*phm5_1 + 100.0*phm5_3)

+ sqr(-200.0*omm4_2 + 100.0*omm3_2 + 100.0*omm5_2 -
       200.0*omm4_2 + 100.0*omm4_1 + 100.0*omm4_3 +
       1.5308084989341916e-13*phm3_2 -
       1.5308084989341916e-13*phm5_2 - 2500.0*phm4_1 +
       2500.0*phm4_3)

+ sqr(-200.0*psm4_2 + 100.0*psm3_2 + 100.0*psm5_2 -
       200.0*psm4_2 + 100.0*psm4_1 + 100.0*psm4_3 +
       0.25*omm4_2)

+ sqr(-25.0*(psm4_1-psm4_3) * (phm3_2-phm5_2) +
       25.0*(psm3_2-psm5_2) * (phm4_1-phm4_3) - 200.0*phm4_2
       + 100.0*phm3_2 + 100.0*phm5_2 - 200.0*phm4_2 +
       100.0*phm4_1 + 100.0*phm4_3)

+ sqr(-200.0*omm3_2 + 100.0*omm2_2 + 100.0*omm4_2 -
       200.0*omm3_2 + 100.0*omm3_1 + 100.0*omm3_3 +
       1.5308084989341916e-13*phm2_2 -
       1.5308084989341916e-13*phm4_2 - 2500.0*phm3_1 +
       2500.0*phm3_3)

+ sqr(-200.0*psm3_2 + 100.0*psm2_2 + 100.0*psm4_2 -
       200.0*psm3_2 + 100.0*psm3_1 + 100.0*psm3_3 +
       0.25*omm3_2)

+ sqr(-25.0*(psm3_1-psm3_3) * (phm2_2-phm4_2) +
       25.0*(psm2_2-psm4_2) * (phm3_1-phm3_3) - 200.0*phm3_2
       + 100.0*phm2_2 + 100.0*phm4_2 - 200.0*phm3_2 +
       100.0*phm3_1 + 100.0*phm3_3)

+ sqr(-200.0*omm2_2 + 100.0*omm1_2 + 100.0*omm3_2 -
       200.0*omm2_2 + 100.0*omm2_1 + 100.0*omm2_3 +
       1.5308084989341916e-13*phm1_2 -
       1.5308084989341916e-13*phm3_2 - 2500.0*phm2_1 +
       2500.0*phm2_3)

+ sqr(-200.0*psm2_2 + 100.0*psm1_2 + 100.0*psm3_2 -
       200.0*psm2_2 + 100.0*psm2_1 + 100.0*psm2_3 +
       0.25*omm2_2)

+ sqr(-25.0*(psm2_1-psm2_3) * (phm1_2-phm3_2) +
       25.0*(psm1_2-psm3_2) * (phm2_1-phm2_3) - 200.0*phm2_2
       + 100.0*phm1_2 + 100.0*phm3_2 - 200.0*phm2_2 +
       100.0*phm2_1 + 100.0*phm2_3)

+ sqr(-200.0*omm1_2 + 100.0*om0_2 + 100.0*omm2_2 -
       200.0*omm1_2 + 100.0*omm1_1 + 100.0*omm1_3 +
       1.5308084989341916e-13*ph0_2 -
       1.5308084989341916e-13*phm2_2 - 2500.0*phm1_1 +
       2500.0*phm1_3)

+ sqr(-200.0*psm1_2 + 100.0*ps0_2 + 100.0*psm2_2 -
       200.0*psm1_2 + 100.0*psm1_1 + 100.0*psm1_3 +
       0.25*omm1_2)

+ sqr(-25.0*(psm1_1-psm1_3) * (ph0_2-phm2_2) +
       25.0*(ps0_2-psm2_2) * (phm1_1-phm1_3) - 200.0*phm1_2
       + 100.0*ph0_2 + 100.0*phm2_2 - 200.0*phm1_2 +
       100.0*phm1_1 + 100.0*phm1_3)

+ sqr(-200.0*om0_2 + 100.0*om1_2 + 100.0*omm1_2 -
       200.0*om0_2 + 100.0*om0_1 + 100.0*om0_3 +
       1.5308084989341916e-13*ph1_2 -
       1.5308084989341916e-13*phm1_2 - 2500.0*ph0_1 +
       2500.0*ph0_3)

+ sqr(-200.0*ps0_2 + 100.0*ps1_2 + 100.0*psm1_2 -
       200.0*ps0_2 + 100.0*ps0_1 + 100.0*ps0_3 + 0.25*om0_2)

+ sqr(-25.0*(ps0_1-ps0_3) * (ph1_2-phm1_2) +
       25.0*(ps1_2-psm1_2) * (ph0_1-ph0_3) - 200.0*ph0_2 +
       100.0*ph1_2 + 100.0*phm1_2 - 200.0*ph0_2 +
       100.0*ph0_1 + 100.0*ph0_3)

+ sqr(-200.0*om1_2 + 100.0*om2_2 + 100.0*om0_2 - 200.0*om1_2
       + 100.0*om1_1 + 100.0*om1_3 +
       1.5308084989341916e-13*ph2_2 -
       1.5308084989341916e-13*ph0_2 - 2500.0*ph1_1 +
       2500.0*ph1_3)

+ sqr(-200.0*ps1_2 + 100.0*ps2_2 + 100.0*ps0_2 - 200.0*ps1_2
       + 100.0*ps1_1 + 100.0*ps1_3 + 0.25*om1_2)

+ sqr(-25.0*(ps1_1-ps1_3) * (ph2_2-ph0_2) +
       25.0*(ps2_2-ps0_2) * (ph1_1-ph1_3) - 200.0*ph1_2 +
       100.0*ph2_2 + 100.0*ph0_2 - 200.0*ph1_2 + 100.0*ph1_1
       + 100.0*ph1_3)

+ sqr(-200.0*om2_2 + 100.0*om3_2 + 100.0*om1_2 - 200.0*om2_2
       + 100.0*om2_1 + 100.0*om2_3 +
       1.5308084989341916e-13*ph3_2 -
       1.5308084989341916e-13*ph1_2 - 2500.0*ph2_1 +
       2500.0*ph2_3)

+ sqr(-200.0*ps2_2 + 100.0*ps3_2 + 100.0*ps1_2 - 200.0*ps2_2
       + 100.0*ps2_1 + 100.0*ps2_3 + 0.25*om2_2)

+ sqr(-25.0*(ps2_1-ps2_3) * (ph3_2-ph1_2) +
       25.0*(ps3_2-ps1_2) * (ph2_1-ph2_3) - 200.0*ph2_2 +
       100.0*ph3_2 + 100.0*ph1_2 - 200.0*ph2_2 + 100.0*ph2_1
       + 100.0*ph2_3)

+ sqr(-200.0*om3_2 + 100.0*om4_2 + 100.0*om2_2 - 200.0*om3_2
       + 100.0*om3_1 + 100.0*om3_3 +
       1.5308084989341916e-13*ph4_2 -
       1.5308084989341916e-13*ph2_2 - 2500.0*ph3_1 +
       2500.0*ph3_3)

+ sqr(-200.0*ps3_2 + 100.0*ps4_2 + 100.0*ps2_2 - 200.0*ps3_2
       + 100.0*ps3_1 + 100.0*ps3_3 + 0.25*om3_2)

+ sqr(-25.0*(ps3_1-ps3_3) * (ph4_2-ph2_2) +
       25.0*(ps4_2-ps2_2) * (ph3_1-ph3_3) - 200.0*ph3_2 +
       100.0*ph4_2 + 100.0*ph2_2 - 200.0*ph3_2 + 100.0*ph3_1
       + 100.0*ph3_3)

+ sqr(-200.0*om4_2 + 100.0*om5_2 + 100.0*om3_2 - 200.0*om4_2
       + 100.0*om4_1 + 100.0*om4_3 +
       1.5308084989341916e-13*ph5_2 -
       1.5308084989341916e-13*ph3_2 - 2500.0*ph4_1 +
       2500.0*ph4_3)

+ sqr(-200.0*ps4_2 + 100.0*ps5_2 + 100.0*ps3_2 - 200.0*ps4_2
       + 100.0*ps4_1 + 100.0*ps4_3 + 0.25*om4_2)

+ sqr(-25.0*(ps4_1-ps4_3) * (ph5_2-ph3_2) +
       25.0*(ps5_2-ps3_2) * (ph4_1-ph4_3) - 200.0*ph4_2 +
       100.0*ph5_2 + 100.0*ph3_2 - 200.0*ph4_2 + 100.0*ph4_1
       + 100.0*ph4_3)

+ sqr(-200.0*om5_2 + 100.0*om6_2 + 100.0*om4_2 - 200.0*om5_2
       + 100.0*om5_1 + 100.0*om5_3 +
       1.5308084989341916e-13*ph6_2 -
       1.5308084989341916e-13*ph4_2 - 2500.0*ph5_1 +
       2500.0*ph5_3)

+ sqr(-200.0*ps5_2 + 100.0*ps6_2 + 100.0*ps4_2 - 200.0*ps5_2
       + 100.0*ps5_1 + 100.0*ps5_3 + 0.25*om5_2)

+ sqr(-25.0*(ps5_1-ps5_3) * (ph6_2-ph4_2) +
       25.0*(ps6_2-ps4_2) * (ph5_1-ph5_3) - 200.0*ph5_2 +
       100.0*ph6_2 + 100.0*ph4_2 - 200.0*ph5_2 + 100.0*ph5_1
       + 100.0*ph5_3)

+ sqr(-200.0*om6_2 + 100.0*om7_2 + 100.0*om5_2 - 200.0*om6_2
       + 100.0*om6_1 + 100.0*om6_3 +
       1.5308084989341916e-13*ph7_2 -
       1.5308084989341916e-13*ph5_2 - 2500.0*ph6_1 +
       2500.0*ph6_3)

+ sqr(-200.0*ps6_2 + 100.0*ps7_2 + 100.0*ps5_2 - 200.0*ps6_2
       + 100.0*ps6_1 + 100.0*ps6_3 + 0.25*om6_2)

+ sqr(-25.0*(ps6_1-ps6_3) * (ph7_2-ph5_2) +
       25.0*(ps7_2-ps5_2) * (ph6_1-ph6_3) - 200.0*ph6_2 +
       100.0*ph7_2 + 100.0*ph5_2 - 200.0*ph6_2 + 100.0*ph6_1
       + 100.0*ph6_3)

+ sqr(-200.0*om7_2 + 100.0*om8_2 + 100.0*om6_2 - 200.0*om7_2
       + 100.0*om7_1 + 100.0*om7_3 +
       1.5308084989341916e-13*ph8_2 -
       1.5308084989341916e-13*ph6_2 - 2500.0*ph7_1 +
       2500.0*ph7_3)

+ sqr(-200.0*ps7_2 + 100.0*ps8_2 + 100.0*ps6_2 - 200.0*ps7_2
       + 100.0*ps7_1 + 100.0*ps7_3 + 0.25*om7_2)

+ sqr(-25.0*(ps7_1-ps7_3) * (ph8_2-ph6_2) +
       25.0*(ps8_2-ps6_2) * (ph7_1-ph7_3) - 200.0*ph7_2 +
       100.0*ph8_2 + 100.0*ph6_2 - 200.0*ph7_2 + 100.0*ph7_1
       + 100.0*ph7_3)

+ sqr(-200.0*om8_2 + 100.0*om9_2 + 100.0*om7_2 - 200.0*om8_2
       + 100.0*om8_1 + 100.0*om8_3 +
       1.5308084989341916e-13*ph9_2 -
       1.5308084989341916e-13*ph7_2 - 2500.0*ph8_1 +
       2500.0*ph8_3)

+ sqr(-200.0*ps8_2 + 100.0*ps9_2 + 100.0*ps7_2 - 200.0*ps8_2
       + 100.0*ps8_1 + 100.0*ps8_3 + 0.25*om8_2)

+ sqr(-25.0*(ps8_1-ps8_3) * (ph9_2-ph7_2) +
       25.0*(ps9_2-ps7_2) * (ph8_1-ph8_3) - 200.0*ph8_2 +
       100.0*ph9_2 + 100.0*ph7_2 - 200.0*ph8_2 + 100.0*ph8_1
       + 100.0*ph8_3)

+ sqr(-200.0*om9_2 + 100.0*om10_2 + 100.0*om8_2 -
       200.0*om9_2 + 100.0*om9_1 + 100.0*om9_3 +
       1.5308084989341916e-13*ph10_2 -
       1.5308084989341916e-13*ph8_2 - 2500.0*ph9_1 +
       2500.0*ph9_3)

+ sqr(-200.0*ps9_2 + 100.0*ps10_2 + 100.0*ps8_2 -
       200.0*ps9_2 + 100.0*ps9_1 + 100.0*ps9_3 + 0.25*om9_2)

+ sqr(-25.0*(ps9_1-ps9_3) * (ph10_2-ph8_2) +
       25.0*(ps10_2-ps8_2) * (ph9_1-ph9_3) - 200.0*ph9_2 +
       100.0*ph10_2 + 100.0*ph8_2 - 200.0*ph9_2 +
       100.0*ph9_1 + 100.0*ph9_3)

+ sqr(-200.0*omm9_1 + 100.0*omm8_1 + 100.0*omm10_1 -
       200.0*omm9_1 + 100.0*omm9_0 + 100.0*omm9_2 +
       1.5308084989341916e-13*phm8_1 -
       1.5308084989341916e-13*phm10_1 - 2500.0*phm9_0 +
       2500.0*phm9_2)

+ sqr(-200.0*psm9_1 + 100.0*psm8_1 + 100.0*psm10_1 -
       200.0*psm9_1 + 100.0*psm9_0 + 100.0*psm9_2 +
       0.25*omm9_1)

+ sqr(-25.0*(psm9_0-psm9_2) * (phm8_1-phm10_1) +
       25.0*(psm8_1-psm10_1) * (phm9_0-phm9_2) -
       200.0*phm9_1 + 100.0*phm8_1 + 100.0*phm10_1 -
       200.0*phm9_1 + 100.0*phm9_0 + 100.0*phm9_2)

+ sqr(-200.0*omm8_1 + 100.0*omm7_1 + 100.0*omm9_1 -
       200.0*omm8_1 + 100.0*omm8_0 + 100.0*omm8_2 +
       1.5308084989341916e-13*phm7_1 -
       1.5308084989341916e-13*phm9_1 - 2500.0*phm8_0 +
       2500.0*phm8_2)

+ sqr(-200.0*psm8_1 + 100.0*psm7_1 + 100.0*psm9_1 -
       200.0*psm8_1 + 100.0*psm8_0 + 100.0*psm8_2 +
       0.25*omm8_1)

+ sqr(-25.0*(psm8_0-psm8_2) * (phm7_1-phm9_1) +
       25.0*(psm7_1-psm9_1) * (phm8_0-phm8_2) - 200.0*phm8_1
       + 100.0*phm7_1 + 100.0*phm9_1 - 200.0*phm8_1 +
       100.0*phm8_0 + 100.0*phm8_2)

+ sqr(-200.0*omm7_1 + 100.0*omm6_1 + 100.0*omm8_1 -
       200.0*omm7_1 + 100.0*omm7_0 + 100.0*omm7_2 +
       1.5308084989341916e-13*phm6_1 -
       1.5308084989341916e-13*phm8_1 - 2500.0*phm7_0 +
       2500.0*phm7_2)

+ sqr(-200.0*psm7_1 + 100.0*psm6_1 + 100.0*psm8_1 -
       200.0*psm7_1 + 100.0*psm7_0 + 100.0*psm7_2 +
       0.25*omm7_1)

+ sqr(-25.0*(psm7_0-psm7_2) * (phm6_1-phm8_1) +
       25.0*(psm6_1-psm8_1) * (phm7_0-phm7_2) - 200.0*phm7_1
       + 100.0*phm6_1 + 100.0*phm8_1 - 200.0*phm7_1 +
       100.0*phm7_0 + 100.0*phm7_2)

+ sqr(-200.0*omm6_1 + 100.0*omm5_1 + 100.0*omm7_1 -
       200.0*omm6_1 + 100.0*omm6_0 + 100.0*omm6_2 +
       1.5308084989341916e-13*phm5_1 -
       1.5308084989341916e-13*phm7_1 - 2500.0*phm6_0 +
       2500.0*phm6_2)

+ sqr(-200.0*psm6_1 + 100.0*psm5_1 + 100.0*psm7_1 -
       200.0*psm6_1 + 100.0*psm6_0 + 100.0*psm6_2 +
       0.25*omm6_1)

+ sqr(-25.0*(psm6_0-psm6_2) * (phm5_1-phm7_1) +
       25.0*(psm5_1-psm7_1) * (phm6_0-phm6_2) - 200.0*phm6_1
       + 100.0*phm5_1 + 100.0*phm7_1 - 200.0*phm6_1 +
       100.0*phm6_0 + 100.0*phm6_2)

+ sqr(-200.0*omm5_1 + 100.0*omm4_1 + 100.0*omm6_1 -
       200.0*omm5_1 + 100.0*omm5_0 + 100.0*omm5_2 +
       1.5308084989341916e-13*phm4_1 -
       1.5308084989341916e-13*phm6_1 - 2500.0*phm5_0 +
       2500.0*phm5_2)

+ sqr(-200.0*psm5_1 + 100.0*psm4_1 + 100.0*psm6_1 -
       200.0*psm5_1 + 100.0*psm5_0 + 100.0*psm5_2 +
       0.25*omm5_1)

+ sqr(-25.0*(psm5_0-psm5_2) * (phm4_1-phm6_1) +
       25.0*(psm4_1-psm6_1) * (phm5_0-phm5_2) - 200.0*phm5_1
       + 100.0*phm4_1 + 100.0*phm6_1 - 200.0*phm5_1 +
       100.0*phm5_0 + 100.0*phm5_2)

+ sqr(-200.0*omm4_1 + 100.0*omm3_1 + 100.0*omm5_1 -
       200.0*omm4_1 + 100.0*omm4_0 + 100.0*omm4_2 +
       1.5308084989341916e-13*phm3_1 -
       1.5308084989341916e-13*phm5_1 - 2500.0*phm4_0 +
       2500.0*phm4_2)

+ sqr(-200.0*psm4_1 + 100.0*psm3_1 + 100.0*psm5_1 -
       200.0*psm4_1 + 100.0*psm4_0 + 100.0*psm4_2 +
       0.25*omm4_1)

+ sqr(-25.0*(psm4_0-psm4_2) * (phm3_1-phm5_1) +
       25.0*(psm3_1-psm5_1) * (phm4_0-phm4_2) - 200.0*phm4_1
       + 100.0*phm3_1 + 100.0*phm5_1 - 200.0*phm4_1 +
       100.0*phm4_0 + 100.0*phm4_2)

+ sqr(-200.0*omm3_1 + 100.0*omm2_1 + 100.0*omm4_1 -
       200.0*omm3_1 + 100.0*omm3_0 + 100.0*omm3_2 +
       1.5308084989341916e-13*phm2_1 -
       1.5308084989341916e-13*phm4_1 - 2500.0*phm3_0 +
       2500.0*phm3_2)

+ sqr(-200.0*psm3_1 + 100.0*psm2_1 + 100.0*psm4_1 -
       200.0*psm3_1 + 100.0*psm3_0 + 100.0*psm3_2 +
       0.25*omm3_1)

+ sqr(-25.0*(psm3_0-psm3_2) * (phm2_1-phm4_1) +
       25.0*(psm2_1-psm4_1) * (phm3_0-phm3_2) - 200.0*phm3_1
       + 100.0*phm2_1 + 100.0*phm4_1 - 200.0*phm3_1 +
       100.0*phm3_0 + 100.0*phm3_2)

+ sqr(-200.0*omm2_1 + 100.0*omm1_1 + 100.0*omm3_1 -
       200.0*omm2_1 + 100.0*omm2_0 + 100.0*omm2_2 +
       1.5308084989341916e-13*phm1_1 -
       1.5308084989341916e-13*phm3_1 - 2500.0*phm2_0 +
       2500.0*phm2_2)

+ sqr(-200.0*psm2_1 + 100.0*psm1_1 + 100.0*psm3_1 -
       200.0*psm2_1 + 100.0*psm2_0 + 100.0*psm2_2 +
       0.25*omm2_1)

+ sqr(-25.0*(psm2_0-psm2_2) * (phm1_1-phm3_1) +
       25.0*(psm1_1-psm3_1) * (phm2_0-phm2_2) - 200.0*phm2_1
       + 100.0*phm1_1 + 100.0*phm3_1 - 200.0*phm2_1 +
       100.0*phm2_0 + 100.0*phm2_2)

+ sqr(-200.0*omm1_1 + 100.0*om0_1 + 100.0*omm2_1 -
       200.0*omm1_1 + 100.0*omm1_0 + 100.0*omm1_2 +
       1.5308084989341916e-13*ph0_1 -
       1.5308084989341916e-13*phm2_1 - 2500.0*phm1_0 +
       2500.0*phm1_2)

+ sqr(-200.0*psm1_1 + 100.0*ps0_1 + 100.0*psm2_1 -
       200.0*psm1_1 + 100.0*psm1_0 + 100.0*psm1_2 +
       0.25*omm1_1)

+ sqr(-25.0*(psm1_0-psm1_2) * (ph0_1-phm2_1) +
       25.0*(ps0_1-psm2_1) * (phm1_0-phm1_2) - 200.0*phm1_1
       + 100.0*ph0_1 + 100.0*phm2_1 - 200.0*phm1_1 +
       100.0*phm1_0 + 100.0*phm1_2)

+ sqr(-200.0*om0_1 + 100.0*om1_1 + 100.0*omm1_1 -
       200.0*om0_1 + 100.0*om0_0 + 100.0*om0_2 +
       1.5308084989341916e-13*ph1_1 -
       1.5308084989341916e-13*phm1_1 - 2500.0*ph0_0 +
       2500.0*ph0_2)

+ sqr(-200.0*ps0_1 + 100.0*ps1_1 + 100.0*psm1_1 -
       200.0*ps0_1 + 100.0*ps0_0 + 100.0*ps0_2 + 0.25*om0_1)

+ sqr(-25.0*(ps0_0-ps0_2) * (ph1_1-phm1_1) +
       25.0*(ps1_1-psm1_1) * (ph0_0-ph0_2) - 200.0*ph0_1 +
       100.0*ph1_1 + 100.0*phm1_1 - 200.0*ph0_1 +
       100.0*ph0_0 + 100.0*ph0_2)

+ sqr(-200.0*om1_1 + 100.0*om2_1 + 100.0*om0_1 - 200.0*om1_1
       + 100.0*om1_0 + 100.0*om1_2 +
       1.5308084989341916e-13*ph2_1 -
       1.5308084989341916e-13*ph0_1 - 2500.0*ph1_0 +
       2500.0*ph1_2)

+ sqr(-200.0*ps1_1 + 100.0*ps2_1 + 100.0*ps0_1 - 200.0*ps1_1
       + 100.0*ps1_0 + 100.0*ps1_2 + 0.25*om1_1)

+ sqr(-25.0*(ps1_0-ps1_2) * (ph2_1-ph0_1) +
       25.0*(ps2_1-ps0_1) * (ph1_0-ph1_2) - 200.0*ph1_1 +
       100.0*ph2_1 + 100.0*ph0_1 - 200.0*ph1_1 + 100.0*ph1_0
       + 100.0*ph1_2)

+ sqr(-200.0*om2_1 + 100.0*om3_1 + 100.0*om1_1 - 200.0*om2_1
       + 100.0*om2_0 + 100.0*om2_2 +
       1.5308084989341916e-13*ph3_1 -
       1.5308084989341916e-13*ph1_1 - 2500.0*ph2_0 +
       2500.0*ph2_2)

+ sqr(-200.0*ps2_1 + 100.0*ps3_1 + 100.0*ps1_1 - 200.0*ps2_1
       + 100.0*ps2_0 + 100.0*ps2_2 + 0.25*om2_1)

+ sqr(-25.0*(ps2_0-ps2_2) * (ph3_1-ph1_1) +
       25.0*(ps3_1-ps1_1) * (ph2_0-ph2_2) - 200.0*ph2_1 +
       100.0*ph3_1 + 100.0*ph1_1 - 200.0*ph2_1 + 100.0*ph2_0
       + 100.0*ph2_2)

+ sqr(-200.0*om3_1 + 100.0*om4_1 + 100.0*om2_1 - 200.0*om3_1
       + 100.0*om3_0 + 100.0*om3_2 +
       1.5308084989341916e-13*ph4_1 -
       1.5308084989341916e-13*ph2_1 - 2500.0*ph3_0 +
       2500.0*ph3_2)

+ sqr(-200.0*ps3_1 + 100.0*ps4_1 + 100.0*ps2_1 - 200.0*ps3_1
       + 100.0*ps3_0 + 100.0*ps3_2 + 0.25*om3_1)

+ sqr(-25.0*(ps3_0-ps3_2) * (ph4_1-ph2_1) +
       25.0*(ps4_1-ps2_1) * (ph3_0-ph3_2) - 200.0*ph3_1 +
       100.0*ph4_1 + 100.0*ph2_1 - 200.0*ph3_1 + 100.0*ph3_0
       + 100.0*ph3_2)

+ sqr(-200.0*om4_1 + 100.0*om5_1 + 100.0*om3_1 - 200.0*om4_1
       + 100.0*om4_0 + 100.0*om4_2 +
       1.5308084989341916e-13*ph5_1 -
       1.5308084989341916e-13*ph3_1 - 2500.0*ph4_0 +
       2500.0*ph4_2)

+ sqr(-200.0*ps4_1 + 100.0*ps5_1 + 100.0*ps3_1 - 200.0*ps4_1
       + 100.0*ps4_0 + 100.0*ps4_2 + 0.25*om4_1)

+ sqr(-25.0*(ps4_0-ps4_2) * (ph5_1-ph3_1) +
       25.0*(ps5_1-ps3_1) * (ph4_0-ph4_2) - 200.0*ph4_1 +
       100.0*ph5_1 + 100.0*ph3_1 - 200.0*ph4_1 + 100.0*ph4_0
       + 100.0*ph4_2)

+ sqr(-200.0*om5_1 + 100.0*om6_1 + 100.0*om4_1 - 200.0*om5_1
       + 100.0*om5_0 + 100.0*om5_2 +
       1.5308084989341916e-13*ph6_1 -
       1.5308084989341916e-13*ph4_1 - 2500.0*ph5_0 +
       2500.0*ph5_2)

+ sqr(-200.0*ps5_1 + 100.0*ps6_1 + 100.0*ps4_1 - 200.0*ps5_1
       + 100.0*ps5_0 + 100.0*ps5_2 + 0.25*om5_1)

+ sqr(-25.0*(ps5_0-ps5_2) * (ph6_1-ph4_1) +
       25.0*(ps6_1-ps4_1) * (ph5_0-ph5_2) - 200.0*ph5_1 +
       100.0*ph6_1 + 100.0*ph4_1 - 200.0*ph5_1 + 100.0*ph5_0
       + 100.0*ph5_2)

+ sqr(-200.0*om6_1 + 100.0*om7_1 + 100.0*om5_1 - 200.0*om6_1
       + 100.0*om6_0 + 100.0*om6_2 +
       1.5308084989341916e-13*ph7_1 -
       1.5308084989341916e-13*ph5_1 - 2500.0*ph6_0 +
       2500.0*ph6_2)

+ sqr(-200.0*ps6_1 + 100.0*ps7_1 + 100.0*ps5_1 - 200.0*ps6_1
       + 100.0*ps6_0 + 100.0*ps6_2 + 0.25*om6_1)

+ sqr(-25.0*(ps6_0-ps6_2) * (ph7_1-ph5_1) +
       25.0*(ps7_1-ps5_1) * (ph6_0-ph6_2) - 200.0*ph6_1 +
       100.0*ph7_1 + 100.0*ph5_1 - 200.0*ph6_1 + 100.0*ph6_0
       + 100.0*ph6_2)

+ sqr(-200.0*om7_1 + 100.0*om8_1 + 100.0*om6_1 - 200.0*om7_1
       + 100.0*om7_0 + 100.0*om7_2 +
       1.5308084989341916e-13*ph8_1 -
       1.5308084989341916e-13*ph6_1 - 2500.0*ph7_0 +
       2500.0*ph7_2)

+ sqr(-200.0*ps7_1 + 100.0*ps8_1 + 100.0*ps6_1 - 200.0*ps7_1
       + 100.0*ps7_0 + 100.0*ps7_2 + 0.25*om7_1)

+ sqr(-25.0*(ps7_0-ps7_2) * (ph8_1-ph6_1) +
       25.0*(ps8_1-ps6_1) * (ph7_0-ph7_2) - 200.0*ph7_1 +
       100.0*ph8_1 + 100.0*ph6_1 - 200.0*ph7_1 + 100.0*ph7_0
       + 100.0*ph7_2)

+ sqr(-200.0*om8_1 + 100.0*om9_1 + 100.0*om7_1 - 200.0*om8_1
       + 100.0*om8_0 + 100.0*om8_2 +
       1.5308084989341916e-13*ph9_1 -
       1.5308084989341916e-13*ph7_1 - 2500.0*ph8_0 +
       2500.0*ph8_2)

+ sqr(-200.0*ps8_1 + 100.0*ps9_1 + 100.0*ps7_1 - 200.0*ps8_1
       + 100.0*ps8_0 + 100.0*ps8_2 + 0.25*om8_1)

+ sqr(-25.0*(ps8_0-ps8_2) * (ph9_1-ph7_1) +
       25.0*(ps9_1-ps7_1) * (ph8_0-ph8_2) - 200.0*ph8_1 +
       100.0*ph9_1 + 100.0*ph7_1 - 200.0*ph8_1 + 100.0*ph8_0
       + 100.0*ph8_2)

+ sqr(-200.0*om9_1 + 100.0*om10_1 + 100.0*om8_1 -
       200.0*om9_1 + 100.0*om9_0 + 100.0*om9_2 +
       1.5308084989341916e-13*ph10_1 -
       1.5308084989341916e-13*ph8_1 - 2500.0*ph9_0 +
       2500.0*ph9_2)

+ sqr(-200.0*ps9_1 + 100.0*ps10_1 + 100.0*ps8_1 -
       200.0*ps9_1 + 100.0*ps9_0 + 100.0*ps9_2 + 0.25*om9_1)

+ sqr(-25.0*(ps9_0-ps9_2) * (ph10_1-ph8_1) +
       25.0*(ps10_1-ps8_1) * (ph9_0-ph9_2) - 200.0*ph9_1 +
       100.0*ph10_1 + 100.0*ph8_1 - 200.0*ph9_1 +
       100.0*ph9_0 + 100.0*ph9_2)

+ sqr(-200.0*omm9_0 + 100.0*omm8_0 + 100.0*omm10_0 -
       200.0*omm9_0 + 100.0*omm9_1 + 100.0*omm9_1 +
       1.5308084989341916e-13*phm8_0 - 1.5308084989341916e-13
       *phm10_0 - 2500.0*phm9_1 + 2500.0*phm9_1)

+ sqr(-200.0*psm9_0 + 100.0*psm8_0 + 100.0*psm10_0 -
       200.0*psm9_0 + 100.0*psm9_1 + 100.0*psm9_1 +
       0.25*omm9_0)

+ sqr(-25.0*(psm9_1-psm9_1) * (phm8_0-phm10_0) +
       25.0*(psm8_0-psm10_0) * (phm9_1-phm9_1) -
       200.0*phm9_0 + 100.0*phm8_0 + 100.0*phm10_0 -
       200.0*phm9_0 + 100.0*phm9_1 + 100.0*phm9_1)

+ sqr(-200.0*omm8_0 + 100.0*omm7_0 + 100.0*omm9_0 -
       200.0*omm8_0 + 100.0*omm8_1 + 100.0*omm8_1 +
       1.5308084989341916e-13*phm7_0 -
       1.5308084989341916e-13*phm9_0 - 2500.0*phm8_1 +
       2500.0*phm8_1)

+ sqr(-200.0*psm8_0 + 100.0*psm7_0 + 100.0*psm9_0 -
       200.0*psm8_0 + 100.0*psm8_1 + 100.0*psm8_1 +
       0.25*omm8_0)

+ sqr(-25.0*(psm8_1-psm8_1) * (phm7_0-phm9_0) +
       25.0*(psm7_0-psm9_0) * (phm8_1-phm8_1) - 200.0*phm8_0
       + 100.0*phm7_0 + 100.0*phm9_0 - 200.0*phm8_0 +
       100.0*phm8_1 + 100.0*phm8_1)

+ sqr(- 200.0*omm7_0 + 100.0*omm6_0 + 100.0*omm8_0 -
       200.0*omm7_0 + 100.0*omm7_1 + 100.0*omm7_1 +
       1.5308084989341916e-13*phm6_0 -
       1.5308084989341916e-13*phm8_0 - 2500.0*phm7_1 +
       2500.0*phm7_1)

+ sqr(-200.0*psm7_0 + 100.0*psm6_0 + 100.0*psm8_0 -
       200.0*psm7_0 + 100.0*psm7_1 + 100.0*psm7_1 +
       0.25*omm7_0)

+ sqr(-25.0*(psm7_1-psm7_1) * (phm6_0-phm8_0) +
       25.0*(psm6_0-psm8_0) * (phm7_1-phm7_1) - 200.0*phm7_0
       + 100.0*phm6_0 + 100.0*phm8_0 - 200.0*phm7_0 +
       100.0*phm7_1 + 100.0*phm7_1)

+ sqr(-200.0*omm6_0 + 100.0*omm5_0 + 100.0*omm7_0 -
       200.0*omm6_0 + 100.0*omm6_1 + 100.0*omm6_1 +
       1.5308084989341916e-13*phm5_0 - 1.5308084989341916e-13
       *phm7_0 - 2500.0*phm6_1 + 2500.0*phm6_1)

+ sqr(-200.0*psm6_0 + 100.0*psm5_0 + 100.0*psm7_0 -
       200.0*psm6_0 + 100.0*psm6_1 + 100.0*psm6_1 +
       0.25*omm6_0)

+ sqr(-25.0*(psm6_1-psm6_1) * (phm5_0-phm7_0) +
       25.0*(psm5_0-psm7_0) * (phm6_1-phm6_1) - 200.0*phm6_0
       + 100.0*phm5_0 + 100.0*phm7_0 - 200.0*phm6_0 +
       100.0*phm6_1 + 100.0*phm6_1)

+ sqr(-200.0*omm5_0 + 100.0*omm4_0 + 100.0*omm6_0 -
       200.0*omm5_0 + 100.0*omm5_1 + 100.0*omm5_1 +
       1.5308084989341916e-13*phm4_0 -
       1.5308084989341916e-13*phm6_0 - 2500.0*phm5_1 +
       2500.0*phm5_1)

+ sqr(-200.0*psm5_0 + 100.0*psm4_0 + 100.0*psm6_0 -
       200.0*psm5_0 + 100.0*psm5_1 + 100.0*psm5_1 +
       0.25*omm5_0)

+ sqr(-25.0*(psm5_1-psm5_1) * (phm4_0-phm6_0) +
       25.0*(psm4_0-psm6_0) * (phm5_1-phm5_1) - 200.0*phm5_0
       + 100.0*phm4_0 + 100.0*phm6_0 - 200.0*phm5_0 +
       100.0*phm5_1 + 100.0*phm5_1)

+ sqr(- 200.0*omm4_0 + 100.0*omm3_0 + 100.0*omm5_0 -
       200.0*omm4_0 + 100.0*omm4_1 + 100.0*omm4_1 +
       1.5308084989341916e-13*phm3_0 -
       1.5308084989341916e-13*phm5_0 - 2500.0*phm4_1 +
       2500.0*phm4_1)

+ sqr(-200.0*psm4_0 + 100.0*psm3_0 + 100.0*psm5_0 -
       200.0*psm4_0 + 100.0*psm4_1 + 100.0*psm4_1 +
       0.25*omm4_0)

+ sqr(-25.0*(psm4_1-psm4_1) * (phm3_0-phm5_0) +
       25.0*(psm3_0-psm5_0) * (phm4_1-phm4_1) - 200.0*phm4_0
       + 100.0*phm3_0 + 100.0*phm5_0 - 200.0*phm4_0 +
       100.0*phm4_1 + 100.0*phm4_1)

+ sqr(-200.0*omm3_0 + 100.0*omm2_0 + 100.0*omm4_0 -
       200.0*omm3_0 + 100.0*omm3_1 + 100.0*omm3_1 +
       1.5308084989341916e-13*phm2_0 - 1.5308084989341916e-13
       *phm4_0 - 2500.0*phm3_1 + 2500.0*phm3_1)

+ sqr(-200.0*psm3_0 + 100.0*psm2_0 + 100.0*psm4_0 -
       200.0*psm3_0 + 100.0*psm3_1 + 100.0*psm3_1 +
       0.25*omm3_0)

+ sqr(-25.0*(psm3_1-psm3_1) * (phm2_0-phm4_0) +
       25.0*(psm2_0-psm4_0) * (phm3_1-phm3_1) - 200.0*phm3_0
       + 100.0*phm2_0 + 100.0*phm4_0 - 200.0*phm3_0 +
       100.0*phm3_1 + 100.0*phm3_1)

+ sqr(-200.0*omm2_0 + 100.0*omm1_0 + 100.0*omm3_0 -
       200.0*omm2_0 + 100.0*omm2_1 + 100.0*omm2_1 +
       1.5308084989341916e-13*phm1_0 -
       1.5308084989341916e-13*phm3_0 - 2500.0*phm2_1 +
       2500.0*phm2_1)

+ sqr(-200.0*psm2_0 + 100.0*psm1_0 + 100.0*psm3_0 -
       200.0*psm2_0 + 100.0*psm2_1 + 100.0*psm2_1 +
       0.25*omm2_0)

+ sqr(-25.0*(psm2_1-psm2_1) * (phm1_0-phm3_0) +
       25.0*(psm1_0-psm3_0) * (phm2_1-phm2_1) - 200.0*phm2_0
       + 100.0*phm1_0 + 100.0*phm3_0 - 200.0*phm2_0 +
       100.0*phm2_1 + 100.0*phm2_1)

+ sqr(- 200.0*omm1_0 + 100.0*om0_0 + 100.0*omm2_0 -
       200.0*omm1_0 + 100.0*omm1_1 + 100.0*omm1_1 +
       1.5308084989341916e-13*ph0_0 -
       1.5308084989341916e-13*phm2_0 - 2500.0*phm1_1 +
       2500.0*phm1_1)

+ sqr(-200.0*psm1_0 + 100.0*ps0_0 + 100.0*psm2_0 -
       200.0*psm1_0 + 100.0*psm1_1 + 100.0*psm1_1 +
       0.25*omm1_0)

+ sqr(-25.0*(psm1_1-psm1_1) * (ph0_0-phm2_0) +
       25.0*(ps0_0-psm2_0) * (phm1_1-phm1_1) - 200.0*phm1_0
       + 100.0*ph0_0 + 100.0*phm2_0 - 200.0*phm1_0 +
       100.0*phm1_1 + 100.0*phm1_1)

+ sqr(-200.0*om0_0 + 100.0*om1_0 + 100.0*omm1_0 -
       200.0*om0_0 + 100.0*om0_1 + 100.0*om0_1 +
       1.5308084989341916e-13*ph1_0 -
       1.5308084989341916e-13*phm1_0 - 2500.0*ph0_1 +
       2500.0*ph0_1)

+ sqr(-200.0*ps0_0 + 100.0*ps1_0 + 100.0*psm1_0 -
       200.0*ps0_0 + 100.0*ps0_1 + 100.0*ps0_1 + 0.25*om0_0)

+ sqr(-25.0*(ps0_1-ps0_1) * (ph1_0-phm1_0) +
       25.0*(ps1_0-psm1_0) * (ph0_1- ph0_1) - 200.0*ph0_0 +
       100.0*ph1_0 + 100.0*phm1_0 - 200.0*ph0_0 +
       100.0*ph0_1 + 100.0*ph0_1)

+ sqr(-200.0*om1_0 + 100.0*om2_0 + 100.0*om0_0 - 200.0*om1_0
       + 100.0*om1_1 + 100.0*om1_1 +
       1.5308084989341916e-13*ph2_0 -
       1.5308084989341916e-13*ph0_0 - 2500.0*ph1_1 +
       2500.0*ph1_1)

+ sqr(- 200.0*ps1_0 + 100.0*ps2_0 + 100.0*ps0_0 -
       200.0*ps1_0 + 100.0*ps1_1 + 100.0*ps1_1 + 0.25*om1_0)

+ sqr(-25.0*(ps1_1-ps1_1) * (ph2_0-ph0_0) +
       25.0*(ps2_0-ps0_0) * (ph1_1-ph1_1) - 200.0*ph1_0 +
       100.0*ph2_0 + 100.0*ph0_0 - 200.0*ph1_0 + 100.0*ph1_1
       + 100.0*ph1_1)

+ sqr(-200.0*om2_0 + 100.0*om3_0 + 100.0*om1_0 - 200.0*om2_0
       + 100.0*om2_1 + 100.0*om2_1 +
       1.5308084989341916e-13*ph3_0 -
       1.5308084989341916e-13*ph1_0 - 2500.0*ph2_1 +
       2500.0*ph2_1)

+ sqr(- 200.0*ps2_0 + 100.0*ps3_0 + 100.0*ps1_0 -
       200.0*ps2_0 + 100.0*ps2_1 + 100.0*ps2_1 + 0.25*om2_0)

+ sqr(-25.0*(ps2_1-ps2_1) * (ph3_0-ph1_0) +
       25.0*(ps3_0-ps1_0) * (ph2_1-ph2_1) - 200.0*ph2_0 +
       100.0*ph3_0 + 100.0*ph1_0 - 200.0*ph2_0 + 100.0*ph2_1
       + 100.0*ph2_1)

+ sqr(-200.0*om3_0 + 100.0*om4_0 + 100.0*om2_0 - 200.0*om3_0
       + 100.0*om3_1 + 100.0*om3_1 +
       1.5308084989341916e-13*ph4_0 -
       1.5308084989341916e-13*ph2_0 - 2500.0*ph3_1 +
       2500.0*ph3_1)

+ sqr(- 200.0*ps3_0 + 100.0*ps4_0 + 100.0*ps2_0 -
       200.0*ps3_0 + 100.0*ps3_1 + 100.0*ps3_1 + 0.25*om3_0)

+ sqr(-25.0*(ps3_1-ps3_1) * (ph4_0-ph2_0) +
       25.0*(ps4_0-ps2_0) * (ph3_1-ph3_1) - 200.0*ph3_0 +
       100.0*ph4_0 + 100.0*ph2_0 - 200.0*ph3_0 + 100.0*ph3_1
       + 100.0*ph3_1)

+ sqr(-200.0*om4_0 + 100.0*om5_0 + 100.0*om3_0 - 200.0*om4_0
       + 100.0*om4_1 + 100.0*om4_1 +
       1.5308084989341916e-13*ph5_0 -
       1.5308084989341916e-13*ph3_0 - 2500.0*ph4_1 +
       2500.0*ph4_1)

+ sqr(- 200.0*ps4_0 + 100.0*ps5_0 + 100.0*ps3_0 -
       200.0*ps4_0 + 100.0*ps4_1 + 100.0*ps4_1 + 0.25*om4_0)

+ sqr(-25.0*(ps4_1-ps4_1) * (ph5_0-ph3_0) +
       25.0*(ps5_0-ps3_0) * (ph4_1-ph4_1) - 200.0*ph4_0 +
       100.0*ph5_0 + 100.0*ph3_0 - 200.0*ph4_0 + 100.0*ph4_1
       + 100.0*ph4_1)

+ sqr(-200.0*om5_0 + 100.0*om6_0 + 100.0*om4_0 - 200.0*om5_0
       + 100.0*om5_1 + 100.0*om5_1 +
       1.5308084989341916e-13*ph6_0 -
       1.5308084989341916e-13*ph4_0 - 2500.0*ph5_1 +
       2500.0*ph5_1)

+ sqr(- 200.0*ps5_0 + 100.0*ps6_0 + 100.0*ps4_0 -
       200.0*ps5_0 + 100.0*ps5_1 + 100.0*ps5_1 + 0.25*om5_0)

+ sqr(-25.0*(ps5_1-ps5_1) * (ph6_0-ph4_0) +
       25.0*(ps6_0-ps4_0) * (ph5_1-ph5_1) - 200.0*ph5_0 +
       100.0*ph6_0 + 100.0*ph4_0 - 200.0*ph5_0 + 100.0*ph5_1
       + 100.0*ph5_1)

+ sqr(-200.0*om6_0 + 100.0*om7_0 + 100.0*om5_0 - 200.0*om6_0
       + 100.0*om6_1 + 100.0*om6_1 +
       1.5308084989341916e-13*ph7_0 -
       1.5308084989341916e-13*ph5_0 - 2500.0*ph6_1 +
       2500.0*ph6_1)

+ sqr(- 200.0*ps6_0 + 100.0*ps7_0 + 100.0*ps5_0 -
       200.0*ps6_0 + 100.0*ps6_1 + 100.0*ps6_1 + 0.25*om6_0)

+ sqr(-25.0*(ps6_1-ps6_1) * (ph7_0-ph5_0) +
       25.0*(ps7_0-ps5_0) * (ph6_1-ph6_1) - 200.0*ph6_0 +
       100.0*ph7_0 + 100.0*ph5_0 - 200.0*ph6_0 + 100.0*ph6_1
       + 100.0*ph6_1)

+ sqr(-200.0*om7_0 + 100.0*om8_0 + 100.0*om6_0 - 200.0*om7_0
       + 100.0*om7_1 + 100.0*om7_1 +
       1.5308084989341916e-13*ph8_0 -
       1.5308084989341916e-13*ph6_0 - 2500.0*ph7_1 +
       2500.0*ph7_1)

+ sqr(- 200.0*ps7_0 + 100.0*ps8_0 + 100.0*ps6_0 -
       200.0*ps7_0 + 100.0*ps7_1 + 100.0*ps7_1 + 0.25*om7_0)

+ sqr(-25.0*(ps7_1-ps7_1) * (ph8_0-ph6_0) +
       25.0*(ps8_0-ps6_0) * (ph7_1-ph7_1) - 200.0*ph7_0 +
       100.0*ph8_0 + 100.0*ph6_0 - 200.0*ph7_0 + 100.0*ph7_1
       + 100.0*ph7_1)

+ sqr(-200.0*om8_0 + 100.0*om9_0 + 100.0*om7_0 - 200.0*om8_0
       + 100.0*om8_1 + 100.0*om8_1 +
       1.5308084989341916e-13*ph9_0 -
       1.5308084989341916e-13*ph7_0 - 2500.0*ph8_1 +
       2500.0*ph8_1)

+ sqr(- 200.0*ps8_0 + 100.0*ps9_0 + 100.0*ps7_0 -
       200.0*ps8_0 + 100.0*ps8_1 + 100.0*ps8_1 + 0.25*om8_0)

+ sqr(-25.0*(ps8_1-ps8_1) * (ph9_0-ph7_0) +
       25.0*(ps9_0-ps7_0) * (ph8_1-ph8_1) - 200.0*ph8_0 +
       100.0*ph9_0 + 100.0*ph7_0 - 200.0*ph8_0 + 100.0*ph8_1
       + 100.0*ph8_1)

+ sqr(-200.0*om9_0 + 100.0*om10_0 + 100.0*om8_0 -
       200.0*om9_0 + 100.0*om9_1 + 100.0*om9_1 +
       1.5308084989341916e-13*ph10_0 -
       1.5308084989341916e-13*ph8_0 - 2500.0*ph9_1 +
       2500.0*ph9_1)

+ sqr(- 200.0*ps9_0 + 100.0*ps10_0 + 100.0*ps8_0 -
       200.0*ps9_0 + 100.0*ps9_1 + 100.0*ps9_1 + 0.25*om9_0)

+ sqr(-25.0*(ps9_1-ps9_1) * (ph10_0-ph8_0) + 25.0*(ps10_0-
       ps8_0) * (ph9_1-ph9_1) - 200.0*ph9_0 + 100.0*ph10_0 +
       100.0*ph8_0 - 200.0*ph9_0 + 100.0*ph9_1 +
       100.0*ph9_1)

+ sqr(-200.0*omm9_1 + 100.0*omm8_1 + 100.0*omm10_1 -
       200.0*omm9_1 + 100.0*omm9_2 + 100.0*omm9_0 +
       1.5308084989341916e-13*phm8_1 -
       1.5308084989341916e-13*phm10_1 - 2500.0*phm9_2 +
       2500.0*phm9_0)

+ sqr(-200.0*psm9_1 + 100.0*psm8_1 + 100.0*psm10_1 -
       200.0*psm9_1 + 100.0*psm9_2 + 100.0*psm9_0 +
       0.25*omm9_1)

+ sqr(-25.0*(psm9_2-psm9_0) * (phm8_1-phm10_1) +
       25.0*(psm8_1-psm10_1) * (phm9_2-phm9_0) -
       200.0*phm9_1 + 100.0*phm8_1 + 100.0*phm10_1 -
       200.0*phm9_1 + 100.0*phm9_2 + 100.0*phm9_0)

+ sqr(- 200.0*omm8_1 + 100.0*omm7_1 + 100.0*omm9_1 -
       200.0*omm8_1 + 100.0*omm8_2 + 100.0*omm8_0 +
       1.5308084989341916e-13*phm7_1 -
       1.5308084989341916e-13*phm9_1 - 2500.0*phm8_2 +
       2500.0*phm8_0)

+ sqr(-200.0*psm8_1 + 100.0*psm7_1 + 100.0*psm9_1 -
       200.0*psm8_1 + 100.0*psm8_2 + 100.0*psm8_0 +
       0.25*omm8_1)

+ sqr(-25.0*(psm8_2-psm8_0) * (phm7_1-phm9_1) +
       25.0*(psm7_1-psm9_1) * (phm8_2-phm8_0) - 200.0*phm8_1
       + 100.0*phm7_1 + 100.0*phm9_1 - 200.0*phm8_1 +
       100.0*phm8_2 + 100.0*phm8_0)

+ sqr(-200.0*omm7_1 + 100.0*omm6_1 + 100.0*omm8_1 -
       200.0*omm7_1 + 100.0*omm7_2 + 100.0*omm7_0 +
       1.5308084989341916e-13*phm6_1 - 1.5308084989341916e-13
       *phm8_1 - 2500.0*phm7_2 + 2500.0*phm7_0)

+ sqr(-200.0*psm7_1 + 100.0*psm6_1 + 100.0*psm8_1 -
       200.0*psm7_1 + 100.0*psm7_2 + 100.0*psm7_0 +
       0.25*omm7_1)

+ sqr(-25.0*(psm7_2-psm7_0) * (phm6_1-phm8_1) +
       25.0*(psm6_1-psm8_1) * (phm7_2-phm7_0) - 200.0*phm7_1
       + 100.0*phm6_1 + 100.0*phm8_1 - 200.0*phm7_1 +
       100.0*phm7_2 + 100.0*phm7_0)

+ sqr(-200.0*omm6_1 + 100.0*omm5_1 + 100.0*omm7_1 -
       200.0*omm6_1 + 100.0*omm6_2 + 100.0*omm6_0 +
       1.5308084989341916e-13*phm5_1 -
       1.5308084989341916e-13*phm7_1 - 2500.0*phm6_2 +
       2500.0*phm6_0)

+ sqr(-200.0*psm6_1 + 100.0*psm5_1 + 100.0*psm7_1 -
       200.0*psm6_1 + 100.0*psm6_2 + 100.0*psm6_0 +
       0.25*omm6_1)

+ sqr(-25.0*(psm6_2-psm6_0) * (phm5_1-phm7_1) +
       25.0*(psm5_1-psm7_1) * (phm6_2-phm6_0) - 200.0*phm6_1
       + 100.0*phm5_1 + 100.0*phm7_1 - 200.0*phm6_1 +
       100.0*phm6_2 + 100.0*phm6_0)

+ sqr(- 200.0*omm5_1 + 100.0*omm4_1 + 100.0*omm6_1 -
       200.0*omm5_1 + 100.0*omm5_2 + 100.0*omm5_0 +
       1.5308084989341916e-13*phm4_1 -
       1.5308084989341916e-13*phm6_1 - 2500.0*phm5_2 +
       2500.0*phm5_0)

+ sqr(-200.0*psm5_1 + 100.0*psm4_1 + 100.0*psm6_1 -
       200.0*psm5_1 + 100.0*psm5_2 + 100.0*psm5_0 +
       0.25*omm5_1)

+ sqr(-25.0*(psm5_2-psm5_0) * (phm4_1-phm6_1) +
       25.0*(psm4_1-psm6_1) * (phm5_2-phm5_0) - 200.0*phm5_1
       + 100.0*phm4_1 + 100.0*phm6_1 - 200.0*phm5_1 +
       100.0*phm5_2 + 100.0*phm5_0)

+ sqr(-200.0*omm4_1 + 100.0*omm3_1 + 100.0*omm5_1 -
       200.0*omm4_1 + 100.0*omm4_2 + 100.0*omm4_0 +
       1.5308084989341916e-13*phm3_1 - 1.5308084989341916e-13
       *phm5_1 - 2500.0*phm4_2 + 2500.0*phm4_0)

+ sqr(-200.0*psm4_1 + 100.0*psm3_1 + 100.0*psm5_1 -
       200.0*psm4_1 + 100.0*psm4_2 + 100.0*psm4_0 +
       0.25*omm4_1)

+ sqr(-25.0*(psm4_2-psm4_0) * (phm3_1-phm5_1) +
       25.0*(psm3_1-psm5_1) * (phm4_2-phm4_0) - 200.0*phm4_1
       + 100.0*phm3_1 + 100.0*phm5_1 - 200.0*phm4_1 +
       100.0*phm4_2 + 100.0*phm4_0)

+ sqr(-200.0*omm3_1 + 100.0*omm2_1 + 100.0*omm4_1 -
       200.0*omm3_1 + 100.0*omm3_2 + 100.0*omm3_0 +
       1.5308084989341916e-13*phm2_1 -
       1.5308084989341916e-13*phm4_1 - 2500.0*phm3_2 +
       2500.0*phm3_0)

+ sqr(-200.0*psm3_1 + 100.0*psm2_1 + 100.0*psm4_1 -
       200.0*psm3_1 + 100.0*psm3_2 + 100.0*psm3_0 +
       0.25*omm3_1)

+ sqr(-25.0*(psm3_2-psm3_0) * (phm2_1-phm4_1) +
       25.0*(psm2_1-psm4_1) * (phm3_2-phm3_0) - 200.0*phm3_1
       + 100.0*phm2_1 + 100.0*phm4_1 - 200.0*phm3_1 +
       100.0*phm3_2 + 100.0*phm3_0)

+ sqr(- 200.0*omm2_1 + 100.0*omm1_1 + 100.0*omm3_1 -
       200.0*omm2_1 + 100.0*omm2_2 + 100.0*omm2_0 +
       1.5308084989341916e-13*phm1_1 -
       1.5308084989341916e-13*phm3_1 - 2500.0*phm2_2 +
       2500.0*phm2_0)

+ sqr(-200.0*psm2_1 + 100.0*psm1_1 + 100.0*psm3_1 -
       200.0*psm2_1 + 100.0*psm2_2 + 100.0*psm2_0 +
       0.25*omm2_1)

+ sqr(-25.0*(psm2_2-psm2_0) * (phm1_1-phm3_1) +
       25.0*(psm1_1-psm3_1) * (phm2_2-phm2_0) - 200.0*phm2_1
       + 100.0*phm1_1 + 100.0*phm3_1 - 200.0*phm2_1 +
       100.0*phm2_2 + 100.0*phm2_0)

+ sqr(-200.0*omm1_1 + 100.0*om0_1 + 100.0*omm2_1 -
       200.0*omm1_1 + 100.0*omm1_2 + 100.0*omm1_0 +
       1.5308084989341916e-13*ph0_1 - 1.5308084989341916e-13
       *phm2_1 - 2500.0*phm1_2 + 2500.0*phm1_0)

+ sqr(-200.0*psm1_1 + 100.0*ps0_1 + 100.0*psm2_1 -
       200.0*psm1_1 + 100.0*psm1_2 + 100.0*psm1_0 +
       0.25*omm1_1)

+ sqr(-25.0*(psm1_2-psm1_0) * (ph0_1-phm2_1) +
       25.0*(ps0_1-psm2_1) * (phm1_2- phm1_0) - 200.0*phm1_1
       + 100.0*ph0_1 + 100.0*phm2_1 - 200.0*phm1_1 +
       100.0*phm1_2 + 100.0*phm1_0)

+ sqr(-200.0*om0_1 + 100.0*om1_1 + 100.0*omm1_1 -
       200.0*om0_1 + 100.0*om0_2 + 100.0*om0_0 +
       1.5308084989341916e-13*ph1_1 -
       1.5308084989341916e-13*phm1_1 - 2500.0*ph0_2 +
       2500.0*ph0_0)

+ sqr(- 200.0*ps0_1 + 100.0*ps1_1 + 100.0*psm1_1 -
       200.0*ps0_1 + 100.0*ps0_2 + 100.0*ps0_0 + 0.25*om0_1)

+ sqr(-25.0*(ps0_2-ps0_0) * (ph1_1-phm1_1) + 25.0*(ps1_1-
       psm1_1) * (ph0_2-ph0_0) - 200.0*ph0_1 + 100.0*ph1_1 +
       100.0*phm1_1 - 200.0*ph0_1 + 100.0*ph0_2 +
       100.0*ph0_0)

+ sqr(-200.0*om1_1 + 100.0*om2_1 + 100.0*om0_1 - 200.0*om1_1
       + 100.0*om1_2 + 100.0*om1_0 +
       1.5308084989341916e-13*ph2_1 -
       1.5308084989341916e-13*ph0_1 - 2500.0*ph1_2 +
       2500.0*ph1_0)

+ sqr(- 200.0*ps1_1 + 100.0*ps2_1 + 100.0*ps0_1 -
       200.0*ps1_1 + 100.0*ps1_2 + 100.0*ps1_0 + 0.25*om1_1)

+ sqr(-25.0*(ps1_2-ps1_0) * (ph2_1-ph0_1) +
       25.0*(ps2_1-ps0_1) * (ph1_2-ph1_0) - 200.0*ph1_1 +
       100.0*ph2_1 + 100.0*ph0_1 - 200.0*ph1_1 + 100.0*ph1_2
       + 100.0*ph1_0)

+ sqr(-200.0*om2_1 + 100.0*om3_1 + 100.0*om1_1 - 200.0*om2_1
       + 100.0*om2_2 + 100.0*om2_0 +
       1.5308084989341916e-13*ph3_1 -
       1.5308084989341916e-13*ph1_1 - 2500.0*ph2_2 +
       2500.0*ph2_0)

+ sqr(- 200.0*ps2_1 + 100.0*ps3_1 + 100.0*ps1_1 -
       200.0*ps2_1 + 100.0*ps2_2 + 100.0*ps2_0 + 0.25*om2_1)

+ sqr(-25.0*(ps2_2-ps2_0) * (ph3_1-ph1_1) +
       25.0*(ps3_1-ps1_1) * (ph2_2-ph2_0) - 200.0*ph2_1 +
       100.0*ph3_1 + 100.0*ph1_1 - 200.0*ph2_1 + 100.0*ph2_2
       + 100.0*ph2_0)

+ sqr(-200.0*om3_1 + 100.0*om4_1 + 100.0*om2_1 - 200.0*om3_1
       + 100.0*om3_2 + 100.0*om3_0 +
       1.5308084989341916e-13*ph4_1 -
       1.5308084989341916e-13*ph2_1 - 2500.0*ph3_2 +
       2500.0*ph3_0)

+ sqr(- 200.0*ps3_1 + 100.0*ps4_1 + 100.0*ps2_1 -
       200.0*ps3_1 + 100.0*ps3_2 + 100.0*ps3_0 + 0.25*om3_1)

+ sqr(-25.0*(ps3_2-ps3_0) * (ph4_1-ph2_1) +
       25.0*(ps4_1-ps2_1) * (ph3_2-ph3_0) - 200.0*ph3_1 +
       100.0*ph4_1 + 100.0*ph2_1 - 200.0*ph3_1 + 100.0*ph3_2
       + 100.0*ph3_0)

+ sqr(-200.0*om4_1 + 100.0*om5_1 + 100.0*om3_1 - 200.0*om4_1
       + 100.0*om4_2 + 100.0*om4_0 +
       1.5308084989341916e-13*ph5_1 -
       1.5308084989341916e-13*ph3_1 - 2500.0*ph4_2 +
       2500.0*ph4_0)

+ sqr(- 200.0*ps4_1 + 100.0*ps5_1 + 100.0*ps3_1 -
       200.0*ps4_1 + 100.0*ps4_2 + 100.0*ps4_0 + 0.25*om4_1)

+ sqr(-25.0*(ps4_2-ps4_0) * (ph5_1-ph3_1) +
       25.0*(ps5_1-ps3_1) * (ph4_2-ph4_0) - 200.0*ph4_1 +
       100.0*ph5_1 + 100.0*ph3_1 - 200.0*ph4_1 + 100.0*ph4_2
       + 100.0*ph4_0)

+ sqr(-200.0*om5_1 + 100.0*om6_1 + 100.0*om4_1 - 200.0*om5_1
       + 100.0*om5_2 + 100.0*om5_0 +
       1.5308084989341916e-13*ph6_1 -
       1.5308084989341916e-13*ph4_1 - 2500.0*ph5_2 +
       2500.0*ph5_0)

+ sqr(- 200.0*ps5_1 + 100.0*ps6_1 + 100.0*ps4_1 -
       200.0*ps5_1 + 100.0*ps5_2 + 100.0*ps5_0 + 0.25*om5_1)

+ sqr(-25.0*(ps5_2-ps5_0) * (ph6_1-ph4_1) +
       25.0*(ps6_1-ps4_1) * (ph5_2-ph5_0) - 200.0*ph5_1 +
       100.0*ph6_1 + 100.0*ph4_1 - 200.0*ph5_1 + 100.0*ph5_2
       + 100.0*ph5_0)

+ sqr(-200.0*om6_1 + 100.0*om7_1 + 100.0*om5_1 - 200.0*om6_1
       + 100.0*om6_2 + 100.0*om6_0 +
       1.5308084989341916e-13*ph7_1 -
       1.5308084989341916e-13*ph5_1 - 2500.0*ph6_2 +
       2500.0*ph6_0)

+ sqr(- 200.0*ps6_1 + 100.0*ps7_1 + 100.0*ps5_1 -
       200.0*ps6_1 + 100.0*ps6_2 + 100.0*ps6_0 + 0.25*om6_1)

+ sqr(-25.0*(ps6_2-ps6_0) * (ph7_1-ph5_1) +
       25.0*(ps7_1-ps5_1) * (ph6_2-ph6_0) - 200.0*ph6_1 +
       100.0*ph7_1 + 100.0*ph5_1 - 200.0*ph6_1 + 100.0*ph6_2
       + 100.0*ph6_0)

+ sqr(-200.0*om7_1 + 100.0*om8_1 + 100.0*om6_1 - 200.0*om7_1
       + 100.0*om7_2 + 100.0*om7_0 +
       1.5308084989341916e-13*ph8_1 -
       1.5308084989341916e-13*ph6_1 - 2500.0*ph7_2 +
       2500.0*ph7_0)

+ sqr(- 200.0*ps7_1 + 100.0*ps8_1 + 100.0*ps6_1 -
       200.0*ps7_1 + 100.0*ps7_2 + 100.0*ps7_0 + 0.25*om7_1)

+ sqr(-25.0*(ps7_2-ps7_0) * (ph8_1-ph6_1) +
       25.0*(ps8_1-ps6_1) * (ph7_2-ph7_0) - 200.0*ph7_1 +
       100.0*ph8_1 + 100.0*ph6_1 - 200.0*ph7_1 + 100.0*ph7_2
       + 100.0*ph7_0)

+ sqr(-200.0*om8_1 + 100.0*om9_1 + 100.0*om7_1 - 200.0*om8_1
       + 100.0*om8_2 + 100.0*om8_0 +
       1.5308084989341916e-13*ph9_1 -
       1.5308084989341916e-13*ph7_1 - 2500.0*ph8_2 +
       2500.0*ph8_0)

+ sqr(- 200.0*ps8_1 + 100.0*ps9_1 + 100.0*ps7_1 -
       200.0*ps8_1 + 100.0*ps8_2 + 100.0*ps8_0 + 0.25*om8_1)

+ sqr(-25.0*(ps8_2-ps8_0) * (ph9_1-ph7_1) +
       25.0*(ps9_1-ps7_1) * (ph8_2-ph8_0) - 200.0*ph8_1 +
       100.0*ph9_1 + 100.0*ph7_1 - 200.0*ph8_1 + 100.0*ph8_2
       + 100.0*ph8_0)

+ sqr(-200.0*om9_1 + 100.0*om10_1 + 100.0*om8_1 -
       200.0*om9_1 + 100.0*om9_2 + 100.0*om9_0 +
       1.5308084989341916e-13*ph10_1 -
       1.5308084989341916e-13*ph8_1 - 2500.0*ph9_2 +
       2500.0*ph9_0)

+ sqr(- 200.0*ps9_1 + 100.0*ps10_1 + 100.0*ps8_1 -
       200.0*ps9_1 + 100.0*ps9_2 + 100.0*ps9_0 + 0.25*om9_1)

+ sqr(-25.0*(ps9_2-ps9_0) * (ph10_1-ph8_1) + 25.0*(ps10_1-
       ps8_1) * (ph9_2-ph9_0) - 200.0*ph9_1 + 100.0*ph10_1 +
       100.0*ph8_1 - 200.0*ph9_1 + 100.0*ph9_2 +
       100.0*ph9_0)

+ sqr(-200.0*omm9_2 + 100.0*omm8_2 + 100.0*omm10_2 -
       200.0*omm9_2 + 100.0*omm9_3 + 100.0*omm9_1 +
       1.5308084989341916e-13*phm8_2 -
       1.5308084989341916e-13*phm10_2 - 2500.0*phm9_3 +
       2500.0*phm9_1)

+ sqr(-200.0*psm9_2 + 100.0*psm8_2 + 100.0*psm10_2 -
       200.0*psm9_2 + 100.0*psm9_3 + 100.0*psm9_1 +
       0.25*omm9_2)

+ sqr(-25.0*(psm9_3-psm9_1) * (phm8_2-phm10_2) +
       25.0*(psm8_2-psm10_2) * (phm9_3-phm9_1) -
       200.0*phm9_2 + 100.0*phm8_2 + 100.0*phm10_2 -
       200.0*phm9_2 + 100.0*phm9_3 + 100.0*phm9_1)

+ sqr(- 200.0*omm8_2 + 100.0*omm7_2 + 100.0*omm9_2 -
       200.0*omm8_2 + 100.0*omm8_3 + 100.0*omm8_1 +
       1.5308084989341916e-13*phm7_2 -
       1.5308084989341916e-13*phm9_2 - 2500.0*phm8_3 +
       2500.0*phm8_1)

+ sqr(-200.0*psm8_2 + 100.0*psm7_2 + 100.0*psm9_2 -
       200.0*psm8_2 + 100.0*psm8_3 + 100.0*psm8_1 +
       0.25*omm8_2)

+ sqr(-25.0*(psm8_3-psm8_1) * (phm7_2-phm9_2) +
       25.0*(psm7_2-psm9_2) * (phm8_3-phm8_1) - 200.0*phm8_2
       + 100.0*phm7_2 + 100.0*phm9_2 - 200.0*phm8_2 +
       100.0*phm8_3 + 100.0*phm8_1)

+ sqr(-200.0*omm7_2 + 100.0*omm6_2 + 100.0*omm8_2 -
       200.0*omm7_2 + 100.0*omm7_3 + 100.0*omm7_1 +
       1.5308084989341916e-13*phm6_2 - 1.5308084989341916e-13
       *phm8_2 - 2500.0*phm7_3 + 2500.0*phm7_1)

+ sqr(-200.0*psm7_2 + 100.0*psm6_2 + 100.0*psm8_2 -
       200.0*psm7_2 + 100.0*psm7_3 + 100.0*psm7_1 +
       0.25*omm7_2)

+ sqr(-25.0*(psm7_3-psm7_1) * (phm6_2-phm8_2) +
       25.0*(psm6_2-psm8_2) * (phm7_3-phm7_1) - 200.0*phm7_2
       + 100.0*phm6_2 + 100.0*phm8_2 - 200.0*phm7_2 +
       100.0*phm7_3 + 100.0*phm7_1)

+ sqr(-200.0*omm6_2 + 100.0*omm5_2 + 100.0*omm7_2 -
       200.0*omm6_2 + 100.0*omm6_3 + 100.0*omm6_1 +
       1.5308084989341916e-13*phm5_2 -
       1.5308084989341916e-13*phm7_2 - 2500.0*phm6_3 +
       2500.0*phm6_1)

+ sqr(-200.0*psm6_2 + 100.0*psm5_2 + 100.0*psm7_2 -
       200.0*psm6_2 + 100.0*psm6_3 + 100.0*psm6_1 +
       0.25*omm6_2)

+ sqr(-25.0*(psm6_3-psm6_1) * (phm5_2-phm7_2) +
       25.0*(psm5_2-psm7_2) * (phm6_3-phm6_1) - 200.0*phm6_2
       + 100.0*phm5_2 + 100.0*phm7_2 - 200.0*phm6_2 +
       100.0*phm6_3 + 100.0*phm6_1)

+ sqr(- 200.0*omm5_2 + 100.0*omm4_2 + 100.0*omm6_2 -
       200.0*omm5_2 + 100.0*omm5_3 + 100.0*omm5_1 +
       1.5308084989341916e-13*phm4_2 -
       1.5308084989341916e-13*phm6_2 - 2500.0*phm5_3 +
       2500.0*phm5_1)

+ sqr(-200.0*psm5_2 + 100.0*psm4_2 + 100.0*psm6_2 -
       200.0*psm5_2 + 100.0*psm5_3 + 100.0*psm5_1 +
       0.25*omm5_2)

+ sqr(-25.0*(psm5_3-psm5_1) * (phm4_2-phm6_2) +
       25.0*(psm4_2-psm6_2) * (phm5_3-phm5_1) - 200.0*phm5_2
       + 100.0*phm4_2 + 100.0*phm6_2 - 200.0*phm5_2 +
       100.0*phm5_3 + 100.0*phm5_1)

+ sqr(-200.0*omm4_2 + 100.0*omm3_2 + 100.0*omm5_2 -
       200.0*omm4_2 + 100.0*omm4_3 + 100.0*omm4_1 +
       1.5308084989341916e-13*phm3_2 - 1.5308084989341916e-13
       *phm5_2 - 2500.0*phm4_3 + 2500.0*phm4_1)

+ sqr(-200.0*psm4_2 + 100.0*psm3_2 + 100.0*psm5_2 -
       200.0*psm4_2 + 100.0*psm4_3 + 100.0*psm4_1 +
       0.25*omm4_2)

+ sqr(-25.0*(psm4_3-psm4_1) * (phm3_2-phm5_2) +
       25.0*(psm3_2-psm5_2) * (phm4_3-phm4_1) - 200.0*phm4_2
       + 100.0*phm3_2 + 100.0*phm5_2 - 200.0*phm4_2 +
       100.0*phm4_3 + 100.0*phm4_1)

+ sqr(-200.0*omm3_2 + 100.0*omm2_2 + 100.0*omm4_2 -
       200.0*omm3_2 + 100.0*omm3_3 + 100.0*omm3_1 +
       1.5308084989341916e-13*phm2_2 -
       1.5308084989341916e-13*phm4_2 - 2500.0*phm3_3 +
       2500.0*phm3_1)

+ sqr(-200.0*psm3_2 + 100.0*psm2_2 + 100.0*psm4_2 -
       200.0*psm3_2 + 100.0*psm3_3 + 100.0*psm3_1 +
       0.25*omm3_2)

+ sqr(-25.0*(psm3_3-psm3_1) * (phm2_2-phm4_2) +
       25.0*(psm2_2-psm4_2) * (phm3_3-phm3_1) - 200.0*phm3_2
       + 100.0*phm2_2 + 100.0*phm4_2 - 200.0*phm3_2 +
       100.0*phm3_3 + 100.0*phm3_1)

+ sqr(- 200.0*omm2_2 + 100.0*omm1_2 + 100.0*omm3_2 -
       200.0*omm2_2 + 100.0*omm2_3 + 100.0*omm2_1 +
       1.5308084989341916e-13*phm1_2 -
       1.5308084989341916e-13*phm3_2 - 2500.0*phm2_3 +
       2500.0*phm2_1)

+ sqr(-200.0*psm2_2 + 100.0*psm1_2 + 100.0*psm3_2 -
       200.0*psm2_2 + 100.0*psm2_3 + 100.0*psm2_1 +
       0.25*omm2_2)

+ sqr(-25.0*(psm2_3-psm2_1) * (phm1_2-phm3_2) +
       25.0*(psm1_2-psm3_2) * (phm2_3-phm2_1) - 200.0*phm2_2
       + 100.0*phm1_2 + 100.0*phm3_2 - 200.0*phm2_2 +
       100.0*phm2_3 + 100.0*phm2_1)

+ sqr(-200.0*omm1_2 + 100.0*om0_2 + 100.0*omm2_2 -
       200.0*omm1_2 + 100.0*omm1_3 + 100.0*omm1_1 +
       1.5308084989341916e-13*ph0_2 - 1.5308084989341916e-13
       *phm2_2 - 2500.0*phm1_3 + 2500.0*phm1_1)

+ sqr(-200.0*psm1_2 + 100.0*ps0_2 + 100.0*psm2_2 -
       200.0*psm1_2 + 100.0*psm1_3 + 100.0*psm1_1 +
       0.25*omm1_2)

+ sqr(-25.0*(psm1_3-psm1_1) * (ph0_2-phm2_2) +
       25.0*(ps0_2-psm2_2) * (phm1_3- phm1_1) - 200.0*phm1_2
       + 100.0*ph0_2 + 100.0*phm2_2 - 200.0*phm1_2 +
       100.0*phm1_3 + 100.0*phm1_1)

+ sqr(-200.0*om0_2 + 100.0*om1_2 + 100.0*omm1_2 -
       200.0*om0_2 + 100.0*om0_3 + 100.0*om0_1 +
       1.5308084989341916e-13*ph1_2 -
       1.5308084989341916e-13*phm1_2 - 2500.0*ph0_3 +
       2500.0*ph0_1)

+ sqr(- 200.0*ps0_2 + 100.0*ps1_2 + 100.0*psm1_2 -
       200.0*ps0_2 + 100.0*ps0_3 + 100.0*ps0_1 + 0.25*om0_2)

+ sqr(-25.0*(ps0_3-ps0_1) * (ph1_2-phm1_2) + 25.0*(ps1_2-
       psm1_2) * (ph0_3-ph0_1) - 200.0*ph0_2 + 100.0*ph1_2 +
       100.0*phm1_2 - 200.0*ph0_2 + 100.0*ph0_3 +
       100.0*ph0_1)

+ sqr(-200.0*om1_2 + 100.0*om2_2 + 100.0*om0_2 - 200.0*om1_2
       + 100.0*om1_3 + 100.0*om1_1 +
       1.5308084989341916e-13*ph2_2 -
       1.5308084989341916e-13*ph0_2 - 2500.0*ph1_3 +
       2500.0*ph1_1)

+ sqr(- 200.0*ps1_2 + 100.0*ps2_2 + 100.0*ps0_2 -
       200.0*ps1_2 + 100.0*ps1_3 + 100.0*ps1_1 + 0.25*om1_2)

+ sqr(-25.0*(ps1_3-ps1_1) * (ph2_2-ph0_2) +
       25.0*(ps2_2-ps0_2) * (ph1_3-ph1_1) - 200.0*ph1_2 +
       100.0*ph2_2 + 100.0*ph0_2 - 200.0*ph1_2 + 100.0*ph1_3
       + 100.0*ph1_1)

+ sqr(-200.0*om2_2 + 100.0*om3_2 + 100.0*om1_2 - 200.0*om2_2
       + 100.0*om2_3 + 100.0*om2_1 +
       1.5308084989341916e-13*ph3_2 -
       1.5308084989341916e-13*ph1_2 - 2500.0*ph2_3 +
       2500.0*ph2_1)

+ sqr(- 200.0*ps2_2 + 100.0*ps3_2 + 100.0*ps1_2 -
       200.0*ps2_2 + 100.0*ps2_3 + 100.0*ps2_1 + 0.25*om2_2)

+ sqr(-25.0*(ps2_3-ps2_1) * (ph3_2-ph1_2) +
       25.0*(ps3_2-ps1_2) * (ph2_3-ph2_1) - 200.0*ph2_2 +
       100.0*ph3_2 + 100.0*ph1_2 - 200.0*ph2_2 + 100.0*ph2_3
       + 100.0*ph2_1)

+ sqr(-200.0*om3_2 + 100.0*om4_2 + 100.0*om2_2 - 200.0*om3_2
       + 100.0*om3_3 + 100.0*om3_1 +
       1.5308084989341916e-13*ph4_2 -
       1.5308084989341916e-13*ph2_2 - 2500.0*ph3_3 +
       2500.0*ph3_1)

+ sqr(- 200.0*ps3_2 + 100.0*ps4_2 + 100.0*ps2_2 -
       200.0*ps3_2 + 100.0*ps3_3 + 100.0*ps3_1 + 0.25*om3_2)

+ sqr(-25.0*(ps3_3-ps3_1) * (ph4_2-ph2_2) +
       25.0*(ps4_2-ps2_2) * (ph3_3-ph3_1) - 200.0*ph3_2 +
       100.0*ph4_2 + 100.0*ph2_2 - 200.0*ph3_2 + 100.0*ph3_3
       + 100.0*ph3_1)

+ sqr(-200.0*om4_2 + 100.0*om5_2 + 100.0*om3_2 - 200.0*om4_2
       + 100.0*om4_3 + 100.0*om4_1 +
       1.5308084989341916e-13*ph5_2 -
       1.5308084989341916e-13*ph3_2 - 2500.0*ph4_3 +
       2500.0*ph4_1)

+ sqr(- 200.0*ps4_2 + 100.0*ps5_2 + 100.0*ps3_2 -
       200.0*ps4_2 + 100.0*ps4_3 + 100.0*ps4_1 + 0.25*om4_2)

+ sqr(-25.0*(ps4_3-ps4_1) * (ph5_2-ph3_2) +
       25.0*(ps5_2-ps3_2) * (ph4_3-ph4_1) - 200.0*ph4_2 +
       100.0*ph5_2 + 100.0*ph3_2 - 200.0*ph4_2 + 100.0*ph4_3
       + 100.0*ph4_1)

+ sqr(-200.0*om5_2 + 100.0*om6_2 + 100.0*om4_2 - 200.0*om5_2
       + 100.0*om5_3 + 100.0*om5_1 +
       1.5308084989341916e-13*ph6_2 -
       1.5308084989341916e-13*ph4_2 - 2500.0*ph5_3 +
       2500.0*ph5_1)

+ sqr(- 200.0*ps5_2 + 100.0*ps6_2 + 100.0*ps4_2 -
       200.0*ps5_2 + 100.0*ps5_3 + 100.0*ps5_1 + 0.25*om5_2)

+ sqr(-25.0*(ps5_3-ps5_1) * (ph6_2-ph4_2) +
       25.0*(ps6_2-ps4_2) * (ph5_3-ph5_1) - 200.0*ph5_2 +
       100.0*ph6_2 + 100.0*ph4_2 - 200.0*ph5_2 + 100.0*ph5_3
       + 100.0*ph5_1)

+ sqr(-200.0*om6_2 + 100.0*om7_2 + 100.0*om5_2 - 200.0*om6_2
       + 100.0*om6_3 + 100.0*om6_1 +
       1.5308084989341916e-13*ph7_2 -
       1.5308084989341916e-13*ph5_2 - 2500.0*ph6_3 +
       2500.0*ph6_1)

+ sqr(- 200.0*ps6_2 + 100.0*ps7_2 + 100.0*ps5_2 -
       200.0*ps6_2 + 100.0*ps6_3 + 100.0*ps6_1 + 0.25*om6_2)

+ sqr(-25.0*(ps6_3-ps6_1) * (ph7_2-ph5_2) +
       25.0*(ps7_2-ps5_2) * (ph6_3-ph6_1) - 200.0*ph6_2 +
       100.0*ph7_2 + 100.0*ph5_2 - 200.0*ph6_2 + 100.0*ph6_3
       + 100.0*ph6_1)

+ sqr(-200.0*om7_2 + 100.0*om8_2 + 100.0*om6_2 - 200.0*om7_2
       + 100.0*om7_3 + 100.0*om7_1 +
       1.5308084989341916e-13*ph8_2 -
       1.5308084989341916e-13*ph6_2 - 2500.0*ph7_3 +
       2500.0*ph7_1)

+ sqr(- 200.0*ps7_2 + 100.0*ps8_2 + 100.0*ps6_2 -
       200.0*ps7_2 + 100.0*ps7_3 + 100.0*ps7_1 + 0.25*om7_2)

+ sqr(-25.0*(ps7_3-ps7_1) * (ph8_2-ph6_2) +
       25.0*(ps8_2-ps6_2) * (ph7_3-ph7_1) - 200.0*ph7_2 +
       100.0*ph8_2 + 100.0*ph6_2 - 200.0*ph7_2 + 100.0*ph7_3
       + 100.0*ph7_1)

+ sqr(-200.0*om8_2 + 100.0*om9_2 + 100.0*om7_2 - 200.0*om8_2
       + 100.0*om8_3 + 100.0*om8_1 +
       1.5308084989341916e-13*ph9_2 -
       1.5308084989341916e-13*ph7_2 - 2500.0*ph8_3 +
       2500.0*ph8_1)

+ sqr(- 200.0*ps8_2 + 100.0*ps9_2 + 100.0*ps7_2 -
       200.0*ps8_2 + 100.0*ps8_3 + 100.0*ps8_1 + 0.25*om8_2)

+ sqr(-25.0*(ps8_3-ps8_1) * (ph9_2-ph7_2) +
       25.0*(ps9_2-ps7_2) * (ph8_3-ph8_1) - 200.0*ph8_2 +
       100.0*ph9_2 + 100.0*ph7_2 - 200.0*ph8_2 + 100.0*ph8_3
       + 100.0*ph8_1)

+ sqr(-200.0*om9_2 + 100.0*om10_2 + 100.0*om8_2 -
       200.0*om9_2 + 100.0*om9_3 + 100.0*om9_1 +
       1.5308084989341916e-13*ph10_2 -
       1.5308084989341916e-13*ph8_2 - 2500.0*ph9_3 +
       2500.0*ph9_1)

+ sqr(- 200.0*ps9_2 + 100.0*ps10_2 + 100.0*ps8_2 -
       200.0*ps9_2 + 100.0*ps9_3 + 100.0*ps9_1 + 0.25*om9_2)

+ sqr(-25.0*(ps9_3-ps9_1) * (ph10_2-ph8_2) + 25.0*(ps10_2-
       ps8_2) * (ph9_3-ph9_1) - 200.0*ph9_2 + 100.0*ph10_2 +
       100.0*ph8_2 - 200.0*ph9_2 + 100.0*ph9_3 +
       100.0*ph9_1)

+ sqr(-200.0*omm9_3 + 100.0*omm8_3 + 100.0*omm10_3 -
       200.0*omm9_3 + 100.0*omm9_4 + 100.0*omm9_2 +
       1.5308084989341916e-13*phm8_3 -
       1.5308084989341916e-13*phm10_3 - 2500.0*phm9_4 +
       2500.0*phm9_2)

+ sqr(-200.0*psm9_3 + 100.0*psm8_3 + 100.0*psm10_3 -
       200.0*psm9_3 + 100.0*psm9_4 + 100.0*psm9_2 +
       0.25*omm9_3)

+ sqr(-25.0*(psm9_4-psm9_2) * (phm8_3-phm10_3) +
       25.0*(psm8_3-psm10_3) * (phm9_4-phm9_2) -
       200.0*phm9_3 + 100.0*phm8_3 + 100.0*phm10_3 -
       200.0*phm9_3 + 100.0*phm9_4 + 100.0*phm9_2)

+ sqr(- 200.0*omm8_3 + 100.0*omm7_3 + 100.0*omm9_3 -
       200.0*omm8_3 + 100.0*omm8_4 + 100.0*omm8_2 +
       1.5308084989341916e-13*phm7_3 -
       1.5308084989341916e-13*phm9_3 - 2500.0*phm8_4 +
       2500.0*phm8_2)

+ sqr(-200.0*psm8_3 + 100.0*psm7_3 + 100.0*psm9_3 -
       200.0*psm8_3 + 100.0*psm8_4 + 100.0*psm8_2 +
       0.25*omm8_3)

+ sqr(-25.0*(psm8_4-psm8_2) * (phm7_3-phm9_3) +
       25.0*(psm7_3-psm9_3) * (phm8_4-phm8_2) - 200.0*phm8_3
       + 100.0*phm7_3 + 100.0*phm9_3 - 200.0*phm8_3 +
       100.0*phm8_4 + 100.0*phm8_2)

+ sqr(-200.0*omm7_3 + 100.0*omm6_3 + 100.0*omm8_3 -
       200.0*omm7_3 + 100.0*omm7_4 + 100.0*omm7_2 +
       1.5308084989341916e-13*phm6_3 - 1.5308084989341916e-13
       *phm8_3 - 2500.0*phm7_4 + 2500.0*phm7_2)

+ sqr(-200.0*psm7_3 + 100.0*psm6_3 + 100.0*psm8_3 -
       200.0*psm7_3 + 100.0*psm7_4 + 100.0*psm7_2 +
       0.25*omm7_3)

+ sqr(-25.0*(psm7_4-psm7_2) * (phm6_3-phm8_3) +
       25.0*(psm6_3-psm8_3) * (phm7_4-phm7_2) - 200.0*phm7_3
       + 100.0*phm6_3 + 100.0*phm8_3 - 200.0*phm7_3 +
       100.0*phm7_4 + 100.0*phm7_2)

+ sqr(-200.0*omm6_3 + 100.0*omm5_3 + 100.0*omm7_3 -
       200.0*omm6_3 + 100.0*omm6_4 + 100.0*omm6_2 +
       1.5308084989341916e-13*phm5_3 -
       1.5308084989341916e-13*phm7_3 - 2500.0*phm6_4 +
       2500.0*phm6_2)

+ sqr(-200.0*psm6_3 + 100.0*psm5_3 + 100.0*psm7_3 -
       200.0*psm6_3 + 100.0*psm6_4 + 100.0*psm6_2 +
       0.25*omm6_3)

+ sqr(-25.0*(psm6_4-psm6_2) * (phm5_3-phm7_3) +
       25.0*(psm5_3-psm7_3) * (phm6_4-phm6_2) - 200.0*phm6_3
       + 100.0*phm5_3 + 100.0*phm7_3 - 200.0*phm6_3 +
       100.0*phm6_4 + 100.0*phm6_2)

+ sqr(- 200.0*omm5_3 + 100.0*omm4_3 + 100.0*omm6_3 -
       200.0*omm5_3 + 100.0*omm5_4 + 100.0*omm5_2 +
       1.5308084989341916e-13*phm4_3 -
       1.5308084989341916e-13*phm6_3 - 2500.0*phm5_4 +
       2500.0*phm5_2)

+ sqr(-200.0*psm5_3 + 100.0*psm4_3 + 100.0*psm6_3 -
       200.0*psm5_3 + 100.0*psm5_4 + 100.0*psm5_2 +
       0.25*omm5_3)

+ sqr(-25.0*(psm5_4-psm5_2) * (phm4_3-phm6_3) +
       25.0*(psm4_3-psm6_3) * (phm5_4-phm5_2) - 200.0*phm5_3
       + 100.0*phm4_3 + 100.0*phm6_3 - 200.0*phm5_3 +
       100.0*phm5_4 + 100.0*phm5_2)

+ sqr(-200.0*omm4_3 + 100.0*omm3_3 + 100.0*omm5_3 -
       200.0*omm4_3 + 100.0*omm4_4 + 100.0*omm4_2 +
       1.5308084989341916e-13*phm3_3 - 1.5308084989341916e-13
       *phm5_3 - 2500.0*phm4_4 + 2500.0*phm4_2)

+ sqr(-200.0*psm4_3 + 100.0*psm3_3 + 100.0*psm5_3 -
       200.0*psm4_3 + 100.0*psm4_4 + 100.0*psm4_2 +
       0.25*omm4_3)

+ sqr(-25.0*(psm4_4-psm4_2) * (phm3_3-phm5_3) +
       25.0*(psm3_3-psm5_3) * (phm4_4-phm4_2) - 200.0*phm4_3
       + 100.0*phm3_3 + 100.0*phm5_3 - 200.0*phm4_3 +
       100.0*phm4_4 + 100.0*phm4_2)

+ sqr(-200.0*omm3_3 + 100.0*omm2_3 + 100.0*omm4_3 -
       200.0*omm3_3 + 100.0*omm3_4 + 100.0*omm3_2 +
       1.5308084989341916e-13*phm2_3 -
       1.5308084989341916e-13*phm4_3 - 2500.0*phm3_4 +
       2500.0*phm3_2)

+ sqr(-200.0*psm3_3 + 100.0*psm2_3 + 100.0*psm4_3 -
       200.0*psm3_3 + 100.0*psm3_4 + 100.0*psm3_2 +
       0.25*omm3_3)

+ sqr(-25.0*(psm3_4-psm3_2) * (phm2_3-phm4_3) +
       25.0*(psm2_3-psm4_3) * (phm3_4-phm3_2) - 200.0*phm3_3
       + 100.0*phm2_3 + 100.0*phm4_3 - 200.0*phm3_3 +
       100.0*phm3_4 + 100.0*phm3_2)

+ sqr(- 200.0*omm2_3 + 100.0*omm1_3 + 100.0*omm3_3 -
       200.0*omm2_3 + 100.0*omm2_4 + 100.0*omm2_2 +
       1.5308084989341916e-13*phm1_3 -
       1.5308084989341916e-13*phm3_3 - 2500.0*phm2_4 +
       2500.0*phm2_2)

+ sqr(-200.0*psm2_3 + 100.0*psm1_3 + 100.0*psm3_3 -
       200.0*psm2_3 + 100.0*psm2_4 + 100.0*psm2_2 +
       0.25*omm2_3)

+ sqr(-25.0*(psm2_4-psm2_2) * (phm1_3-phm3_3) +
       25.0*(psm1_3-psm3_3) * (phm2_4-phm2_2) - 200.0*phm2_3
       + 100.0*phm1_3 + 100.0*phm3_3 - 200.0*phm2_3 +
       100.0*phm2_4 + 100.0*phm2_2)

+ sqr(-200.0*omm1_3 + 100.0*om0_3 + 100.0*omm2_3 -
       200.0*omm1_3 + 100.0*omm1_4 + 100.0*omm1_2 +
       1.5308084989341916e-13*ph0_3 - 1.5308084989341916e-13
       *phm2_3 - 2500.0*phm1_4 + 2500.0*phm1_2)

+ sqr(-200.0*psm1_3 + 100.0*ps0_3 + 100.0*psm2_3 -
       200.0*psm1_3 + 100.0*psm1_4 + 100.0*psm1_2 +
       0.25*omm1_3)

+ sqr(-25.0*(psm1_4-psm1_2) * (ph0_3-phm2_3) +
       25.0*(ps0_3-psm2_3) * (phm1_4- phm1_2) - 200.0*phm1_3
       + 100.0*ph0_3 + 100.0*phm2_3 - 200.0*phm1_3 +
       100.0*phm1_4 + 100.0*phm1_2)

+ sqr(-200.0*om0_3 + 100.0*om1_3 + 100.0*omm1_3 -
       200.0*om0_3 + 100.0*om0_4 + 100.0*om0_2 +
       1.5308084989341916e-13*ph1_3 -
       1.5308084989341916e-13*phm1_3 - 2500.0*ph0_4 +
       2500.0*ph0_2)

+ sqr(- 200.0*ps0_3 + 100.0*ps1_3 + 100.0*psm1_3 -
       200.0*ps0_3 + 100.0*ps0_4 + 100.0*ps0_2 + 0.25*om0_3)

+ sqr(-25.0*(ps0_4-ps0_2) * (ph1_3-phm1_3) + 25.0*(ps1_3-
       psm1_3) * (ph0_4-ph0_2) - 200.0*ph0_3 + 100.0*ph1_3 +
       100.0*phm1_3 - 200.0*ph0_3 + 100.0*ph0_4 +
       100.0*ph0_2)

+ sqr(-200.0*om1_3 + 100.0*om2_3 + 100.0*om0_3 - 200.0*om1_3
       + 100.0*om1_4 + 100.0*om1_2 +
       1.5308084989341916e-13*ph2_3 -
       1.5308084989341916e-13*ph0_3 - 2500.0*ph1_4 +
       2500.0*ph1_2)

+ sqr(- 200.0*ps1_3 + 100.0*ps2_3 + 100.0*ps0_3 -
       200.0*ps1_3 + 100.0*ps1_4 + 100.0*ps1_2 + 0.25*om1_3)

+ sqr(-25.0*(ps1_4-ps1_2) * (ph2_3-ph0_3) +
       25.0*(ps2_3-ps0_3) * (ph1_4-ph1_2) - 200.0*ph1_3 +
       100.0*ph2_3 + 100.0*ph0_3 - 200.0*ph1_3 + 100.0*ph1_4
       + 100.0*ph1_2)

+ sqr(-200.0*om2_3 + 100.0*om3_3 + 100.0*om1_3 - 200.0*om2_3
       + 100.0*om2_4 + 100.0*om2_2 +
       1.5308084989341916e-13*ph3_3 -
       1.5308084989341916e-13*ph1_3 - 2500.0*ph2_4 +
       2500.0*ph2_2)

+ sqr(- 200.0*ps2_3 + 100.0*ps3_3 + 100.0*ps1_3 -
       200.0*ps2_3 + 100.0*ps2_4 + 100.0*ps2_2 + 0.25*om2_3)

+ sqr(-25.0*(ps2_4-ps2_2) * (ph3_3-ph1_3) +
       25.0*(ps3_3-ps1_3) * (ph2_4-ph2_2) - 200.0*ph2_3 +
       100.0*ph3_3 + 100.0*ph1_3 - 200.0*ph2_3 + 100.0*ph2_4
       + 100.0*ph2_2)

+ sqr(-200.0*om3_3 + 100.0*om4_3 + 100.0*om2_3 - 200.0*om3_3
       + 100.0*om3_4 + 100.0*om3_2 +
       1.5308084989341916e-13*ph4_3 -
       1.5308084989341916e-13*ph2_3 - 2500.0*ph3_4 +
       2500.0*ph3_2)

+ sqr(- 200.0*ps3_3 + 100.0*ps4_3 + 100.0*ps2_3 -
       200.0*ps3_3 + 100.0*ps3_4 + 100.0*ps3_2 + 0.25*om3_3)

+ sqr(-25.0*(ps3_4-ps3_2) * (ph4_3-ph2_3) +
       25.0*(ps4_3-ps2_3) * (ph3_4-ph3_2) - 200.0*ph3_3 +
       100.0*ph4_3 + 100.0*ph2_3 - 200.0*ph3_3 + 100.0*ph3_4
       + 100.0*ph3_2)

+ sqr(-200.0*om4_3 + 100.0*om5_3 + 100.0*om3_3 - 200.0*om4_3
       + 100.0*om4_4 + 100.0*om4_2 +
       1.5308084989341916e-13*ph5_3 -
       1.5308084989341916e-13*ph3_3 - 2500.0*ph4_4 +
       2500.0*ph4_2)

+ sqr(- 200.0*ps4_3 + 100.0*ps5_3 + 100.0*ps3_3 -
       200.0*ps4_3 + 100.0*ps4_4 + 100.0*ps4_2 + 0.25*om4_3)

+ sqr(-25.0*(ps4_4-ps4_2) * (ph5_3-ph3_3) +
       25.0*(ps5_3-ps3_3) * (ph4_4-ph4_2) - 200.0*ph4_3 +
       100.0*ph5_3 + 100.0*ph3_3 - 200.0*ph4_3 + 100.0*ph4_4
       + 100.0*ph4_2)

+ sqr(-200.0*om5_3 + 100.0*om6_3 + 100.0*om4_3 - 200.0*om5_3
       + 100.0*om5_4 + 100.0*om5_2 +
       1.5308084989341916e-13*ph6_3 -
       1.5308084989341916e-13*ph4_3 - 2500.0*ph5_4 +
       2500.0*ph5_2)

+ sqr(- 200.0*ps5_3 + 100.0*ps6_3 + 100.0*ps4_3 -
       200.0*ps5_3 + 100.0*ps5_4 + 100.0*ps5_2 + 0.25*om5_3)

+ sqr(-25.0*(ps5_4-ps5_2) * (ph6_3-ph4_3) +
       25.0*(ps6_3-ps4_3) * (ph5_4-ph5_2) - 200.0*ph5_3 +
       100.0*ph6_3 + 100.0*ph4_3 - 200.0*ph5_3 + 100.0*ph5_4
       + 100.0*ph5_2)

+ sqr(-200.0*om6_3 + 100.0*om7_3 + 100.0*om5_3 - 200.0*om6_3
       + 100.0*om6_4 + 100.0*om6_2 +
       1.5308084989341916e-13*ph7_3 -
       1.5308084989341916e-13*ph5_3 - 2500.0*ph6_4 +
       2500.0*ph6_2)

+ sqr(- 200.0*ps6_3 + 100.0*ps7_3 + 100.0*ps5_3 -
       200.0*ps6_3 + 100.0*ps6_4 + 100.0*ps6_2 + 0.25*om6_3)

+ sqr(-25.0*(ps6_4-ps6_2) * (ph7_3-ph5_3) +
       25.0*(ps7_3-ps5_3) * (ph6_4-ph6_2) - 200.0*ph6_3 +
       100.0*ph7_3 + 100.0*ph5_3 - 200.0*ph6_3 + 100.0*ph6_4
       + 100.0*ph6_2)

+ sqr(-200.0*om7_3 + 100.0*om8_3 + 100.0*om6_3 - 200.0*om7_3
       + 100.0*om7_4 + 100.0*om7_2 +
       1.5308084989341916e-13*ph8_3 -
       1.5308084989341916e-13*ph6_3 - 2500.0*ph7_4 +
       2500.0*ph7_2)

+ sqr(- 200.0*ps7_3 + 100.0*ps8_3 + 100.0*ps6_3 -
       200.0*ps7_3 + 100.0*ps7_4 + 100.0*ps7_2 + 0.25*om7_3)

+ sqr(-25.0*(ps7_4-ps7_2) * (ph8_3-ph6_3) +
       25.0*(ps8_3-ps6_3) * (ph7_4-ph7_2) - 200.0*ph7_3 +
       100.0*ph8_3 + 100.0*ph6_3 - 200.0*ph7_3 + 100.0*ph7_4
       + 100.0*ph7_2)

+ sqr(-200.0*om8_3 + 100.0*om9_3 + 100.0*om7_3 - 200.0*om8_3
       + 100.0*om8_4 + 100.0*om8_2 +
       1.5308084989341916e-13*ph9_3 -
       1.5308084989341916e-13*ph7_3 - 2500.0*ph8_4 +
       2500.0*ph8_2)

+ sqr(- 200.0*ps8_3 + 100.0*ps9_3 + 100.0*ps7_3 -
       200.0*ps8_3 + 100.0*ps8_4 + 100.0*ps8_2 + 0.25*om8_3)

+ sqr(-25.0*(ps8_4-ps8_2) * (ph9_3-ph7_3) +
       25.0*(ps9_3-ps7_3) * (ph8_4-ph8_2) - 200.0*ph8_3 +
       100.0*ph9_3 + 100.0*ph7_3 - 200.0*ph8_3 + 100.0*ph8_4
       + 100.0*ph8_2)

+ sqr(-200.0*om9_3 + 100.0*om10_3 + 100.0*om8_3 -
       200.0*om9_3 + 100.0*om9_4 + 100.0*om9_2 +
       1.5308084989341916e-13*ph10_3 -
       1.5308084989341916e-13*ph8_3 - 2500.0*ph9_4 +
       2500.0*ph9_2)

+ sqr(- 200.0*ps9_3 + 100.0*ps10_3 + 100.0*ps8_3 -
       200.0*ps9_3 + 100.0*ps9_4 + 100.0*ps9_2 + 0.25*om9_3)

+ sqr(-25.0*(ps9_4-ps9_2) * (ph10_3-ph8_3) + 25.0*(ps10_3-
       ps8_3) * (ph9_4-ph9_2) - 200.0*ph9_3 + 100.0*ph10_3 +
       100.0*ph8_3 - 200.0*ph9_3 + 100.0*ph9_4 +
       100.0*ph9_2)

+ sqr(-200.0*omm9_4 + 100.0*omm8_4 + 100.0*omm10_4 -
       200.0*omm9_4 + 100.0*omm9_5 + 100.0*omm9_3 +
       1.5308084989341916e-13*phm8_4 -
       1.5308084989341916e-13*phm10_4 - 2500.0*phm9_5 +
       2500.0*phm9_3)

+ sqr(-200.0*psm9_4 + 100.0*psm8_4 + 100.0*psm10_4 -
       200.0*psm9_4 + 100.0*psm9_5 + 100.0*psm9_3 +
       0.25*omm9_4)

+ sqr(-25.0*(psm9_5-psm9_3) * (phm8_4-phm10_4) +
       25.0*(psm8_4-psm10_4) * (phm9_5-phm9_3) -
       200.0*phm9_4 + 100.0*phm8_4 + 100.0*phm10_4 -
       200.0*phm9_4 + 100.0*phm9_5 + 100.0*phm9_3)

+ sqr(- 200.0*omm8_4 + 100.0*omm7_4 + 100.0*omm9_4 -
       200.0*omm8_4 + 100.0*omm8_5 + 100.0*omm8_3 +
       1.5308084989341916e-13*phm7_4 -
       1.5308084989341916e-13*phm9_4 - 2500.0*phm8_5 +
       2500.0*phm8_3)

+ sqr(-200.0*psm8_4 + 100.0*psm7_4 + 100.0*psm9_4 -
       200.0*psm8_4 + 100.0*psm8_5 + 100.0*psm8_3 +
       0.25*omm8_4)

+ sqr(-25.0*(psm8_5-psm8_3) * (phm7_4-phm9_4) +
       25.0*(psm7_4-psm9_4) * (phm8_5-phm8_3) - 200.0*phm8_4
       + 100.0*phm7_4 + 100.0*phm9_4 - 200.0*phm8_4 +
       100.0*phm8_5 + 100.0*phm8_3)

+ sqr(-200.0*omm7_4 + 100.0*omm6_4 + 100.0*omm8_4 -
       200.0*omm7_4 + 100.0*omm7_5 + 100.0*omm7_3 +
       1.5308084989341916e-13*phm6_4 - 1.5308084989341916e-13
       *phm8_4 - 2500.0*phm7_5 + 2500.0*phm7_3)

+ sqr(-200.0*psm7_4 + 100.0*psm6_4 + 100.0*psm8_4 -
       200.0*psm7_4 + 100.0*psm7_5 + 100.0*psm7_3 +
       0.25*omm7_4)

+ sqr(-25.0*(psm7_5-psm7_3) * (phm6_4-phm8_4) +
       25.0*(psm6_4-psm8_4) * (phm7_5-phm7_3) - 200.0*phm7_4
       + 100.0*phm6_4 + 100.0*phm8_4 - 200.0*phm7_4 +
       100.0*phm7_5 + 100.0*phm7_3)

+ sqr(-200.0*omm6_4 + 100.0*omm5_4 + 100.0*omm7_4 -
       200.0*omm6_4 + 100.0*omm6_5 + 100.0*omm6_3 +
       1.5308084989341916e-13*phm5_4 -
       1.5308084989341916e-13*phm7_4 - 2500.0*phm6_5 +
       2500.0*phm6_3)

+ sqr(-200.0*psm6_4 + 100.0*psm5_4 + 100.0*psm7_4 -
       200.0*psm6_4 + 100.0*psm6_5 + 100.0*psm6_3 +
       0.25*omm6_4)

+ sqr(-25.0*(psm6_5-psm6_3) * (phm5_4-phm7_4) +
       25.0*(psm5_4-psm7_4) * (phm6_5-phm6_3) - 200.0*phm6_4
       + 100.0*phm5_4 + 100.0*phm7_4 - 200.0*phm6_4 +
       100.0*phm6_5 + 100.0*phm6_3)

+ sqr(- 200.0*omm5_4 + 100.0*omm4_4 + 100.0*omm6_4 -
       200.0*omm5_4 + 100.0*omm5_5 + 100.0*omm5_3 +
       1.5308084989341916e-13*phm4_4 -
       1.5308084989341916e-13*phm6_4 - 2500.0*phm5_5 +
       2500.0*phm5_3)

+ sqr(-200.0*psm5_4 + 100.0*psm4_4 + 100.0*psm6_4 -
       200.0*psm5_4 + 100.0*psm5_5 + 100.0*psm5_3 +
       0.25*omm5_4)

+ sqr(-25.0*(psm5_5-psm5_3) * (phm4_4-phm6_4) +
       25.0*(psm4_4-psm6_4) * (phm5_5-phm5_3) - 200.0*phm5_4
       + 100.0*phm4_4 + 100.0*phm6_4 - 200.0*phm5_4 +
       100.0*phm5_5 + 100.0*phm5_3)

+ sqr(-200.0*omm4_4 + 100.0*omm3_4 + 100.0*omm5_4 -
       200.0*omm4_4 + 100.0*omm4_5 + 100.0*omm4_3 +
       1.5308084989341916e-13*phm3_4 - 1.5308084989341916e-13
       *phm5_4 - 2500.0*phm4_5 + 2500.0*phm4_3)

+ sqr(-200.0*psm4_4 + 100.0*psm3_4 + 100.0*psm5_4 -
       200.0*psm4_4 + 100.0*psm4_5 + 100.0*psm4_3 +
       0.25*omm4_4)

+ sqr(-25.0*(psm4_5-psm4_3) * (phm3_4-phm5_4) +
       25.0*(psm3_4-psm5_4) * (phm4_5-phm4_3) - 200.0*phm4_4
       + 100.0*phm3_4 + 100.0*phm5_4 - 200.0*phm4_4 +
       100.0*phm4_5 + 100.0*phm4_3)

+ sqr(-200.0*omm3_4 + 100.0*omm2_4 + 100.0*omm4_4 -
       200.0*omm3_4 + 100.0*omm3_5 + 100.0*omm3_3 +
       1.5308084989341916e-13*phm2_4 -
       1.5308084989341916e-13*phm4_4 - 2500.0*phm3_5 +
       2500.0*phm3_3)

+ sqr(-200.0*psm3_4 + 100.0*psm2_4 + 100.0*psm4_4 -
       200.0*psm3_4 + 100.0*psm3_5 + 100.0*psm3_3 +
       0.25*omm3_4)

+ sqr(-25.0*(psm3_5-psm3_3) * (phm2_4-phm4_4) +
       25.0*(psm2_4-psm4_4) * (phm3_5-phm3_3) - 200.0*phm3_4
       + 100.0*phm2_4 + 100.0*phm4_4 - 200.0*phm3_4 +
       100.0*phm3_5 + 100.0*phm3_3)

+ sqr(- 200.0*omm2_4 + 100.0*omm1_4 + 100.0*omm3_4 -
       200.0*omm2_4 + 100.0*omm2_5 + 100.0*omm2_3 +
       1.5308084989341916e-13*phm1_4 -
       1.5308084989341916e-13*phm3_4 - 2500.0*phm2_5 +
       2500.0*phm2_3)

+ sqr(-200.0*psm2_4 + 100.0*psm1_4 + 100.0*psm3_4 -
       200.0*psm2_4 + 100.0*psm2_5 + 100.0*psm2_3 +
       0.25*omm2_4)

+ sqr(-25.0*(psm2_5-psm2_3) * (phm1_4-phm3_4) +
       25.0*(psm1_4-psm3_4) * (phm2_5-phm2_3) - 200.0*phm2_4
       + 100.0*phm1_4 + 100.0*phm3_4 - 200.0*phm2_4 +
       100.0*phm2_5 + 100.0*phm2_3)

+ sqr(-200.0*omm1_4 + 100.0*om0_4 + 100.0*omm2_4 -
       200.0*omm1_4 + 100.0*omm1_5 + 100.0*omm1_3 +
       1.5308084989341916e-13*ph0_4 - 1.5308084989341916e-13
       *phm2_4 - 2500.0*phm1_5 + 2500.0*phm1_3)

+ sqr(-200.0*psm1_4 + 100.0*ps0_4 + 100.0*psm2_4 -
       200.0*psm1_4 + 100.0*psm1_5 + 100.0*psm1_3 +
       0.25*omm1_4)

+ sqr(-25.0*(psm1_5-psm1_3) * (ph0_4-phm2_4) +
       25.0*(ps0_4-psm2_4) * (phm1_5- phm1_3) - 200.0*phm1_4
       + 100.0*ph0_4 + 100.0*phm2_4 - 200.0*phm1_4 +
       100.0*phm1_5 + 100.0*phm1_3)

+ sqr(-200.0*om0_4 + 100.0*om1_4 + 100.0*omm1_4 -
       200.0*om0_4 + 100.0*om0_5 + 100.0*om0_3 +
       1.5308084989341916e-13*ph1_4 -
       1.5308084989341916e-13*phm1_4 - 2500.0*ph0_5 +
       2500.0*ph0_3)

+ sqr(- 200.0*ps0_4 + 100.0*ps1_4 + 100.0*psm1_4 -
       200.0*ps0_4 + 100.0*ps0_5 + 100.0*ps0_3 + 0.25*om0_4)

+ sqr(-25.0*(ps0_5-ps0_3) * (ph1_4-phm1_4) + 25.0*(ps1_4-
       psm1_4) * (ph0_5-ph0_3) - 200.0*ph0_4 + 100.0*ph1_4 +
       100.0*phm1_4 - 200.0*ph0_4 + 100.0*ph0_5 +
       100.0*ph0_3)

+ sqr(-200.0*om1_4 + 100.0*om2_4 + 100.0*om0_4 - 200.0*om1_4
       + 100.0*om1_5 + 100.0*om1_3 +
       1.5308084989341916e-13*ph2_4 -
       1.5308084989341916e-13*ph0_4 - 2500.0*ph1_5 +
       2500.0*ph1_3)

+ sqr(- 200.0*ps1_4 + 100.0*ps2_4 + 100.0*ps0_4 -
       200.0*ps1_4 + 100.0*ps1_5 + 100.0*ps1_3 + 0.25*om1_4)

+ sqr(-25.0*(ps1_5-ps1_3) * (ph2_4-ph0_4) +
       25.0*(ps2_4-ps0_4) * (ph1_5-ph1_3) - 200.0*ph1_4 +
       100.0*ph2_4 + 100.0*ph0_4 - 200.0*ph1_4 + 100.0*ph1_5
       + 100.0*ph1_3)

+ sqr(-200.0*om2_4 + 100.0*om3_4 + 100.0*om1_4 - 200.0*om2_4
       + 100.0*om2_5 + 100.0*om2_3 +
       1.5308084989341916e-13*ph3_4 -
       1.5308084989341916e-13*ph1_4 - 2500.0*ph2_5 +
       2500.0*ph2_3)

+ sqr(- 200.0*ps2_4 + 100.0*ps3_4 + 100.0*ps1_4 -
       200.0*ps2_4 + 100.0*ps2_5 + 100.0*ps2_3 + 0.25*om2_4)

+ sqr(-25.0*(ps2_5-ps2_3) * (ph3_4-ph1_4) +
       25.0*(ps3_4-ps1_4) * (ph2_5-ph2_3) - 200.0*ph2_4 +
       100.0*ph3_4 + 100.0*ph1_4 - 200.0*ph2_4 + 100.0*ph2_5
       + 100.0*ph2_3)

+ sqr(-200.0*om3_4 + 100.0*om4_4 + 100.0*om2_4 - 200.0*om3_4
       + 100.0*om3_5 + 100.0*om3_3 +
       1.5308084989341916e-13*ph4_4 -
       1.5308084989341916e-13*ph2_4 - 2500.0*ph3_5 +
       2500.0*ph3_3)

+ sqr(- 200.0*ps3_4 + 100.0*ps4_4 + 100.0*ps2_4 -
       200.0*ps3_4 + 100.0*ps3_5 + 100.0*ps3_3 + 0.25*om3_4)

+ sqr(-25.0*(ps3_5-ps3_3) * (ph4_4-ph2_4) +
       25.0*(ps4_4-ps2_4) * (ph3_5-ph3_3) - 200.0*ph3_4 +
       100.0*ph4_4 + 100.0*ph2_4 - 200.0*ph3_4 + 100.0*ph3_5
       + 100.0*ph3_3)

+ sqr(-200.0*om4_4 + 100.0*om5_4 + 100.0*om3_4 - 200.0*om4_4
       + 100.0*om4_5 + 100.0*om4_3 +
       1.5308084989341916e-13*ph5_4 -
       1.5308084989341916e-13*ph3_4 - 2500.0*ph4_5 +
       2500.0*ph4_3)

+ sqr(- 200.0*ps4_4 + 100.0*ps5_4 + 100.0*ps3_4 -
       200.0*ps4_4 + 100.0*ps4_5 + 100.0*ps4_3 + 0.25*om4_4)

+ sqr(-25.0*(ps4_5-ps4_3) * (ph5_4-ph3_4) +
       25.0*(ps5_4-ps3_4) * (ph4_5-ph4_3) - 200.0*ph4_4 +
       100.0*ph5_4 + 100.0*ph3_4 - 200.0*ph4_4 + 100.0*ph4_5
       + 100.0*ph4_3)

+ sqr(-200.0*om5_4 + 100.0*om6_4 + 100.0*om4_4 - 200.0*om5_4
       + 100.0*om5_5 + 100.0*om5_3 +
       1.5308084989341916e-13*ph6_4 -
       1.5308084989341916e-13*ph4_4 - 2500.0*ph5_5 +
       2500.0*ph5_3)

+ sqr(- 200.0*ps5_4 + 100.0*ps6_4 + 100.0*ps4_4 -
       200.0*ps5_4 + 100.0*ps5_5 + 100.0*ps5_3 + 0.25*om5_4)

+ sqr(-25.0*(ps5_5-ps5_3) * (ph6_4-ph4_4) +
       25.0*(ps6_4-ps4_4) * (ph5_5-ph5_3) - 200.0*ph5_4 +
       100.0*ph6_4 + 100.0*ph4_4 - 200.0*ph5_4 + 100.0*ph5_5
       + 100.0*ph5_3)

+ sqr(-200.0*om6_4 + 100.0*om7_4 + 100.0*om5_4 - 200.0*om6_4
       + 100.0*om6_5 + 100.0*om6_3 +
       1.5308084989341916e-13*ph7_4 -
       1.5308084989341916e-13*ph5_4 - 2500.0*ph6_5 +
       2500.0*ph6_3)

+ sqr(- 200.0*ps6_4 + 100.0*ps7_4 + 100.0*ps5_4 -
       200.0*ps6_4 + 100.0*ps6_5 + 100.0*ps6_3 + 0.25*om6_4)

+ sqr(-25.0*(ps6_5-ps6_3) * (ph7_4-ph5_4) +
       25.0*(ps7_4-ps5_4) * (ph6_5-ph6_3) - 200.0*ph6_4 +
       100.0*ph7_4 + 100.0*ph5_4 - 200.0*ph6_4 + 100.0*ph6_5
       + 100.0*ph6_3)

+ sqr(-200.0*om7_4 + 100.0*om8_4 + 100.0*om6_4 - 200.0*om7_4
       + 100.0*om7_5 + 100.0*om7_3 +
       1.5308084989341916e-13*ph8_4 -
       1.5308084989341916e-13*ph6_4 - 2500.0*ph7_5 +
       2500.0*ph7_3)

+ sqr(- 200.0*ps7_4 + 100.0*ps8_4 + 100.0*ps6_4 -
       200.0*ps7_4 + 100.0*ps7_5 + 100.0*ps7_3 + 0.25*om7_4)

+ sqr(-25.0*(ps7_5-ps7_3) * (ph8_4-ph6_4) +
       25.0*(ps8_4-ps6_4) * (ph7_5-ph7_3) - 200.0*ph7_4 +
       100.0*ph8_4 + 100.0*ph6_4 - 200.0*ph7_4 + 100.0*ph7_5
       + 100.0*ph7_3)

+ sqr(-200.0*om8_4 + 100.0*om9_4 + 100.0*om7_4 - 200.0*om8_4
       + 100.0*om8_5 + 100.0*om8_3 +
       1.5308084989341916e-13*ph9_4 -
       1.5308084989341916e-13*ph7_4 - 2500.0*ph8_5 +
       2500.0*ph8_3)

+ sqr(- 200.0*ps8_4 + 100.0*ps9_4 + 100.0*ps7_4 -
       200.0*ps8_4 + 100.0*ps8_5 + 100.0*ps8_3 + 0.25*om8_4)

+ sqr(-25.0*(ps8_5-ps8_3) * (ph9_4-ph7_4) +
       25.0*(ps9_4-ps7_4) * (ph8_5-ph8_3) - 200.0*ph8_4 +
       100.0*ph9_4 + 100.0*ph7_4 - 200.0*ph8_4 + 100.0*ph8_5
       + 100.0*ph8_3)

+ sqr(-200.0*om9_4 + 100.0*om10_4 + 100.0*om8_4 -
       200.0*om9_4 + 100.0*om9_5 + 100.0*om9_3 +
       1.5308084989341916e-13*ph10_4 -
       1.5308084989341916e-13*ph8_4 - 2500.0*ph9_5 +
       2500.0*ph9_3)

+ sqr(- 200.0*ps9_4 + 100.0*ps10_4 + 100.0*ps8_4 -
       200.0*ps9_4 + 100.0*ps9_5 + 100.0*ps9_3 + 0.25*om9_4)

+ sqr(-25.0*(ps9_5-ps9_3) * (ph10_4-ph8_4) + 25.0*(ps10_4-
       ps8_4) * (ph9_5-ph9_3) - 200.0*ph9_4 + 100.0*ph10_4 +
       100.0*ph8_4 - 200.0*ph9_4 + 100.0*ph9_5 +
       100.0*ph9_3)

+ sqr(-200.0*omm9_5 + 100.0*omm8_5 + 100.0*omm10_5 -
       200.0*omm9_5 + 100.0*omm9_6 + 100.0*omm9_4 +
       1.5308084989341916e-13*phm8_5 -
       1.5308084989341916e-13*phm10_5 - 2500.0*phm9_6 +
       2500.0*phm9_4)

+ sqr(-200.0*psm9_5 + 100.0*psm8_5 + 100.0*psm10_5 -
       200.0*psm9_5 + 100.0*psm9_6 + 100.0*psm9_4 +
       0.25*omm9_5)

+ sqr(-25.0*(psm9_6-psm9_4) * (phm8_5-phm10_5) +
       25.0*(psm8_5-psm10_5) * (phm9_6-phm9_4) -
       200.0*phm9_5 + 100.0*phm8_5 + 100.0*phm10_5 -
       200.0*phm9_5 + 100.0*phm9_6 + 100.0*phm9_4)

+ sqr(- 200.0*omm8_5 + 100.0*omm7_5 + 100.0*omm9_5 -
       200.0*omm8_5 + 100.0*omm8_6 + 100.0*omm8_4 +
       1.5308084989341916e-13*phm7_5 -
       1.5308084989341916e-13*phm9_5 - 2500.0*phm8_6 +
       2500.0*phm8_4)

+ sqr(-200.0*psm8_5 + 100.0*psm7_5 + 100.0*psm9_5 -
       200.0*psm8_5 + 100.0*psm8_6 + 100.0*psm8_4 +
       0.25*omm8_5)

+ sqr(-25.0*(psm8_6-psm8_4) * (phm7_5-phm9_5) +
       25.0*(psm7_5-psm9_5) * (phm8_6-phm8_4) - 200.0*phm8_5
       + 100.0*phm7_5 + 100.0*phm9_5 - 200.0*phm8_5 +
       100.0*phm8_6 + 100.0*phm8_4)

+ sqr(-200.0*omm7_5 + 100.0*omm6_5 + 100.0*omm8_5 -
       200.0*omm7_5 + 100.0*omm7_6 + 100.0*omm7_4 +
       1.5308084989341916e-13*phm6_5 - 1.5308084989341916e-13
       *phm8_5 - 2500.0*phm7_6 + 2500.0*phm7_4)

+ sqr(-200.0*psm7_5 + 100.0*psm6_5 + 100.0*psm8_5 -
       200.0*psm7_5 + 100.0*psm7_6 + 100.0*psm7_4 +
       0.25*omm7_5)

+ sqr(-25.0*(psm7_6-psm7_4) * (phm6_5-phm8_5) +
       25.0*(psm6_5-psm8_5) * (phm7_6-phm7_4) - 200.0*phm7_5
       + 100.0*phm6_5 + 100.0*phm8_5 - 200.0*phm7_5 +
       100.0*phm7_6 + 100.0*phm7_4)

+ sqr(-200.0*omm6_5 + 100.0*omm5_5 + 100.0*omm7_5 -
       200.0*omm6_5 + 100.0*omm6_6 + 100.0*omm6_4 +
       1.5308084989341916e-13*phm5_5 -
       1.5308084989341916e-13*phm7_5 - 2500.0*phm6_6 +
       2500.0*phm6_4)

+ sqr(-200.0*psm6_5 + 100.0*psm5_5 + 100.0*psm7_5 -
       200.0*psm6_5 + 100.0*psm6_6 + 100.0*psm6_4 +
       0.25*omm6_5)

+ sqr(-25.0*(psm6_6-psm6_4) * (phm5_5-phm7_5) +
       25.0*(psm5_5-psm7_5) * (phm6_6-phm6_4) - 200.0*phm6_5
       + 100.0*phm5_5 + 100.0*phm7_5 - 200.0*phm6_5 +
       100.0*phm6_6 + 100.0*phm6_4)

+ sqr(- 200.0*omm5_5 + 100.0*omm4_5 + 100.0*omm6_5 -
       200.0*omm5_5 + 100.0*omm5_6 + 100.0*omm5_4 +
       1.5308084989341916e-13*phm4_5 -
       1.5308084989341916e-13*phm6_5 - 2500.0*phm5_6 +
       2500.0*phm5_4)

+ sqr(-200.0*psm5_5 + 100.0*psm4_5 + 100.0*psm6_5 -
       200.0*psm5_5 + 100.0*psm5_6 + 100.0*psm5_4 +
       0.25*omm5_5)

+ sqr(-25.0*(psm5_6-psm5_4) * (phm4_5-phm6_5) +
       25.0*(psm4_5-psm6_5) * (phm5_6-phm5_4) - 200.0*phm5_5
       + 100.0*phm4_5 + 100.0*phm6_5 - 200.0*phm5_5 +
       100.0*phm5_6 + 100.0*phm5_4)

+ sqr(-200.0*omm4_5 + 100.0*omm3_5 + 100.0*omm5_5 -
       200.0*omm4_5 + 100.0*omm4_6 + 100.0*omm4_4 +
       1.5308084989341916e-13*phm3_5 - 1.5308084989341916e-13
       *phm5_5 - 2500.0*phm4_6 + 2500.0*phm4_4)

+ sqr(-200.0*psm4_5 + 100.0*psm3_5 + 100.0*psm5_5 -
       200.0*psm4_5 + 100.0*psm4_6 + 100.0*psm4_4 +
       0.25*omm4_5)

+ sqr(-25.0*(psm4_6-psm4_4) * (phm3_5-phm5_5) +
       25.0*(psm3_5-psm5_5) * (phm4_6-phm4_4) - 200.0*phm4_5
       + 100.0*phm3_5 + 100.0*phm5_5 - 200.0*phm4_5 +
       100.0*phm4_6 + 100.0*phm4_4)

+ sqr(-200.0*omm3_5 + 100.0*omm2_5 + 100.0*omm4_5 -
       200.0*omm3_5 + 100.0*omm3_6 + 100.0*omm3_4 +
       1.5308084989341916e-13*phm2_5 -
       1.5308084989341916e-13*phm4_5 - 2500.0*phm3_6 +
       2500.0*phm3_4)

+ sqr(-200.0*psm3_5 + 100.0*psm2_5 + 100.0*psm4_5 -
       200.0*psm3_5 + 100.0*psm3_6 + 100.0*psm3_4 +
       0.25*omm3_5)

+ sqr(-25.0*(psm3_6-psm3_4) * (phm2_5-phm4_5) +
       25.0*(psm2_5-psm4_5) * (phm3_6-phm3_4) - 200.0*phm3_5
       + 100.0*phm2_5 + 100.0*phm4_5 - 200.0*phm3_5 +
       100.0*phm3_6 + 100.0*phm3_4)

+ sqr(- 200.0*omm2_5 + 100.0*omm1_5 + 100.0*omm3_5 -
       200.0*omm2_5 + 100.0*omm2_6 + 100.0*omm2_4 +
       1.5308084989341916e-13*phm1_5 -
       1.5308084989341916e-13*phm3_5 - 2500.0*phm2_6 +
       2500.0*phm2_4)

+ sqr(-200.0*psm2_5 + 100.0*psm1_5 + 100.0*psm3_5 -
       200.0*psm2_5 + 100.0*psm2_6 + 100.0*psm2_4 +
       0.25*omm2_5)

+ sqr(-25.0*(psm2_6-psm2_4) * (phm1_5-phm3_5) +
       25.0*(psm1_5-psm3_5) * (phm2_6-phm2_4) - 200.0*phm2_5
       + 100.0*phm1_5 + 100.0*phm3_5 - 200.0*phm2_5 +
       100.0*phm2_6 + 100.0*phm2_4)

+ sqr(-200.0*omm1_5 + 100.0*om0_5 + 100.0*omm2_5 -
       200.0*omm1_5 + 100.0*omm1_6 + 100.0*omm1_4 +
       1.5308084989341916e-13*ph0_5 - 1.5308084989341916e-13
       *phm2_5 - 2500.0*phm1_6 + 2500.0*phm1_4)

+ sqr(-200.0*psm1_5 + 100.0*ps0_5 + 100.0*psm2_5 -
       200.0*psm1_5 + 100.0*psm1_6 + 100.0*psm1_4 +
       0.25*omm1_5)

+ sqr(-25.0*(psm1_6-psm1_4) * (ph0_5-phm2_5) +
       25.0*(ps0_5-psm2_5) * (phm1_6- phm1_4) - 200.0*phm1_5
       + 100.0*ph0_5 + 100.0*phm2_5 - 200.0*phm1_5 +
       100.0*phm1_6 + 100.0*phm1_4)

+ sqr(-200.0*om0_5 + 100.0*om1_5 + 100.0*omm1_5 -
       200.0*om0_5 + 100.0*om0_6 + 100.0*om0_4 +
       1.5308084989341916e-13*ph1_5 -
       1.5308084989341916e-13*phm1_5 - 2500.0*ph0_6 +
       2500.0*ph0_4)

+ sqr(- 200.0*ps0_5 + 100.0*ps1_5 + 100.0*psm1_5 -
       200.0*ps0_5 + 100.0*ps0_6 + 100.0*ps0_4 + 0.25*om0_5)

+ sqr(-25.0*(ps0_6-ps0_4) * (ph1_5-phm1_5) + 25.0*(ps1_5-
       psm1_5) * (ph0_6-ph0_4) - 200.0*ph0_5 + 100.0*ph1_5 +
       100.0*phm1_5 - 200.0*ph0_5 + 100.0*ph0_6 +
       100.0*ph0_4)

+ sqr(-200.0*om1_5 + 100.0*om2_5 + 100.0*om0_5 - 200.0*om1_5
       + 100.0*om1_6 + 100.0*om1_4 +
       1.5308084989341916e-13*ph2_5 -
       1.5308084989341916e-13*ph0_5 - 2500.0*ph1_6 +
       2500.0*ph1_4)

+ sqr(- 200.0*ps1_5 + 100.0*ps2_5 + 100.0*ps0_5 -
       200.0*ps1_5 + 100.0*ps1_6 + 100.0*ps1_4 + 0.25*om1_5)

+ sqr(-25.0*(ps1_6-ps1_4) * (ph2_5-ph0_5) +
       25.0*(ps2_5-ps0_5) * (ph1_6-ph1_4) - 200.0*ph1_5 +
       100.0*ph2_5 + 100.0*ph0_5 - 200.0*ph1_5 + 100.0*ph1_6
       + 100.0*ph1_4)

+ sqr(-200.0*om2_5 + 100.0*om3_5 + 100.0*om1_5 - 200.0*om2_5
       + 100.0*om2_6 + 100.0*om2_4 +
       1.5308084989341916e-13*ph3_5 -
       1.5308084989341916e-13*ph1_5 - 2500.0*ph2_6 +
       2500.0*ph2_4)

+ sqr(- 200.0*ps2_5 + 100.0*ps3_5 + 100.0*ps1_5 -
       200.0*ps2_5 + 100.0*ps2_6 + 100.0*ps2_4 + 0.25*om2_5)

+ sqr(-25.0*(ps2_6-ps2_4) * (ph3_5-ph1_5) +
       25.0*(ps3_5-ps1_5) * (ph2_6-ph2_4) - 200.0*ph2_5 +
       100.0*ph3_5 + 100.0*ph1_5 - 200.0*ph2_5 + 100.0*ph2_6
       + 100.0*ph2_4)

+ sqr(-200.0*om3_5 + 100.0*om4_5 + 100.0*om2_5 - 200.0*om3_5
       + 100.0*om3_6 + 100.0*om3_4 +
       1.5308084989341916e-13*ph4_5 -
       1.5308084989341916e-13*ph2_5 - 2500.0*ph3_6 +
       2500.0*ph3_4)

+ sqr(- 200.0*ps3_5 + 100.0*ps4_5 + 100.0*ps2_5 -
       200.0*ps3_5 + 100.0*ps3_6 + 100.0*ps3_4 + 0.25*om3_5)

+ sqr(-25.0*(ps3_6-ps3_4) * (ph4_5-ph2_5) +
       25.0*(ps4_5-ps2_5) * (ph3_6-ph3_4) - 200.0*ph3_5 +
       100.0*ph4_5 + 100.0*ph2_5 - 200.0*ph3_5 + 100.0*ph3_6
       + 100.0*ph3_4)

+ sqr(-200.0*om4_5 + 100.0*om5_5 + 100.0*om3_5 - 200.0*om4_5
       + 100.0*om4_6 + 100.0*om4_4 +
       1.5308084989341916e-13*ph5_5 -
       1.5308084989341916e-13*ph3_5 - 2500.0*ph4_6 +
       2500.0*ph4_4)

+ sqr(- 200.0*ps4_5 + 100.0*ps5_5 + 100.0*ps3_5 -
       200.0*ps4_5 + 100.0*ps4_6 + 100.0*ps4_4 + 0.25*om4_5)

+ sqr(-25.0*(ps4_6-ps4_4) * (ph5_5-ph3_5) +
       25.0*(ps5_5-ps3_5) * (ph4_6-ph4_4) - 200.0*ph4_5 +
       100.0*ph5_5 + 100.0*ph3_5 - 200.0*ph4_5 + 100.0*ph4_6
       + 100.0*ph4_4)

+ sqr(-200.0*om5_5 + 100.0*om6_5 + 100.0*om4_5 - 200.0*om5_5
       + 100.0*om5_6 + 100.0*om5_4 +
       1.5308084989341916e-13*ph6_5 -
       1.5308084989341916e-13*ph4_5 - 2500.0*ph5_6 +
       2500.0*ph5_4)

+ sqr(- 200.0*ps5_5 + 100.0*ps6_5 + 100.0*ps4_5 -
       200.0*ps5_5 + 100.0*ps5_6 + 100.0*ps5_4 + 0.25*om5_5)

+ sqr(-25.0*(ps5_6-ps5_4) * (ph6_5-ph4_5) +
       25.0*(ps6_5-ps4_5) * (ph5_6-ph5_4) - 200.0*ph5_5 +
       100.0*ph6_5 + 100.0*ph4_5 - 200.0*ph5_5 + 100.0*ph5_6
       + 100.0*ph5_4)

+ sqr(-200.0*om6_5 + 100.0*om7_5 + 100.0*om5_5 - 200.0*om6_5
       + 100.0*om6_6 + 100.0*om6_4 +
       1.5308084989341916e-13*ph7_5 -
       1.5308084989341916e-13*ph5_5 - 2500.0*ph6_6 +
       2500.0*ph6_4)

+ sqr(- 200.0*ps6_5 + 100.0*ps7_5 + 100.0*ps5_5 -
       200.0*ps6_5 + 100.0*ps6_6 + 100.0*ps6_4 + 0.25*om6_5)

+ sqr(-25.0*(ps6_6-ps6_4) * (ph7_5-ph5_5) +
       25.0*(ps7_5-ps5_5) * (ph6_6-ph6_4) - 200.0*ph6_5 +
       100.0*ph7_5 + 100.0*ph5_5 - 200.0*ph6_5 + 100.0*ph6_6
       + 100.0*ph6_4)

+ sqr(-200.0*om7_5 + 100.0*om8_5 + 100.0*om6_5 - 200.0*om7_5
       + 100.0*om7_6 + 100.0*om7_4 +
       1.5308084989341916e-13*ph8_5 -
       1.5308084989341916e-13*ph6_5 - 2500.0*ph7_6 +
       2500.0*ph7_4)

+ sqr(- 200.0*ps7_5 + 100.0*ps8_5 + 100.0*ps6_5 -
       200.0*ps7_5 + 100.0*ps7_6 + 100.0*ps7_4 + 0.25*om7_5)

+ sqr(-25.0*(ps7_6-ps7_4) * (ph8_5-ph6_5) +
       25.0*(ps8_5-ps6_5) * (ph7_6-ph7_4) - 200.0*ph7_5 +
       100.0*ph8_5 + 100.0*ph6_5 - 200.0*ph7_5 + 100.0*ph7_6
       + 100.0*ph7_4)

+ sqr(-200.0*om8_5 + 100.0*om9_5 + 100.0*om7_5 - 200.0*om8_5
       + 100.0*om8_6 + 100.0*om8_4 +
       1.5308084989341916e-13*ph9_5 -
       1.5308084989341916e-13*ph7_5 - 2500.0*ph8_6 +
       2500.0*ph8_4)

+ sqr(- 200.0*ps8_5 + 100.0*ps9_5 + 100.0*ps7_5 -
       200.0*ps8_5 + 100.0*ps8_6 + 100.0*ps8_4 + 0.25*om8_5)

+ sqr(-25.0*(ps8_6-ps8_4) * (ph9_5-ph7_5) +
       25.0*(ps9_5-ps7_5) * (ph8_6-ph8_4) - 200.0*ph8_5 +
       100.0*ph9_5 + 100.0*ph7_5 - 200.0*ph8_5 + 100.0*ph8_6
       + 100.0*ph8_4)

+ sqr(-200.0*om9_5 + 100.0*om10_5 + 100.0*om8_5 -
       200.0*om9_5 + 100.0*om9_6 + 100.0*om9_4 +
       1.5308084989341916e-13*ph10_5 -
       1.5308084989341916e-13*ph8_5 - 2500.0*ph9_6 +
       2500.0*ph9_4)

+ sqr(- 200.0*ps9_5 + 100.0*ps10_5 + 100.0*ps8_5 -
       200.0*ps9_5 + 100.0*ps9_6 + 100.0*ps9_4 + 0.25*om9_5)

+ sqr(-25.0*(ps9_6-ps9_4) * (ph10_5-ph8_5) + 25.0*(ps10_5-
       ps8_5) * (ph9_6-ph9_4) - 200.0*ph9_5 + 100.0*ph10_5 +
       100.0*ph8_5 - 200.0*ph9_5 + 100.0*ph9_6 +
       100.0*ph9_4)

+ sqr(-200.0*omm9_6 + 100.0*omm8_6 + 100.0*omm10_6 -
       200.0*omm9_6 + 100.0*omm9_7 + 100.0*omm9_5 +
       1.5308084989341916e-13*phm8_6 -
       1.5308084989341916e-13*phm10_6 - 2500.0*phm9_7 +
       2500.0*phm9_5)

+ sqr(-200.0*psm9_6 + 100.0*psm8_6 + 100.0*psm10_6 -
       200.0*psm9_6 + 100.0*psm9_7 + 100.0*psm9_5 +
       0.25*omm9_6)

+ sqr(-25.0*(psm9_7-psm9_5) * (phm8_6-phm10_6) +
       25.0*(psm8_6-psm10_6) * (phm9_7-phm9_5) -
       200.0*phm9_6 + 100.0*phm8_6 + 100.0*phm10_6 -
       200.0*phm9_6 + 100.0*phm9_7 + 100.0*phm9_5)

+ sqr(- 200.0*omm8_6 + 100.0*omm7_6 + 100.0*omm9_6 -
       200.0*omm8_6 + 100.0*omm8_7 + 100.0*omm8_5 +
       1.5308084989341916e-13*phm7_6 -
       1.5308084989341916e-13*phm9_6 - 2500.0*phm8_7 +
       2500.0*phm8_5)

+ sqr(-200.0*psm8_6 + 100.0*psm7_6 + 100.0*psm9_6 -
       200.0*psm8_6 + 100.0*psm8_7 + 100.0*psm8_5 +
       0.25*omm8_6)

+ sqr(-25.0*(psm8_7-psm8_5) * (phm7_6-phm9_6) +
       25.0*(psm7_6-psm9_6) * (phm8_7-phm8_5) - 200.0*phm8_6
       + 100.0*phm7_6 + 100.0*phm9_6 - 200.0*phm8_6 +
       100.0*phm8_7 + 100.0*phm8_5)

+ sqr(-200.0*omm7_6 + 100.0*omm6_6 + 100.0*omm8_6 -
       200.0*omm7_6 + 100.0*omm7_7 + 100.0*omm7_5 +
       1.5308084989341916e-13*phm6_6 - 1.5308084989341916e-13
       *phm8_6 - 2500.0*phm7_7 + 2500.0*phm7_5)

+ sqr(-200.0*psm7_6 + 100.0*psm6_6 + 100.0*psm8_6 -
       200.0*psm7_6 + 100.0*psm7_7 + 100.0*psm7_5 +
       0.25*omm7_6)

+ sqr(-25.0*(psm7_7-psm7_5) * (phm6_6-phm8_6) +
       25.0*(psm6_6-psm8_6) * (phm7_7-phm7_5) - 200.0*phm7_6
       + 100.0*phm6_6 + 100.0*phm8_6 - 200.0*phm7_6 +
       100.0*phm7_7 + 100.0*phm7_5)

+ sqr(-200.0*omm6_6 + 100.0*omm5_6 + 100.0*omm7_6 -
       200.0*omm6_6 + 100.0*omm6_7 + 100.0*omm6_5 +
       1.5308084989341916e-13*phm5_6 -
       1.5308084989341916e-13*phm7_6 - 2500.0*phm6_7 +
       2500.0*phm6_5)

+ sqr(-200.0*psm6_6 + 100.0*psm5_6 + 100.0*psm7_6 -
       200.0*psm6_6 + 100.0*psm6_7 + 100.0*psm6_5 +
       0.25*omm6_6)

+ sqr(-25.0*(psm6_7-psm6_5) * (phm5_6-phm7_6) +
       25.0*(psm5_6-psm7_6) * (phm6_7-phm6_5) - 200.0*phm6_6
       + 100.0*phm5_6 + 100.0*phm7_6 - 200.0*phm6_6 +
       100.0*phm6_7 + 100.0*phm6_5)

+ sqr(- 200.0*omm5_6 + 100.0*omm4_6 + 100.0*omm6_6 -
       200.0*omm5_6 + 100.0*omm5_7 + 100.0*omm5_5 +
       1.5308084989341916e-13*phm4_6 -
       1.5308084989341916e-13*phm6_6 - 2500.0*phm5_7 +
       2500.0*phm5_5)

+ sqr(-200.0*psm5_6 + 100.0*psm4_6 + 100.0*psm6_6 -
       200.0*psm5_6 + 100.0*psm5_7 + 100.0*psm5_5 +
       0.25*omm5_6)

+ sqr(-25.0*(psm5_7-psm5_5) * (phm4_6-phm6_6) +
       25.0*(psm4_6-psm6_6) * (phm5_7-phm5_5) - 200.0*phm5_6
       + 100.0*phm4_6 + 100.0*phm6_6 - 200.0*phm5_6 +
       100.0*phm5_7 + 100.0*phm5_5)

+ sqr(-200.0*omm4_6 + 100.0*omm3_6 + 100.0*omm5_6 -
       200.0*omm4_6 + 100.0*omm4_7 + 100.0*omm4_5 +
       1.5308084989341916e-13*phm3_6 - 1.5308084989341916e-13
       *phm5_6 - 2500.0*phm4_7 + 2500.0*phm4_5)

+ sqr(-200.0*psm4_6 + 100.0*psm3_6 + 100.0*psm5_6 -
       200.0*psm4_6 + 100.0*psm4_7 + 100.0*psm4_5 +
       0.25*omm4_6)

+ sqr(-25.0*(psm4_7-psm4_5) * (phm3_6-phm5_6) +
       25.0*(psm3_6-psm5_6) * (phm4_7-phm4_5) - 200.0*phm4_6
       + 100.0*phm3_6 + 100.0*phm5_6 - 200.0*phm4_6 +
       100.0*phm4_7 + 100.0*phm4_5)

+ sqr(-200.0*omm3_6 + 100.0*omm2_6 + 100.0*omm4_6 -
       200.0*omm3_6 + 100.0*omm3_7 + 100.0*omm3_5 +
       1.5308084989341916e-13*phm2_6 -
       1.5308084989341916e-13*phm4_6 - 2500.0*phm3_7 +
       2500.0*phm3_5)

+ sqr(-200.0*psm3_6 + 100.0*psm2_6 + 100.0*psm4_6 -
       200.0*psm3_6 + 100.0*psm3_7 + 100.0*psm3_5 +
       0.25*omm3_6)

+ sqr(-25.0*(psm3_7-psm3_5) * (phm2_6-phm4_6) +
       25.0*(psm2_6-psm4_6) * (phm3_7-phm3_5) - 200.0*phm3_6
       + 100.0*phm2_6 + 100.0*phm4_6 - 200.0*phm3_6 +
       100.0*phm3_7 + 100.0*phm3_5)

+ sqr(- 200.0*omm2_6 + 100.0*omm1_6 + 100.0*omm3_6 -
       200.0*omm2_6 + 100.0*omm2_7 + 100.0*omm2_5 +
       1.5308084989341916e-13*phm1_6 -
       1.5308084989341916e-13*phm3_6 - 2500.0*phm2_7 +
       2500.0*phm2_5)

+ sqr(-200.0*psm2_6 + 100.0*psm1_6 + 100.0*psm3_6 -
       200.0*psm2_6 + 100.0*psm2_7 + 100.0*psm2_5 +
       0.25*omm2_6)

+ sqr(-25.0*(psm2_7-psm2_5) * (phm1_6-phm3_6) +
       25.0*(psm1_6-psm3_6) * (phm2_7-phm2_5) - 200.0*phm2_6
       + 100.0*phm1_6 + 100.0*phm3_6 - 200.0*phm2_6 +
       100.0*phm2_7 + 100.0*phm2_5)

+ sqr(-200.0*omm1_6 + 100.0*om0_6 + 100.0*omm2_6 -
       200.0*omm1_6 + 100.0*omm1_7 + 100.0*omm1_5 +
       1.5308084989341916e-13*ph0_6 - 1.5308084989341916e-13
       *phm2_6 - 2500.0*phm1_7 + 2500.0*phm1_5)

+ sqr(-200.0*psm1_6 + 100.0*ps0_6 + 100.0*psm2_6 -
       200.0*psm1_6 + 100.0*psm1_7 + 100.0*psm1_5 +
       0.25*omm1_6)

+ sqr(-25.0*(psm1_7-psm1_5) * (ph0_6-phm2_6) +
       25.0*(ps0_6-psm2_6) * (phm1_7- phm1_5) - 200.0*phm1_6
       + 100.0*ph0_6 + 100.0*phm2_6 - 200.0*phm1_6 +
       100.0*phm1_7 + 100.0*phm1_5)

+ sqr(-200.0*om0_6 + 100.0*om1_6 + 100.0*omm1_6 -
       200.0*om0_6 + 100.0*om0_7 + 100.0*om0_5 +
       1.5308084989341916e-13*ph1_6 -
       1.5308084989341916e-13*phm1_6 - 2500.0*ph0_7 +
       2500.0*ph0_5)

+ sqr(- 200.0*ps0_6 + 100.0*ps1_6 + 100.0*psm1_6 -
       200.0*ps0_6 + 100.0*ps0_7 + 100.0*ps0_5 + 0.25*om0_6)

+ sqr(-25.0*(ps0_7-ps0_5) * (ph1_6-phm1_6) + 25.0*(ps1_6-
       psm1_6) * (ph0_7-ph0_5) - 200.0*ph0_6 + 100.0*ph1_6 +
       100.0*phm1_6 - 200.0*ph0_6 + 100.0*ph0_7 +
       100.0*ph0_5)

+ sqr(-200.0*om1_6 + 100.0*om2_6 + 100.0*om0_6 - 200.0*om1_6
       + 100.0*om1_7 + 100.0*om1_5 +
       1.5308084989341916e-13*ph2_6 -
       1.5308084989341916e-13*ph0_6 - 2500.0*ph1_7 +
       2500.0*ph1_5)

+ sqr(- 200.0*ps1_6 + 100.0*ps2_6 + 100.0*ps0_6 -
       200.0*ps1_6 + 100.0*ps1_7 + 100.0*ps1_5 + 0.25*om1_6)

+ sqr(-25.0*(ps1_7-ps1_5) * (ph2_6-ph0_6) +
       25.0*(ps2_6-ps0_6) * (ph1_7-ph1_5) - 200.0*ph1_6 +
       100.0*ph2_6 + 100.0*ph0_6 - 200.0*ph1_6 + 100.0*ph1_7
       + 100.0*ph1_5)

+ sqr(-200.0*om2_6 + 100.0*om3_6 + 100.0*om1_6 - 200.0*om2_6
       + 100.0*om2_7 + 100.0*om2_5 +
       1.5308084989341916e-13*ph3_6 -
       1.5308084989341916e-13*ph1_6 - 2500.0*ph2_7 +
       2500.0*ph2_5)

+ sqr(- 200.0*ps2_6 + 100.0*ps3_6 + 100.0*ps1_6 -
       200.0*ps2_6 + 100.0*ps2_7 + 100.0*ps2_5 + 0.25*om2_6)

+ sqr(-25.0*(ps2_7-ps2_5) * (ph3_6-ph1_6) +
       25.0*(ps3_6-ps1_6) * (ph2_7-ph2_5) - 200.0*ph2_6 +
       100.0*ph3_6 + 100.0*ph1_6 - 200.0*ph2_6 + 100.0*ph2_7
       + 100.0*ph2_5)

+ sqr(-200.0*om3_6 + 100.0*om4_6 + 100.0*om2_6 - 200.0*om3_6
       + 100.0*om3_7 + 100.0*om3_5 +
       1.5308084989341916e-13*ph4_6 -
       1.5308084989341916e-13*ph2_6 - 2500.0*ph3_7 +
       2500.0*ph3_5)

+ sqr(- 200.0*ps3_6 + 100.0*ps4_6 + 100.0*ps2_6 -
       200.0*ps3_6 + 100.0*ps3_7 + 100.0*ps3_5 + 0.25*om3_6)

+ sqr(-25.0*(ps3_7-ps3_5) * (ph4_6-ph2_6) +
       25.0*(ps4_6-ps2_6) * (ph3_7-ph3_5) - 200.0*ph3_6 +
       100.0*ph4_6 + 100.0*ph2_6 - 200.0*ph3_6 + 100.0*ph3_7
       + 100.0*ph3_5)

+ sqr(-200.0*om4_6 + 100.0*om5_6 + 100.0*om3_6 - 200.0*om4_6
       + 100.0*om4_7 + 100.0*om4_5 +
       1.5308084989341916e-13*ph5_6 -
       1.5308084989341916e-13*ph3_6 - 2500.0*ph4_7 +
       2500.0*ph4_5)

+ sqr(- 200.0*ps4_6 + 100.0*ps5_6 + 100.0*ps3_6 -
       200.0*ps4_6 + 100.0*ps4_7 + 100.0*ps4_5 + 0.25*om4_6)

+ sqr(-25.0*(ps4_7-ps4_5) * (ph5_6-ph3_6) +
       25.0*(ps5_6-ps3_6) * (ph4_7-ph4_5) - 200.0*ph4_6 +
       100.0*ph5_6 + 100.0*ph3_6 - 200.0*ph4_6 + 100.0*ph4_7
       + 100.0*ph4_5)

+ sqr(-200.0*om5_6 + 100.0*om6_6 + 100.0*om4_6 - 200.0*om5_6
       + 100.0*om5_7 + 100.0*om5_5 +
       1.5308084989341916e-13*ph6_6 -
       1.5308084989341916e-13*ph4_6 - 2500.0*ph5_7 +
       2500.0*ph5_5)

+ sqr(- 200.0*ps5_6 + 100.0*ps6_6 + 100.0*ps4_6 -
       200.0*ps5_6 + 100.0*ps5_7 + 100.0*ps5_5 + 0.25*om5_6)

+ sqr(-25.0*(ps5_7-ps5_5) * (ph6_6-ph4_6) +
       25.0*(ps6_6-ps4_6) * (ph5_7-ph5_5) - 200.0*ph5_6 +
       100.0*ph6_6 + 100.0*ph4_6 - 200.0*ph5_6 + 100.0*ph5_7
       + 100.0*ph5_5)

+ sqr(-200.0*om6_6 + 100.0*om7_6 + 100.0*om5_6 - 200.0*om6_6
       + 100.0*om6_7 + 100.0*om6_5 +
       1.5308084989341916e-13*ph7_6 -
       1.5308084989341916e-13*ph5_6 - 2500.0*ph6_7 +
       2500.0*ph6_5)

+ sqr(- 200.0*ps6_6 + 100.0*ps7_6 + 100.0*ps5_6 -
       200.0*ps6_6 + 100.0*ps6_7 + 100.0*ps6_5 + 0.25*om6_6)

+ sqr(-25.0*(ps6_7-ps6_5) * (ph7_6-ph5_6) +
       25.0*(ps7_6-ps5_6) * (ph6_7-ph6_5) - 200.0*ph6_6 +
       100.0*ph7_6 + 100.0*ph5_6 - 200.0*ph6_6 + 100.0*ph6_7
       + 100.0*ph6_5)

+ sqr(-200.0*om7_6 + 100.0*om8_6 + 100.0*om6_6 - 200.0*om7_6
       + 100.0*om7_7 + 100.0*om7_5 +
       1.5308084989341916e-13*ph8_6 -
       1.5308084989341916e-13*ph6_6 - 2500.0*ph7_7 +
       2500.0*ph7_5)

+ sqr(- 200.0*ps7_6 + 100.0*ps8_6 + 100.0*ps6_6 -
       200.0*ps7_6 + 100.0*ps7_7 + 100.0*ps7_5 + 0.25*om7_6)

+ sqr(-25.0*(ps7_7-ps7_5) * (ph8_6-ph6_6) +
       25.0*(ps8_6-ps6_6) * (ph7_7-ph7_5) - 200.0*ph7_6 +
       100.0*ph8_6 + 100.0*ph6_6 - 200.0*ph7_6 + 100.0*ph7_7
       + 100.0*ph7_5)

+ sqr(-200.0*om8_6 + 100.0*om9_6 + 100.0*om7_6 - 200.0*om8_6
       + 100.0*om8_7 + 100.0*om8_5 +
       1.5308084989341916e-13*ph9_6 -
       1.5308084989341916e-13*ph7_6 - 2500.0*ph8_7 +
       2500.0*ph8_5)

+ sqr(- 200.0*ps8_6 + 100.0*ps9_6 + 100.0*ps7_6 -
       200.0*ps8_6 + 100.0*ps8_7 + 100.0*ps8_5 + 0.25*om8_6)

+ sqr(-25.0*(ps8_7-ps8_5) * (ph9_6-ph7_6) +
       25.0*(ps9_6-ps7_6) * (ph8_7-ph8_5) - 200.0*ph8_6 +
       100.0*ph9_6 + 100.0*ph7_6 - 200.0*ph8_6 + 100.0*ph8_7
       + 100.0*ph8_5)

+ sqr(-200.0*om9_6 + 100.0*om10_6 + 100.0*om8_6 -
       200.0*om9_6 + 100.0*om9_7 + 100.0*om9_5 +
       1.5308084989341916e-13*ph10_6 -
       1.5308084989341916e-13*ph8_6 - 2500.0*ph9_7 +
       2500.0*ph9_5)

+ sqr(- 200.0*ps9_6 + 100.0*ps10_6 + 100.0*ps8_6 -
       200.0*ps9_6 + 100.0*ps9_7 + 100.0*ps9_5 + 0.25*om9_6)

+ sqr(-25.0*(ps9_7-ps9_5) * (ph10_6-ph8_6) + 25.0*(ps10_6-
       ps8_6) * (ph9_7-ph9_5) - 200.0*ph9_6 + 100.0*ph10_6 +
       100.0*ph8_6 - 200.0*ph9_6 + 100.0*ph9_7 +
       100.0*ph9_5)

+ sqr(-200.0*omm9_7 + 100.0*omm8_7 + 100.0*omm10_7 -
       200.0*omm9_7 + 100.0*omm9_8 + 100.0*omm9_6 +
       1.5308084989341916e-13*phm8_7 -
       1.5308084989341916e-13*phm10_7 - 2500.0*phm9_8 +
       2500.0*phm9_6)

+ sqr(-200.0*psm9_7 + 100.0*psm8_7 + 100.0*psm10_7 -
       200.0*psm9_7 + 100.0*psm9_8 + 100.0*psm9_6 +
       0.25*omm9_7)

+ sqr(-25.0*(psm9_8-psm9_6) * (phm8_7-phm10_7) +
       25.0*(psm8_7-psm10_7) * (phm9_8-phm9_6) -
       200.0*phm9_7 + 100.0*phm8_7 + 100.0*phm10_7 -
       200.0*phm9_7 + 100.0*phm9_8 + 100.0*phm9_6)

+ sqr(- 200.0*omm8_7 + 100.0*omm7_7 + 100.0*omm9_7 -
       200.0*omm8_7 + 100.0*omm8_8 + 100.0*omm8_6 +
       1.5308084989341916e-13*phm7_7 -
       1.5308084989341916e-13*phm9_7 - 2500.0*phm8_8 +
       2500.0*phm8_6)

+ sqr(-200.0*psm8_7 + 100.0*psm7_7 + 100.0*psm9_7 -
       200.0*psm8_7 + 100.0*psm8_8 + 100.0*psm8_6 +
       0.25*omm8_7)

+ sqr(-25.0*(psm8_8-psm8_6) * (phm7_7-phm9_7) +
       25.0*(psm7_7-psm9_7) * (phm8_8-phm8_6) - 200.0*phm8_7
       + 100.0*phm7_7 + 100.0*phm9_7 - 200.0*phm8_7 +
       100.0*phm8_8 + 100.0*phm8_6)

+ sqr(-200.0*omm7_7 + 100.0*omm6_7 + 100.0*omm8_7 -
       200.0*omm7_7 + 100.0*omm7_8 + 100.0*omm7_6 +
       1.5308084989341916e-13*phm6_7 - 1.5308084989341916e-13
       *phm8_7 - 2500.0*phm7_8 + 2500.0*phm7_6)

+ sqr(-200.0*psm7_7 + 100.0*psm6_7 + 100.0*psm8_7 -
       200.0*psm7_7 + 100.0*psm7_8 + 100.0*psm7_6 +
       0.25*omm7_7)

+ sqr(-25.0*(psm7_8-psm7_6) * (phm6_7-phm8_7) +
       25.0*(psm6_7-psm8_7) * (phm7_8-phm7_6) - 200.0*phm7_7
       + 100.0*phm6_7 + 100.0*phm8_7 - 200.0*phm7_7 +
       100.0*phm7_8 + 100.0*phm7_6)

+ sqr(-200.0*omm6_7 + 100.0*omm5_7 + 100.0*omm7_7 -
       200.0*omm6_7 + 100.0*omm6_8 + 100.0*omm6_6 +
       1.5308084989341916e-13*phm5_7 -
       1.5308084989341916e-13*phm7_7 - 2500.0*phm6_8 +
       2500.0*phm6_6)

+ sqr(-200.0*psm6_7 + 100.0*psm5_7 + 100.0*psm7_7 -
       200.0*psm6_7 + 100.0*psm6_8 + 100.0*psm6_6 +
       0.25*omm6_7)

+ sqr(-25.0*(psm6_8-psm6_6) * (phm5_7-phm7_7) +
       25.0*(psm5_7-psm7_7) * (phm6_8-phm6_6) - 200.0*phm6_7
       + 100.0*phm5_7 + 100.0*phm7_7 - 200.0*phm6_7 +
       100.0*phm6_8 + 100.0*phm6_6)

+ sqr(- 200.0*omm5_7 + 100.0*omm4_7 + 100.0*omm6_7 -
       200.0*omm5_7 + 100.0*omm5_8 + 100.0*omm5_6 +
       1.5308084989341916e-13*phm4_7 -
       1.5308084989341916e-13*phm6_7 - 2500.0*phm5_8 +
       2500.0*phm5_6)

+ sqr(-200.0*psm5_7 + 100.0*psm4_7 + 100.0*psm6_7 -
       200.0*psm5_7 + 100.0*psm5_8 + 100.0*psm5_6 +
       0.25*omm5_7)

+ sqr(-25.0*(psm5_8-psm5_6) * (phm4_7-phm6_7) +
       25.0*(psm4_7-psm6_7) * (phm5_8-phm5_6) - 200.0*phm5_7
       + 100.0*phm4_7 + 100.0*phm6_7 - 200.0*phm5_7 +
       100.0*phm5_8 + 100.0*phm5_6)

+ sqr(-200.0*omm4_7 + 100.0*omm3_7 + 100.0*omm5_7 -
       200.0*omm4_7 + 100.0*omm4_8 + 100.0*omm4_6 +
       1.5308084989341916e-13*phm3_7 - 1.5308084989341916e-13
       *phm5_7 - 2500.0*phm4_8 + 2500.0*phm4_6)

+ sqr(-200.0*psm4_7 + 100.0*psm3_7 + 100.0*psm5_7 -
       200.0*psm4_7 + 100.0*psm4_8 + 100.0*psm4_6 +
       0.25*omm4_7)

+ sqr(-25.0*(psm4_8-psm4_6) * (phm3_7-phm5_7) +
       25.0*(psm3_7-psm5_7) * (phm4_8-phm4_6) - 200.0*phm4_7
       + 100.0*phm3_7 + 100.0*phm5_7 - 200.0*phm4_7 +
       100.0*phm4_8 + 100.0*phm4_6)

+ sqr(-200.0*omm3_7 + 100.0*omm2_7 + 100.0*omm4_7 -
       200.0*omm3_7 + 100.0*omm3_8 + 100.0*omm3_6 +
       1.5308084989341916e-13*phm2_7 -
       1.5308084989341916e-13*phm4_7 - 2500.0*phm3_8 +
       2500.0*phm3_6)

+ sqr(-200.0*psm3_7 + 100.0*psm2_7 + 100.0*psm4_7 -
       200.0*psm3_7 + 100.0*psm3_8 + 100.0*psm3_6 +
       0.25*omm3_7)

+ sqr(-25.0*(psm3_8-psm3_6) * (phm2_7-phm4_7) +
       25.0*(psm2_7-psm4_7) * (phm3_8-phm3_6) - 200.0*phm3_7
       + 100.0*phm2_7 + 100.0*phm4_7 - 200.0*phm3_7 +
       100.0*phm3_8 + 100.0*phm3_6)

+ sqr(- 200.0*omm2_7 + 100.0*omm1_7 + 100.0*omm3_7 -
       200.0*omm2_7 + 100.0*omm2_8 + 100.0*omm2_6 +
       1.5308084989341916e-13*phm1_7 -
       1.5308084989341916e-13*phm3_7 - 2500.0*phm2_8 +
       2500.0*phm2_6)

+ sqr(-200.0*psm2_7 + 100.0*psm1_7 + 100.0*psm3_7 -
       200.0*psm2_7 + 100.0*psm2_8 + 100.0*psm2_6 +
       0.25*omm2_7)

+ sqr(-25.0*(psm2_8-psm2_6) * (phm1_7-phm3_7) +
       25.0*(psm1_7-psm3_7) * (phm2_8-phm2_6) - 200.0*phm2_7
       + 100.0*phm1_7 + 100.0*phm3_7 - 200.0*phm2_7 +
       100.0*phm2_8 + 100.0*phm2_6)

+ sqr(-200.0*omm1_7 + 100.0*om0_7 + 100.0*omm2_7 -
       200.0*omm1_7 + 100.0*omm1_8 + 100.0*omm1_6 +
       1.5308084989341916e-13*ph0_7 - 1.5308084989341916e-13
       *phm2_7 - 2500.0*phm1_8 + 2500.0*phm1_6)

+ sqr(-200.0*psm1_7 + 100.0*ps0_7 + 100.0*psm2_7 -
       200.0*psm1_7 + 100.0*psm1_8 + 100.0*psm1_6 +
       0.25*omm1_7)

+ sqr(-25.0*(psm1_8-psm1_6) * (ph0_7-phm2_7) +
       25.0*(ps0_7-psm2_7) * (phm1_8- phm1_6) - 200.0*phm1_7
       + 100.0*ph0_7 + 100.0*phm2_7 - 200.0*phm1_7 +
       100.0*phm1_8 + 100.0*phm1_6)

+ sqr(-200.0*om0_7 + 100.0*om1_7 + 100.0*omm1_7 -
       200.0*om0_7 + 100.0*om0_8 + 100.0*om0_6 +
       1.5308084989341916e-13*ph1_7 -
       1.5308084989341916e-13*phm1_7 - 2500.0*ph0_8 +
       2500.0*ph0_6)

+ sqr(- 200.0*ps0_7 + 100.0*ps1_7 + 100.0*psm1_7 -
       200.0*ps0_7 + 100.0*ps0_8 + 100.0*ps0_6 + 0.25*om0_7)

+ sqr(-25.0*(ps0_8-ps0_6) * (ph1_7-phm1_7) + 25.0*(ps1_7-
       psm1_7) * (ph0_8-ph0_6) - 200.0*ph0_7 + 100.0*ph1_7 +
       100.0*phm1_7 - 200.0*ph0_7 + 100.0*ph0_8 +
       100.0*ph0_6)

+ sqr(-200.0*om1_7 + 100.0*om2_7 + 100.0*om0_7 - 200.0*om1_7
       + 100.0*om1_8 + 100.0*om1_6 +
       1.5308084989341916e-13*ph2_7 -
       1.5308084989341916e-13*ph0_7 - 2500.0*ph1_8 +
       2500.0*ph1_6)

+ sqr(- 200.0*ps1_7 + 100.0*ps2_7 + 100.0*ps0_7 -
       200.0*ps1_7 + 100.0*ps1_8 + 100.0*ps1_6 + 0.25*om1_7)

+ sqr(-25.0*(ps1_8-ps1_6) * (ph2_7-ph0_7) +
       25.0*(ps2_7-ps0_7) * (ph1_8-ph1_6) - 200.0*ph1_7 +
       100.0*ph2_7 + 100.0*ph0_7 - 200.0*ph1_7 + 100.0*ph1_8
       + 100.0*ph1_6)

+ sqr(-200.0*om2_7 + 100.0*om3_7 + 100.0*om1_7 - 200.0*om2_7
       + 100.0*om2_8 + 100.0*om2_6 +
       1.5308084989341916e-13*ph3_7 -
       1.5308084989341916e-13*ph1_7 - 2500.0*ph2_8 +
       2500.0*ph2_6)

+ sqr(- 200.0*ps2_7 + 100.0*ps3_7 + 100.0*ps1_7 -
       200.0*ps2_7 + 100.0*ps2_8 + 100.0*ps2_6 + 0.25*om2_7)

+ sqr(-25.0*(ps2_8-ps2_6) * (ph3_7-ph1_7) +
       25.0*(ps3_7-ps1_7) * (ph2_8-ph2_6) - 200.0*ph2_7 +
       100.0*ph3_7 + 100.0*ph1_7 - 200.0*ph2_7 + 100.0*ph2_8
       + 100.0*ph2_6)

+ sqr(-200.0*om3_7 + 100.0*om4_7 + 100.0*om2_7 - 200.0*om3_7
       + 100.0*om3_8 + 100.0*om3_6 +
       1.5308084989341916e-13*ph4_7 -
       1.5308084989341916e-13*ph2_7 - 2500.0*ph3_8 +
       2500.0*ph3_6)

+ sqr(- 200.0*ps3_7 + 100.0*ps4_7 + 100.0*ps2_7 -
       200.0*ps3_7 + 100.0*ps3_8 + 100.0*ps3_6 + 0.25*om3_7)

+ sqr(-25.0*(ps3_8-ps3_6) * (ph4_7-ph2_7) +
       25.0*(ps4_7-ps2_7) * (ph3_8-ph3_6) - 200.0*ph3_7 +
       100.0*ph4_7 + 100.0*ph2_7 - 200.0*ph3_7 + 100.0*ph3_8
       + 100.0*ph3_6)

+ sqr(-200.0*om4_7 + 100.0*om5_7 + 100.0*om3_7 - 200.0*om4_7
       + 100.0*om4_8 + 100.0*om4_6 +
       1.5308084989341916e-13*ph5_7 -
       1.5308084989341916e-13*ph3_7 - 2500.0*ph4_8 +
       2500.0*ph4_6)

+ sqr(- 200.0*ps4_7 + 100.0*ps5_7 + 100.0*ps3_7 -
       200.0*ps4_7 + 100.0*ps4_8 + 100.0*ps4_6 + 0.25*om4_7)

+ sqr(-25.0*(ps4_8-ps4_6) * (ph5_7-ph3_7) +
       25.0*(ps5_7-ps3_7) * (ph4_8-ph4_6) - 200.0*ph4_7 +
       100.0*ph5_7 + 100.0*ph3_7 - 200.0*ph4_7 + 100.0*ph4_8
       + 100.0*ph4_6)

+ sqr(-200.0*om5_7 + 100.0*om6_7 + 100.0*om4_7 - 200.0*om5_7
       + 100.0*om5_8 + 100.0*om5_6 +
       1.5308084989341916e-13*ph6_7 -
       1.5308084989341916e-13*ph4_7 - 2500.0*ph5_8 +
       2500.0*ph5_6)

+ sqr(- 200.0*ps5_7 + 100.0*ps6_7 + 100.0*ps4_7 -
       200.0*ps5_7 + 100.0*ps5_8 + 100.0*ps5_6 + 0.25*om5_7)

+ sqr(-25.0*(ps5_8-ps5_6) * (ph6_7-ph4_7) +
       25.0*(ps6_7-ps4_7) * (ph5_8-ph5_6) - 200.0*ph5_7 +
       100.0*ph6_7 + 100.0*ph4_7 - 200.0*ph5_7 + 100.0*ph5_8
       + 100.0*ph5_6)

+ sqr(-200.0*om6_7 + 100.0*om7_7 + 100.0*om5_7 - 200.0*om6_7
       + 100.0*om6_8 + 100.0*om6_6 +
       1.5308084989341916e-13*ph7_7 -
       1.5308084989341916e-13*ph5_7 - 2500.0*ph6_8 +
       2500.0*ph6_6)

+ sqr(- 200.0*ps6_7 + 100.0*ps7_7 + 100.0*ps5_7 -
       200.0*ps6_7 + 100.0*ps6_8 + 100.0*ps6_6 + 0.25*om6_7)

+ sqr(-25.0*(ps6_8-ps6_6) * (ph7_7-ph5_7) +
       25.0*(ps7_7-ps5_7) * (ph6_8-ph6_6) - 200.0*ph6_7 +
       100.0*ph7_7 + 100.0*ph5_7 - 200.0*ph6_7 + 100.0*ph6_8
       + 100.0*ph6_6)

+ sqr(-200.0*om7_7 + 100.0*om8_7 + 100.0*om6_7 - 200.0*om7_7
       + 100.0*om7_8 + 100.0*om7_6 +
       1.5308084989341916e-13*ph8_7 -
       1.5308084989341916e-13*ph6_7 - 2500.0*ph7_8 +
       2500.0*ph7_6)

+ sqr(- 200.0*ps7_7 + 100.0*ps8_7 + 100.0*ps6_7 -
       200.0*ps7_7 + 100.0*ps7_8 + 100.0*ps7_6 + 0.25*om7_7)

+ sqr(-25.0*(ps7_8-ps7_6) * (ph8_7-ph6_7) +
       25.0*(ps8_7-ps6_7) * (ph7_8-ph7_6) - 200.0*ph7_7 +
       100.0*ph8_7 + 100.0*ph6_7 - 200.0*ph7_7 + 100.0*ph7_8
       + 100.0*ph7_6)

+ sqr(-200.0*om8_7 + 100.0*om9_7 + 100.0*om7_7 - 200.0*om8_7
       + 100.0*om8_8 + 100.0*om8_6 +
       1.5308084989341916e-13*ph9_7 -
       1.5308084989341916e-13*ph7_7 - 2500.0*ph8_8 +
       2500.0*ph8_6)

+ sqr(- 200.0*ps8_7 + 100.0*ps9_7 + 100.0*ps7_7 -
       200.0*ps8_7 + 100.0*ps8_8 + 100.0*ps8_6 + 0.25*om8_7)

+ sqr(-25.0*(ps8_8-ps8_6) * (ph9_7-ph7_7) +
       25.0*(ps9_7-ps7_7) * (ph8_8-ph8_6) - 200.0*ph8_7 +
       100.0*ph9_7 + 100.0*ph7_7 - 200.0*ph8_7 + 100.0*ph8_8
       + 100.0*ph8_6)

+ sqr(-200.0*om9_7 + 100.0*om10_7 + 100.0*om8_7 -
       200.0*om9_7 + 100.0*om9_8 + 100.0*om9_6 +
       1.5308084989341916e-13*ph10_7 -
       1.5308084989341916e-13*ph8_7 - 2500.0*ph9_8 +
       2500.0*ph9_6)

+ sqr(- 200.0*ps9_7 + 100.0*ps10_7 + 100.0*ps8_7 -
       200.0*ps9_7 + 100.0*ps9_8 + 100.0*ps9_6 + 0.25*om9_7)

+ sqr(-25.0*(ps9_8-ps9_6) * (ph10_7-ph8_7) + 25.0*(ps10_7-
       ps8_7) * (ph9_8-ph9_6) - 200.0*ph9_7 + 100.0*ph10_7 +
       100.0*ph8_7 - 200.0*ph9_7 + 100.0*ph9_8 +
       100.0*ph9_6)

+ sqr(-200.0*omm9_8 + 100.0*omm8_8 + 100.0*omm10_8 -
       200.0*omm9_8 + 100.0*omm9_9 + 100.0*omm9_7 +
       1.5308084989341916e-13*phm8_8 -
       1.5308084989341916e-13*phm10_8 - 2500.0*phm9_9 +
       2500.0*phm9_7)

+ sqr(-200.0*psm9_8 + 100.0*psm8_8 + 100.0*psm10_8 -
       200.0*psm9_8 + 100.0*psm9_9 + 100.0*psm9_7 +
       0.25*omm9_8)

+ sqr(-25.0*(psm9_9-psm9_7) * (phm8_8-phm10_8) +
       25.0*(psm8_8-psm10_8) * (phm9_9-phm9_7) -
       200.0*phm9_8 + 100.0*phm8_8 + 100.0*phm10_8 -
       200.0*phm9_8 + 100.0*phm9_9 + 100.0*phm9_7)

+ sqr(- 200.0*omm8_8 + 100.0*omm7_8 + 100.0*omm9_8 -
       200.0*omm8_8 + 100.0*omm8_9 + 100.0*omm8_7 +
       1.5308084989341916e-13*phm7_8 -
       1.5308084989341916e-13*phm9_8 - 2500.0*phm8_9 +
       2500.0*phm8_7)

+ sqr(-200.0*psm8_8 + 100.0*psm7_8 + 100.0*psm9_8 -
       200.0*psm8_8 + 100.0*psm8_9 + 100.0*psm8_7 +
       0.25*omm8_8)

+ sqr(-25.0*(psm8_9-psm8_7) * (phm7_8-phm9_8) +
       25.0*(psm7_8-psm9_8) * (phm8_9-phm8_7) - 200.0*phm8_8
       + 100.0*phm7_8 + 100.0*phm9_8 - 200.0*phm8_8 +
       100.0*phm8_9 + 100.0*phm8_7)

+ sqr(-200.0*omm7_8 + 100.0*omm6_8 + 100.0*omm8_8 -
       200.0*omm7_8 + 100.0*omm7_9 + 100.0*omm7_7 +
       1.5308084989341916e-13*phm6_8 - 1.5308084989341916e-13
       *phm8_8 - 2500.0*phm7_9 + 2500.0*phm7_7)

+ sqr(-200.0*psm7_8 + 100.0*psm6_8 + 100.0*psm8_8 -
       200.0*psm7_8 + 100.0*psm7_9 + 100.0*psm7_7 +
       0.25*omm7_8)

+ sqr(-25.0*(psm7_9-psm7_7) * (phm6_8-phm8_8) +
       25.0*(psm6_8-psm8_8) * (phm7_9-phm7_7) - 200.0*phm7_8
       + 100.0*phm6_8 + 100.0*phm8_8 - 200.0*phm7_8 +
       100.0*phm7_9 + 100.0*phm7_7)

+ sqr(-200.0*omm6_8 + 100.0*omm5_8 + 100.0*omm7_8 -
       200.0*omm6_8 + 100.0*omm6_9 + 100.0*omm6_7 +
       1.5308084989341916e-13*phm5_8 -
       1.5308084989341916e-13*phm7_8 - 2500.0*phm6_9 +
       2500.0*phm6_7)

+ sqr(-200.0*psm6_8 + 100.0*psm5_8 + 100.0*psm7_8 -
       200.0*psm6_8 + 100.0*psm6_9 + 100.0*psm6_7 +
       0.25*omm6_8)

+ sqr(-25.0*(psm6_9-psm6_7) * (phm5_8-phm7_8) +
       25.0*(psm5_8-psm7_8) * (phm6_9-phm6_7) - 200.0*phm6_8
       + 100.0*phm5_8 + 100.0*phm7_8 - 200.0*phm6_8 +
       100.0*phm6_9 + 100.0*phm6_7)

+ sqr(- 200.0*omm5_8 + 100.0*omm4_8 + 100.0*omm6_8 -
       200.0*omm5_8 + 100.0*omm5_9 + 100.0*omm5_7 +
       1.5308084989341916e-13*phm4_8 -
       1.5308084989341916e-13*phm6_8 - 2500.0*phm5_9 +
       2500.0*phm5_7)

+ sqr(-200.0*psm5_8 + 100.0*psm4_8 + 100.0*psm6_8 -
       200.0*psm5_8 + 100.0*psm5_9 + 100.0*psm5_7 +
       0.25*omm5_8)

+ sqr(-25.0*(psm5_9-psm5_7) * (phm4_8-phm6_8) +
       25.0*(psm4_8-psm6_8) * (phm5_9-phm5_7) - 200.0*phm5_8
       + 100.0*phm4_8 + 100.0*phm6_8 - 200.0*phm5_8 +
       100.0*phm5_9 + 100.0*phm5_7)

+ sqr(-200.0*omm4_8 + 100.0*omm3_8 + 100.0*omm5_8 -
       200.0*omm4_8 + 100.0*omm4_9 + 100.0*omm4_7 +
       1.5308084989341916e-13*phm3_8 - 1.5308084989341916e-13
       *phm5_8 - 2500.0*phm4_9 + 2500.0*phm4_7)

+ sqr(-200.0*psm4_8 + 100.0*psm3_8 + 100.0*psm5_8 -
       200.0*psm4_8 + 100.0*psm4_9 + 100.0*psm4_7 +
       0.25*omm4_8)

+ sqr(-25.0*(psm4_9-psm4_7) * (phm3_8-phm5_8) +
       25.0*(psm3_8-psm5_8) * (phm4_9-phm4_7) - 200.0*phm4_8
       + 100.0*phm3_8 + 100.0*phm5_8 - 200.0*phm4_8 +
       100.0*phm4_9 + 100.0*phm4_7)

+ sqr(-200.0*omm3_8 + 100.0*omm2_8 + 100.0*omm4_8 -
       200.0*omm3_8 + 100.0*omm3_9 + 100.0*omm3_7 +
       1.5308084989341916e-13*phm2_8 -
       1.5308084989341916e-13*phm4_8 - 2500.0*phm3_9 +
       2500.0*phm3_7)

+ sqr(-200.0*psm3_8 + 100.0*psm2_8 + 100.0*psm4_8 -
       200.0*psm3_8 + 100.0*psm3_9 + 100.0*psm3_7 +
       0.25*omm3_8)

+ sqr(-25.0*(psm3_9-psm3_7) * (phm2_8-phm4_8) +
       25.0*(psm2_8-psm4_8) * (phm3_9-phm3_7) - 200.0*phm3_8
       + 100.0*phm2_8 + 100.0*phm4_8 - 200.0*phm3_8 +
       100.0*phm3_9 + 100.0*phm3_7)

+ sqr(- 200.0*omm2_8 + 100.0*omm1_8 + 100.0*omm3_8 -
       200.0*omm2_8 + 100.0*omm2_9 + 100.0*omm2_7 +
       1.5308084989341916e-13*phm1_8 -
       1.5308084989341916e-13*phm3_8 - 2500.0*phm2_9 +
       2500.0*phm2_7)

+ sqr(-200.0*psm2_8 + 100.0*psm1_8 + 100.0*psm3_8 -
       200.0*psm2_8 + 100.0*psm2_9 + 100.0*psm2_7 +
       0.25*omm2_8)

+ sqr(-25.0*(psm2_9-psm2_7) * (phm1_8-phm3_8) +
       25.0*(psm1_8-psm3_8) * (phm2_9-phm2_7) - 200.0*phm2_8
       + 100.0*phm1_8 + 100.0*phm3_8 - 200.0*phm2_8 +
       100.0*phm2_9 + 100.0*phm2_7)

+ sqr(-200.0*omm1_8 + 100.0*om0_8 + 100.0*omm2_8 -
       200.0*omm1_8 + 100.0*omm1_9 + 100.0*omm1_7 +
       1.5308084989341916e-13*ph0_8 - 1.5308084989341916e-13
       *phm2_8 - 2500.0*phm1_9 + 2500.0*phm1_7)

+ sqr(-200.0*psm1_8 + 100.0*ps0_8 + 100.0*psm2_8 -
       200.0*psm1_8 + 100.0*psm1_9 + 100.0*psm1_7 +
       0.25*omm1_8)

+ sqr(-25.0*(psm1_9-psm1_7) * (ph0_8-phm2_8) +
       25.0*(ps0_8-psm2_8) * (phm1_9- phm1_7) - 200.0*phm1_8
       + 100.0*ph0_8 + 100.0*phm2_8 - 200.0*phm1_8 +
       100.0*phm1_9 + 100.0*phm1_7)

+ sqr(-200.0*om0_8 + 100.0*om1_8 + 100.0*omm1_8 -
       200.0*om0_8 + 100.0*om0_9 + 100.0*om0_7 +
       1.5308084989341916e-13*ph1_8 -
       1.5308084989341916e-13*phm1_8 - 2500.0*ph0_9 +
       2500.0*ph0_7)

+ sqr(- 200.0*ps0_8 + 100.0*ps1_8 + 100.0*psm1_8 -
       200.0*ps0_8 + 100.0*ps0_9 + 100.0*ps0_7 + 0.25*om0_8)

+ sqr(-25.0*(ps0_9-ps0_7) * (ph1_8-phm1_8) + 25.0*(ps1_8-
       psm1_8) * (ph0_9-ph0_7) - 200.0*ph0_8 + 100.0*ph1_8 +
       100.0*phm1_8 - 200.0*ph0_8 + 100.0*ph0_9 +
       100.0*ph0_7)

+ sqr(-200.0*om1_8 + 100.0*om2_8 + 100.0*om0_8 - 200.0*om1_8
       + 100.0*om1_9 + 100.0*om1_7 +
       1.5308084989341916e-13*ph2_8 -
       1.5308084989341916e-13*ph0_8 - 2500.0*ph1_9 +
       2500.0*ph1_7)

+ sqr(- 200.0*ps1_8 + 100.0*ps2_8 + 100.0*ps0_8 -
       200.0*ps1_8 + 100.0*ps1_9 + 100.0*ps1_7 + 0.25*om1_8)

+ sqr(-25.0*(ps1_9-ps1_7) * (ph2_8-ph0_8) +
       25.0*(ps2_8-ps0_8) * (ph1_9-ph1_7) - 200.0*ph1_8 +
       100.0*ph2_8 + 100.0*ph0_8 - 200.0*ph1_8 + 100.0*ph1_9
       + 100.0*ph1_7)

+ sqr(-200.0*om2_8 + 100.0*om3_8 + 100.0*om1_8 - 200.0*om2_8
       + 100.0*om2_9 + 100.0*om2_7 +
       1.5308084989341916e-13*ph3_8 -
       1.5308084989341916e-13*ph1_8 - 2500.0*ph2_9 +
       2500.0*ph2_7)

+ sqr(- 200.0*ps2_8 + 100.0*ps3_8 + 100.0*ps1_8 -
       200.0*ps2_8 + 100.0*ps2_9 + 100.0*ps2_7 + 0.25*om2_8)

+ sqr(-25.0*(ps2_9-ps2_7) * (ph3_8-ph1_8) +
       25.0*(ps3_8-ps1_8) * (ph2_9-ph2_7) - 200.0*ph2_8 +
       100.0*ph3_8 + 100.0*ph1_8 - 200.0*ph2_8 + 100.0*ph2_9
       + 100.0*ph2_7)

+ sqr(-200.0*om3_8 + 100.0*om4_8 + 100.0*om2_8 - 200.0*om3_8
       + 100.0*om3_9 + 100.0*om3_7 +
       1.5308084989341916e-13*ph4_8 -
       1.5308084989341916e-13*ph2_8 - 2500.0*ph3_9 +
       2500.0*ph3_7)

+ sqr(- 200.0*ps3_8 + 100.0*ps4_8 + 100.0*ps2_8 -
       200.0*ps3_8 + 100.0*ps3_9 + 100.0*ps3_7 + 0.25*om3_8)

+ sqr(-25.0*(ps3_9-ps3_7) * (ph4_8-ph2_8) +
       25.0*(ps4_8-ps2_8) * (ph3_9-ph3_7) - 200.0*ph3_8 +
       100.0*ph4_8 + 100.0*ph2_8 - 200.0*ph3_8 + 100.0*ph3_9
       + 100.0*ph3_7)

+ sqr(-200.0*om4_8 + 100.0*om5_8 + 100.0*om3_8 - 200.0*om4_8
       + 100.0*om4_9 + 100.0*om4_7 +
       1.5308084989341916e-13*ph5_8 -
       1.5308084989341916e-13*ph3_8 - 2500.0*ph4_9 +
       2500.0*ph4_7)

+ sqr(- 200.0*ps4_8 + 100.0*ps5_8 + 100.0*ps3_8 -
       200.0*ps4_8 + 100.0*ps4_9 + 100.0*ps4_7 + 0.25*om4_8)

+ sqr(-25.0*(ps4_9-ps4_7) * (ph5_8-ph3_8) +
       25.0*(ps5_8-ps3_8) * (ph4_9-ph4_7) - 200.0*ph4_8 +
       100.0*ph5_8 + 100.0*ph3_8 - 200.0*ph4_8 + 100.0*ph4_9
       + 100.0*ph4_7)

+ sqr(-200.0*om5_8 + 100.0*om6_8 + 100.0*om4_8 - 200.0*om5_8
       + 100.0*om5_9 + 100.0*om5_7 +
       1.5308084989341916e-13*ph6_8 -
       1.5308084989341916e-13*ph4_8 - 2500.0*ph5_9 +
       2500.0*ph5_7)

+ sqr(- 200.0*ps5_8 + 100.0*ps6_8 + 100.0*ps4_8 -
       200.0*ps5_8 + 100.0*ps5_9 + 100.0*ps5_7 + 0.25*om5_8)

+ sqr(-25.0*(ps5_9-ps5_7) * (ph6_8-ph4_8) +
       25.0*(ps6_8-ps4_8) * (ph5_9-ph5_7) - 200.0*ph5_8 +
       100.0*ph6_8 + 100.0*ph4_8 - 200.0*ph5_8 + 100.0*ph5_9
       + 100.0*ph5_7)

+ sqr(-200.0*om6_8 + 100.0*om7_8 + 100.0*om5_8 - 200.0*om6_8
       + 100.0*om6_9 + 100.0*om6_7 +
       1.5308084989341916e-13*ph7_8 -
       1.5308084989341916e-13*ph5_8 - 2500.0*ph6_9 +
       2500.0*ph6_7)

+ sqr(- 200.0*ps6_8 + 100.0*ps7_8 + 100.0*ps5_8 -
       200.0*ps6_8 + 100.0*ps6_9 + 100.0*ps6_7 + 0.25*om6_8)

+ sqr(-25.0*(ps6_9-ps6_7) * (ph7_8-ph5_8) +
       25.0*(ps7_8-ps5_8) * (ph6_9-ph6_7) - 200.0*ph6_8 +
       100.0*ph7_8 + 100.0*ph5_8 - 200.0*ph6_8 + 100.0*ph6_9
       + 100.0*ph6_7)

+ sqr(-200.0*om7_8 + 100.0*om8_8 + 100.0*om6_8 - 200.0*om7_8
       + 100.0*om7_9 + 100.0*om7_7 +
       1.5308084989341916e-13*ph8_8 -
       1.5308084989341916e-13*ph6_8 - 2500.0*ph7_9 +
       2500.0*ph7_7)

+ sqr(- 200.0*ps7_8 + 100.0*ps8_8 + 100.0*ps6_8 -
       200.0*ps7_8 + 100.0*ps7_9 + 100.0*ps7_7 + 0.25*om7_8)

+ sqr(-25.0*(ps7_9-ps7_7) * (ph8_8-ph6_8) +
       25.0*(ps8_8-ps6_8) * (ph7_9-ph7_7) - 200.0*ph7_8 +
       100.0*ph8_8 + 100.0*ph6_8 - 200.0*ph7_8 + 100.0*ph7_9
       + 100.0*ph7_7)

+ sqr(-200.0*om8_8 + 100.0*om9_8 + 100.0*om7_8 - 200.0*om8_8
       + 100.0*om8_9 + 100.0*om8_7 +
       1.5308084989341916e-13*ph9_8 -
       1.5308084989341916e-13*ph7_8 - 2500.0*ph8_9 +
       2500.0*ph8_7)

+ sqr(- 200.0*ps8_8 + 100.0*ps9_8 + 100.0*ps7_8 -
       200.0*ps8_8 + 100.0*ps8_9 + 100.0*ps8_7 + 0.25*om8_8)

+ sqr(-25.0*(ps8_9-ps8_7) * (ph9_8-ph7_8) +
       25.0*(ps9_8-ps7_8) * (ph8_9-ph8_7) - 200.0*ph8_8 +
       100.0*ph9_8 + 100.0*ph7_8 - 200.0*ph8_8 + 100.0*ph8_9
       + 100.0*ph8_7)

+ sqr(-200.0*om9_8 + 100.0*om10_8 + 100.0*om8_8 -
       200.0*om9_8 + 100.0*om9_9 + 100.0*om9_7 +
       1.5308084989341916e-13*ph10_8 -
       1.5308084989341916e-13*ph8_8 - 2500.0*ph9_9 +
       2500.0*ph9_7)

+ sqr(- 200.0*ps9_8 + 100.0*ps10_8 + 100.0*ps8_8 -
       200.0*ps9_8 + 100.0*ps9_9 + 100.0*ps9_7 + 0.25*om9_8)

+ sqr(-25.0*(ps9_9-ps9_7) * (ph10_8-ph8_8) + 25.0*(ps10_8-
       ps8_8) * (ph9_9-ph9_7) - 200.0*ph9_8 + 100.0*ph10_8 +
       100.0*ph8_8 - 200.0*ph9_8 + 100.0*ph9_9 +
       100.0*ph9_7)

+ sqr(-200.0*omm9_9 + 100.0*omm8_9 + 100.0*omm10_9 -
       200.0*omm9_9 + 100.0*omm9_10 + 100.0*omm9_8 +
       1.5308084989341916e-13*phm8_9 -
       1.5308084989341916e-13*phm10_9 - 2500.0*phm9_10 +
       2500.0*phm9_8)

+ sqr(-200.0*psm9_9 + 100.0*psm8_9 + 100.0*psm10_9 -
       200.0*psm9_9 + 100.0*psm9_10 + 100.0*psm9_8 +
       0.25*omm9_9)

+ sqr(-25.0*(psm9_10-psm9_8) * (phm8_9-phm10_9) +
       25.0*(psm8_9-psm10_9) * (phm9_10-phm9_8) -
       200.0*phm9_9 + 100.0*phm8_9 + 100.0*phm10_9 -
       200.0*phm9_9 + 100.0*phm9_10 + 100.0*phm9_8)

+ sqr(- 200.0*omm8_9 + 100.0*omm7_9 + 100.0*omm9_9 -
       200.0*omm8_9 + 100.0*omm8_10 + 100.0*omm8_8 +
       1.5308084989341916e-13*phm7_9 -
       1.5308084989341916e-13*phm9_9 - 2500.0*phm8_10 +
       2500.0*phm8_8)

+ sqr(-200.0*psm8_9 + 100.0*psm7_9 + 100.0*psm9_9 -
       200.0*psm8_9 + 100.0*psm8_10 + 100.0*psm8_8 +
       0.25*omm8_9)

+ sqr(-25.0*(psm8_10-psm8_8) * (phm7_9-phm9_9) +
       25.0*(psm7_9-psm9_9) * (phm8_10-phm8_8) -
       200.0*phm8_9 + 100.0*phm7_9 + 100.0*phm9_9 -
       200.0*phm8_9 + 100.0*phm8_10 + 100.0*phm8_8)

+ sqr(-200.0*omm7_9 + 100.0*omm6_9 + 100.0*omm8_9 -
       200.0*omm7_9 + 100.0*omm7_10 + 100.0*omm7_8 +
       1.5308084989341916e-13*phm6_9 -
       1.5308084989341916e-13*phm8_9 - 2500.0*phm7_10 +
       2500.0*phm7_8)

+ sqr(-200.0*psm7_9 + 100.0*psm6_9 + 100.0*psm8_9 -
       200.0*psm7_9 + 100.0*psm7_10 + 100.0*psm7_8 +
       0.25*omm7_9)

+ sqr(-25.0*(psm7_10-psm7_8) * (phm6_9-phm8_9) +
       25.0*(psm6_9-psm8_9) * (phm7_10-phm7_8) -
       200.0*phm7_9 + 100.0*phm6_9 + 100.0*phm8_9 -
       200.0*phm7_9 + 100.0*phm7_10 + 100.0*phm7_8)

+ sqr(- 200.0*omm6_9 + 100.0*omm5_9 + 100.0*omm7_9 -
       200.0*omm6_9 + 100.0*omm6_10 + 100.0*omm6_8 +
       1.5308084989341916e-13*phm5_9 -
       1.5308084989341916e-13*phm7_9 - 2500.0*phm6_10 +
       2500.0*phm6_8)

+ sqr(-200.0*psm6_9 + 100.0*psm5_9 + 100.0*psm7_9 -
       200.0*psm6_9 + 100.0*psm6_10 + 100.0*psm6_8 +
       0.25*omm6_9)

+ sqr(-25.0*(psm6_10-psm6_8) * (phm5_9-phm7_9) +
       25.0*(psm5_9-psm7_9) * (phm6_10-phm6_8) -
       200.0*phm6_9 + 100.0*phm5_9 + 100.0*phm7_9 -
       200.0*phm6_9 + 100.0*phm6_10 + 100.0*phm6_8)

+ sqr(-200.0*omm5_9 + 100.0*omm4_9 + 100.0*omm6_9 -
       200.0*omm5_9 + 100.0*omm5_10 + 100.0*omm5_8 +
       1.5308084989341916e-13*phm4_9 -
       1.5308084989341916e-13*phm6_9 - 2500.0*phm5_10 +
       2500.0*phm5_8)

+ sqr(-200.0*psm5_9 + 100.0*psm4_9 + 100.0*psm6_9 -
       200.0*psm5_9 + 100.0*psm5_10 + 100.0*psm5_8 +
       0.25*omm5_9)

+ sqr(-25.0*(psm5_10-psm5_8) * (phm4_9-phm6_9) +
       25.0*(psm4_9-psm6_9) * (phm5_10-phm5_8) -
       200.0*phm5_9 + 100.0*phm4_9 + 100.0*phm6_9 -
       200.0*phm5_9 + 100.0*phm5_10 + 100.0*phm5_8)

+ sqr(- 200.0*omm4_9 + 100.0*omm3_9 + 100.0*omm5_9 -
       200.0*omm4_9 + 100.0*omm4_10 + 100.0*omm4_8 +
       1.5308084989341916e-13*phm3_9 -
       1.5308084989341916e-13*phm5_9 - 2500.0*phm4_10 +
       2500.0*phm4_8)

+ sqr(-200.0*psm4_9 + 100.0*psm3_9 + 100.0*psm5_9 -
       200.0*psm4_9 + 100.0*psm4_10 + 100.0*psm4_8 +
       0.25*omm4_9)

+ sqr(-25.0*(psm4_10-psm4_8) * (phm3_9-phm5_9) +
       25.0*(psm3_9-psm5_9) * (phm4_10-phm4_8) -
       200.0*phm4_9 + 100.0*phm3_9 + 100.0*phm5_9 -
       200.0*phm4_9 + 100.0*phm4_10 + 100.0*phm4_8)

+ sqr(-200.0*omm3_9 + 100.0*omm2_9 + 100.0*omm4_9 -
       200.0*omm3_9 + 100.0*omm3_10 + 100.0*omm3_8 +
       1.5308084989341916e-13*phm2_9 -
       1.5308084989341916e-13*phm4_9 - 2500.0*phm3_10 +
       2500.0*phm3_8)

+ sqr(-200.0*psm3_9 + 100.0*psm2_9 + 100.0*psm4_9 -
       200.0*psm3_9 + 100.0*psm3_10 + 100.0*psm3_8 +
       0.25*omm3_9)

+ sqr(-25.0*(psm3_10-psm3_8) * (phm2_9-phm4_9) +
       25.0*(psm2_9-psm4_9) * (phm3_10-phm3_8) -
       200.0*phm3_9 + 100.0*phm2_9 + 100.0*phm4_9 -
       200.0*phm3_9 + 100.0*phm3_10 + 100.0*phm3_8)

+ sqr(- 200.0*omm2_9 + 100.0*omm1_9 + 100.0*omm3_9 -
       200.0*omm2_9 + 100.0*omm2_10 + 100.0*omm2_8 +
       1.5308084989341916e-13*phm1_9 -
       1.5308084989341916e-13*phm3_9 - 2500.0*phm2_10 +
       2500.0*phm2_8)

+ sqr(-200.0*psm2_9 + 100.0*psm1_9 + 100.0*psm3_9 -
       200.0*psm2_9 + 100.0*psm2_10 + 100.0*psm2_8 +
       0.25*omm2_9)

+ sqr(-25.0*(psm2_10-psm2_8) * (phm1_9-phm3_9) +
       25.0*(psm1_9-psm3_9) * (phm2_10-phm2_8) -
       200.0*phm2_9 + 100.0*phm1_9 + 100.0*phm3_9 -
       200.0*phm2_9 + 100.0*phm2_10 + 100.0*phm2_8)

+ sqr(-200.0*omm1_9 + 100.0*om0_9 + 100.0*omm2_9 -
       200.0*omm1_9 + 100.0*omm1_10 + 100.0*omm1_8 +
       1.5308084989341916e-13*ph0_9 -
       1.5308084989341916e-13*phm2_9 - 2500.0*phm1_10 +
       2500.0*phm1_8)

+ sqr(-200.0*psm1_9 + 100.0*ps0_9 + 100.0*psm2_9 -
       200.0*psm1_9 + 100.0*psm1_10 + 100.0*psm1_8 +
       0.25*omm1_9)

+ sqr(-25.0*(psm1_10-psm1_8) * (ph0_9-phm2_9) +
       25.0*(ps0_9-psm2_9) * (phm1_10-phm1_8) - 200.0*phm1_9
       + 100.0*ph0_9 + 100.0*phm2_9 - 200.0*phm1_9 +
       100.0*phm1_10 + 100.0*phm1_8)

+ sqr(- 200.0*om0_9 + 100.0*om1_9 + 100.0*omm1_9 -
       200.0*om0_9 + 100.0*om0_10 + 100.0*om0_8 +
       1.5308084989341916e-13*ph1_9 -
       1.5308084989341916e-13*phm1_9 - 2500.0*ph0_10 +
       2500.0*ph0_8)

+ sqr(-200.0*ps0_9 + 100.0*ps1_9 + 100.0*psm1_9 -
       200.0*ps0_9 + 100.0*ps0_10 + 100.0*ps0_8 +
       0.25*om0_9)

+ sqr(-25.0*(ps0_10-ps0_8) * (ph1_9-phm1_9) +
       25.0*(ps1_9-psm1_9) * (ph0_10-ph0_8) - 200.0*ph0_9 +
       100.0*ph1_9 + 100.0*phm1_9 - 200.0*ph0_9 +
       100.0*ph0_10 + 100.0*ph0_8)

+ sqr(-200.0*om1_9 + 100.0*om2_9 + 100.0*om0_9 - 200.0*om1_9
       + 100.0*om1_10 + 100.0*om1_8 +
       1.5308084989341916e-13*ph2_9 -
       1.5308084989341916e-13*ph0_9 - 2500.0*ph1_10 +
       2500.0*ph1_8)

+ sqr(-200.0*ps1_9 + 100.0*ps2_9 + 100.0*ps0_9 - 200.0*ps1_9
       + 100.0*ps1_10 + 100.0*ps1_8 + 0.25*om1_9)

+ sqr(-25.0*(ps1_10-ps1_8) * (ph2_9-ph0_9) +
       25.0*(ps2_9-ps0_9) * (ph1_10- ph1_8) - 200.0*ph1_9 +
       100.0*ph2_9 + 100.0*ph0_9 - 200.0*ph1_9 +
       100.0*ph1_10 + 100.0*ph1_8)

+ sqr(-200.0*om2_9 + 100.0*om3_9 + 100.0*om1_9 - 200.0*om2_9
       + 100.0*om2_10 + 100.0*om2_8 +
       1.5308084989341916e-13*ph3_9 -
       1.5308084989341916e-13*ph1_9 - 2500.0*ph2_10 +
       2500.0*ph2_8)

+ sqr(- 200.0*ps2_9 + 100.0*ps3_9 + 100.0*ps1_9 -
       200.0*ps2_9 + 100.0*ps2_10 + 100.0*ps2_8 +
       0.25*om2_9)

+ sqr(-25.0*(ps2_10-ps2_8) * (ph3_9-ph1_9) +
       25.0*(ps3_9-ps1_9) * (ph2_10-ph2_8) - 200.0*ph2_9 +
       100.0*ph3_9 + 100.0*ph1_9 - 200.0*ph2_9 +
       100.0*ph2_10 + 100.0*ph2_8)

+ sqr(-200.0*om3_9 + 100.0*om4_9 + 100.0*om2_9 - 200.0*om3_9
       + 100.0*om3_10 + 100.0*om3_8 +
       1.5308084989341916e-13*ph4_9 -
       1.5308084989341916e-13*ph2_9 - 2500.0*ph3_10 +
       2500.0*ph3_8)

+ sqr(- 200.0*ps3_9 + 100.0*ps4_9 + 100.0*ps2_9 -
       200.0*ps3_9 + 100.0*ps3_10 + 100.0*ps3_8 +
       0.25*om3_9)

+ sqr(-25.0*(ps3_10-ps3_8) * (ph4_9-ph2_9) +
       25.0*(ps4_9-ps2_9) * (ph3_10-ph3_8) - 200.0*ph3_9 +
       100.0*ph4_9 + 100.0*ph2_9 - 200.0*ph3_9 +
       100.0*ph3_10 + 100.0*ph3_8)

+ sqr(-200.0*om4_9 + 100.0*om5_9 + 100.0*om3_9 - 200.0*om4_9
       + 100.0*om4_10 + 100.0*om4_8 +
       1.5308084989341916e-13*ph5_9 -
       1.5308084989341916e-13*ph3_9 - 2500.0*ph4_10 +
       2500.0*ph4_8)

+ sqr(- 200.0*ps4_9 + 100.0*ps5_9 + 100.0*ps3_9 -
       200.0*ps4_9 + 100.0*ps4_10 + 100.0*ps4_8 +
       0.25*om4_9)

+ sqr(-25.0*(ps4_10-ps4_8) * (ph5_9-ph3_9) +
       25.0*(ps5_9-ps3_9) * (ph4_10-ph4_8) - 200.0*ph4_9 +
       100.0*ph5_9 + 100.0*ph3_9 - 200.0*ph4_9 +
       100.0*ph4_10 + 100.0*ph4_8)

+ sqr(-200.0*om5_9 + 100.0*om6_9 + 100.0*om4_9 - 200.0*om5_9
       + 100.0*om5_10 + 100.0*om5_8 +
       1.5308084989341916e-13*ph6_9 -
       1.5308084989341916e-13*ph4_9 - 2500.0*ph5_10 +
       2500.0*ph5_8)

+ sqr(- 200.0*ps5_9 + 100.0*ps6_9 + 100.0*ps4_9 -
       200.0*ps5_9 + 100.0*ps5_10 + 100.0*ps5_8 +
       0.25*om5_9)

+ sqr(-25.0*(ps5_10-ps5_8) * (ph6_9-ph4_9) +
       25.0*(ps6_9-ps4_9) * (ph5_10-ph5_8) - 200.0*ph5_9 +
       100.0*ph6_9 + 100.0*ph4_9 - 200.0*ph5_9 +
       100.0*ph5_10 + 100.0*ph5_8)

+ sqr(-200.0*om6_9 + 100.0*om7_9 + 100.0*om5_9 - 200.0*om6_9
       + 100.0*om6_10 + 100.0*om6_8 +
       1.5308084989341916e-13*ph7_9 -
       1.5308084989341916e-13*ph5_9 - 2500.0*ph6_10 +
       2500.0*ph6_8)

+ sqr(- 200.0*ps6_9 + 100.0*ps7_9 + 100.0*ps5_9 -
       200.0*ps6_9 + 100.0*ps6_10 + 100.0*ps6_8 +
       0.25*om6_9)

+ sqr(-25.0*(ps6_10-ps6_8) * (ph7_9-ph5_9) +
       25.0*(ps7_9-ps5_9) * (ph6_10-ph6_8) - 200.0*ph6_9 +
       100.0*ph7_9 + 100.0*ph5_9 - 200.0*ph6_9 +
       100.0*ph6_10 + 100.0*ph6_8)

+ sqr(-200.0*om7_9 + 100.0*om8_9 + 100.0*om6_9 - 200.0*om7_9
       + 100.0*om7_10 + 100.0*om7_8 +
       1.5308084989341916e-13*ph8_9 -
       1.5308084989341916e-13*ph6_9 - 2500.0*ph7_10 +
       2500.0*ph7_8)

+ sqr(- 200.0*ps7_9 + 100.0*ps8_9 + 100.0*ps6_9 -
       200.0*ps7_9 + 100.0*ps7_10 + 100.0*ps7_8 +
       0.25*om7_9)

+ sqr(-25.0*(ps7_10-ps7_8) * (ph8_9-ph6_9) +
       25.0*(ps8_9-ps6_9) * (ph7_10-ph7_8) - 200.0*ph7_9 +
       100.0*ph8_9 + 100.0*ph6_9 - 200.0*ph7_9 +
       100.0*ph7_10 + 100.0*ph7_8)

+ sqr(-200.0*om8_9 + 100.0*om9_9 + 100.0*om7_9 - 200.0*om8_9
       + 100.0*om8_10 + 100.0*om8_8 +
       1.5308084989341916e-13*ph9_9 -
       1.5308084989341916e-13*ph7_9 - 2500.0*ph8_10 +
       2500.0*ph8_8)

+ sqr(- 200.0*ps8_9 + 100.0*ps9_9 + 100.0*ps7_9 -
       200.0*ps8_9 + 100.0*ps8_10 + 100.0*ps8_8 +
       0.25*om8_9)

+ sqr(-25.0*(ps8_10-ps8_8) * (ph9_9-ph7_9) +
       25.0*(ps9_9-ps7_9) * (ph8_10-ph8_8) - 200.0*ph8_9 +
       100.0*ph9_9 + 100.0*ph7_9 - 200.0*ph8_9 +
       100.0*ph8_10 + 100.0*ph8_8)

+ sqr(-200.0*om9_9 + 100.0*om10_9 + 100.0*om8_9 -
       200.0*om9_9 + 100.0*om9_10 + 100.0*om9_8 +
       1.5308084989341916e-13*ph10_9 -
       1.5308084989341916e-13*ph8_9 - 2500.0*ph9_10 +
       2500.0*ph9_8)

+ sqr(- 200.0*ps9_9 + 100.0*ps10_9 + 100.0*ps8_9 -
       200.0*ps9_9 + 100.0*ps9_10 + 100.0*ps9_8 +
       0.25*om9_9)

+ sqr(-25.0*(ps9_10-ps9_8) * (ph10_9-ph8_9) + 25.0*(ps10_9-
       ps8_9) * (ph9_10-ph9_8) - 200.0*ph9_9 + 100.0*ph10_9
       + 100.0*ph8_9 - 200.0*ph9_9 + 100.0*ph9_10 +
       100.0*ph9_8)

+ sqr(20.0*phm10_10 - 20.0*phm10_9 + 20.0*phm9_10 -
       20.0*phm10_10)

+ sqr(20.0*phm10_9 - 20.0*phm10_10 + 20.0*phm9_10 -
       20.0*phm10_10)

+ sqr(20.0*ph10_10 - 20.0*ph9_10 + 20.0*ph10_9 -
       20.0*ph10_10 + 1.0)

+ sqr(-20.0*psm10_10 + 20.0*psm10_9 + 20.0*psm9_10 -
       20.0*psm10_10)

+ sqr(20.0*psm10_9 - 20.0*psm10_10 + 20.0*psm9_10 -
       20.0*psm10_10)

+ sqr(-20.0*ps10_10 + 20.0*ps9_10 + 20.0*ps10_9 -
       20.0*ps10_10)

+ sqr(20.0*phm9_10 - 20.0*phm9_9 + 1.0)

+ sqr(20.0*phm9_9 - 20.0*phm9_10 + 1.0)

+ sqr(20.0*ph10_9 - 20.0*ph9_9)

+ sqr(20.0*phm9_9 - 20.0*phm10_9)

+ sqr(-20.0*psm9_10 + 20.0*psm9_9)

+ sqr(20.0*psm9_9 - 20.0*psm9_10)

+ sqr(-20.0*ps10_9 + 20.0*ps9_9)

+ sqr(20.0*psm9_9 - 20.0*psm10_9)

+ sqr(20.0*phm8_10 - 20.0*phm8_9 + 1.0)

+ sqr(20.0*phm8_9 - 20.0*phm8_10 + 1.0)

+ sqr(20.0*ph10_8 - 20.0*ph9_8)

+ sqr(20.0*phm9_8 - 20.0*phm10_8)

+ sqr(-20.0*psm8_10 + 20.0*psm8_9)

+ sqr(20.0*psm8_9 - 20.0*psm8_10)

+ sqr(-20.0*ps10_8 + 20.0*ps9_8)

+ sqr(20.0*psm9_8 - 20.0*psm10_8)

+ sqr(20.0*phm7_10 - 20.0*phm7_9 + 1.0)

+ sqr(20.0*phm7_9 - 20.0*phm7_10 + 1.0)

+ sqr(20.0*ph10_7 - 20.0*ph9_7)

+ sqr(20.0*phm9_7 - 20.0*phm10_7)

+ sqr(-20.0*psm7_10 + 20.0*psm7_9)

+ sqr(20.0*psm7_9 - 20.0*psm7_10)

+ sqr(-20.0*ps10_7 + 20.0*ps9_7)

+ sqr(20.0*psm9_7 - 20.0*psm10_7)

+ sqr(20.0*phm6_10 - 20.0*phm6_9 + 1.0)

+ sqr(20.0*phm6_9 - 20.0*phm6_10 + 1.0)

+ sqr(20.0*ph10_6 - 20.0*ph9_6)

+ sqr(20.0*phm9_6 - 20.0*phm10_6)

+ sqr(-20.0*psm6_10 + 20.0*psm6_9)

+ sqr(20.0*psm6_9 - 20.0*psm6_10)

+ sqr(-20.0*ps10_6 + 20.0*ps9_6)

+ sqr(20.0*psm9_6 - 20.0*psm10_6)

+ sqr(20.0*phm5_10 - 20.0*phm5_9 + 1.0)

+ sqr(20.0*phm5_9 - 20.0*phm5_10 + 1.0)

+ sqr(20.0*ph10_5 - 20.0*ph9_5)

+ sqr(20.0*phm9_5 - 20.0*phm10_5)

+ sqr(-20.0*psm5_10 + 20.0*psm5_9)

+ sqr(20.0*psm5_9 - 20.0*psm5_10)

+ sqr(-20.0*ps10_5 + 20.0*ps9_5)

+ sqr(20.0*psm9_5 - 20.0*psm10_5)

+ sqr(20.0*phm4_10 - 20.0*phm4_9 + 1.0)

+ sqr(20.0*phm4_9 - 20.0*phm4_10 + 1.0)

+ sqr(20.0*ph10_4 - 20.0*ph9_4)

+ sqr(20.0*phm9_4 - 20.0*phm10_4)

+ sqr(-20.0*psm4_10 + 20.0*psm4_9)

+ sqr(20.0*psm4_9 - 20.0*psm4_10)

+ sqr(-20.0*ps10_4 + 20.0*ps9_4)

+ sqr(20.0*psm9_4 - 20.0*psm10_4)

+ sqr(20.0*phm3_10 - 20.0*phm3_9 + 1.0)

+ sqr(20.0*phm3_9 - 20.0*phm3_10 + 1.0)

+ sqr(20.0*ph10_3 - 20.0*ph9_3)

+ sqr(20.0*phm9_3 - 20.0*phm10_3)

+ sqr(-20.0*psm3_10 + 20.0*psm3_9)

+ sqr(20.0*psm3_9 - 20.0*psm3_10)

+ sqr(-20.0*ps10_3 + 20.0*ps9_3)

+ sqr(20.0*psm9_3 - 20.0*psm10_3)

+ sqr(20.0*phm2_10 - 20.0*phm2_9 + 1.0)

+ sqr(20.0*phm2_9 - 20.0*phm2_10 + 1.0)

+ sqr(20.0*ph10_2 - 20.0*ph9_2)

+ sqr(20.0*phm9_2 - 20.0*phm10_2)

+ sqr(-20.0*psm2_10 + 20.0*psm2_9)

+ sqr(20.0*psm2_9 - 20.0*psm2_10)

+ sqr(-20.0*ps10_2 + 20.0*ps9_2)

+ sqr(20.0*psm9_2 - 20.0*psm10_2)

+ sqr(20.0*phm1_10 - 20.0*phm1_9 + 1.0)

+ sqr(20.0*phm1_9 - 20.0*phm1_10 + 1.0)

+ sqr(20.0*ph10_1 - 20.0*ph9_1)

+ sqr(20.0*phm9_1 - 20.0*phm10_1)

+ sqr(-20.0*psm1_10 + 20.0*psm1_9)

+ sqr(20.0*psm1_9 - 20.0*psm1_10)

+ sqr(-20.0*ps10_1 + 20.0*ps9_1)

+ sqr(20.0*psm9_1 - 20.0*psm10_1)

+ sqr(20.0*ph0_10 - 20.0*ph0_9 + 1.0)

+ sqr(20.0*ph0_9 - 20.0*ph0_10 + 1.0)

+ sqr(20.0*ph10_0 - 20.0*ph9_0)

+ sqr(20.0*phm9_0 - 20.0*phm10_0)

+ sqr(-20.0*ps0_10 + 20.0*ps0_9)

+ sqr(20.0*ps0_9 - 20.0*ps0_10)

+ sqr(-20.0*ps10_0 + 20.0*ps9_0)

+ sqr(20.0*psm9_0 - 20.0*psm10_0)

+ sqr(20.0*ph1_10 - 20.0*ph1_9 + 1.0)

+ sqr(20.0*ph1_9 - 20.0*ph1_10 + 1.0)

+ sqr(20.0*ph10_1 - 20.0*ph9_1)

+ sqr(20.0*phm9_1 - 20.0*phm10_1)

+ sqr(-20.0*ps1_10 + 20.0*ps1_9)

+ sqr(20.0*ps1_9 - 20.0*ps1_10)

+ sqr(-20.0*ps10_1 + 20.0*ps9_1)

+ sqr(20.0*psm9_1 - 20.0*psm10_1)

+ sqr(20.0*ph2_10 - 20.0*ph2_9 + 1.0)

+ sqr(20.0*ph2_9 - 20.0*ph2_10 + 1.0)

+ sqr(20.0*ph10_2 - 20.0*ph9_2)

+ sqr(20.0*phm9_2 - 20.0*phm10_2)

+ sqr(-20.0*ps2_10 + 20.0*ps2_9)

+ sqr(20.0*ps2_9 - 20.0*ps2_10)

+ sqr(-20.0*ps10_2 + 20.0*ps9_2)

+ sqr(20.0*psm9_2 - 20.0*psm10_2)

+ sqr(20.0*ph3_10 - 20.0*ph3_9 + 1.0)

+ sqr(20.0*ph3_9 - 20.0*ph3_10 + 1.0)

+ sqr(20.0*ph10_3 - 20.0*ph9_3)

+ sqr(20.0*phm9_3 - 20.0*phm10_3)

+ sqr(-20.0*ps3_10 + 20.0*ps3_9)

+ sqr(20.0*ps3_9 - 20.0*ps3_10)

+ sqr(-20.0*ps10_3 + 20.0*ps9_3)

+ sqr(20.0*psm9_3 - 20.0*psm10_3)

+ sqr(20.0*ph4_10 - 20.0*ph4_9 + 1.0)

+ sqr(20.0*ph4_9 - 20.0*ph4_10 + 1.0)

+ sqr(20.0*ph10_4 - 20.0*ph9_4)

+ sqr(20.0*phm9_4 - 20.0*phm10_4)

+ sqr(-20.0*ps4_10 + 20.0*ps4_9)

+ sqr(20.0*ps4_9 - 20.0*ps4_10)

+ sqr(-20.0*ps10_4 + 20.0*ps9_4)

+ sqr(20.0*psm9_4 - 20.0*psm10_4)

+ sqr(20.0*ph5_10 - 20.0*ph5_9 + 1.0)

+ sqr(20.0*ph5_9 - 20.0*ph5_10 + 1.0)

+ sqr(20.0*ph10_5 - 20.0*ph9_5)

+ sqr(20.0*phm9_5 - 20.0*phm10_5)

+ sqr(-20.0*ps5_10 + 20.0*ps5_9)

+ sqr(20.0*ps5_9 - 20.0*ps5_10)

+ sqr(-20.0*ps10_5 + 20.0*ps9_5)

+ sqr(20.0*psm9_5 - 20.0*psm10_5)

+ sqr(20.0*ph6_10 - 20.0*ph6_9 + 1.0)

+ sqr(20.0*ph6_9 - 20.0*ph6_10 + 1.0)

+ sqr(20.0*ph10_6 - 20.0*ph9_6)

+ sqr(20.0*phm9_6 - 20.0*phm10_6)

+ sqr(-20.0*ps6_10 + 20.0*ps6_9)

+ sqr(20.0*ps6_9 - 20.0*ps6_10)

+ sqr(-20.0*ps10_6 + 20.0*ps9_6)

+ sqr(20.0*psm9_6 - 20.0*psm10_6)

+ sqr(20.0*ph7_10 - 20.0*ph7_9 + 1.0)

+ sqr(20.0*ph7_9 - 20.0*ph7_10 + 1.0)

+ sqr(20.0*ph10_7 - 20.0*ph9_7)

+ sqr(20.0*phm9_7 - 20.0*phm10_7)

+ sqr(-20.0*ps7_10 + 20.0*ps7_9)

+ sqr(20.0*ps7_9 - 20.0*ps7_10)

+ sqr(-20.0*ps10_7 + 20.0*ps9_7)

+ sqr(20.0*psm9_7 - 20.0*psm10_7)

+ sqr(20.0*ph8_10 - 20.0*ph8_9 + 1.0)

+ sqr(20.0*ph8_9 - 20.0*ph8_10 + 1.0)

+ sqr(20.0*ph10_8 - 20.0*ph9_8)

+ sqr(20.0*phm9_8 - 20.0*phm10_8)

+ sqr(-20.0*ps8_10 + 20.0*ps8_9)

+ sqr(20.0*ps8_9 - 20.0*ps8_10)

+ sqr(-20.0*ps10_8 + 20.0*ps9_8)

+ sqr(20.0*psm9_8 - 20.0*psm10_8)

+ sqr(20.0*ph9_10 - 20.0*ph9_9 + 1.0)

+ sqr(20.0*ph9_9 - 20.0*ph9_10 + 1.0)

+ sqr(20.0*ph10_9 - 20.0*ph9_9)

+ sqr(20.0*phm9_9 - 20.0*phm10_9)

+ sqr(-20.0*ps9_10 + 20.0*ps9_9)

+ sqr(20.0*ps9_9 - 20.0*ps9_10)

+ sqr(-20.0*ps10_9 + 20.0*ps9_9)

+ sqr(20.0*psm9_9 - 20.0*psm10_9)

+ sqr(20.0*ph10_10 - 20.0*ph10_9 + 20.0*ph10_10 -
       20.0*ph9_10)

+ sqr(-20.0*ps10_10 + 20.0*ps10_9 - 20.0*ps10_10 +
  20.0*ps9_10) ;




 psm10_m10.fx = 1.0 ;
 psm9_m10.fx  = 1.0 ;
 psm8_m10.fx  = 1.0 ;
 psm7_m10.fx  = 1.0 ;
 psm6_m10.fx  = 1.0 ;
 psm5_m10.fx  = 1.0 ;
 psm4_m10.fx  = 1.0 ;
 psm3_m10.fx  = 1.0 ;
 psm2_m10.fx  = 1.0 ;
 psm1_m10.fx  = 1.0 ;
 ps0_m10.fx   = 1.0 ;
 ps1_m10.fx   = 1.0 ;
 ps2_m10.fx   = 1.0 ;
 ps3_m10.fx   = 1.0 ;
 ps4_m10.fx   = 1.0 ;
 ps5_m10.fx   = 1.0 ;
 ps6_m10.fx   = 1.0 ;
 ps7_m10.fx   = 1.0 ;
 ps8_m10.fx   = 1.0 ;
 ps9_m10.fx   = 1.0 ;
 ps10_m10.fx  = 1.0 ;
 psm10_m9.fx  = 1.0 ;
 ps10_m9.fx   = 1.0 ;
 psm10_m8.fx  = 1.0 ;
 ps10_m8.fx   = 1.0 ;
 psm10_m7.fx  = 1.0 ;
 ps10_m7.fx   = 1.0 ;
 psm10_m6.fx  = 1.0 ;
 ps10_m6.fx   = 1.0 ;
 psm10_m5.fx  = 1.0 ;
 ps10_m5.fx   = 1.0 ;
 psm10_m4.fx  = 1.0 ;
 ps10_m4.fx   = 1.0 ;
 psm10_m3.fx  = 1.0 ;
 ps10_m3.fx   = 1.0 ;
 psm10_m2.fx  = 1.0 ;
 ps10_m2.fx   = 1.0 ;
 psm10_m1.fx  = 1.0 ;
 ps10_m1.fx   = 1.0 ;
 psm10_0.fx   = 1.0 ;
 ps10_0.fx    = 1.0 ;
 psm10_1.fx   = 1.0 ;
 ps10_1.fx    = 1.0 ;
 psm10_2.fx   = 1.0 ;
 ps10_2.fx    = 1.0 ;
 psm10_3.fx   = 1.0 ;
 ps10_3.fx    = 1.0 ;
 psm10_4.fx   = 1.0 ;
 ps10_4.fx    = 1.0 ;
 psm10_5.fx   = 1.0 ;
 ps10_5.fx    = 1.0 ;
 psm10_6.fx   = 1.0 ;
 ps10_6.fx    = 1.0 ;
 psm10_7.fx   = 1.0 ;
 ps10_7.fx    = 1.0 ;
 psm10_8.fx   = 1.0 ;
 ps10_8.fx    = 1.0 ;
 psm10_9.fx   = 1.0 ;
 ps10_9.fx    = 1.0 ;
 psm10_10.fx  = 1.0 ;
 psm9_10.fx   = 1.0 ;
 psm8_10.fx   = 1.0 ;
 psm7_10.fx   = 1.0 ;
 psm6_10.fx   = 1.0 ;
 psm5_10.fx   = 1.0 ;
 psm4_10.fx   = 1.0 ;
 psm3_10.fx   = 1.0 ;
 psm2_10.fx   = 1.0 ;
 psm1_10.fx   = 1.0 ;
 ps0_10.fx    = 1.0 ;
 ps1_10.fx    = 1.0 ;
 ps2_10.fx    = 1.0 ;
 ps3_10.fx    = 1.0 ;
 ps4_10.fx    = 1.0 ;
 ps5_10.fx    = 1.0 ;
 ps6_10.fx    = 1.0 ;
 ps7_10.fx    = 1.0 ;
 ps8_10.fx    = 1.0 ;
 ps9_10.fx    = 1.0 ;
 ps10_10.fx   = 1.0 ;



Model flosp2hh /all/;

Solve flosp2hh using nlp minimize obj;


$ontext;
display  psm9_m10.l ; display  omm9_m10.l ;   display phm9_m10.l;
display  omm8_m10.l ; display  phm8_m10.l ;   display  psm8_m10.l ;
display  omm7_m10.l ; display  phm7_m10.l ;   display  psm7_m10.l ;
display  omm6_m10.l ; display  phm6_m10.l ;   display  psm6_m10.l ;
display  omm5_m10.l ; display  phm5_m10.l ;   display  psm5_m10.l ;
display  omm4_m10.l ; display  phm4_m10.l ;   display  psm4_m10.l ;
display  omm3_m10.l ; display  phm3_m10.l ;   display  psm3_m10.l ;
display  omm2_m10.l ; display  phm2_m10.l ;   display  psm2_m10.l ;
display  omm1_m10.l ; display  phm1_m10.l ;   display  psm1_m10.l ;
display   om0_m10.l ; display   ph0_m10.l ;   display   ps0_m10.l ;
display   om1_m10.l ; display   ph1_m10.l ;   display   ps1_m10.l ;
display   om2_m10.l ; display   ph2_m10.l ;   display   ps2_m10.l ;
display   om3_m10.l ; display   ph3_m10.l ;   display   ps3_m10.l ;
display   om4_m10.l ; display   ph4_m10.l ;   display   ps4_m10.l ;
display   om5_m10.l ; display   ph5_m10.l ;   display   ps5_m10.l ;
display   om6_m10.l ; display   ph6_m10.l ;   display   ps6_m10.l ;
display   om7_m10.l ; display   ph7_m10.l ;   display   ps7_m10.l ;
display   om8_m10.l ; display   ph8_m10.l ;   display   ps8_m10.l ;
display   om9_m10.l ; display   ph9_m10.l ;   display   ps9_m10.l ;
display  om10_m10.l ; display  ph10_m10.l ;   display  ps10_m10.l ;
display  omm10_m9.l ; display  phm10_m9.l ;   display  psm10_m9.l ;
display   omm9_m9.l ; display   phm9_m9.l ;   display   psm9_m9.l ;
display   omm8_m9.l ; display   phm8_m9.l ;   display   psm8_m9.l ;
display   omm7_m9.l ; display   phm7_m9.l ;   display   psm7_m9.l ;
display   omm6_m9.l ; display   phm6_m9.l ;   display   psm6_m9.l ;
display   omm5_m9.l ; display   phm5_m9.l ;   display   psm5_m9.l ;
display   omm4_m9.l ; display   phm4_m9.l ;   display   psm4_m9.l ;
display   omm3_m9.l ; display   phm3_m9.l ;   display   psm3_m9.l ;
display   omm2_m9.l ; display   phm2_m9.l ;   display   psm2_m9.l ;
display   omm1_m9.l ; display   phm1_m9.l ;   display   psm1_m9.l ;
display    om0_m9.l ; display    ph0_m9.l ;   display    ps0_m9.l ;
display    om1_m9.l ; display    ph1_m9.l ;   display    ps1_m9.l ;
display    om2_m9.l ; display    ph2_m9.l ;   display    ps2_m9.l ;
display    om3_m9.l ; display    ph3_m9.l ;   display    ps3_m9.l ;
display    om4_m9.l ; display    ph4_m9.l ;   display    ps4_m9.l ;
display    om5_m9.l ; display    ph5_m9.l ;   display    ps5_m9.l ;
display    om6_m9.l ; display    ph6_m9.l ;   display    ps6_m9.l ;
display    om7_m9.l ; display    ph7_m9.l ;   display    ps7_m9.l ;
display    om8_m9.l ; display    ph8_m9.l ;   display    ps8_m9.l ;
display    om9_m9.l ; display    ph9_m9.l ;   display    ps9_m9.l ;
display   om10_m9.l ; display   ph10_m9.l ;   display   ps10_m9.l ;
display  omm10_m8.l ; display  phm10_m8.l ;   display  psm10_m8.l ;
display   omm9_m8.l ; display   phm9_m8.l ;   display   psm9_m8.l ;
display   omm8_m8.l ; display   phm8_m8.l ;   display   psm8_m8.l ;
display   omm7_m8.l ; display   phm7_m8.l ;   display   psm7_m8.l ;
display   omm6_m8.l ; display   phm6_m8.l ;   display   psm6_m8.l ;
display   omm5_m8.l ; display   phm5_m8.l ;   display   psm5_m8.l ;
display   omm4_m8.l ; display   phm4_m8.l ;   display   psm4_m8.l ;
display   omm3_m8.l ; display   phm3_m8.l ;   display   psm3_m8.l ;
display   omm2_m8.l ; display   phm2_m8.l ;   display   psm2_m8.l ;
display   omm1_m8.l ; display   phm1_m8.l ;   display   psm1_m8.l ;
display    om0_m8.l ; display    ph0_m8.l ;   display    ps0_m8.l ;
display    om1_m8.l ; display    ph1_m8.l ;   display    ps1_m8.l ;
display    om2_m8.l ; display    ph2_m8.l ;   display    ps2_m8.l ;
display    om3_m8.l ; display    ph3_m8.l ;   display    ps3_m8.l ;
display    om4_m8.l ; display    ph4_m8.l ;   display    ps4_m8.l ;
display    om5_m8.l ; display    ph5_m8.l ;   display    ps5_m8.l ;
display    om6_m8.l ; display    ph6_m8.l ;   display    ps6_m8.l ;
display    om7_m8.l ; display    ph7_m8.l ;   display    ps7_m8.l ;
display    om8_m8.l ; display    ph8_m8.l ;   display    ps8_m8.l ;
display    om9_m8.l ; display    ph9_m8.l ;   display    ps9_m8.l ;
display   om10_m8.l ; display   ph10_m8.l ;   display   ps10_m8.l ;
display  omm10_m7.l ; display  phm10_m7.l ;   display  psm10_m7.l ;
display   omm9_m7.l ; display   phm9_m7.l ;   display   psm9_m7.l ;
display   omm8_m7.l ; display   phm8_m7.l ;   display   psm8_m7.l ;
display   omm7_m7.l ; display   phm7_m7.l ;   display   psm7_m7.l ;
display   omm6_m7.l ; display   phm6_m7.l ;   display   psm6_m7.l ;
display   omm5_m7.l ; display   phm5_m7.l ;   display   psm5_m7.l ;
display   omm4_m7.l ; display   phm4_m7.l ;   display   psm4_m7.l ;
display   omm3_m7.l ; display   phm3_m7.l ;   display   psm3_m7.l ;
display   omm2_m7.l ; display   phm2_m7.l ;   display   psm2_m7.l ;
display   omm1_m7.l ; display   phm1_m7.l ;   display   psm1_m7.l ;
display    om0_m7.l ; display    ph0_m7.l ;   display    ps0_m7.l ;
display    om1_m7.l ; display    ph1_m7.l ;   display    ps1_m7.l ;
display    om2_m7.l ; display    ph2_m7.l ;   display    ps2_m7.l ;
display    om3_m7.l ; display    ph3_m7.l ;   display    ps3_m7.l ;
display    om4_m7.l ; display    ph4_m7.l ;   display    ps4_m7.l ;
display    om5_m7.l ; display    ph5_m7.l ;   display    ps5_m7.l ;
display    om6_m7.l ; display    ph6_m7.l ;   display    ps6_m7.l ;
display    om7_m7.l ; display    ph7_m7.l ;   display    ps7_m7.l ;
display    om8_m7.l ; display    ph8_m7.l ;   display    ps8_m7.l ;
display    om9_m7.l ; display    ph9_m7.l ;   display    ps9_m7.l ;
display   om10_m7.l ; display   ph10_m7.l ;   display   ps10_m7.l ;
display  omm10_m6.l ; display  phm10_m6.l ;   display  psm10_m6.l ;
display   omm9_m6.l ; display   phm9_m6.l ;   display   psm9_m6.l ;
display   omm8_m6.l ; display   phm8_m6.l ;   display   psm8_m6.l ;
display   omm7_m6.l ; display   phm7_m6.l ;   display   psm7_m6.l ;
display   omm6_m6.l ; display   phm6_m6.l ;   display   psm6_m6.l ;
display   omm5_m6.l ; display   phm5_m6.l ;   display   psm5_m6.l ;
display   omm4_m6.l ; display   phm4_m6.l ;   display   psm4_m6.l ;
display   omm3_m6.l ; display   phm3_m6.l ;   display   psm3_m6.l ;
display   omm2_m6.l ; display   phm2_m6.l ;   display   psm2_m6.l ;
display   omm1_m6.l ; display   phm1_m6.l ;   display   psm1_m6.l ;
display    om0_m6.l ; display    ph0_m6.l ;   display    ps0_m6.l ;
display    om1_m6.l ; display    ph1_m6.l ;   display    ps1_m6.l ;
display    om2_m6.l ; display    ph2_m6.l ;   display    ps2_m6.l ;
display    om3_m6.l ; display    ph3_m6.l ;   display    ps3_m6.l ;
display    om4_m6.l ; display    ph4_m6.l ;   display    ps4_m6.l ;
display    om5_m6.l ; display    ph5_m6.l ;   display    ps5_m6.l ;
display    om6_m6.l ; display    ph6_m6.l ;   display    ps6_m6.l ;
display    om7_m6.l ; display    ph7_m6.l ;   display    ps7_m6.l ;
display    om8_m6.l ; display    ph8_m6.l ;   display    ps8_m6.l ;
display    om9_m6.l ; display    ph9_m6.l ;   display    ps9_m6.l ;
display   om10_m6.l ; display   ph10_m6.l ;   display   ps10_m6.l ;
display  omm10_m5.l ; display  phm10_m5.l ;   display  psm10_m5.l ;
display   omm9_m5.l ; display   phm9_m5.l ;   display   psm9_m5.l ;
display   omm8_m5.l ; display   phm8_m5.l ;   display   psm8_m5.l ;
display   omm7_m5.l ; display   phm7_m5.l ;   display   psm7_m5.l ;
display   omm6_m5.l ; display   phm6_m5.l ;   display   psm6_m5.l ;
display   omm5_m5.l ; display   phm5_m5.l ;   display   psm5_m5.l ;
display   omm4_m5.l ; display   phm4_m5.l ;   display   psm4_m5.l ;
display   omm3_m5.l ; display   phm3_m5.l ;   display   psm3_m5.l ;
display   omm2_m5.l ; display   phm2_m5.l ;   display   psm2_m5.l ;
display   omm1_m5.l ; display   phm1_m5.l ;   display   psm1_m5.l ;
display    om0_m5.l ; display    ph0_m5.l ;   display    ps0_m5.l ;
display    om1_m5.l ; display    ph1_m5.l ;   display    ps1_m5.l ;
display    om2_m5.l ; display    ph2_m5.l ;   display    ps2_m5.l ;
display    om3_m5.l ; display    ph3_m5.l ;   display    ps3_m5.l ;
display    om4_m5.l ; display    ph4_m5.l ;   display    ps4_m5.l ;
display    om5_m5.l ; display    ph5_m5.l ;   display    ps5_m5.l ;
display    om6_m5.l ; display    ph6_m5.l ;   display    ps6_m5.l ;
display    om7_m5.l ; display    ph7_m5.l ;   display    ps7_m5.l ;
display    om8_m5.l ; display    ph8_m5.l ;   display    ps8_m5.l ;
display    om9_m5.l ; display    ph9_m5.l ;   display    ps9_m5.l ;
display   om10_m5.l ; display   ph10_m5.l ;   display   ps10_m5.l ;
display  omm10_m4.l ; display  phm10_m4.l ;   display  psm10_m4.l ;
display   omm9_m4.l ; display   phm9_m4.l ;   display   psm9_m4.l ;
display   omm8_m4.l ; display   phm8_m4.l ;   display   psm8_m4.l ;
display   omm7_m4.l ; display   phm7_m4.l ;   display   psm7_m4.l ;
display   omm6_m4.l ; display   phm6_m4.l ;   display   psm6_m4.l ;
display   omm5_m4.l ; display   phm5_m4.l ;   display   psm5_m4.l ;
display   omm4_m4.l ; display   phm4_m4.l ;   display   psm4_m4.l ;
display   omm3_m4.l ; display   phm3_m4.l ;   display   psm3_m4.l ;
display   omm2_m4.l ; display   phm2_m4.l ;   display   psm2_m4.l ;
display   omm1_m4.l ; display   phm1_m4.l ;   display   psm1_m4.l ;
display    om0_m4.l ; display    ph0_m4.l ;   display    ps0_m4.l ;
display    om1_m4.l ; display    ph1_m4.l ;   display    ps1_m4.l ;
display    om2_m4.l ; display    ph2_m4.l ;   display    ps2_m4.l ;
display    om3_m4.l ; display    ph3_m4.l ;   display    ps3_m4.l ;
display    om4_m4.l ; display    ph4_m4.l ;   display    ps4_m4.l ;
display    om5_m4.l ; display    ph5_m4.l ;   display    ps5_m4.l ;
display    om6_m4.l ; display    ph6_m4.l ;   display    ps6_m4.l ;
display    om7_m4.l ; display    ph7_m4.l ;   display    ps7_m4.l ;
display    om8_m4.l ; display    ph8_m4.l ;   display    ps8_m4.l ;
display    om9_m4.l ; display    ph9_m4.l ;   display    ps9_m4.l ;
display   om10_m4.l ; display   ph10_m4.l ;   display   ps10_m4.l ;
display  omm10_m3.l ; display  phm10_m3.l ;   display  psm10_m3.l ;
display   omm9_m3.l ; display   phm9_m3.l ;   display   psm9_m3.l ;
display   omm8_m3.l ; display   phm8_m3.l ;   display   psm8_m3.l ;
display   omm7_m3.l ; display   phm7_m3.l ;   display   psm7_m3.l ;
display   omm6_m3.l ; display   phm6_m3.l ;   display   psm6_m3.l ;
display   omm5_m3.l ; display   phm5_m3.l ;   display   psm5_m3.l ;
display   omm4_m3.l ; display   phm4_m3.l ;   display   psm4_m3.l ;
display   omm3_m3.l ; display   phm3_m3.l ;   display   psm3_m3.l ;
display   omm2_m3.l ; display   phm2_m3.l ;   display   psm2_m3.l ;
display   omm1_m3.l ; display   phm1_m3.l ;   display   psm1_m3.l ;
display    om0_m3.l ; display    ph0_m3.l ;   display    ps0_m3.l ;
display    om1_m3.l ; display    ph1_m3.l ;   display    ps1_m3.l ;
display    om2_m3.l ; display    ph2_m3.l ;   display    ps2_m3.l ;
display    om3_m3.l ; display    ph3_m3.l ;   display    ps3_m3.l ;
display    om4_m3.l ; display    ph4_m3.l ;   display    ps4_m3.l ;
display    om5_m3.l ; display    ph5_m3.l ;   display    ps5_m3.l ;
display    om6_m3.l ; display    ph6_m3.l ;   display    ps6_m3.l ;
display    om7_m3.l ; display    ph7_m3.l ;   display    ps7_m3.l ;
display    om8_m3.l ; display    ph8_m3.l ;   display    ps8_m3.l ;
display    om9_m3.l ; display    ph9_m3.l ;   display    ps9_m3.l ;
display   om10_m3.l ; display   ph10_m3.l ;   display   ps10_m3.l ;
display  omm10_m2.l ; display  phm10_m2.l ;   display  psm10_m2.l ;
display   omm9_m2.l ; display   phm9_m2.l ;   display   psm9_m2.l ;
display   omm8_m2.l ; display   phm8_m2.l ;   display   psm8_m2.l ;
display   omm7_m2.l ; display   phm7_m2.l ;   display   psm7_m2.l ;
display   omm6_m2.l ; display   phm6_m2.l ;   display   psm6_m2.l ;
display   omm5_m2.l ; display   phm5_m2.l ;   display   psm5_m2.l ;
display   omm4_m2.l ; display   phm4_m2.l ;   display   psm4_m2.l ;
display   omm3_m2.l ; display   phm3_m2.l ;   display   psm3_m2.l ;
display   omm2_m2.l ; display   phm2_m2.l ;   display   psm2_m2.l ;
display   omm1_m2.l ; display   phm1_m2.l ;   display   psm1_m2.l ;
display    om0_m2.l ; display    ph0_m2.l ;   display    ps0_m2.l ;
display    om1_m2.l ; display    ph1_m2.l ;   display    ps1_m2.l ;
display    om2_m2.l ; display    ph2_m2.l ;   display    ps2_m2.l ;
display    om3_m2.l ; display    ph3_m2.l ;   display    ps3_m2.l ;
display    om4_m2.l ; display    ph4_m2.l ;   display    ps4_m2.l ;
display    om5_m2.l ; display    ph5_m2.l ;   display    ps5_m2.l ;
display    om6_m2.l ; display    ph6_m2.l ;   display    ps6_m2.l ;
display    om7_m2.l ; display    ph7_m2.l ;   display    ps7_m2.l ;
display    om8_m2.l ; display    ph8_m2.l ;   display    ps8_m2.l ;
display    om9_m2.l ; display    ph9_m2.l ;   display    ps9_m2.l ;
display   om10_m2.l ; display   ph10_m2.l ;   display   ps10_m2.l ;
display  omm10_m1.l ; display  phm10_m1.l ;   display  psm10_m1.l ;
display   omm9_m1.l ; display   phm9_m1.l ;   display   psm9_m1.l ;
display   omm8_m1.l ; display   phm8_m1.l ;   display   psm8_m1.l ;
display   omm7_m1.l ; display   phm7_m1.l ;   display   psm7_m1.l ;
display   omm6_m1.l ; display   phm6_m1.l ;   display   psm6_m1.l ;
display   omm5_m1.l ; display   phm5_m1.l ;   display   psm5_m1.l ;
display   omm4_m1.l ; display   phm4_m1.l ;   display   psm4_m1.l ;
display   omm3_m1.l ; display   phm3_m1.l ;   display   psm3_m1.l ;
display   omm2_m1.l ; display   phm2_m1.l ;   display   psm2_m1.l ;
display   omm1_m1.l ; display   phm1_m1.l ;   display   psm1_m1.l ;
display    om0_m1.l ; display    ph0_m1.l ;   display    ps0_m1.l ;
display    om1_m1.l ; display    ph1_m1.l ;   display    ps1_m1.l ;
display    om2_m1.l ; display    ph2_m1.l ;   display    ps2_m1.l ;
display    om3_m1.l ; display    ph3_m1.l ;   display    ps3_m1.l ;
display    om4_m1.l ; display    ph4_m1.l ;   display    ps4_m1.l ;
display    om5_m1.l ; display    ph5_m1.l ;   display    ps5_m1.l ;
display    om6_m1.l ; display    ph6_m1.l ;   display    ps6_m1.l ;
display    om7_m1.l ; display    ph7_m1.l ;   display    ps7_m1.l ;
display    om8_m1.l ; display    ph8_m1.l ;   display    ps8_m1.l ;
display    om9_m1.l ; display    ph9_m1.l ;   display    ps9_m1.l ;
display   om10_m1.l ; display   ph10_m1.l ;   display   ps10_m1.l ;
display  omm10_10.l ; display  phm10_10.l ;   display  psm10_10.l ;
display   om10_10.l ; display   ph10_10.l ;   display   ps10_10.l ;
display omm10_m10.l ; display phm10_m10.l ;   display psm10_m10.l ;
$offtext;
display   omm10_0.l ; display   phm10_0.l ;   display   psm10_0.l ;
display    omm9_0.l ; display    phm9_0.l ;   display    psm9_0.l ;
display    omm8_0.l ; display    phm8_0.l ;   display    psm8_0.l ;
display    omm7_0.l ; display    phm7_0.l ;   display    psm7_0.l ;
display    omm6_0.l ; display    phm6_0.l ;   display    psm6_0.l ;
display    omm5_0.l ; display    phm5_0.l ;   display    psm5_0.l ;
display    omm4_0.l ; display    phm4_0.l ;   display    psm4_0.l ;
display    omm3_0.l ; display    phm3_0.l ;   display    psm3_0.l ;
display    omm2_0.l ; display    phm2_0.l ;   display    psm2_0.l ;
display    omm1_0.l ; display    phm1_0.l ;   display    psm1_0.l ;
display     om0_0.l ; display     ph0_0.l ;   display     ps0_0.l ;
display     om1_0.l ; display     ph1_0.l ;   display     ps1_0.l ;
display     om2_0.l ; display     ph2_0.l ;   display     ps2_0.l ;
display     om3_0.l ; display     ph3_0.l ;   display     ps3_0.l ;
display     om4_0.l ; display     ph4_0.l ;   display     ps4_0.l ;
display     om5_0.l ; display     ph5_0.l ;   display     ps5_0.l ;
display     om6_0.l ; display     ph6_0.l ;   display     ps6_0.l ;
display     om7_0.l ; display     ph7_0.l ;   display     ps7_0.l ;
display     om8_0.l ; display     ph8_0.l ;   display     ps8_0.l ;
display     om9_0.l ; display     ph9_0.l ;   display     ps9_0.l ;
display    om10_0.l ; display    ph10_0.l ;   display    ps10_0.l ;
display   omm10_1.l ; display   phm10_1.l ;   display   psm10_1.l ;
display    omm9_1.l ; display    phm9_1.l ;   display    psm9_1.l ;
display    omm8_1.l ; display    phm8_1.l ;   display    psm8_1.l ;
display    omm7_1.l ; display    phm7_1.l ;   display    psm7_1.l ;
display    omm6_1.l ; display    phm6_1.l ;   display    psm6_1.l ;
display    omm5_1.l ; display    phm5_1.l ;   display    psm5_1.l ;
display    omm4_1.l ; display    phm4_1.l ;   display    psm4_1.l ;
display    omm3_1.l ; display    phm3_1.l ;   display    psm3_1.l ;
display    omm2_1.l ; display    phm2_1.l ;   display    psm2_1.l ;
display    omm1_1.l ; display    phm1_1.l ;   display    psm1_1.l ;
display     om0_1.l ; display     ph0_1.l ;   display     ps0_1.l ;
display     om1_1.l ; display     ph1_1.l ;   display     ps1_1.l ;
display     om2_1.l ; display     ph2_1.l ;   display     ps2_1.l ;
display     om3_1.l ; display     ph3_1.l ;   display     ps3_1.l ;
display     om4_1.l ; display     ph4_1.l ;   display     ps4_1.l ;
display     om5_1.l ; display     ph5_1.l ;   display     ps5_1.l ;
display     om6_1.l ; display     ph6_1.l ;   display     ps6_1.l ;
display     om7_1.l ; display     ph7_1.l ;   display     ps7_1.l ;
display     om8_1.l ; display     ph8_1.l ;   display     ps8_1.l ;
display     om9_1.l ; display     ph9_1.l ;   display     ps9_1.l ;
display    om10_1.l ; display    ph10_1.l ;   display    ps10_1.l ;
display   omm10_2.l ; display   phm10_2.l ;   display   psm10_2.l ;
display    omm9_2.l ; display    phm9_2.l ;   display    psm9_2.l ;
display    omm8_2.l ; display    phm8_2.l ;   display    psm8_2.l ;
display    omm7_2.l ; display    phm7_2.l ;   display    psm7_2.l ;
display    omm6_2.l ; display    phm6_2.l ;   display    psm6_2.l ;
display    omm5_2.l ; display    phm5_2.l ;   display    psm5_2.l ;
display    omm4_2.l ; display    phm4_2.l ;   display    psm4_2.l ;
display    omm3_2.l ; display    phm3_2.l ;   display    psm3_2.l ;
display    omm2_2.l ; display    phm2_2.l ;   display    psm2_2.l ;
display    omm1_2.l ; display    phm1_2.l ;   display    psm1_2.l ;
display     om0_2.l ; display     ph0_2.l ;   display     ps0_2.l ;
display     om1_2.l ; display     ph1_2.l ;   display     ps1_2.l ;
display     om2_2.l ; display     ph2_2.l ;   display     ps2_2.l ;
display     om3_2.l ; display     ph3_2.l ;   display     ps3_2.l ;
display     om4_2.l ; display     ph4_2.l ;   display     ps4_2.l ;
display     om5_2.l ; display     ph5_2.l ;   display     ps5_2.l ;
display     om6_2.l ; display     ph6_2.l ;   display     ps6_2.l ;
display     om7_2.l ; display     ph7_2.l ;   display     ps7_2.l ;
display     om8_2.l ; display     ph8_2.l ;   display     ps8_2.l ;
display     om9_2.l ; display     ph9_2.l ;   display     ps9_2.l ;
display    om10_2.l ; display    ph10_2.l ;   display    ps10_2.l ;
display   omm10_3.l ; display   phm10_3.l ;   display   psm10_3.l ;
display    omm9_3.l ; display    phm9_3.l ;   display    psm9_3.l ;
display    omm8_3.l ; display    phm8_3.l ;   display    psm8_3.l ;
display    omm7_3.l ; display    phm7_3.l ;   display    psm7_3.l ;
display    omm6_3.l ; display    phm6_3.l ;   display    psm6_3.l ;
display    omm5_3.l ; display    phm5_3.l ;   display    psm5_3.l ;
display    omm4_3.l ; display    phm4_3.l ;   display    psm4_3.l ;
display    omm3_3.l ; display    phm3_3.l ;   display    psm3_3.l ;
display    omm2_3.l ; display    phm2_3.l ;   display    psm2_3.l ;
display    omm1_3.l ; display    phm1_3.l ;   display    psm1_3.l ;
display     om0_3.l ; display     ph0_3.l ;   display     ps0_3.l ;
display     om1_3.l ; display     ph1_3.l ;   display     ps1_3.l ;
display     om2_3.l ; display     ph2_3.l ;   display     ps2_3.l ;
display     om3_3.l ; display     ph3_3.l ;   display     ps3_3.l ;
display     om4_3.l ; display     ph4_3.l ;   display     ps4_3.l ;
display     om5_3.l ; display     ph5_3.l ;   display     ps5_3.l ;
display     om6_3.l ; display     ph6_3.l ;   display     ps6_3.l ;
display     om7_3.l ; display     ph7_3.l ;   display     ps7_3.l ;
display     om8_3.l ; display     ph8_3.l ;   display     ps8_3.l ;
display     om9_3.l ; display     ph9_3.l ;   display     ps9_3.l ;
display    om10_3.l ; display    ph10_3.l ;   display    ps10_3.l ;
display   omm10_4.l ; display   phm10_4.l ;   display   psm10_4.l ;
display    omm9_4.l ; display    phm9_4.l ;   display    psm9_4.l ;
display    omm8_4.l ; display    phm8_4.l ;   display    psm8_4.l ;
display    omm7_4.l ; display    phm7_4.l ;   display    psm7_4.l ;
display    omm6_4.l ; display    phm6_4.l ;   display    psm6_4.l ;
display    omm5_4.l ; display    phm5_4.l ;   display    psm5_4.l ;
display    omm4_4.l ; display    phm4_4.l ;   display    psm4_4.l ;
display    omm3_4.l ; display    phm3_4.l ;   display    psm3_4.l ;
display    omm2_4.l ; display    phm2_4.l ;   display    psm2_4.l ;
display    omm1_4.l ; display    phm1_4.l ;   display    psm1_4.l ;
display     om0_4.l ; display     ph0_4.l ;   display     ps0_4.l ;
display     om1_4.l ; display     ph1_4.l ;   display     ps1_4.l ;
display     om2_4.l ; display     ph2_4.l ;   display     ps2_4.l ;
display     om3_4.l ; display     ph3_4.l ;   display     ps3_4.l ;
display     om4_4.l ; display     ph4_4.l ;   display     ps4_4.l ;
display     om5_4.l ; display     ph5_4.l ;   display     ps5_4.l ;
display     om6_4.l ; display     ph6_4.l ;   display     ps6_4.l ;
display     om7_4.l ; display     ph7_4.l ;   display     ps7_4.l ;
display     om8_4.l ; display     ph8_4.l ;   display     ps8_4.l ;
display     om9_4.l ; display     ph9_4.l ;   display     ps9_4.l ;
display    om10_4.l ; display    ph10_4.l ;   display    ps10_4.l ;
display   omm10_5.l ; display   phm10_5.l ;   display   psm10_5.l ;
display    omm9_5.l ; display    phm9_5.l ;   display    psm9_5.l ;
display    omm8_5.l ; display    phm8_5.l ;   display    psm8_5.l ;
display    omm7_5.l ; display    phm7_5.l ;   display    psm7_5.l ;
display    omm6_5.l ; display    phm6_5.l ;   display    psm6_5.l ;
display    omm5_5.l ; display    phm5_5.l ;   display    psm5_5.l ;
display    omm4_5.l ; display    phm4_5.l ;   display    psm4_5.l ;
display    omm3_5.l ; display    phm3_5.l ;   display    psm3_5.l ;
display    omm2_5.l ; display    phm2_5.l ;   display    psm2_5.l ;
display    omm1_5.l ; display    phm1_5.l ;   display    psm1_5.l ;
display     om0_5.l ; display     ph0_5.l ;   display     ps0_5.l ;
display     om1_5.l ; display     ph1_5.l ;   display     ps1_5.l ;
display     om2_5.l ; display     ph2_5.l ;   display     ps2_5.l ;
display     om3_5.l ; display     ph3_5.l ;   display     ps3_5.l ;
display     om4_5.l ; display     ph4_5.l ;   display     ps4_5.l ;
display     om5_5.l ; display     ph5_5.l ;   display     ps5_5.l ;
display     om6_5.l ; display     ph6_5.l ;   display     ps6_5.l ;
display     om7_5.l ; display     ph7_5.l ;   display     ps7_5.l ;
display     om8_5.l ; display     ph8_5.l ;   display     ps8_5.l ;
display     om9_5.l ; display     ph9_5.l ;   display     ps9_5.l ;
display    om10_5.l ; display    ph10_5.l ;   display    ps10_5.l ;
display   omm10_6.l ; display   phm10_6.l ;   display   psm10_6.l ;
display    omm9_6.l ; display    phm9_6.l ;   display    psm9_6.l ;
display    omm8_6.l ; display    phm8_6.l ;   display    psm8_6.l ;
display    omm7_6.l ; display    phm7_6.l ;   display    psm7_6.l ;
display    omm6_6.l ; display    phm6_6.l ;   display    psm6_6.l ;
display    omm5_6.l ; display    phm5_6.l ;   display    psm5_6.l ;
display    omm4_6.l ; display    phm4_6.l ;   display    psm4_6.l ;
display    omm3_6.l ; display    phm3_6.l ;   display    psm3_6.l ;
display    omm2_6.l ; display    phm2_6.l ;   display    psm2_6.l ;
display    omm1_6.l ; display    phm1_6.l ;   display    psm1_6.l ;
display     om0_6.l ; display     ph0_6.l ;   display     ps0_6.l ;
display     om1_6.l ; display     ph1_6.l ;   display     ps1_6.l ;
display     om2_6.l ; display     ph2_6.l ;   display     ps2_6.l ;
display     om3_6.l ; display     ph3_6.l ;   display     ps3_6.l ;
display     om4_6.l ; display     ph4_6.l ;   display     ps4_6.l ;
display     om5_6.l ; display     ph5_6.l ;   display     ps5_6.l ;
display     om6_6.l ; display     ph6_6.l ;   display     ps6_6.l ;
display     om7_6.l ; display     ph7_6.l ;   display     ps7_6.l ;
display     om8_6.l ; display     ph8_6.l ;   display     ps8_6.l ;
display     om9_6.l ; display     ph9_6.l ;   display     ps9_6.l ;
display    om10_6.l ; display    ph10_6.l ;   display    ps10_6.l ;
display   omm10_7.l ; display   phm10_7.l ;   display   psm10_7.l ;
display    omm9_7.l ; display    phm9_7.l ;   display    psm9_7.l ;
display    omm8_7.l ; display    phm8_7.l ;   display    psm8_7.l ;
display    omm7_7.l ; display    phm7_7.l ;   display    psm7_7.l ;
display    omm6_7.l ; display    phm6_7.l ;   display    psm6_7.l ;
display    omm5_7.l ; display    phm5_7.l ;   display    psm5_7.l ;
display    omm4_7.l ; display    phm4_7.l ;   display    psm4_7.l ;
display    omm3_7.l ; display    phm3_7.l ;   display    psm3_7.l ;
display    omm2_7.l ; display    phm2_7.l ;   display    psm2_7.l ;
display    omm1_7.l ; display    phm1_7.l ;   display    psm1_7.l ;
display     om0_7.l ; display     ph0_7.l ;   display     ps0_7.l ;
display     om1_7.l ; display     ph1_7.l ;   display     ps1_7.l ;
display     om2_7.l ; display     ph2_7.l ;   display     ps2_7.l ;
display     om3_7.l ; display     ph3_7.l ;   display     ps3_7.l ;
display     om4_7.l ; display     ph4_7.l ;   display     ps4_7.l ;
display     om5_7.l ; display     ph5_7.l ;   display     ps5_7.l ;
display     om6_7.l ; display     ph6_7.l ;   display     ps6_7.l ;
display     om7_7.l ; display     ph7_7.l ;   display     ps7_7.l ;
display     om8_7.l ; display     ph8_7.l ;   display     ps8_7.l ;
display     om9_7.l ; display     ph9_7.l ;   display     ps9_7.l ;
display    om10_7.l ; display    ph10_7.l ;   display    ps10_7.l ;
display   omm10_8.l ; display   phm10_8.l ;   display   psm10_8.l ;
display    omm9_8.l ; display    phm9_8.l ;   display    psm9_8.l ;
display    omm8_8.l ; display    phm8_8.l ;   display    psm8_8.l ;
display    omm7_8.l ; display    phm7_8.l ;   display    psm7_8.l ;
display    omm6_8.l ; display    phm6_8.l ;   display    psm6_8.l ;
display    omm5_8.l ; display    phm5_8.l ;   display    psm5_8.l ;
display    omm4_8.l ; display    phm4_8.l ;   display    psm4_8.l ;
display    omm3_8.l ; display    phm3_8.l ;   display    psm3_8.l ;
display    omm2_8.l ; display    phm2_8.l ;   display    psm2_8.l ;
display    omm1_8.l ; display    phm1_8.l ;   display    psm1_8.l ;
display     om0_8.l ; display     ph0_8.l ;   display     ps0_8.l ;
display     om1_8.l ; display     ph1_8.l ;   display     ps1_8.l ;
display     om2_8.l ; display     ph2_8.l ;   display     ps2_8.l ;
display     om3_8.l ; display     ph3_8.l ;   display     ps3_8.l ;
display     om4_8.l ; display     ph4_8.l ;   display     ps4_8.l ;
display     om5_8.l ; display     ph5_8.l ;   display     ps5_8.l ;
display     om6_8.l ; display     ph6_8.l ;   display     ps6_8.l ;
display     om7_8.l ; display     ph7_8.l ;   display     ps7_8.l ;
display     om8_8.l ; display     ph8_8.l ;   display     ps8_8.l ;
display     om9_8.l ; display     ph9_8.l ;   display     ps9_8.l ;
display    om10_8.l ; display    ph10_8.l ;   display    ps10_8.l ;
display   omm10_9.l ; display   phm10_9.l ;   display   psm10_9.l ;
display    omm9_9.l ; display    phm9_9.l ;   display    psm9_9.l ;
display    omm8_9.l ; display    phm8_9.l ;   display    psm8_9.l ;
display    omm7_9.l ; display    phm7_9.l ;   display    psm7_9.l ;
display    omm6_9.l ; display    phm6_9.l ;   display    psm6_9.l ;
display    omm5_9.l ; display    phm5_9.l ;   display    psm5_9.l ;
display    omm4_9.l ; display    phm4_9.l ;   display    psm4_9.l ;
display    omm3_9.l ; display    phm3_9.l ;   display    psm3_9.l ;
display    omm2_9.l ; display    phm2_9.l ;   display    psm2_9.l ;
display    omm1_9.l ; display    phm1_9.l ;   display    psm1_9.l ;
display     om0_9.l ; display     ph0_9.l ;   display     ps0_9.l ;
display     om1_9.l ; display     ph1_9.l ;   display     ps1_9.l ;
display     om2_9.l ; display     ph2_9.l ;   display     ps2_9.l ;
display     om3_9.l ; display     ph3_9.l ;   display     ps3_9.l ;
display     om4_9.l ; display     ph4_9.l ;   display     ps4_9.l ;
display     om5_9.l ; display     ph5_9.l ;   display     ps5_9.l ;
display     om6_9.l ; display     ph6_9.l ;   display     ps6_9.l ;
display     om7_9.l ; display     ph7_9.l ;   display     ps7_9.l ;
display     om8_9.l ; display     ph8_9.l ;   display     ps8_9.l ;
display     om9_9.l ; display     ph9_9.l ;   display     ps9_9.l ;
display    om10_9.l ; display    ph10_9.l ;   display    ps10_9.l ;
display   omm9_10.l ; display   phm9_10.l ;   display   psm9_10.l ;
display   omm8_10.l ; display   phm8_10.l ;   display   psm8_10.l ;
display   omm7_10.l ; display   phm7_10.l ;   display   psm7_10.l ;
display   omm6_10.l ; display   phm6_10.l ;   display   psm6_10.l ;
display   omm5_10.l ; display   phm5_10.l ;   display   psm5_10.l ;
display   omm4_10.l ; display   phm4_10.l ;   display   psm4_10.l ;
display   omm3_10.l ; display   phm3_10.l ;   display   psm3_10.l ;
display   omm2_10.l ; display   phm2_10.l ;   display   psm2_10.l ;
display   omm1_10.l ; display   phm1_10.l ;   display   psm1_10.l ;
display    om0_10.l ; display    ph0_10.l ;   display    ps0_10.l ;
display    om1_10.l ; display    ph1_10.l ;   display    ps1_10.l ;
display    om2_10.l ; display    ph2_10.l ;   display    ps2_10.l ;
display    om3_10.l ; display    ph3_10.l ;   display    ps3_10.l ;
display    om4_10.l ; display    ph4_10.l ;   display    ps4_10.l ;
display    om5_10.l ; display    ph5_10.l ;   display    ps5_10.l ;
display    om6_10.l ; display    ph6_10.l ;   display    ps6_10.l ;
display    om7_10.l ; display    ph7_10.l ;   display    ps7_10.l ;
display    om8_10.l ; display    ph8_10.l ;   display    ps8_10.l ;
display    om9_10.l ; display    ph9_10.l ;   display    ps9_10.l ;
display       obj.l ;
