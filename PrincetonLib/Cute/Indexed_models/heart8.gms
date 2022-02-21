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
*              correction by Ph. Shott, January, 1995.
*   classification NOR2-MN-8-8
*   some useful parameters.
*RE sum_Mx              0.485
*RE sum_My              -0.0019
*RE sum_A               -0.0581
*RE sum_B               0.015
*RE sum_C               0.105
*RE sum_D               0.0406
*RE sum_E               0.167
*RE sum_F               -0.399
*RE sum_Mx              -0.816
*RE sum_My              -0.017
*RE sum_A               -1.826
*RE sum_B               -0.754
*RE sum_C               -4.839
*RE sum_D               -3.259
*RE sum_E               -14.023
*RE sum_F               15.467
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
*   Solution

 Parameter  sum_mx ; sum_mx =  -0.69  ;
 Parameter  sum_my ; sum_my =  -0.044 ;
 Parameter   sum_a ;  sum_a =  -1.57  ;
 Parameter   sum_b ;  sum_b =  -1.31  ;
 Parameter   sum_c ;  sum_c =  -2.65  ;
 Parameter   sum_d ;  sum_d =   2.0   ;
 Parameter   sum_e ;  sum_e = -12.6   ;
 Parameter   sum_f ;  sum_f =   9.48  ;

Variable a , b , c , d , t , u , v , w , obj ;

Equation cons1 , cons2 , cons3 , cons4 ,
         cons5 , cons6 , cons7 , cons8 , Def_obj ;

cons1.. (a + b + 0.69) =e= 0;
cons2.. (c + d + 0.044) =e= 0;
cons3.. (t * a + u * b - v * c - w * d + 1.57) =e= 0;
cons4.. (v * a + w * b + t * c + u * d + 1.31) =e= 0;
cons5.. (a * (t*t-v*v) - 2.0*c * t * v +
        b * (u*u-w*w) - 2.0*d * u * w + 2.65) =e= 0 ;
cons6.. (c * (t*t-v*v) + 2.0*a * t * v +
        d * (u*u-w*w) + 2.0*b * u * w - 2.0 ) =e= 0 ;
cons7.. (a * t * (t*t-(3.0)*v*v) + c * v * (v*v-(3.0)*t*t) +
        b * u * (u*u-(3.0)*w*w) + d * w * (w*w-(3.0)*u*u) + 12.6) =e= 0 ;
cons8.. (c * t * (t*t-(3.0)*v*v) - a * v * (v*v-(3.0)*t*t) +
        d * u * (u*u-(3.0)*w*w) - b * w * (w*w-(3.0)*u*u) - 9.48) =e= 0 ;

Def_obj..  obj =e= 0 ;

b.l = 1.0 ;
d.l = 1.0 ;
t.l = 1.0 ;
u.l = 1.0 ;
v.l = 1.0 ;
w.l = 1.0 ;

Model heart8 /all/;
Solve heart8 using nlp minimize obj;

display a.l ; display b.l ; display c.l   ;
display d.l ; display t.l ; display u.l   ;
display v.l ; display w.l ; display obj.l ;
