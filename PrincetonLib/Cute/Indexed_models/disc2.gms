* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   The problem is to find the minimum disc radius subject to polygon
*   determined by boundary discs intersecting all interior discs.
*   Source:
*   W. Pulleyblank,
*   private communication, 1991.
*   SIF input: A.R. Conn, November 1991.
*   classification LQR2-MY-29-23
*   Number of nodes
*   Number of sides to the polygon
*   Constants
*   Lower bound on the objective function
*   Objective function
*   Boundary constraints
*   Collinearity constraints
*ZL DISC2                              RNODES
*   Solution

parameter  nnodes; nnodes = 11  ;
parameter  nlines; nlines =  6  ;
parameter  x1    ; x1     =  0.0;
parameter  x2    ; x2     =  8.0;
parameter  x3    ; x3     = 12.0;
parameter  x4    ; x4     =  8.0;
parameter  x5    ; x5     =  0.0;
parameter  x6    ; x6     =  4.0;
parameter  x7    ; x7     =  8.0;
parameter  x8    ; x8     =  8.0;
parameter  x9    ; x9     =  4.0;
parameter  x10   ; x10    =  2.0;
parameter  x11   ; x11    =  2.0;
parameter  y1    ; y1     = 10.0;
parameter  y2    ; y2     = 10.0;
parameter  y3    ; y3     =  5.0;
parameter  y4    ; y4     =  0.0;
parameter  y5    ; y5     =  0.0;
parameter  y6    ; y6     =  8.0;
parameter  y7    ; y7     =  7.0;
parameter  y8    ; y8     =  3.0;
parameter  y9    ; y9     =  1.0;
parameter  y10   ; y10    =  3.0;
parameter  y11   ; y11    =  6.0;
parameter  rnodes; rnodes = 11.0;

Positive Variable epsilon , alpha1 , alpha2 ,
                  alpha3  , alpha4 , alpha5 , alpha6 ;

Variable  u1 ,  v1 ,  u2 ,  v2 , u3 , v3 , u4 , v4 , u5 ,
          v5 ,  u6 ,  v6 ,  u7 , v7 , u8 , v8 , u9 , v9 ,
         u10 , v10 , u11 , v11 , obj ;

Equation    b1,   b2,   b3,   b4,   b5,   b6,   b7,   b8,   b9,   b10,   b11,
          b162,  b11, b162, c162, b273, c273, b384, c384, b495,  c495, b5101,
         c5101,b5111,c5111, Def_obj ;

 b1..     sqr(u1-0.0)  + sqr(v1-10.0) - sqr(epsilon) =e= 0;
 b2..     sqr(u2-8.0)  + sqr(v2-10.0) - sqr(epsilon) =e= 0;
 b3..     sqr(u3-12.0) + sqr(v3-5.0)  - sqr(epsilon) =e= 0;
 b4..     sqr(u4-8.0)  + sqr(v4-0.0)  - sqr(epsilon) =e= 0;
 b5..     sqr(u5-0.0)  + sqr(v5-0.0)  - sqr(epsilon) =e= 0;

 b6..     0 =g= sqr(u6 -4.0)  + sqr(v6 -8.0) - sqr(epsilon);
 b7..     0 =g= sqr(u7 -8.0)  + sqr(v7 -7.0) - sqr(epsilon);
 b8..     0 =g= sqr(u8 -8.0)  + sqr(v8 -3.0) - sqr(epsilon);
 b9..     0 =g= sqr(u9 -4.0)  + sqr(v9 -1.0) - sqr(epsilon);
 b10..    0 =g= sqr(u10-2.0)  + sqr(v10-3.0) - sqr(epsilon);
 b11..    0 =g= sqr(u11-2.0)  + sqr(v11-6.0) - sqr(epsilon);

 b162..   (u2-u1) * (-alpha1) +  u6 - u1 =e= 0;
 c162..   (v2-v1) * (-alpha1) +  v6 - v1 =e= 0;
 b273..   (u3-u2) * (-alpha2) +  u7 - u2 =e= 0;
 c273..   (v3-v2) * (-alpha2) +  v7 - v2 =e= 0;
 b384..   (u4-u3) * (-alpha3) +  u8 - u3 =e= 0;
 c384..   (v4-v3) * (-alpha3) +  v8 - v3 =e= 0;
 b495..   (u5-u4) * (-alpha4) +  u9 - u4 =e= 0;
 c495..   (v5-v4) * (-alpha4) +  v9 - v4 =e= 0;
 b5101..  (u1-u5) * (-alpha5) + u10 - u5 =e= 0;
 c5101..  (v1-v5) * (-alpha5) + v10 - v5 =e= 0;
 b5111..  (u1-u5) * (-alpha5) + u11 - u5 =e= 0;
 c5111..  (v1-v5) * (-alpha5) + v11 - v5 =e= 0;

Def_obj.. obj=e= epsilon;

epsilon.lo  = 0.0 ; epsilon.up = 3.0; epsilon.l= 0.1;
  alpha1.up = 1.0;  alpha1.l= 0.0;
  alpha2.up = 1.0;  alpha2.l= 0.0;
  alpha3.up = 1.0;  alpha3.l= 0.0;
  alpha4.up = 1.0;  alpha4.l= 0.0;
  alpha5.up = 1.0;  alpha5.l= 0.0;
  alpha6.up = 1.0;  alpha6.l= 0.0;

  u1.l = 0.0 ;
  v1.l = 0.0 ;
  u2.l = 0.0 ;
  v2.l = 0.0 ;
  u3.l = 0.0 ;
  v3.l = 0.0 ;
  u4.l = 0.0 ;
  v4.l = 0.0 ;
  u5.l = 0.0 ;
  v5.l = 0.0 ;
  u6.l = 0.0 ;
  v6.l = 0.0 ;
  u7.l = 0.0 ;
  v7.l = 0.0 ;
  u8.l = 0.0 ;
  v8.l = 0.0 ;
  u9.l = 0.0 ;
  v9.l = 0.0 ;
 u10.l = 0.0 ;
 v10.l = 0.0 ;
 u11.l = 0.0 ;
 v11.l = 0.0 ;

Model disc2 /all/;

Solve disc2 using nlp minimize obj;

display epsilon.l;
display    u1.l  ;  display   v1.l  ;  display   u2.l  ;   display  v2.l  ;
display    u3.l  ;  display   v3.l  ;  display   u4.l  ;   display  v4.l  ;
display    u5.l  ;  display   v5.l  ;  display   u6.l  ;   display  v6.l  ;
display    u7.l  ;  display   v7.l  ;  display   u8.l  ;   display  v8.l  ;
display    u9.l  ;  display   v9.l  ;  display  u10.l  ;   display v10.l  ;
display   u11.l  ;  display  v11.l  ; display alpha1.l ; display alpha2.l ;
display alpha3.l ; display alpha4.l ; display alpha5.l ; display alpha6.l ;
display obj.l    ;
