*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Toint's  Quadratic Operations Research problem
*   Source:
*   Ph.L. Toint,
*   "Some numerical results using a sparse matrix updating formula in
*   unconstrained optimization",
*   Mathematics of Computation 32(1):839-852, 1978.
*   See also Buckley*55 (p.94) (With a slightly lower optimal value?)
*   SIF input: Ph. Toint, Dec 1989.
*   classification QUR2-MN-50-0
*   Number of variables
*   Problem parameters
*   Problem data
*   Other parameters
*   Solution

$offdigit

   Parameter       n ;       n := 50;
   Parameter   alph1 ;   alph1 := 1.25;
   Parameter   alph2 ;   alph2 := 1.4;
   Parameter   alph3 ;   alph3 := 2.4;
   Parameter   alph4 ;   alph4 := 1.4;
   Parameter   alph5 ;   alph5 := 1.75;
   Parameter   alph6 ;   alph6 := 1.2;
   Parameter   alph7 ;   alph7 := 2.25;
   Parameter   alph8 ;   alph8 := 1.2;
   Parameter   alph9 ;   alph9 := 1.0;
   Parameter  alph10 ;  alph10 := 1.1;
   Parameter  alph11 ;  alph11 := 1.5;
   Parameter  alph12 ;  alph12 := 1.6;
   Parameter  alph13 ;  alph13 := 1.25;
   Parameter  alph14 ;  alph14 := 1.25;
   Parameter  alph15 ;  alph15 := 1.2;
   Parameter  alph16 ;  alph16 := 1.2;
   Parameter  alph17 ;  alph17 := 1.4;
   Parameter  alph18 ;  alph18 := 0.5;
   Parameter  alph19 ;  alph19 := 0.5;
   Parameter  alph20 ;  alph20 := 1.25;
   Parameter  alph21 ;  alph21 := 1.8;
   Parameter  alph22 ;  alph22 := 0.75;
   Parameter  alph23 ;  alph23 := 1.25;
   Parameter  alph24 ;  alph24 := 1.4;
   Parameter  alph25 ;  alph25 := 1.6;
   Parameter  alph26 ;  alph26 := 2.0;
   Parameter  alph27 ;  alph27 := 1.0;
   Parameter  alph28 ;  alph28 := 1.6;
   Parameter  alph29 ;  alph29 := 1.25;
   Parameter  alph30 ;  alph30 := 2.75;
   Parameter  alph31 ;  alph31 := 1.25;
   Parameter  alph32 ;  alph32 := 1.25;
   Parameter  alph33 ;  alph33 := 1.25;
   Parameter  alph34 ;  alph34 := 3.0;
   Parameter  alph35 ;  alph35 := 1.5;
   Parameter  alph36 ;  alph36 := 2.0;
   Parameter  alph37 ;  alph37 := 1.25;
   Parameter  alph38 ;  alph38 := 1.4;
   Parameter  alph39 ;  alph39 := 1.8;
   Parameter  alph40 ;  alph40 := 1.5;
   Parameter  alph41 ;  alph41 := 2.2;
   Parameter  alph42 ;  alph42 := 1.4;
   Parameter  alph43 ;  alph43 := 1.5;
   Parameter  alph44 ;  alph44 := 1.25;
   Parameter  alph45 ;  alph45 := 2.0;
   Parameter  alph46 ;  alph46 := 1.5;
   Parameter  alph47 ;  alph47 := 1.25;
   Parameter  alph48 ;  alph48 := 1.4;
   Parameter  alph49 ;  alph49 := 0.6;
   Parameter  alph50 ;  alph50 := 1.5;
   Parameter   beta1 ;   beta1 := 1.0;
   Parameter   beta2 ;   beta2 := 1.5;
   Parameter   beta3 ;   beta3 := 1.0;
   Parameter   beta4 ;   beta4 := 0.1;
   Parameter   beta5 ;   beta5 := 1.5;
   Parameter   beta6 ;   beta6 := 2.0;
   Parameter   beta7 ;   beta7 := 1.0;
   Parameter   beta8 ;   beta8 := 1.5;
   Parameter   beta9 ;   beta9 := 3.0;
   Parameter  beta10 ;  beta10 := 2.0;
   Parameter  beta11 ;  beta11 := 1.0;
   Parameter  beta12 ;  beta12 := 3.0;
   Parameter  beta13 ;  beta13 := 0.1;
   Parameter  beta14 ;  beta14 := 1.5;
   Parameter  beta15 ;  beta15 := 0.15;
   Parameter  beta16 ;  beta16 := 2.0;
   Parameter  beta17 ;  beta17 := 1.0;
   Parameter  beta18 ;  beta18 := 0.1;
   Parameter  beta19 ;  beta19 := 3.0;
   Parameter  beta20 ;  beta20 := 0.1;
   Parameter  beta21 ;  beta21 := 1.2;
   Parameter  beta22 ;  beta22 := 1.0;
   Parameter  beta23 ;  beta23 := 0.1;
   Parameter  beta24 ;  beta24 := 2.0;
   Parameter  beta25 ;  beta25 := 1.2;
   Parameter  beta26 ;  beta26 := 3.0;
   Parameter  beta27 ;  beta27 := 1.5;
   Parameter  beta28 ;  beta28 := 3.0;
   Parameter  beta29 ;  beta29 := 2.0;
   Parameter  beta30 ;  beta30 := 1.0;
   Parameter  beta31 ;  beta31 := 1.2;
   Parameter  beta32 ;  beta32 := 2.0;
   Parameter  beta33 ;  beta33 := 1.0;
   Parameter      d1 ;      d1 := -5.0;
   Parameter      d2 ;      d2 := -5.0;
   Parameter      d3 ;      d3 := -5.0;
   Parameter      d4 ;      d4 := -2.5;
   Parameter      d5 ;      d5 := -6.0;
   Parameter      d6 ;      d6 := -6.0;
   Parameter      d7 ;      d7 := -5.0;
   Parameter      d8 ;      d8 := -6.0;
   Parameter      d9 ;      d9 := -10.0;
   Parameter     d10 ;     d10 := -6.0;
   Parameter     d11 ;     d11 := -5.0;
   Parameter     d12 ;     d12 := -9.0;
   Parameter     d13 ;     d13 := -2.0;
   Parameter     d14 ;     d14 := -7.0;
   Parameter     d15 ;     d15 := -2.5;
   Parameter     d16 ;     d16 := -6.0;
   Parameter     d17 ;     d17 := -5.0;
   Parameter     d18 ;     d18 := -2.0;
   Parameter     d19 ;     d19 := -9.0;
   Parameter     d20 ;     d20 := -2.0;
   Parameter     d21 ;     d21 := -5.0;
   Parameter     d22 ;     d22 := -5.0;
   Parameter     d23 ;     d23 := -2.5;
   Parameter     d24 ;     d24 := -5.0;
   Parameter     d25 ;     d25 := -6.0;
   Parameter     d26 ;     d26 := -10.0;
   Parameter     d27 ;     d27 := -7.0;
   Parameter     d28 ;     d28 := -10.0;
   Parameter     d29 ;     d29 := -6.0;
   Parameter     d30 ;     d30 := -5.0;
   Parameter     d31 ;     d31 := -4.0;
   Parameter     d32 ;     d32 := -4.0;
   Parameter     d33 ;     d33 := -4.0;
   Parameter   scale ;   scale := 1.0 / (1.0);

Variable x1   , x2   , x3   , x4   , x5   ,
         x6   , x7   , x8   , x9   ,x10   ,
        x11   ,x12   ,x13   ,x14   ,x15   ,
        x16   ,x17   ,x18   ,x19   ,x20   ,
        x21   ,x22   ,x23   ,x24   ,x25   ,
        x26   ,x27   ,x28   ,x29   ,x30   ,
        x31   ,x32   ,x33   ,x34   ,x35   ,
        x36   ,x37   ,x38   ,x39   ,x40   ,
        x41   ,x42   ,x43   ,x44   ,x45   ,
        x46   ,x47   ,x48   ,x49   ,x50   , obj ;

Equation Def_obj ;

Def_obj..  obj =e= (((x1)*(x1))/0.8) + (((x2)*(x2))/0.7142857142857143) +
         (((x3)*(x3))/0.4166666666666667) +
         (((x4)*(x4))/0.7142857142857143) +
         (((x5)*(x5))/0.5714285714285714) +
         (((x6)*(x6))/0.8333333333333334) +
         (((x7)*(x7))/0.4444444444444444) +
         (((x8)*(x8))/0.8333333333333334) + (x9)*(x9) +
         (((x10)*(x10))/0.9090909090909091) +
         (((x11)*(x11))/0.6666666666666666) + (((x12)*(x12))/0.625) +
         (((x13)*(x13))/0.8) + (((x14)*(x14))/0.8) +
         (((x15)*(x15))/0.8333333333333334) +
         (((x16)*(x16))/0.8333333333333334) +
         (((x17)*(x17))/0.7142857142857143) + (((x18)*(x18))/2.0) +
         (((x19)*(x19))/2.0) + (((x20)*(x20))/0.8) +
         (((x21)*(x21))/0.5555555555555556) +
         (((x22)*(x22))/1.3333333333333333) + (((x23)*(x23))/0.8) +
         (((x24)*(x24))/0.7142857142857143) + (((x25)*(x25))/0.625) +
         (((x26)*(x26))/0.5) + (x27)*(x27) + (((x28)*(x28))/0.625) +
         (((x29)*(x29))/0.8) + (((x30)*(x30))/0.36363636363636365) +
         (((x31)*(x31))/0.8) + (((x32)*(x32))/0.8) + (((x33)*(x33))/0.8) +
         (((x34)*(x34))/0.3333333333333333) +
         (((x35)*(x35))/0.6666666666666666) + (((x36)*(x36))/0.5) +
         (((x37)*(x37))/0.8) + (((x38)*(x38))/0.7142857142857143) +
         (((x39)*(x39))/0.5555555555555556) +
         (((x40)*(x40))/0.6666666666666666) +
         (((x41)*(x41))/0.45454545454545453) +
         (((x42)*(x42))/0.7142857142857143) +
         (((x43)*(x43))/0.6666666666666666) + (((x44)*(x44))/0.8) +
         (((x45)*(x45))/0.5) + (((x46)*(x46))/0.6666666666666666) +
         (((x47)*(x47))/0.8) + (((x48)*(x48))/0.7142857142857143) +
         (((x49)*(x49))/1.6666666666666667) +
         (((x50)*(x50))/0.6666666666666666) + (-x31 + x1 + 5.0)*(-x31 + x1
         + 5.0) + (((-x1 + x2 + x3 + 5.0)*(-x1 + x2 + x3 +
         5.0))/0.6666666666666666) + (-x2 + x4 + x5 + 5.0)*(-x2 + x4 + x5 +
         5.0) + (((-x4 + x6 + x7 + 2.5)*(-x4 + x6 + x7 + 2.5))/10.0) +
         (((-x6 + x8 + x9 + 6.0)*(-x6 + x8 + x9 + 6.0))/0.6666666666666666)
         + (((-x8 + x10 + x11 + 6.0)*(-x8 + x10 + x11 + 6.0))/0.5) + (-x10
         + x12 + x13 + 5.0)*(-x10 + x12 + x13 + 5.0) + (((-x12 + x14 + x15
         + 6.0)*(-x12 + x14 + x15 + 6.0))/0.6666666666666666) + (((-x11 -
         x13 - x14 + x16 + x17 + 10.0)*(-x11 - x13 - x14 + x16 + x17 +
         10.0))/0.3333333333333333) + (((-x16 + x18 + x19 + 6.0)*(-x16 +
         x18 + x19 + 6.0))/0.5) + (-x9 - x18 + x20 + 5.0)*(-x9 - x18 + x20
         + 5.0) + (((-x5 - x20 - x21 + 9.0)*(-x5 - x20 - x21 +
         9.0))/0.3333333333333333) + (((-x19 + x22 + x23 + x24 + 2.0)*(-x19
         + x22 + x23 + x24 + 2.0))/10.0) + (((-x23 + x25 + x26 + 7.0)*(-x23
         + x25 + x26 + 7.0))/0.6666666666666666) + (((-x7 - x25 + x27 + x28
         + 2.5)*(-x7 - x25 + x27 + x28 + 2.5))/6.666666666666667) + (((-x28
         + x29 + x30 + 6.0)*(-x28 + x29 + x30 + 6.0))/0.5) + (-x29 + x31 +
         x32 + 5.0)*(-x29 + x31 + x32 + 5.0) + (((-x32 + x33 + x34 +
         2.0)*(-x32 + x33 + x34 + 2.0))/10.0) + (((-x3 - x33 + x35 +
         9.0)*(-x3 - x33 + x35 + 9.0))/0.3333333333333333) + (((-x35 + x21
         + x36 + 2.0)*(-x35 + x21 + x36 + 2.0))/10.0) + (((-x36 + x37 + x38
         + 5.0)*(-x36 + x37 + x38 + 5.0))/0.8333333333333334) + (-x30 - x37
         + x39 + 5.0)*(-x30 - x37 + x39 + 5.0) + (((-x38 - x39 + x40 +
         2.5)*(-x38 - x39 + x40 + 2.5))/10.0) + (((-x40 + x41 + x42 +
         5.0)*(-x40 + x41 + x42 + 5.0))/0.5) + (((-x41 + x43 + x44 + x50 +
         6.0)*(-x41 + x43 + x44 + x50 + 6.0))/0.8333333333333334) + (((-x44
         + x45 + x46 + x47 + 10.0)*(-x44 + x45 + x46 + x47 +
         10.0))/0.3333333333333333) + (((-x46 + x48 + 7.0)*(-x46 + x48 +
         7.0))/0.6666666666666666) + (((-x42 - x45 - x48 - x50 + x49 +
         10.0)*(-x42 - x45 - x48 - x50 + x49 + 10.0))/0.3333333333333333) +
         (((-x26 - x34 - x43 + 6.0)*(-x26 - x34 - x43 + 6.0))/0.5) + (-x15
         - x17 - x24 - x47 + 5.0)*(-x15 - x17 - x24 - x47 + 5.0) + (((-x49
         + 4.0)*(-x49 + 4.0))/0.8333333333333334) + (((-x22 + 4.0)*(-x22 +
         4.0))/0.5) + (-x27 + 4.0)*(-x27 + 4.0);

Model tointqor /all/;

Solve tointqor  using nlp minimazing obj ;

 display  x1.l ; display  x2.l ; display  x3.l ; display  x4.l ;
 display  x5.l ; display  x6.l ; display  x7.l ; display  x8.l ;
 display  x9.l ; display x10.l ; display x11.l ; display x12.l ;
 display x13.l ; display x14.l ; display x15.l ; display x16.l ;
 display x17.l ; display x18.l ; display x19.l ; display x20.l ;
 display x21.l ; display x22.l ; display x23.l ; display x24.l ;
 display x25.l ; display x26.l ; display x27.l ; display x28.l ;
 display x29.l ; display x30.l ; display x31.l ; display x32.l ;
 display x33.l ; display x34.l ; display x35.l ; display x36.l ;
 display x37.l ; display x38.l ; display x39.l ; display x40.l ;
 display x41.l ; display x42.l ; display x43.l ; display x44.l ;
 display x45.l ; display x46.l ; display x47.l ; display x48.l ;
 display x49.l ; display x50.l ; display obj.l ;
