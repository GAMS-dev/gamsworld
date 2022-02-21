*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Dipole model of the heart (6 x 6 version).
*   Source:
*   J. E. Dennis, Jr., D. M. Gay, P. A. Vu,
*   "A New Nonlinear Equations Test Problem".
*   Tech. Rep. 83-16, Dept. of Math. Sci., Rice Univ., Houston, TX
*   June 1983, revised May 1985.
*   SIF input: A.R. Conn, May 1993.
*   classification NOR2-MN-6-6
*   some useful parameters.
*RE sum_Mx              0.485
*RE sum_My              -0.0019
*RE sum_A               -0.0581
*RE sum_B               0.015
*RE sum_C               0.105
*RE sum_D               0.0406
*RE sum_E               0.167
*RE sum_F               -0.399
*RE sum_Mx              -0.69
*RE sum_My              -0.044
*RE sum_A               -1.57
*RE sum_B               -1.31
*RE sum_C               -2.65
*RE sum_D               2.0
*RE sum_E               -12.6
*RE sum_F               9.48
*RE sum_Mx              -0.809
*RE sum_My              -0.021
*RE sum_A               -2.04
*RE sum_B               -0.614
*RE sum_C               -6.903
*RE sum_D               -2.934
*RE sum_E               -26.328
*RE sum_F               18.639
*RE sum_Mx              -0.807
*RE sum_My              -0.021
*RE sum_A               -2.379
*RE sum_B               -0.364
*RE sum_C               -10.541
*RE sum_D               -1.961
*RE sum_E               -51.551
*RE sum_F               21.053
*E  G2        E7        -1.0           E8        -1.0
*E  G4        E13                      E14       -2.0
*E  G4        E15                      E16       -2.0
*   Solution

 Parameter sum_mx ;  sum_mx =  -0.816 ;
 Parameter sum_my ;  sum_my =  -0.017 ;
 Parameter  sum_a ;   sum_a =  -1.826 ;
 Parameter  sum_b ;   sum_b =  -0.754 ;
 Parameter  sum_c ;   sum_c =  -4.839 ;
 Parameter  sum_d ;   sum_d =  -3.259 ;
 Parameter  sum_e ;   sum_e = -14.023 ;
 Parameter  sum_f ;   sum_f =  15.467 ;

Variable a , c , t , u , v , w , obj ;

Equation  Def_obj ;

Def_obj..

 obj =e= sqr(t * a + u * (-0.816-a) - v * c - w * (-0.017-c) + 1.826) +
         sqr(v * a + w * (-0.816-a) + t * c + u * (-0.017-c) + 0.754) +
         sqr(a * (t*t-v*v) - 2.0*c * t * v + (-0.816-a) * (u*u-w*w) -
             2.0*(-0.017-c) * u * w + 4.839) +
         sqr(c * (t*t-v*v) + 2.0*a * t * v + (-0.017-c) * (u*u-w*w) +
             2.0*(-0.816-a) * u * w + 3.259) +
         sqr(a * t * (t*t-(3.0)*v*v) + c * v * (v*v-(3.0)*t*t) +
             (-0.816-a) * u * (u*u-(3.0)*w*w) + (-0.017-c) * w *
             (w*w-(3.0)*u*u) + 14.023) +
         sqr(c * t * (t*t-(3.0)*v*v) - a * v * (v*v-(3.0)*t*t) +
             (-0.017-c) * u * (u*u- (3.0)*w*w) - (-0.816-a) * w *
             (w*w-(3.0)*u*u) - 15.467);

*in original model
* a.l = 0.0 ;
* c.l = 0.0 ;

a.l = 0.01 ;
c.l = 0.01 ;
t.l = 1.0  ;
u.l = 1.0  ;
v.l = 1.0  ;
w.l = 1.0  ;

Model heart6ls /all/;

Solve heart6ls using nlp minimize obj;

display a.l  ; display c.l ; display t.l ;
display u.l  ; display v.l ; display w.l ;
display obj.l;
