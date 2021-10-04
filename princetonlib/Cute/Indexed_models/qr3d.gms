*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Find the QR factorization of a tridiagonal matrix A.
*   The problem is formulated as a system of quadratic equations
*   whose unknowns are the elements of the orthogonal matrix Q and of
*   the upper triangular matrix R.  In this version of the problem,
*   the banded structure of R is not imposed as a constraint. See problem
*   QR3DBD for the case where this structure is explicitly used.
*   The problem is non-convex.
*   Source:
*   Ph. Toint, private communication.
*   SIF input: Ph. Toint, Nov 1993
*   classification  NQR2-AN-V-V
*   Define the matrix order M  ( M >= 3 ).
*   There are M * ( 3M + 1) / 2 variables and equations.
*IE M                   5              $ n =  40
*IE M                   20             $ n = 610
*   Define useful parameters
*   Define the matrix A to factorize
*   a(i,i-1)=a(i,i+1)= (1-i)/m, a(i,i) = 2i/m
*   The orthogonal matrix Q
*   The upper triangular matrix R
*    Orthogonality of the Q matrix
*   Factorization equations A= QR
*   Orthogonality constraints
*   Factorization constraints
*   All variables are free, except the diagonals of R
*   which are nonnegative
*   Initialize Q to the identity
*   Initialize R to the upper triangular part of A
*   Orthogonality constraints
*   Factorization constraints
*   Solution
   Parameter       m ;      m = 10;
   Parameter     mm1 ;    mm1 = -1 + (10);
   Parameter      rm ;     rm = 10.0;
   Parameter    a1_1 ;   a1_1 = 2.0 / (10.0);
   Parameter    a1_2 ;   a1_2 = 0.0;
   Parameter     ip1 ;    ip1 = 1 + (9);
   Parameter     im1 ;    im1 = -1 + (9);
   Parameter    r1mi ;   r1mi = -8.0;
   Parameter     r2i ;    r2i = 18.0;
   Parameter    a2_1 ;   a2_1 = (-1.0) / (10.0);
   Parameter    a2_2 ;   a2_2 = (4.0) / (10.0);
   Parameter    a2_3 ;   a2_3 = (-1.0) / (10.0);
   Parameter    a3_2 ;   a3_2 = (-2.0) / (10.0);
   Parameter    a3_3 ;   a3_3 = (6.0) / (10.0);
   Parameter    a3_4 ;   a3_4 = (-2.0) / (10.0);
   Parameter    a4_3 ;   a4_3 = (-3.0) / (10.0);
   Parameter    a4_4 ;   a4_4 = (8.0) / (10.0);
   Parameter    a4_5 ;   a4_5 = (-3.0) / (10.0);
   Parameter    a5_4 ;   a5_4 = (-4.0) / (10.0);
   Parameter    a5_5 ;   a5_5 = (10.0) / (10.0);
   Parameter    a5_6 ;   a5_6 = (-4.0) / (10.0);
   Parameter    a6_5 ;   a6_5 = (-5.0) / (10.0);
   Parameter    a6_6 ;   a6_6 = (12.0) / (10.0);
   Parameter    a6_7 ;   a6_7 = (-5.0) / (10.0);
   Parameter    a7_6 ;   a7_6 = (-6.0) / (10.0);
   Parameter    a7_7 ;   a7_7 = (14.0) / (10.0);
   Parameter    a7_8 ;   a7_8 = (-6.0) / (10.0);
   Parameter    a8_7 ;   a8_7 = (-7.0) / (10.0);
   Parameter    a8_8 ;   a8_8 = (16.0) / (10.0);
   Parameter    a8_9 ;   a8_9 = (-7.0) / (10.0);
   Parameter    a9_8 ;   a9_8 = (-8.0) / (10.0);
   Parameter    a9_9 ;   a9_9 = (18.0) / (10.0);
   Parameter   a9_10 ;  a9_10 = (-8.0) / (10.0);
   Parameter    rmm1 ;   rmm1 = 9.0;
   Parameter   a10_9 ;  a10_9 = (-1.0 * (9.0)) / (10.0);
   Parameter  a10_10 ; a10_10 = 2.0 * (10.0);

Variable  q1_1  ,   q1_2  ,   q1_3  ,   q1_4  ,   q1_5  ,   q1_6  ,
          q1_7  ,   q1_8  ,   q1_9  ,  q1_10  ,   q2_1  ,   q2_2  ,
          q2_3  ,   q2_4  ,   q2_5  ,   q2_6  ,   q2_7  ,   q2_8  ,
          q2_9  ,  q2_10  ,   q3_1  ,   q3_2  ,   q3_3  ,   q3_4  ,
          q3_5  ,   q3_6  ,   q3_7  ,   q3_8  ,   q3_9  ,  q3_10  ,
          q4_1  ,   q4_2  ,   q4_3  ,   q4_4  ,   q4_5  ,   q4_6  ,
          q4_7  ,   q4_8  ,   q4_9  ,  q4_10  ,   q5_1  ,   q5_2  ,
          q5_3  ,   q5_4  ,   q5_5  ,   q5_6  ,   q5_7  ,   q5_8  ,
          q5_9  ,  q5_10  ,   q6_1  ,   q6_2  ,   q6_3  ,   q6_4  ,
          q6_5  ,   q6_6  ,   q6_7  ,   q6_8  ,   q6_9  ,  q6_10  ,
          q7_1  ,   q7_2  ,   q7_3  ,   q7_4  ,   q7_5  ,   q7_6  ,
          q7_7  ,   q7_8  ,   q7_9  ,  q7_10  ,   q8_1  ,   q8_2  ,
          q8_3  ,   q8_4  ,   q8_5  ,   q8_6  ,   q8_7  ,   q8_8  ,
          q8_9  ,  q8_10  ,   q9_1  ,   q9_2  ,   q9_3  ,   q9_4  ,
          q9_5  ,   q9_6  ,   q9_7  ,   q9_8  ,   q9_9  ,  q9_10  ,
         q10_1  ,  q10_2  ,  q10_3  ,  q10_4  ,  q10_5  ,  q10_6  ,
         q10_7  ,  q10_8  ,  q10_9  , q10_10  ,   r1_1  ,   r1_2  ,
          r1_3  ,   r1_4  ,   r1_5  ,   r1_6  ,   r1_7  ,   r1_8  ,
          r1_9  ,  r1_10  ,   r2_2  ,   r2_3  ,   r2_4  ,   r2_5  ,
          r2_6  ,   r2_7  ,   r2_8  ,   r2_9  ,  r2_10  ,   r3_3  ,
          r3_4  ,   r3_5  ,   r3_6  ,   r3_7  ,   r3_8  ,   r3_9  ,
         r3_10  ,   r4_4  ,   r4_5  ,   r4_6  ,   r4_7  ,   r4_8  ,
          r4_9  ,  r4_10  ,   r5_5  ,   r5_6  ,   r5_7  ,   r5_8  ,
          r5_9  ,  r5_10  ,   r6_6  ,   r6_7  ,   r6_8  ,   r6_9  ,
         r6_10  ,   r7_7  ,   r7_8  ,   r7_9  ,  r7_10  ,   r8_8  ,
          r8_9  ,  r8_10  ,   r9_9  ,  r9_10  , r10_10  ,   obj   ;

Equation Def_obj ;

Def_obj..  obj =e= sqr(q1_1 * q1_1 + q1_2 * q1_2 + q1_3 * q1_3 + q1_4 * q1_4 +
                       q1_5 * q1_5 + q1_6 * q1_6 + q1_7 * q1_7 + q1_8 * q1_8 +
                       q1_9 * q1_9 + q1_10 * q1_10 - 1.0) +
                   sqr(q1_1 * q2_1 + q1_2 * q2_2 + q1_3 * q2_3 + q1_4 * q2_4 +
                       q1_5 * q2_5 + q1_6 * q2_6 + q1_7 * q2_7 + q1_8 * q2_8 +
                       q1_9 * q2_9 + q1_10 * q2_10) +
                   sqr(q1_1 * q3_1 + q1_2 * q3_2 + q1_3 * q3_3 + q1_4 * q3_4 +
                       q1_5 * q3_5 + q1_6 * q3_6 + q1_7 * q3_7 + q1_8 * q3_8 +
                       q1_9 * q3_9 + q1_10 * q3_10) +
                   sqr(q1_1 * q4_1 + q1_2 * q4_2 + q1_3 * q4_3 + q1_4 * q4_4 +
                       q1_5 * q4_5 + q1_6 * q4_6 + q1_7 * q4_7 + q1_8 * q4_8 +
                       q1_9 * q4_9 + q1_10 * q4_10) +
                   sqr(q1_1 * q5_1 + q1_2 * q5_2 + q1_3 * q5_3 + q1_4 * q5_4 +
                       q1_5 * q5_5 + q1_6 * q5_6 + q1_7 * q5_7 + q1_8 * q5_8 +
                       q1_9 * q5_9 + q1_10 * q5_10) +
                   sqr(q1_1 * q6_1 + q1_2 * q6_2 + q1_3 * q6_3 + q1_4 * q6_4 +
                       q1_5 * q6_5 + q1_6 * q6_6 + q1_7 * q6_7 + q1_8 * q6_8 +
                       q1_9 * q6_9 + q1_10 * q6_10) +
                   sqr(q1_1 * q7_1 + q1_2 * q7_2 + q1_3 * q7_3 + q1_4 * q7_4 +
                       q1_5 * q7_5 + q1_6 * q7_6 + q1_7 * q7_7 + q1_8 * q7_8 +
                       q1_9 * q7_9 + q1_10 * q7_10) +
                   sqr(q1_1 * q8_1 + q1_2 * q8_2 + q1_3 * q8_3 + q1_4 * q8_4 +
                       q1_5 * q8_5 + q1_6 * q8_6 + q1_7 * q8_7 + q1_8 * q8_8 +
                       q1_9 * q8_9 + q1_10 * q8_10) +
                   sqr(q1_1 * q9_1 + q1_2 * q9_2 + q1_3 * q9_3 + q1_4 * q9_4 +
                       q1_5 * q9_5 + q1_6 * q9_6 + q1_7 * q9_7 + q1_8 * q9_8 +
                       q1_9 * q9_9 + q1_10 * q9_10) +
                   sqr(q1_1 * q10_1 + q1_2 * q10_2 + q1_3 * q10_3 + q1_4 * q10_4
                       + q1_5 * q10_5 + q1_6 * q10_6 + q1_7 * q10_7 + q1_8 *
                       q10_8 + q1_9 * q10_9 + q1_10 * q10_10) +
                   sqr(q2_1 * q2_1 + q2_2 * q2_2 + q2_3 * q2_3 + q2_4 * q2_4 +
                       q2_5 * q2_5 + q2_6 * q2_6 + q2_7 * q2_7 + q2_8 * q2_8 +
                       q2_9 * q2_9 + q2_10 * q2_10 - 1.0) +
                   sqr(q2_1 * q3_1 + q2_2 * q3_2 + q2_3 * q3_3 + q2_4 * q3_4 +
                       q2_5 * q3_5 + q2_6 * q3_6 + q2_7 * q3_7 + q2_8 * q3_8 +
                       q2_9 * q3_9 + q2_10 * q3_10) +
                   sqr(q2_1 * q4_1 + q2_2 * q4_2 + q2_3 * q4_3 + q2_4 * q4_4 +
                       q2_5 * q4_5 + q2_6 * q4_6 + q2_7 * q4_7 + q2_8 * q4_8 +
                       q2_9 * q4_9 + q2_10 * q4_10) +
                   sqr(q2_1 * q5_1 + q2_2 * q5_2 + q2_3 * q5_3 + q2_4 * q5_4 +
                       q2_5 * q5_5 + q2_6 * q5_6 + q2_7 * q5_7 + q2_8 * q5_8 +
                       q2_9 * q5_9 + q2_10 * q5_10) +
                   sqr(q2_1 * q6_1 + q2_2 * q6_2 + q2_3 * q6_3 + q2_4 * q6_4 +
                       q2_5 * q6_5 + q2_6 * q6_6 + q2_7 * q6_7 + q2_8 * q6_8 +
                       q2_9 * q6_9 + q2_10 * q6_10) +
                   sqr(q2_1 * q7_1 + q2_2 * q7_2 + q2_3 * q7_3 + q2_4 * q7_4 +
                       q2_5 * q7_5 + q2_6 * q7_6 + q2_7 * q7_7 + q2_8 * q7_8 +
                       q2_9 * q7_9 + q2_10 * q7_10) +
                   sqr(q2_1 * q8_1 + q2_2 * q8_2 + q2_3 * q8_3 + q2_4 * q8_4 +
                       q2_5 * q8_5 + q2_6 * q8_6 + q2_7 * q8_7 + q2_8 * q8_8 +
                       q2_9 * q8_9 + q2_10 * q8_10) +
                   sqr(q2_1 * q9_1 + q2_2 * q9_2 + q2_3 * q9_3 + q2_4 * q9_4 +
                       q2_5 * q9_5 + q2_6 * q9_6 + q2_7 * q9_7 + q2_8 * q9_8 +
                       q2_9 * q9_9 + q2_10 * q9_10) +
                   sqr(q2_1 * q10_1 + q2_2 * q10_2 + q2_3 * q10_3 + q2_4 * q10_4
                       + q2_5 * q10_5 + q2_6 * q10_6 + q2_7 * q10_7 + q2_8 *
                       q10_8 + q2_9 * q10_9 + q2_10 * q10_10) +
                   sqr(q3_1 * q3_1 + q3_2 * q3_2 + q3_3 * q3_3 + q3_4 * q3_4 +
                       q3_5 * q3_5 + q3_6 * q3_6 + q3_7 * q3_7 + q3_8 * q3_8 +
                       q3_9 * q3_9 + q3_10 * q3_10 - 1.0) +
                   sqr(q3_1 * q4_1 + q3_2 * q4_2 + q3_3 * q4_3 + q3_4 * q4_4 +
                       q3_5 * q4_5 + q3_6 * q4_6 + q3_7 * q4_7 + q3_8 * q4_8 +
                       q3_9 * q4_9 + q3_10 * q4_10) +
                   sqr(q3_1 * q5_1 + q3_2 * q5_2 + q3_3 * q5_3 + q3_4 * q5_4 +
                       q3_5 * q5_5 + q3_6 * q5_6 + q3_7 * q5_7 + q3_8 * q5_8 +
                       q3_9 * q5_9 + q3_10 * q5_10) +
                   sqr(q3_1 * q6_1 + q3_2 * q6_2 + q3_3 * q6_3 + q3_4 * q6_4 +
                       q3_5 * q6_5 + q3_6 * q6_6 + q3_7 * q6_7 + q3_8 * q6_8 +
                       q3_9 * q6_9 + q3_10 * q6_10) +
                   sqr(q3_1 * q7_1 + q3_2 * q7_2 + q3_3 * q7_3 + q3_4 * q7_4 +
                       q3_5 * q7_5 + q3_6 * q7_6 + q3_7 * q7_7 + q3_8 * q7_8 +
                       q3_9 * q7_9 + q3_10 * q7_10) +
                   sqr(q3_1 * q8_1 + q3_2 * q8_2 + q3_3 * q8_3 + q3_4 * q8_4 +
                       q3_5 * q8_5 + q3_6 * q8_6 + q3_7 * q8_7 + q3_8 * q8_8 +
                       q3_9 * q8_9 + q3_10 * q8_10) +
                   sqr(q3_1 * q9_1 + q3_2 * q9_2 + q3_3 * q9_3 + q3_4 * q9_4 +
                       q3_5 * q9_5 + q3_6 * q9_6 + q3_7 * q9_7 + q3_8 * q9_8 +
                       q3_9 * q9_9 + q3_10 * q9_10) +
                   sqr(q3_1 * q10_1 + q3_2 * q10_2 + q3_3 * q10_3 + q3_4 * q10_4
                       + q3_5 * q10_5 + q3_6 * q10_6 + q3_7 * q10_7 + q3_8 *
                       q10_8 + q3_9 * q10_9 + q3_10 * q10_10) +
                   sqr(q4_1 * q4_1 + q4_2 * q4_2 + q4_3 * q4_3 + q4_4 * q4_4 +
                       q4_5 * q4_5 + q4_6 * q4_6 + q4_7 * q4_7 + q4_8 * q4_8 +
                       q4_9 * q4_9 + q4_10 * q4_10 - 1.0) +
                   sqr(q4_1 * q5_1 + q4_2 * q5_2 + q4_3 * q5_3 + q4_4 * q5_4 +
                       q4_5 * q5_5 + q4_6 * q5_6 + q4_7 * q5_7 + q4_8 * q5_8 +
                       q4_9 * q5_9 + q4_10 * q5_10) +
                   sqr(q4_1 * q6_1 + q4_2 * q6_2 + q4_3 * q6_3 + q4_4 * q6_4 +
                       q4_5 * q6_5 + q4_6 * q6_6 + q4_7 * q6_7 + q4_8 * q6_8 +
                       q4_9 * q6_9 + q4_10 * q6_10) +
                   sqr(q4_1 * q7_1 + q4_2 * q7_2 + q4_3 * q7_3 + q4_4 * q7_4 +
                       q4_5 * q7_5 + q4_6 * q7_6 + q4_7 * q7_7 + q4_8 * q7_8 +
                       q4_9 * q7_9 + q4_10 * q7_10) +
                   sqr(q4_1 * q8_1 + q4_2 * q8_2 + q4_3 * q8_3 + q4_4 * q8_4 +
                       q4_5 * q8_5 + q4_6 * q8_6 + q4_7 * q8_7 + q4_8 * q8_8 +
                       q4_9 * q8_9 + q4_10 * q8_10) +
                   sqr(q4_1 * q9_1 + q4_2 * q9_2 + q4_3 * q9_3 + q4_4 * q9_4 +
                       q4_5 * q9_5 + q4_6 * q9_6 + q4_7 * q9_7 + q4_8 * q9_8 +
                       q4_9 * q9_9 + q4_10 * q9_10) +
                   sqr(q4_1 * q10_1 + q4_2 * q10_2 + q4_3 * q10_3 + q4_4 * q10_4
                       + q4_5 * q10_5 + q4_6 * q10_6 + q4_7 * q10_7 + q4_8 *
                       q10_8 + q4_9 * q10_9 + q4_10 * q10_10) +

                   sqr(q5_1 * q5_1 + q5_2 * q5_2 + q5_3 * q5_3 + q5_4 * q5_4 +
                       q5_5 * q5_5 + q5_6 * q5_6 + q5_7 * q5_7 + q5_8 * q5_8 +
                       q5_9 * q5_9 + q5_10 * q5_10 - 1.0) +
                   sqr(q5_1 * q6_1 + q5_2 * q6_2 + q5_3 * q6_3 + q5_4 * q6_4 +
                       q5_5 * q6_5 + q5_6 * q6_6 + q5_7 * q6_7 + q5_8 * q6_8 +
                       q5_9 * q6_9 + q5_10 * q6_10) +
                   sqr(q5_1 * q7_1 + q5_2 * q7_2 + q5_3 * q7_3 + q5_4 * q7_4 +
                       q5_5 * q7_5 + q5_6 * q7_6 + q5_7 * q7_7 + q5_8 * q7_8 +
                       q5_9 * q7_9 + q5_10 * q7_10) +
                   sqr(q5_1 * q8_1 + q5_2 * q8_2 + q5_3 * q8_3 + q5_4 * q8_4 +
                       q5_5 * q8_5 + q5_6 * q8_6 + q5_7 * q8_7 + q5_8 * q8_8 +
                       q5_9 * q8_9 + q5_10 * q8_10) +
                   sqr(q5_1 * q9_1 + q5_2 * q9_2 + q5_3 * q9_3 + q5_4 * q9_4 +
                       q5_5 * q9_5 + q5_6 * q9_6 + q5_7 * q9_7 + q5_8 * q9_8 +
                       q5_9 * q9_9 + q5_10 * q9_10) +
                   sqr(q5_1 * q10_1 + q5_2 * q10_2 + q5_3 * q10_3 + q5_4 * q10_4
                       + q5_5 * q10_5 + q5_6 * q10_6 + q5_7 * q10_7 + q5_8 *
                       q10_8 + q5_9 * q10_9 + q5_10 * q10_10) +
                   sqr(q6_1 * q6_1 + q6_2 * q6_2 + q6_3 * q6_3 + q6_4 * q6_4 +
                       q6_5 * q6_5 + q6_6 * q6_6 + q6_7 * q6_7 + q6_8 * q6_8 +
                       q6_9 * q6_9 + q6_10 * q6_10 - 1.0) +
                   sqr(q6_1 * q7_1 + q6_2 * q7_2 + q6_3 * q7_3 + q6_4 * q7_4 +
                       q6_5 * q7_5 + q6_6 * q7_6 + q6_7 * q7_7 + q6_8 * q7_8 +
                       q6_9 * q7_9 + q6_10 * q7_10) +
                   sqr(q6_1 * q8_1 + q6_2 * q8_2 + q6_3 * q8_3 + q6_4 * q8_4 +
                       q6_5 * q8_5 + q6_6 * q8_6 + q6_7 * q8_7 + q6_8 * q8_8 +
                       q6_9 * q8_9 + q6_10 * q8_10) +
                   sqr(q6_1 * q9_1 + q6_2 * q9_2 + q6_3 * q9_3 + q6_4 * q9_4 +
                       q6_5 * q9_5 + q6_6 * q9_6 + q6_7 * q9_7 + q6_8 * q9_8 +
                       q6_9 * q9_9 + q6_10 * q9_10) +
                   sqr(q6_1 * q10_1 + q6_2 * q10_2 + q6_3 * q10_3 + q6_4 * q10_4
                       + q6_5 * q10_5 + q6_6 * q10_6 + q6_7 * q10_7 + q6_8 *
                       q10_8 + q6_9 * q10_9 + q6_10 * q10_10) +
                   sqr(q7_1 * q7_1 + q7_2 * q7_2 + q7_3 * q7_3 + q7_4 * q7_4 +
                       q7_5 * q7_5 + q7_6 * q7_6 + q7_7 * q7_7 + q7_8 * q7_8 +
                       q7_9 * q7_9 + q7_10 * q7_10 - 1.0) +
                   sqr(q7_1 * q8_1 + q7_2 * q8_2 + q7_3 * q8_3 + q7_4 * q8_4 +
                       q7_5 * q8_5 + q7_6 * q8_6 + q7_7 * q8_7 + q7_8 * q8_8 +
                       q7_9 * q8_9 + q7_10 * q8_10) +
                   sqr(q7_1 * q9_1 + q7_2 * q9_2 + q7_3 * q9_3 + q7_4 * q9_4 +
                       q7_5 * q9_5 + q7_6 * q9_6 + q7_7 * q9_7 + q7_8 * q9_8 +
                       q7_9 * q9_9 + q7_10 * q9_10) +
                   sqr(q7_1 * q10_1 + q7_2 * q10_2 + q7_3 * q10_3 + q7_4 * q10_4
                       + q7_5 * q10_5 + q7_6 * q10_6 + q7_7 * q10_7 + q7_8 *
                       q10_8 + q7_9 * q10_9 + q7_10 * q10_10) +
                   sqr(q8_1 * q8_1 + q8_2 * q8_2 + q8_3 * q8_3 + q8_4 * q8_4 +
                       q8_5 * q8_5 + q8_6 * q8_6 + q8_7 * q8_7 + q8_8 * q8_8 +
                       q8_9 * q8_9 + q8_10 * q8_10 - 1.0) +
                   sqr(q8_1 * q9_1 + q8_2 * q9_2 + q8_3 * q9_3 + q8_4 * q9_4 +
                       q8_5 * q9_5 + q8_6 * q9_6 + q8_7 * q9_7 + q8_8 * q9_8 +
                       q8_9 * q9_9 + q8_10 * q9_10) +
                   sqr(q8_1 * q10_1 + q8_2 * q10_2 + q8_3 * q10_3 + q8_4 * q10_4
                       + q8_5 * q10_5 + q8_6 * q10_6 + q8_7 * q10_7 + q8_8 *
                       q10_8 + q8_9 * q10_9 + q8_10 * q10_10) +
                   sqr(q9_1 * q9_1 + q9_2 * q9_2 + q9_3 * q9_3 + q9_4 * q9_4 +
                       q9_5 * q9_5 + q9_6 * q9_6 + q9_7 * q9_7 + q9_8 * q9_8 +
                       q9_9 * q9_9 + q9_10 * q9_10 - 1.0) +
                   sqr(q9_1 * q10_1 + q9_2 * q10_2 + q9_3 * q10_3 + q9_4 * q10_4
                       + q9_5 * q10_5 + q9_6 * q10_6 + q9_7 * q10_7 + q9_8 *
                       q10_8 + q9_9 * q10_9 + q9_10 * q10_10) +
                   sqr(q10_1 * q10_1 + q10_2 * q10_2 + q10_3 * q10_3 + q10_4 *
                       q10_4 + q10_5 * q10_5 + q10_6 * q10_6 + q10_7 * q10_7 +
                       q10_8 * q10_8 + q10_9 * q10_9 + q10_10 * q10_10 - 1.0) +
                   sqr(q1_1 * r1_1 - 0.2) +
                   sqr(q1_1 * r1_2 + q1_2 * r2_2) +
                   sqr(q1_1 * r1_3 + q1_2 * r2_3 + q1_3 * r3_3) +
                   sqr(q1_1 * r1_4 + q1_2 * r2_4 + q1_3 * r3_4 + q1_4 * r4_4) +
                   sqr(q1_1 * r1_5 + q1_2 * r2_5 + q1_3 * r3_5 + q1_4 * r4_5 +
                       q1_5 * r5_5) +
                   sqr(q1_1 * r1_6 + q1_2 * r2_6 + q1_3 * r3_6 + q1_4 * r4_6 +
                       q1_5 * r5_6 + q1_6 * r6_6) +
                   sqr(q1_1 * r1_7 + q1_2 * r2_7 + q1_3 * r3_7 + q1_4 * r4_7 +
                       q1_5 * r5_7 + q1_6 * r6_7 + q1_7 * r7_7) +
                   sqr(q1_1 * r1_8 + q1_2 * r2_8 + q1_3 * r3_8 + q1_4 * r4_8 +
                       q1_5 * r5_8 + q1_6 * r6_8 + q1_7 * r7_8 + q1_8 * r8_8) +
                   sqr(q1_1 * r1_9 + q1_2 * r2_9 + q1_3 * r3_9 + q1_4 * r4_9 +
                       q1_5 * r5_9 + q1_6 * r6_9 + q1_7 * r7_9 + q1_8 * r8_9 +
                       q1_9 * r9_9) +
                   sqr(q1_1 * r1_10 + q1_2 * r2_10 + q1_3 * r3_10 + q1_4 * r4_10
                       + q1_5 * r5_10 + q1_6 * r6_10 + q1_7 * r7_10 + q1_8 *
                       r8_10 + q1_9 * r9_10 + q1_10 * r10_10) +
                   sqr(q2_1 * r1_1 + 0.1) +
                   sqr(q2_1 * r1_2 + q2_2 * r2_2 - 0.4) +
                   sqr(q2_1 * r1_3 + q2_2 * r2_3 + q2_3 * r3_3 + 0.1) +
                   sqr(q2_1 * r1_4 + q2_2 * r2_4 + q2_3 * r3_4 + q2_4 * r4_4) +
                   sqr(q2_1 * r1_5 + q2_2 * r2_5 + q2_3 * r3_5 + q2_4 * r4_5 +
                       q2_5 * r5_5) +
                   sqr(q2_1 * r1_6 + q2_2 * r2_6 + q2_3 * r3_6 + q2_4 * r4_6 +
                       q2_5 * r5_6 + q2_6 * r6_6) +
                   sqr(q2_1 * r1_7 + q2_2 * r2_7 + q2_3 * r3_7 + q2_4 * r4_7 +
                       q2_5 * r5_7 + q2_6 * r6_7 + q2_7 * r7_7) +
                   sqr(q2_1 * r1_8 + q2_2 * r2_8 + q2_3 * r3_8 + q2_4 * r4_8 +
                       q2_5 * r5_8 + q2_6 * r6_8 + q2_7 * r7_8 + q2_8 * r8_8) +
                   sqr(q2_1 * r1_9 + q2_2 * r2_9 + q2_3 * r3_9 + q2_4 * r4_9 +
                       q2_5 * r5_9 + q2_6 * r6_9 + q2_7 * r7_9 + q2_8 * r8_9 +
                       q2_9 * r9_9) +
                   sqr(q2_1 * r1_10 + q2_2 * r2_10 + q2_3 * r3_10 + q2_4 * r4_10
                       + q2_5 * r5_10 + q2_6 * r6_10 + q2_7 * r7_10 + q2_8 *
                       r8_10 + q2_9 * r9_10 + q2_10 * r10_10) +
                   sqr(q3_1 * r1_1) +
                   sqr(q3_1 * r1_2 + q3_2 * r2_2 + 0.2) +
                   sqr(q3_1 * r1_3 + q3_2 * r2_3 + q3_3 * r3_3 - 0.6) +
                   sqr(q3_1 * r1_4 + q3_2 * r2_4 + q3_3 * r3_4 + q3_4 * r4_4 +
                       0.2) +
                   sqr(q3_1 * r1_5 + q3_2 * r2_5 + q3_3 * r3_5 + q3_4 * r4_5 +
                       q3_5 * r5_5) +
                   sqr(q3_1 * r1_6 + q3_2 * r2_6 + q3_3 * r3_6 + q3_4 * r4_6 +
                       q3_5 * r5_6 + q3_6 * r6_6) +
                   sqr(q3_1 * r1_7 + q3_2 * r2_7 + q3_3 * r3_7 + q3_4 * r4_7 +
                       q3_5 * r5_7 + q3_6 * r6_7 + q3_7 * r7_7) +
                   sqr(q3_1 * r1_8 + q3_2 * r2_8 + q3_3 * r3_8 + q3_4 * r4_8 +
                       q3_5 * r5_8 + q3_6 * r6_8 + q3_7 * r7_8 + q3_8 * r8_8) +
                   sqr(q3_1 * r1_9 + q3_2 * r2_9 + q3_3 * r3_9 + q3_4 * r4_9 +
                       q3_5 * r5_9 + q3_6 * r6_9 + q3_7 * r7_9 + q3_8 * r8_9 +
                       q3_9 * r9_9) +
                   sqr(q3_1 * r1_10 + q3_2 * r2_10 + q3_3 * r3_10 + q3_4 * r4_10
                       + q3_5 * r5_10 + q3_6 * r6_10 + q3_7 * r7_10 + q3_8 *
                       r8_10 + q3_9 * r9_10 + q3_10 * r10_10) +
                   sqr(q4_1 * r1_1) +
                   sqr(q4_1 * r1_2 + q4_2 * r2_2) +
                   sqr(q4_1 * r1_3 + q4_2 * r2_3 + q4_3 * r3_3 + 0.3) +
                   sqr(q4_1 * r1_4 + q4_2 * r2_4 + q4_3 * r3_4 + q4_4 * r4_4 -
                       0.8) +
                   sqr(q4_1 * r1_5 + q4_2 * r2_5 + q4_3 * r3_5 + q4_4 * r4_5 +
                       q4_5 * r5_5 + 0.3) +
                   sqr(q4_1 * r1_6 + q4_2 * r2_6 + q4_3 * r3_6 + q4_4 * r4_6 +
                       q4_5 * r5_6 + q4_6 * r6_6) +
                   sqr(q4_1 * r1_7 + q4_2 * r2_7 + q4_3 * r3_7 + q4_4 * r4_7 +
                       q4_5 * r5_7 + q4_6 * r6_7 + q4_7 * r7_7) +
                   sqr(q4_1 * r1_8 + q4_2 * r2_8 + q4_3 * r3_8 + q4_4 * r4_8 +
                       q4_5 * r5_8 + q4_6 * r6_8 + q4_7 * r7_8 + q4_8 * r8_8) +
                   sqr(q4_1 * r1_9 + q4_2 * r2_9 + q4_3 * r3_9 + q4_4 * r4_9 +
                       q4_5 * r5_9 + q4_6 * r6_9 + q4_7 * r7_9 + q4_8 * r8_9 +
                       q4_9 * r9_9) +
                   sqr(q4_1 * r1_10 + q4_2 * r2_10 + q4_3 * r3_10 + q4_4 * r4_10
                       + q4_5 * r5_10 + q4_6 * r6_10 + q4_7 * r7_10 + q4_8 *
                       r8_10 + q4_9 * r9_10 + q4_10 * r10_10) +
                   sqr(q5_1 * r1_1) +
                   sqr(q5_1 * r1_2 + q5_2 * r2_2) +
                   sqr(q5_1 * r1_3 + q5_2 * r2_3 + q5_3 * r3_3) +
                   sqr(q5_1 * r1_4 + q5_2 * r2_4 + q5_3 * r3_4 + q5_4 * r4_4 +
                       0.4) +
                   sqr(q5_1 * r1_5 + q5_2 * r2_5 + q5_3 * r3_5 + q5_4 * r4_5 +
                       q5_5 * r5_5 - 1.0) +
                   sqr(q5_1 * r1_6 + q5_2 * r2_6 + q5_3 * r3_6 + q5_4 * r4_6 +
                       q5_5 * r5_6 + q5_6 * r6_6 + 0.4) +
                   sqr(q5_1 * r1_7 + q5_2 * r2_7 + q5_3 * r3_7 + q5_4 * r4_7 +
                       q5_5 * r5_7 + q5_6 * r6_7 + q5_7 * r7_7) +
                   sqr(q5_1 * r1_8 + q5_2 * r2_8 + q5_3 * r3_8 + q5_4 * r4_8 +
                       q5_5 * r5_8 + q5_6 * r6_8 + q5_7 * r7_8 + q5_8 * r8_8) +
                   sqr(q5_1 * r1_9 + q5_2 * r2_9 + q5_3 * r3_9 + q5_4 * r4_9 +
                       q5_5 * r5_9 + q5_6 * r6_9 + q5_7 * r7_9 + q5_8 * r8_9 +
                       q5_9 * r9_9) +
                   sqr(q5_1 * r1_10 + q5_2 * r2_10 + q5_3 * r3_10 + q5_4 * r4_10
                       + q5_5 * r5_10 + q5_6 * r6_10 + q5_7 * r7_10 + q5_8 *
                       r8_10 + q5_9 * r9_10 + q5_10 * r10_10) +
                   sqr(q6_1 * r1_1) +
                   sqr(q6_1 * r1_2 + q6_2 * r2_2) +
                   sqr(q6_1 * r1_3 + q6_2 * r2_3 + q6_3 * r3_3) +
                   sqr(q6_1 * r1_4 + q6_2 * r2_4 + q6_3 * r3_4 + q6_4 * r4_4) +
                   sqr(q6_1 * r1_5 + q6_2 * r2_5 + q6_3 * r3_5 + q6_4 * r4_5 +
                       q6_5 * r5_5 + 0.5) +
                   sqr(q6_1 * r1_6 + q6_2 * r2_6 + q6_3 * r3_6 + q6_4 * r4_6 +
                       q6_5 * r5_6 + q6_6 * r6_6 - 1.2) +
                   sqr(q6_1 * r1_7 + q6_2 * r2_7 + q6_3 * r3_7 + q6_4 * r4_7 +
                       q6_5 * r5_7 + q6_6 * r6_7 + q6_7 * r7_7 + 0.5) +
                   sqr(q6_1 * r1_8 + q6_2 * r2_8 + q6_3 * r3_8 + q6_4 * r4_8 +
                       q6_5 * r5_8 + q6_6 * r6_8 + q6_7 * r7_8 + q6_8 * r8_8) +
                   sqr(q6_1 * r1_9 + q6_2 * r2_9 + q6_3 * r3_9 + q6_4 * r4_9 +
                       q6_5 * r5_9 + q6_6 * r6_9 + q6_7 * r7_9 + q6_8 * r8_9 +
                       q6_9 * r9_9) +
                   sqr(q6_1 * r1_10 + q6_2 * r2_10 + q6_3 * r3_10 + q6_4 * r4_10
                       + q6_5 * r5_10 + q6_6 * r6_10 + q6_7 * r7_10 + q6_8 *
                       r8_10 + q6_9 * r9_10 + q6_10 * r10_10) +
                   sqr(q7_1 * r1_1) +
                   sqr(q7_1 * r1_2 + q7_2 * r2_2) +
                   sqr(q7_1 * r1_3 + q7_2 * r2_3 + q7_3 * r3_3) +
                   sqr(q7_1 * r1_4 + q7_2 * r2_4 + q7_3 * r3_4 + q7_4 * r4_4) +
                   sqr(q7_1 * r1_5 + q7_2 * r2_5 + q7_3 * r3_5 + q7_4 * r4_5 +
                       q7_5 * r5_5) +
                   sqr(q7_1 * r1_6 + q7_2 * r2_6 + q7_3 * r3_6 + q7_4 * r4_6 +
                       q7_5 * r5_6 + q7_6 * r6_6 + 0.6) +
                   sqr(q7_1 * r1_7 + q7_2 * r2_7 + q7_3 * r3_7 + q7_4 * r4_7 +
                       q7_5 * r5_7 + q7_6 * r6_7 + q7_7 * r7_7 - 1.4) +
                   sqr(q7_1 * r1_8 + q7_2 * r2_8 + q7_3 * r3_8 + q7_4 * r4_8 +
                       q7_5 * r5_8 + q7_6 * r6_8 + q7_7 * r7_8 + q7_8 * r8_8 +
                       0.6) +
                   sqr(q7_1 * r1_9 + q7_2 * r2_9 + q7_3 * r3_9 + q7_4 * r4_9 +
                       q7_5 * r5_9 + q7_6 * r6_9 + q7_7 * r7_9 + q7_8 * r8_9 +
                       q7_9 * r9_9) +
                   sqr(q7_1 * r1_10 + q7_2 * r2_10 + q7_3 * r3_10 + q7_4 * r4_10
                       + q7_5 * r5_10 + q7_6 * r6_10 + q7_7 * r7_10 + q7_8 *
                       r8_10 + q7_9 * r9_10 + q7_10 * r10_10) +
                   sqr(q8_1 * r1_1) + sqr(q8_1 * r1_2 + q8_2 * r2_2) +
                   sqr(q8_1 * r1_3 + q8_2 * r2_3 + q8_3 * r3_3) +
                   sqr(q8_1 * r1_4 + q8_2 * r2_4 + q8_3 * r3_4 + q8_4 * r4_4) +
                   sqr(q8_1 * r1_5 + q8_2 * r2_5 + q8_3 * r3_5 + q8_4 * r4_5 +
                       q8_5 * r5_5) +
                   sqr(q8_1 * r1_6 + q8_2 * r2_6 + q8_3 * r3_6 + q8_4 * r4_6 +
                       q8_5 * r5_6 + q8_6 * r6_6) +
                   sqr(q8_1 * r1_7 + q8_2 * r2_7 + q8_3 * r3_7 + q8_4 * r4_7 +
                       q8_5 * r5_7 + q8_6 * r6_7 + q8_7 * r7_7 + 0.7) +
                   sqr(q8_1 * r1_8 + q8_2 * r2_8 + q8_3 * r3_8 + q8_4 * r4_8 +
                       q8_5 * r5_8 + q8_6 * r6_8 + q8_7 * r7_8 + q8_8 * r8_8 -
                       1.6) +
                   sqr(q8_1 * r1_9 + q8_2 * r2_9 + q8_3 * r3_9 + q8_4 * r4_9 +
                       q8_5 * r5_9 + q8_6 * r6_9 + q8_7 * r7_9 + q8_8 * r8_9 +
                       q8_9 * r9_9 + 0.7) +
                   sqr(q8_1 * r1_10 + q8_2 * r2_10 + q8_3 * r3_10 + q8_4 * r4_10
                       + q8_5 * r5_10 + q8_6 * r6_10 + q8_7 * r7_10 + q8_8 *
                       r8_10 + q8_9 * r9_10 + q8_10 * r10_10) +
                   sqr(q9_1 * r1_1) +
                   sqr(q9_1 * r1_2 + q9_2 * r2_2) +
                   sqr(q9_1 * r1_3 + q9_2 * r2_3 + q9_3 * r3_3) +
                   sqr(q9_1 * r1_4 + q9_2 * r2_4 + q9_3 * r3_4 + q9_4 * r4_4) +
                   sqr(q9_1 * r1_5 + q9_2 * r2_5 + q9_3 * r3_5 + q9_4 * r4_5 +
                       q9_5 * r5_5) +
                   sqr(q9_1 * r1_6 + q9_2 * r2_6 + q9_3 * r3_6 + q9_4 * r4_6 +
                       q9_5 * r5_6 + q9_6 * r6_6) +
                   sqr(q9_1 * r1_7 + q9_2 * r2_7 + q9_3 * r3_7 + q9_4 * r4_7 +
                       q9_5 * r5_7 + q9_6 * r6_7 + q9_7 * r7_7) +
                   sqr(q9_1 * r1_8 + q9_2 * r2_8 + q9_3 * r3_8 + q9_4 * r4_8 +
                       q9_5 * r5_8 + q9_6 * r6_8 + q9_7 * r7_8 + q9_8 * r8_8 +
                       0.8) +
                   sqr(q9_1 * r1_9 + q9_2 * r2_9 + q9_3 * r3_9 + q9_4 * r4_9 +
                       q9_5 * r5_9 + q9_6 * r6_9 + q9_7 * r7_9 + q9_8 * r8_9 +
                       q9_9 * r9_9 - 1.8) +
                   sqr(q9_1 * r1_10 + q9_2 * r2_10 + q9_3 * r3_10 + q9_4 * r4_10
                       + q9_5 * r5_10 + q9_6 * r6_10 + q9_7 * r7_10 + q9_8 *
                       r8_10 + q9_9 * r9_10 + q9_10 * r10_10 + 0.8) +
                   sqr(q10_1 * r1_1) +
                   sqr(q10_1 * r1_2 + q10_2 * r2_2) +
                   sqr(q10_1 * r1_3 + q10_2 * r2_3 + q10_3 * r3_3) +
                   sqr(q10_1 * r1_4 + q10_2 * r2_4 + q10_3 * r3_4 + q10_4 *
                       r4_4) +
                   sqr(q10_1 * r1_5 + q10_2 * r2_5 + q10_3 * r3_5 + q10_4 * r4_5
                       + q10_5 * r5_5) +
                   sqr(q10_1 * r1_6 + q10_2 * r2_6 + q10_3 * r3_6 + q10_4 * r4_6
                       + q10_5 * r5_6 + q10_6 * r6_6) +
                   sqr(q10_1 * r1_7 + q10_2 * r2_7 + q10_3 * r3_7 + q10_4 * r4_7
                       + q10_5 * r5_7 + q10_6 * r6_7 + q10_7 * r7_7) +
                   sqr(q10_1 * r1_8 + q10_2 * r2_8 + q10_3 * r3_8 + q10_4 * r4_8
                       + q10_5 * r5_8 + q10_6 * r6_8 + q10_7 * r7_8 + q10_8 *
                       r8_8) +
                   sqr(q10_1 * r1_9 + q10_2 * r2_9 + q10_3 * r3_9 + q10_4 * r4_9
                       + q10_5 * r5_9 + q10_6 * r6_9 + q10_7 * r7_9 + q10_8 *
                       r8_9 + q10_9 * r9_9 + 0.9) +
                   sqr(q10_1 * r1_10 + q10_2 * r2_10 + q10_3 * r3_10 + q10_4 *
                       r4_10 + q10_5 * r5_10 + q10_6 * r6_10 + q10_7 * r7_10 +
                       q10_8 * r8_10 + q10_9 * r9_10 + q10_10 * r10_10 - 20.0);



       q1_1.l  = 1.0 ;
       q2_2.l  = 1.0 ;
       q3_3.l  = 1.0 ;
       q4_4.l  = 1.0 ;
       q5_5.l  = 1.0 ;
       q6_6.l  = 1.0 ;
       q7_7.l  = 1.0 ;
       q8_8.l  = 1.0 ;
       q9_9.l  = 1.0 ;
     q10_10.l  = 1.0 ;

       r2_3.l  = -0.1 ;
       r3_4.l  = -0.2 ;
       r4_5.l  = -0.3 ;
       r5_6.l  = -0.4 ;
       r6_7.l  = -0.5 ;
       r7_8.l  = -0.6 ;
       r8_9.l  = -0.7 ;
      r9_10.l  = -0.8 ;

       r1_1.lo = 0.0 ;     r1_1.l =  0.2 ;
       r2_2.lo = 0.0 ;     r2_2.l =  0.4 ;
       r3_3.lo = 0.0 ;     r3_3.l =  0.6 ;
       r4_4.lo = 0.0 ;     r4_4.l =  0.8 ;
       r5_5.lo = 0.0 ;     r5_5.l =  1.0 ;
       r6_6.lo = 0.0 ;     r6_6.l =  1.2 ;
       r7_7.lo = 0.0 ;     r7_7.l =  1.4 ;
       r8_8.lo = 0.0 ;     r8_8.l =  1.6 ;
       r9_9.lo = 0.0 ;     r9_9.l =  1.8 ;
     r10_10.lo = 0.0 ;   r10_10.l = 20.0 ;

Model qr3d /all/;

Solve qr3d using nlp minimazing obj ;

display q1_1.l  ;  display q1_2.l  ;  display q1_3.l  ;  display q1_4.l  ;
display q1_5.l  ;  display q1_6.l  ;  display q1_7.l  ;  display q1_8.l  ;
display q1_9.l  ;  display q1_10.l ;  display q2_1.l  ;  display q2_2.l  ;
display q2_3.l  ;  display q2_4.l  ;  display q2_5.l  ;  display q2_6.l  ;
display q2_7.l  ;  display q2_8.l  ;  display q2_9.l  ;  display q2_10.l ;
display q3_1.l  ;  display q3_2.l  ;  display q3_3.l  ;  display q3_4.l  ;
display q3_5.l  ;  display q3_6.l  ;  display q3_7.l  ;  display q3_8.l  ;
display q3_9.l  ;  display q3_10.l ;  display q4_1.l  ;  display q4_2.l  ;
display q4_3.l  ;  display q4_4.l  ;  display q4_5.l  ;  display q4_6.l  ;
display q4_7.l  ;  display q4_8.l  ;  display q4_9.l  ;  display q4_10.l ;
display q5_1.l  ;  display q5_2.l  ;  display q5_3.l  ;  display q5_4.l  ;
display q5_5.l  ;  display q5_6.l  ;  display q5_7.l  ;  display q5_8.l  ;
display q5_9.l  ;  display q5_10.l ;  display q6_1.l  ;  display q6_2.l  ;
display q6_3.l  ;  display q6_4.l  ;  display q6_5.l  ;  display q6_6.l  ;
display q6_7.l  ;  display q6_8.l  ;  display q6_9.l  ;  display q6_10.l ;
display q7_1.l  ;  display q7_2.l  ;  display q7_3.l  ;  display q7_4.l  ;
display q7_5.l  ;  display q7_6.l  ;  display q7_7.l  ;  display q7_8.l  ;
display q7_9.l  ;  display q7_10.l ;  display q8_1.l  ;  display q8_2.l  ;
display q8_3.l  ;  display q8_4.l  ;  display q8_5.l  ;  display q8_6.l  ;
display q8_7.l  ;  display q8_8.l  ;  display q8_9.l  ;  display q8_10.l ;
display q9_1.l  ;  display q9_2.l  ;  display q9_3.l  ;  display q9_4.l  ;
display q9_5.l  ;  display q9_6.l  ;  display q9_7.l  ;  display q9_8.l  ;
display q9_9.l  ;  display q9_10.l ;  display q10_1.l ;  display q10_2.l ;
display q10_3.l ;  display q10_4.l ;  display q10_5.l ;  display q10_6.l ;
display q10_7.l ;  display q10_8.l ;  display q10_9.l ;  display q10_10.l;
display r1_1.l  ;  display r1_2.l  ;  display r1_3.l  ;  display r1_4.l  ;
display r1_5.l  ;  display r1_6.l  ;  display r1_7.l  ;  display r1_8.l  ;
display r1_9.l  ;  display r1_10.l ;  display r2_2.l  ;  display r2_3.l  ;
display r2_4.l  ;  display r2_5.l  ;  display r2_6.l  ;  display r2_7.l  ;
display r2_8.l  ;  display r2_9.l  ;  display r2_10.l ;  display r3_3.l  ;
display r3_4.l  ;  display r3_5.l  ;  display r3_6.l  ;  display r3_7.l  ;
display r3_8.l  ;  display r3_9.l  ;  display r3_10.l ;  display r4_4.l  ;
display r4_5.l  ;  display r4_6.l  ;  display r4_7.l  ;  display r4_8.l  ;
display r4_9.l  ;  display r4_10.l ;  display r5_5.l  ;  display r5_6.l  ;
display r5_7.l  ;  display r5_8.l  ;  display r5_9.l  ;  display r5_10.l ;
display r6_6.l  ;  display r6_7.l  ;  display r6_8.l  ;  display r6_9.l  ;
display r6_10.l ;  display r7_7.l  ;  display r7_8.l  ;  display r7_9.l  ;
display r7_10.l ;  display r8_8.l  ;  display r8_9.l  ;  display r8_10.l ;
display r9_9.l  ;  display r9_10.l ;  display r10_10.l;  display obj.l   ;
