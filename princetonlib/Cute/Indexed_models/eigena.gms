* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   --------
*   Solving symmetric eigenvalue problems as systems of
*   nonlinear equations.
*   The problem is, given a symmetric matrix A, to find an orthogonal
*   matrix Q and diagonal matrix D such that A = Q(T) D Q.
*   Example A: a diagonal matrix with eigenvales 1, .... , N.
*   Source:  An idea by Nick Gould
*               Nonlinear equations version.
*   SIF input: Nick Gould, Nov 1992.
*   classification NOR2-AN-V-V
*   The dimension of the matrix.
*IE N                   2
*IE N                   100
*   other parameter definitions
*   Define the upper triangular part of the matrix.
*  Define the eigenvalues
*  Define the eigenvectors
*  Introduce the eigen-equations Q(T) D Q - A = 0.

parameter      n  ;     n = 10.0;
parameter     rj  ;    rj = 10.0;
parameter    jm1  ;   jm1 =-1+10;
parameter   a1_1  ;  a1_1 =  1.0;
parameter   a2_2  ;  a2_2 =  2.0;
parameter   a1_2  ;  a1_2 =  0.0;
parameter   a3_3  ;  a3_3 =  3.0;
parameter   a1_3  ;  a1_3 =  0.0;
parameter   a2_3  ;  a2_3 =  0.0;
parameter   a4_4  ;  a4_4 =  4.0;
parameter   a1_4  ;  a1_4 =  0.0;
parameter   a2_4  ;  a2_4 =  0.0;
parameter   a3_4  ;  a3_4 =  0.0;
parameter   a5_5  ;  a5_5 =  5.0;
parameter   a1_5  ;  a1_5 =  0.0;
parameter   a2_5  ;  a2_5 =  0.0;
parameter   a3_5  ;  a3_5 =  0.0;
parameter   a4_5  ;  a4_5 =  0.0;
parameter   a6_6  ;  a6_6 =  6.0;
parameter   a1_6  ;  a1_6 =  0.0;
parameter   a2_6  ;  a2_6 =  0.0;
parameter   a3_6  ;  a3_6 =  0.0;
parameter   a4_6  ;  a4_6 =  0.0;
parameter   a5_6  ;  a5_6 =  0.0;
parameter   a7_7  ;  a7_7 =  7.0;
parameter   a1_7  ;  a1_7 =  0.0;
parameter   a2_7  ;  a2_7 =  0.0;
parameter   a3_7  ;  a3_7 =  0.0;
parameter   a4_7  ;  a4_7 =  0.0;
parameter   a5_7  ;  a5_7 =  0.0;
parameter   a6_7  ;  a6_7 =  0.0;
parameter   a8_8  ;  a8_8 =  8.0;
parameter   a1_8  ;  a1_8 =  0.0;
parameter   a2_8  ;  a2_8 =  0.0;
parameter   a3_8  ;  a3_8 =  0.0;
parameter   a4_8  ;  a4_8 =  0.0;
parameter   a5_8  ;  a5_8 =  0.0;
parameter   a6_8  ;  a6_8 =  0.0;
parameter   a7_8  ;  a7_8 =  0.0;
parameter   a9_9  ;  a9_9 =  9.0;
parameter   a1_9  ;  a1_9 =  0.0;
parameter   a2_9  ;  a2_9 =  0.0;
parameter   a3_9  ;  a3_9 =  0.0;
parameter   a4_9  ;  a4_9 =  0.0;
parameter   a5_9  ;  a5_9 =  0.0;
parameter   a6_9  ;  a6_9 =  0.0;
parameter   a7_9  ;  a7_9 =  0.0;
parameter   a8_9  ;  a8_9 =  0.0;
parameter  a10_10 ; a10_10= 10.0;
parameter  a1_10  ; a1_10 =  0.0;
parameter  a2_10  ; a2_10 =  0.0;
parameter  a3_10  ; a3_10 =  0.0;
parameter  a4_10  ; a4_10 =  0.0;
parameter  a5_10  ; a5_10 =  0.0;
parameter  a6_10  ; a6_10 =  0.0;
parameter  a7_10  ; a7_10 =  0.0;
parameter  a8_10  ; a8_10 =  0.0;
parameter  a9_10  ; a9_10 =  0.0;

Positive Variable   d1 , q1_1  , q2_1  , q3_1  , q4_1  , q5_1  , q6_1  ,
                  q7_1 , q8_1  , q9_1  , q10_1 ,   d2  , q1_2  , q2_2  ,
                  q3_2 , q4_2  , q5_2  , q6_2  , q7_2  , q8_2  , q9_2  ,
                 q10_2 ,   d3  , q1_3  , q2_3  , q3_3  , q4_3  , q5_3  ,
                  q6_3 , q7_3  , q8_3  , q9_3  , q10_3 ,   d4  , q1_4  ,
                  q2_4 , q3_4  , q4_4  , q5_4  , q6_4  , q7_4  , q8_4  ,
                  q9_4 , q10_4 ,   d5  , q1_5  , q2_5  , q3_5  , q4_5  ,
                  q5_5 , q6_5  , q7_5  , q8_5  , q9_5  , q10_5 ,   d6  ,
                  q1_6 , q2_6  , q3_6  , q4_6  , q5_6  , q6_6  , q7_6  ,
                  q8_6 , q9_6  , q10_6 ,   d7  , q1_7  , q2_7  , q3_7  ,
                  q4_7 , q5_7  , q6_7  , q7_7  , q8_7  , q9_7  , q10_7 ,
                    d8 , q1_8  , q2_8  , q3_8  , q4_8  , q5_8  , q6_8  ,
                  q7_8 , q8_8  , q9_8  , q10_8 ,   d9  , q1_9  , q2_9  ,
                  q3_9 , q4_9  , q5_9  ,  q6_9 , q7_9  , q8_9  , q9_9  ,
                 q10_9 ,  d10  , q1_10 , q2_10 , q3_10 , q4_10 , q5_10 ,
                 q6_10 , q7_10 , q8_10 , q9_10 , q10_10;

Variable obj;
Equation Def_obj;

Def_obj.. obj=e=

sqr(q1_1 * q1_1 * d1 + q2_1 * q2_1 * d2 + q3_1 * q3_1 * d3 +q4_1 * q4_1 * d4 +
    q5_1 * q5_1 * d5 + q6_1 * q6_1 * d6 +q7_1 * q7_1 * d7 + q8_1 * q8_1 * d8 +
    q9_1 * q9_1 * d9 +q10_1 * q10_1 * d10 - 1.0) +
sqr(q1_1 * q1_1 + q2_1 * q2_1 + q3_1 * q3_1 + q4_1 * q4_1 +q5_1 * q5_1 +
    q6_1 * q6_1 + q7_1 * q7_1 + q8_1 * q8_1 +q9_1 * q9_1 + q10_1 * q10_1 -1.0)+
sqr(q1_1 * q1_2 * d1 + q2_1 * q2_2 * d2 + q3_1 * q3_2 * d3 +q4_1 * q4_2 * d4 +
    q5_1 * q5_2 * d5 + q6_1 * q6_2 * d6 +q7_1 * q7_2 * d7 + q8_1 * q8_2 * d8 +
    q9_1 * q9_2 * d9 +q10_1 * q10_2 * d10) +
sqr(q1_1 * q1_2 + q2_1 * q2_2 + q3_1 * q3_2 + q4_1 * q4_2 +q5_1 * q5_2 +
    q6_1 * q6_2 + q7_1 * q7_2 + q8_1 * q8_2 +q9_1 * q9_2 + q10_1 * q10_2) +
sqr(q1_2 * q1_2 * d1 + q2_2 * q2_2 * d2 + q3_2 * q3_2 * d3 +q4_2 * q4_2 * d4 +
    q5_2 * q5_2 * d5 + q6_2 * q6_2 * d6 +q7_2 * q7_2 * d7 + q8_2 * q8_2 * d8 +
    q9_2 * q9_2 * d9 +q10_2 * q10_2 * d10 - 2.0) +
sqr(q1_2 * q1_2 + q2_2 * q2_2 + q3_2 * q3_2 + q4_2 * q4_2 +q5_2 * q5_2 +
    q6_2 * q6_2 + q7_2 * q7_2 + q8_2 * q8_2 +q9_2 * q9_2 + q10_2 * q10_2 - 1.0)+
sqr(q1_1 * q1_3 * d1 + q2_1 * q2_3 * d2 + q3_1 * q3_3 * d3 +q4_1 * q4_3 * d4 +
    q5_1 * q5_3 * d5 + q6_1 * q6_3 * d6 +q7_1 * q7_3 * d7 + q8_1 * q8_3 * d8 +
    q9_1 * q9_3 * d9 +q10_1 * q10_3 * d10) +
sqr(q1_1 * q1_3 + q2_1 * q2_3 + q3_1 * q3_3 + q4_1 * q4_3 +q5_1 * q5_3 +
    q6_1 * q6_3 + q7_1 * q7_3 + q8_1 * q8_3 +q9_1 * q9_3 + q10_1 * q10_3) +
sqr(q1_2 * q1_3 * d1 + q2_2 * q2_3 * d2 + q3_2 *q3_3 * d3 + q4_2 * q4_3 * d4 +
    q5_2 * q5_3 * d5 + q6_2 *q6_3 * d6 + q7_2 * q7_3 * d7 + q8_2 * q8_3 * d8 +
    q9_2 *q9_3 * d9 + q10_2 * q10_3 * d10) +
sqr(q1_2 * q1_3 + q2_2 * q2_3 + q3_2 * q3_3 + q4_2 * q4_3 +q5_2 * q5_3 +
    q6_2 * q6_3 + q7_2 * q7_3 + q8_2 * q8_3 +q9_2 * q9_3 + q10_2 * q10_3) +
sqr(q1_3 * q1_3 * d1 + q2_3 * q2_3 * d2 + q3_3 * q3_3 * d3 +q4_3 * q4_3 * d4 +
    q5_3 * q5_3 * d5 + q6_3 * q6_3 * d6 +q7_3 * q7_3 * d7 + q8_3 * q8_3 * d8 +
    q9_3 * q9_3 * d9 +q10_3 * q10_3 * d10 - 3.0) +
sqr(q1_3 * q1_3 + q2_3 * q2_3 + q3_3 * q3_3 + q4_3 * q4_3 +q5_3 * q5_3 +
    q6_3 * q6_3 + q7_3 * q7_3 + q8_3 * q8_3 +q9_3 * q9_3 + q10_3 * q10_3 - 1.0)+
sqr(q1_1 * q1_4 * d1 + q2_1 * q2_4 * d2 + q3_1 * q3_4 * d3 +q4_1 * q4_4 * d4 +
    q5_1 * q5_4 * d5 + q6_1 * q6_4 * d6 +q7_1 * q7_4 * d7 + q8_1 * q8_4 * d8 +
    q9_1 * q9_4 * d9 +q10_1 * q10_4 * d10) +
sqr(q1_1 * q1_4 + q2_1 * q2_4 + q3_1 * q3_4 + q4_1 * q4_4 +q5_1 * q5_4 +
    q6_1 * q6_4 + q7_1 * q7_4 + q8_1 * q8_4 +q9_1 * q9_4 + q10_1 * q10_4) +
sqr(q1_2 * q1_4 * d1 + q2_2 * q2_4 * d2 + q3_2 * q3_4 * d3 +q4_2 * q4_4 * d4 +
    q5_2 * q5_4 * d5 + q6_2 * q6_4 * d6 +q7_2 * q7_4 * d7 + q8_2 * q8_4 * d8 +
    q9_2 * q9_4 * d9 +q10_2 *q10_4 * d10) +
sqr(q1_2 * q1_4 + q2_2 * q2_4 + q3_2 * q3_4 + q4_2 * q4_4 +q5_2 * q5_4 +
    q6_2 * q6_4 + q7_2 * q7_4 + q8_2 * q8_4 +q9_2 * q9_4 + q10_2 * q10_4) +
sqr(q1_3 * q1_4 * d1 + q2_3 * q2_4 * d2 + q3_3 * q3_4 * d3 +q4_3 * q4_4 * d4 +
    q5_3 * q5_4 * d5 + q6_3 * q6_4 * d6 +q7_3 * q7_4 * d7 + q8_3 * q8_4 * d8 +
    q9_3 * q9_4 * d9 +q10_3 * q10_4 * d10) +
sqr(q1_3 * q1_4 + q2_3 * q2_4 + q3_3 * q3_4 + q4_3 * q4_4 +q5_3 * q5_4 +
    q6_3 * q6_4 + q7_3 * q7_4 + q8_3 * q8_4 +q9_3 * q9_4 + q10_3 * q10_4) +
sqr(q1_4 * q1_4 * d1 + q2_4 * q2_4 * d2 + q3_4 * q3_4 * d3 +q4_4 * q4_4 * d4 +
    q5_4 * q5_4 * d5 + q6_4 * q6_4 * d6 +q7_4 * q7_4 * d7 + q8_4 * q8_4 * d8 +
    q9_4 * q9_4 * d9 +q10_4 * q10_4 * d10 - 4.0) +
sqr(q1_4 * q1_4 + q2_4 * q2_4 + q3_4 * q3_4 + q4_4 * q4_4 +q5_4 * q5_4 +
    q6_4 * q6_4 + q7_4 * q7_4 + q8_4 * q8_4 +q9_4 * q9_4 + q10_4 * q10_4 -1.0)+
sqr(q1_1 * q1_5 * d1 + q2_1 * q2_5 * d2 + q3_1 * q3_5 * d3 +q4_1 * q4_5 * d4 +
    q5_1 * q5_5 * d5 + q6_1 * q6_5 * d6 +q7_1 * q7_5 * d7 + q8_1 * q8_5 * d8 +
    q9_1 * q9_5 * d9 +q10_1 * q10_5 * d10) +
sqr(q1_1 * q1_5 + q2_1 * q2_5 + q3_1 * q3_5 + q4_1 * q4_5 +q5_1 * q5_5 +
    q6_1 * q6_5 + q7_1 * q7_5 + q8_1 * q8_5 +q9_1 * q9_5 + q10_1 * q10_5) +
sqr(q1_2 * q1_5 * d1 + q2_2 * q2_5 * d2 + q3_2 * q3_5 * d3 +q4_2 * q4_5 * d4 +
    q5_2 * q5_5 * d5 + q6_2 * q6_5 * d6 +q7_2 * q7_5 * d7 + q8_2 * q8_5 * d8 +
    q9_2 * q9_5 * d9 +q10_2 * q10_5 * d10) +
sqr(q1_2 * q1_5 + q2_2 * q2_5 + q3_2 * q3_5 + q4_2 * q4_5 +q5_2 * q5_5 +
    q6_2 * q6_5 + q7_2 * q7_5 + q8_2 * q8_5 +q9_2 * q9_5 + q10_2 * q10_5) +
sqr(q1_3 * q1_5 * d1 + q2_3 * q2_5 * d2 + q3_3 * q3_5 * d3 +q4_3 * q4_5 * d4 +
    q5_3 * q5_5 * d5 + q6_3 * q6_5 * d6 +q7_3 * q7_5 * d7 + q8_3 * q8_5 * d8 +
    q9_3 * q9_5 * d9 +q10_3 * q10_5 * d10) +
sqr(q1_3 * q1_5 + q2_3 * q2_5 + q3_3 * q3_5 + q4_3 * q4_5 +q5_3 * q5_5 +
    q6_3 * q6_5 + q7_3 * q7_5 + q8_3 * q8_5 +q9_3 * q9_5 + q10_3 * q10_5) +
sqr(q1_4 * q1_5 * d1 + q2_4 * q2_5 * d2 + q3_4 * q3_5 * d3 +q4_4 * q4_5 * d4 +
    q5_4 * q5_5 * d5 + q6_4 * q6_5 * d6 +q7_4 * q7_5 * d7 + q8_4 * q8_5 * d8 +
    q9_4 * q9_5 * d9 +q10_4 * q10_5 * d10) +
sqr(q1_4 * q1_5 + q2_4 * q2_5 + q3_4 * q3_5 + q4_4 * q4_5 +q5_4 * q5_5 +
    q6_4 * q6_5 + q7_4 * q7_5 + q8_4 * q8_5 +q9_4 * q9_5 + q10_4 * q10_5) +
sqr(q1_5 * q1_5 * d1 + q2_5 * q2_5 * d2 + q3_5 * q3_5 * d3 +q4_5 * q4_5 * d4 +
    q5_5 * q5_5 * d5 + q6_5 * q6_5 * d6 +q7_5 * q7_5 * d7 + q8_5 * q8_5 * d8 +
    q9_5 * q9_5 * d9 +q10_5 * q10_5 * d10 - 5.0) +
sqr(q1_5 * q1_5 + q2_5 * q2_5 + q3_5 * q3_5 + q4_5 * q4_5 +q5_5 * q5_5 +
    q6_5 * q6_5 + q7_5 * q7_5 + q8_5 * q8_5 +q9_5 * q9_5 + q10_5 * q10_5 -1.0)+
sqr(q1_1 * q1_6 * d1 + q2_1 * q2_6 * d2 + q3_1 * q3_6 * d3 +q4_1 * q4_6 * d4 +
    q5_1 * q5_6 * d5 + q6_1 * q6_6 * d6 +q7_1 * q7_6 * d7 + q8_1 * q8_6 * d8 +
    q9_1 * q9_6 * d9 +q10_1 * q10_6 * d10) +
sqr(q1_1 * q1_6 + q2_1 * q2_6 + q3_1 * q3_6 + q4_1 * q4_6 +q5_1 * q5_6 +
    q6_1 * q6_6 + q7_1 * q7_6 + q8_1 * q8_6 +q9_1 * q9_6 + q10_1 * q10_6) +
sqr(q1_2 * q1_6 * d1 + q2_2 * q2_6 * d2 + q3_2 * q3_6 * d3 +q4_2 * q4_6 * d4 +
    q5_2 * q5_6 * d5 + q6_2 * q6_6 * d6 +q7_2 * q7_6 * d7 + q8_2 * q8_6 * d8 +
    q9_2 * q9_6 * d9 +q10_2 * q10_6 * d10) +
sqr(q1_2 * q1_6 + q2_2 * q2_6 + q3_2 * q3_6 + q4_2 * q4_6 +q5_2 * q5_6 +
    q6_2 * q6_6 + q7_2 * q7_6 + q8_2 * q8_6 +q9_2 * q9_6 + q10_2 * q10_6) +
sqr(q1_3 * q1_6 * d1 + q2_3 * q2_6 * d2 + q3_3 * q3_6 * d3 +q4_3 * q4_6 * d4 +
    q5_3 * q5_6 * d5 + q6_3 * q6_6 * d6 +q7_3 * q7_6 * d7 + q8_3 * q8_6 * d8 +
    q9_3 * q9_6 * d9 +q10_3 * q10_6 * d10) +
sqr(q1_3 * q1_6 + q2_3 * q2_6 + q3_3 * q3_6 + q4_3 * q4_6 +q5_3 * q5_6 +
    q6_3 * q6_6 + q7_3 * q7_6 + q8_3 * q8_6 +q9_3 * q9_6 + q10_3 * q10_6) +
sqr(q1_4 * q1_6 * d1 + q2_4 * q2_6 * d2 + q3_4 * q3_6 * d3 +q4_4 * q4_6 * d4 +
    q5_4 * q5_6 * d5 + q6_4 * q6_6 * d6 +q7_4 * q7_6 * d7 + q8_4 * q8_6 * d8 +
    q9_4 * q9_6 * d9 +q10_4 * q10_6 * d10) +
sqr(q1_4 * q1_6 + q2_4 * q2_6 + q3_4 * q3_6 + q4_4 * q4_6 +q5_4 * q5_6 +
    q6_4 * q6_6 + q7_4 * q7_6 + q8_4 * q8_6 +q9_4 * q9_6 + q10_4 * q10_6) +
sqr(q1_5 * q1_6 * d1 + q2_5 * q2_6 * d2 + q3_5 * q3_6 * d3 +q4_5 * q4_6 * d4 +
    q5_5 * q5_6 * d5 + q6_5 * q6_6 * d6 +q7_5 * q7_6 * d7 + q8_5 * q8_6 * d8 +
    q9_5 * q9_6 * d9 +q10_5 * q10_6 * d10) +
sqr(q1_5 * q1_6 + q2_5 * q2_6 + q3_5 * q3_6 + q4_5 * q4_6 +q5_5 * q5_6 +
    q6_5 * q6_6 + q7_5 * q7_6 + q8_5 * q8_6 +q9_5 * q9_6 + q10_5 * q10_6) +
sqr(q1_6 * q1_6 * d1 + q2_6 * q2_6 * d2 + q3_6 * q3_6 * d3 +q4_6 * q4_6 * d4 +
    q5_6 * q5_6 * d5 + q6_6 * q6_6 * d6 +q7_6 * q7_6 * d7 + q8_6 * q8_6 * d8 +
    q9_6 * q9_6 * d9 +q10_6 * q10_6 * d10 - 6.0) +
sqr(q1_6 * q1_6 + q2_6 * q2_6 + q3_6 * q3_6 + q4_6 * q4_6 +q5_6 * q5_6 +
    q6_6 * q6_6 + q7_6 * q7_6 + q8_6 * q8_6 +q9_6 * q9_6 + q10_6 * q10_6 - 1.0)+
sqr(q1_1 * q1_7 * d1 + q2_1 * q2_7 * d2 + q3_1 * q3_7 * d3 +q4_1 * q4_7 * d4 +
    q5_1 * q5_7 * d5 + q6_1 * q6_7 * d6 +q7_1 * q7_7 * d7 + q8_1 * q8_7 * d8 +
    q9_1 * q9_7 * d9 +q10_1 * q10_7 * d10) +
sqr(q1_1 * q1_7 + q2_1 * q2_7 + q3_1 * q3_7 + q4_1 * q4_7 +q5_1 * q5_7 +
    q6_1 * q6_7 + q7_1 * q7_7 + q8_1 * q8_7 +q9_1 * q9_7 + q10_1 * q10_7) +
sqr(q1_2 * q1_7 * d1 + q2_2 * q2_7 * d2 + q3_2 * q3_7 * d3 +q4_2 * q4_7 * d4 +
    q5_2 * q5_7 * d5 + q6_2 * q6_7 * d6 +q7_2 * q7_7 * d7 + q8_2 * q8_7 * d8 +
    q9_2 * q9_7 * d9 +q10_2 * q10_7 * d10) +
sqr(q1_2 * q1_7 + q2_2 * q2_7 + q3_2 * q3_7 + q4_2 * q4_7 +q5_2 * q5_7 +
    q6_2 * q6_7 + q7_2 * q7_7 + q8_2 * q8_7 +q9_2 * q9_7 + q10_2 * q10_7) +
sqr(q1_3 * q1_7 * d1 + q2_3 * q2_7 * d2 + q3_3 * q3_7 * d3 +q4_3 * q4_7 * d4 +
    q5_3 * q5_7 * d5 + q6_3 * q6_7 * d6 +q7_3 * q7_7 * d7 + q8_3 * q8_7 * d8 +
    q9_3 * q9_7 * d9 +q10_3 * q10_7 * d10) +
sqr(q1_3 * q1_7 + q2_3 * q2_7 + q3_3 * q3_7 + q4_3 * q4_7 +q5_3 * q5_7 +
    q6_3 * q6_7 + q7_3 * q7_7 + q8_3 * q8_7 +q9_3 * q9_7 + q10_3 * q10_7) +
sqr(q1_4 * q1_7 * d1 + q2_4 * q2_7 * d2 + q3_4 * q3_7 * d3 +q4_4 * q4_7 * d4 +
    q5_4 * q5_7 * d5 + q6_4 * q6_7 * d6 +q7_4 * q7_7 * d7 + q8_4 * q8_7 * d8 +
    q9_4 * q9_7 * d9 +q10_4 * q10_7 * d10) +
sqr(q1_4 * q1_7 + q2_4 * q2_7 + q3_4 * q3_7 + q4_4 * q4_7 +q5_4 * q5_7 +
    q6_4 * q6_7 + q7_4 * q7_7 + q8_4 * q8_7 +q9_4 * q9_7 + q10_4 * q10_7) +
sqr(q1_5 * q1_7 * d1 + q2_5 * q2_7 * d2 + q3_5 * q3_7 * d3 +q4_5 * q4_7 * d4 +
    q5_5 * q5_7 * d5 + q6_5 * q6_7 * d6 +q7_5 * q7_7 * d7 + q8_5 * q8_7 * d8 +
    q9_5 * q9_7 * d9 +q10_5 * q10_7 * d10) +
sqr(q1_5 * q1_7 + q2_5 * q2_7 + q3_5 * q3_7 + q4_5 * q4_7 +q5_5 * q5_7 +
    q6_5 * q6_7 + q7_5 * q7_7 + q8_5 * q8_7 +q9_5 * q9_7 + q10_5 * q10_7) +
sqr(q1_6 * q1_7 * d1 + q2_6 * q2_7 * d2 + q3_6 * q3_7 * d3 +q4_6 * q4_7 * d4 +
    q5_6 * q5_7 * d5 + q6_6 * q6_7 * d6 +q7_6 * q7_7 * d7 + q8_6 * q8_7 * d8 +
    q9_6 * q9_7 * d9 +q10_6 * q10_7 * d10) +
sqr(q1_6 * q1_7 + q2_6 * q2_7 + q3_6 * q3_7 + q4_6 * q4_7 +q5_6 * q5_7 +
    q6_6 * q6_7 + q7_6 * q7_7 + q8_6 * q8_7 +q9_6 * q9_7 + q10_6 * q10_7) +
sqr(q1_7 * q1_7 * d1 + q2_7 * q2_7 * d2 + q3_7 * q3_7 * d3 +q4_7 * q4_7 * d4 +
    q5_7 * q5_7 * d5 + q6_7 * q6_7 * d6 +q7_7 * q7_7 * d7 + q8_7 * q8_7 * d8 +
    q9_7 * q9_7 * d9 +q10_7 * q10_7 * d10 - 7.0) +
sqr(q1_7 * q1_7 + q2_7 * q2_7 + q3_7 * q3_7 + q4_7 * q4_7 +q5_7 * q5_7 +
    q6_7 * q6_7 + q7_7 * q7_7 + q8_7 * q8_7 +q9_7 * q9_7 + q10_7 * q10_7 - 1.0)+
sqr(q1_1 * q1_8 * d1 + q2_1 * q2_8 * d2 + q3_1 * q3_8 * d3 +q4_1 * q4_8 * d4 +
    q5_1 * q5_8 * d5 + q6_1 * q6_8 * d6 +q7_1 * q7_8 * d7 + q8_1 * q8_8 * d8 +
    q9_1 * q9_8 * d9 +q10_1 * q10_8 * d10) +
sqr(q1_1 * q1_8 + q2_1 * q2_8 + q3_1 * q3_8 + q4_1 * q4_8 +q5_1 * q5_8 +
    q6_1 * q6_8 + q7_1 * q7_8 + q8_1 * q8_8 +q9_1 * q9_8 + q10_1 * q10_8) +
sqr(q1_2 * q1_8 * d1 + q2_2 * q2_8 * d2 + q3_2 * q3_8 * d3 +q4_2 * q4_8 * d4 +
    q5_2 * q5_8 * d5 + q6_2 * q6_8 * d6 +q7_2 * q7_8 * d7 + q8_2 * q8_8 * d8 +
    q9_2 *q9_8 * d9 + q10_2 * q10_8 * d10) +
sqr(q1_2 * q1_8 + q2_2 * q2_8 + q3_2 * q3_8 + q4_2 * q4_8 +q5_2 * q5_8 +
    q6_2 * q6_8 + q7_2 * q7_8 + q8_2 * q8_8 +q9_2 * q9_8 + q10_2 * q10_8) +
sqr(q1_3 * q1_8 * d1 + q2_3 * q2_8 * d2 + q3_3 * q3_8 * d3 +q4_3 * q4_8 * d4 +
    q5_3 * q5_8 * d5 + q6_3 * q6_8 * d6 +q7_3 * q7_8 * d7 + q8_3 * q8_8 * d8 +
    q9_3 * q9_8 * d9 +q10_3 * q10_8 * d10) +
sqr(q1_3 * q1_8 + q2_3 * q2_8 + q3_3 * q3_8 + q4_3 * q4_8 +q5_3 * q5_8 +
    q6_3 * q6_8 + q7_3 * q7_8 + q8_3 * q8_8 +q9_3 * q9_8 + q10_3 * q10_8) +
sqr(q1_4 * q1_8 * d1 + q2_4 * q2_8 * d2 + q3_4 * q3_8 * d3 +q4_4 * q4_8 * d4 +
    q5_4 * q5_8 * d5 + q6_4 * q6_8 * d6 +q7_4 * q7_8 * d7 + q8_4 * q8_8 * d8 +
    q9_4 * q9_8 * d9 +q10_4 * q10_8 * d10) +
sqr(q1_4 * q1_8 + q2_4 * q2_8 + q3_4 * q3_8 + q4_4 * q4_8 +q5_4 * q5_8 +
    q6_4 * q6_8 + q7_4 * q7_8 + q8_4 * q8_8 +q9_4 * q9_8 + q10_4 * q10_8) +
sqr(q1_5 * q1_8 * d1 + q2_5 * q2_8 * d2 + q3_5 * q3_8 * d3 +q4_5 * q4_8 * d4 +
    q5_5 * q5_8 * d5 + q6_5 * q6_8 * d6 +q7_5 * q7_8 * d7 + q8_5 * q8_8 * d8 +
    q9_5 * q9_8 * d9 +q10_5 * q10_8 * d10) +
sqr(q1_5 * q1_8 + q2_5 * q2_8 + q3_5 * q3_8 + q4_5 * q4_8 +q5_5 * q5_8 +
    q6_5 * q6_8 + q7_5 * q7_8 + q8_5 * q8_8 +q9_5 * q9_8 + q10_5 * q10_8) +
sqr(q1_6 * q1_8 * d1 + q2_6 * q2_8 * d2 + q3_6 * q3_8 * d3 +q4_6 * q4_8 * d4 +
    q5_6 * q5_8 * d5 + q6_6 * q6_8 * d6 +q7_6 * q7_8 * d7 + q8_6 * q8_8 * d8 +
    q9_6 * q9_8 * d9 +q10_6 * q10_8 * d10) +
sqr(q1_6 * q1_8 + q2_6 * q2_8 + q3_6 * q3_8 + q4_6 * q4_8 +q5_6 * q5_8 +
    q6_6 * q6_8 + q7_6 * q7_8 + q8_6 * q8_8 +q9_6 * q9_8 + q10_6 * q10_8) +
sqr(q1_7 * q1_8 * d1 + q2_7 * q2_8 * d2 + q3_7 *q3_8 * d3 + q4_7 * q4_8 * d4 +
    q5_7 * q5_8 * d5 + q6_7 *q6_8 * d6 + q7_7 * q7_8 * d7 + q8_7 * q8_8 * d8 +
    q9_7 *q9_8 * d9 + q10_7 * q10_8 * d10) +
sqr(q1_7 * q1_8 + q2_7 * q2_8 + q3_7 * q3_8 + q4_7 * q4_8 +q5_7 * q5_8 +
    q6_7 * q6_8 + q7_7 * q7_8 + q8_7 * q8_8 +q9_7 * q9_8 + q10_7 * q10_8) +
sqr(q1_8 * q1_8 * d1 + q2_8 * q2_8 * d2 + q3_8 * q3_8 * d3 +q4_8 * q4_8 * d4 +
    q5_8 * q5_8 * d5 + q6_8 * q6_8 * d6 +q7_8 * q7_8 * d7 + q8_8 * q8_8 * d8 +
    q9_8 * q9_8 * d9 +q10_8 * q10_8 * d10 - 8.0) +
sqr(q1_8 * q1_8 + q2_8 * q2_8 + q3_8 * q3_8 + q4_8 * q4_8 +q5_8 * q5_8 +
    q6_8 * q6_8 + q7_8 * q7_8 + q8_8 * q8_8 +q9_8 * q9_8 + q10_8 * q10_8 - 1.0)+
sqr(q1_1 * q1_9 * d1 + q2_1 * q2_9 * d2 + q3_1 * q3_9 * d3 +q4_1 * q4_9 * d4 +
    q5_1 * q5_9 * d5 + q6_1 * q6_9 * d6 +q7_1 * q7_9 * d7 + q8_1 * q8_9 * d8 +
    q9_1 * q9_9 * d9 +q10_1 * q10_9 * d10) +
sqr(q1_1 * q1_9 + q2_1 * q2_9 + q3_1 * q3_9 + q4_1 * q4_9 +q5_1 * q5_9 +
    q6_1 * q6_9 + q7_1 * q7_9 + q8_1 * q8_9 +q9_1 * q9_9 + q10_1 * q10_9) +
sqr(q1_2 * q1_9 * d1 + q2_2 * q2_9 * d2 + q3_2 * q3_9 * d3 +q4_2 * q4_9 * d4 +
    q5_2 * q5_9 * d5 + q6_2 * q6_9 * d6 +q7_2 * q7_9 * d7 + q8_2 * q8_9 * d8 +
    q9_2 * q9_9 * d9 +q10_2 * q10_9 * d10) +
sqr(q1_2 * q1_9 + q2_2 * q2_9 + q3_2 *q3_9 + q4_2 * q4_9 +q5_2 * q5_9 +
    q6_2 * q6_9 + q7_2 * q7_9 + q8_2 * q8_9 +q9_2 * q9_9 + q10_2 * q10_9) +
sqr(q1_3 * q1_9 * d1 + q2_3 * q2_9 * d2 + q3_3 * q3_9 * d3 +q4_3 * q4_9 * d4 +
    q5_3 * q5_9 * d5 + q6_3 * q6_9 * d6 +q7_3 * q7_9 * d7 + q8_3 * q8_9 * d8 +
    q9_3 * q9_9 * d9 +q10_3 * q10_9 * d10) +
sqr(q1_3 * q1_9 + q2_3 * q2_9 + q3_3 * q3_9 + q4_3 * q4_9 +q5_3 * q5_9 +
    q6_3 * q6_9 + q7_3 * q7_9 + q8_3 * q8_9 +q9_3 * q9_9 + q10_3 * q10_9) +
sqr(q1_4 * q1_9 * d1 + q2_4 * q2_9 * d2 + q3_4 * q3_9 * d3 +q4_4 * q4_9 * d4 +
    q5_4 * q5_9 * d5 + q6_4 * q6_9 * d6 +q7_4 * q7_9 * d7 + q8_4 * q8_9 * d8 +
    q9_4 * q9_9 * d9 +q10_4 * q10_9 * d10) +
sqr(q1_4 * q1_9 + q2_4 * q2_9 + q3_4 * q3_9 + q4_4 * q4_9 +q5_4 * q5_9 +
    q6_4 * q6_9 + q7_4 * q7_9 + q8_4 * q8_9 +q9_4 * q9_9 + q10_4 * q10_9) +
sqr(q1_5 * q1_9 * d1 + q2_5 * q2_9 * d2 + q3_5 * q3_9 * d3 +q4_5 * q4_9 * d4 +
    q5_5 * q5_9 * d5 + q6_5 * q6_9 * d6 +q7_5 * q7_9 * d7 + q8_5 * q8_9 * d8 +
    q9_5 * q9_9 * d9 +q10_5 * q10_9 * d10) +
sqr(q1_5 * q1_9 + q2_5 * q2_9 + q3_5 * q3_9 + q4_5 * q4_9 +q5_5 * q5_9 +
    q6_5 * q6_9 + q7_5 * q7_9 + q8_5 * q8_9 +q9_5 * q9_9 + q10_5 * q10_9) +
sqr(q1_6 * q1_9 * d1 + q2_6 * q2_9 * d2 + q3_6 * q3_9 * d3 +q4_6 * q4_9 * d4 +
    q5_6 * q5_9 * d5 + q6_6 * q6_9 * d6 +q7_6 * q7_9 * d7 + q8_6 * q8_9 * d8 +
    q9_6 * q9_9 * d9 +q10_6 * q10_9 * d10) +
sqr(q1_6 * q1_9 + q2_6 * q2_9 + q3_6 * q3_9 + q4_6 * q4_9 +q5_6 * q5_9 +
    q6_6 * q6_9 + q7_6 * q7_9 + q8_6 * q8_9 +q9_6 * q9_9 + q10_6 * q10_9) +
sqr(q1_7 * q1_9 * d1 + q2_7 * q2_9 * d2 + q3_7 * q3_9 * d3 +q4_7 * q4_9 * d4 +
    q5_7 * q5_9 * d5 + q6_7 * q6_9 * d6 +q7_7 * q7_9 * d7 + q8_7 * q8_9 * d8 +
    q9_7 * q9_9 * d9 +q10_7 * q10_9 * d10) +
sqr(q1_7 * q1_9 + q2_7 * q2_9 + q3_7 * q3_9 + q4_7 * q4_9 +q5_7 * q5_9 +
    q6_7 * q6_9 + q7_7 * q7_9 + q8_7 * q8_9 +q9_7 * q9_9 + q10_7 * q10_9) +
sqr(q1_8 * q1_9 * d1 + q2_8 * q2_9 * d2 + q3_8 * q3_9 * d3 +q4_8 * q4_9 * d4 +
    q5_8 * q5_9 * d5 + q6_8 * q6_9 * d6 +q7_8 * q7_9 * d7 + q8_8 * q8_9 * d8 +
    q9_8 * q9_9 * d9 +q10_8 * q10_9 * d10) +
sqr(q1_8 * q1_9 + q2_8 * q2_9 + q3_8 * q3_9 + q4_8 * q4_9 +q5_8 * q5_9 +
    q6_8 * q6_9 + q7_8 * q7_9 + q8_8 * q8_9 +q9_8 * q9_9 + q10_8 * q10_9) +
sqr(q1_9 * q1_9 * d1 + q2_9 * q2_9 * d2 + q3_9 * q3_9 * d3 +q4_9 * q4_9 * d4 +
    q5_9 * q5_9 * d5 + q6_9 * q6_9 * d6 +q7_9 * q7_9 * d7 + q8_9 * q8_9 * d8 +
    q9_9 * q9_9 * d9 +q10_9 * q10_9 * d10 - 9.0) +
sqr(q1_9 * q1_9 + q2_9 * q2_9 + q3_9 * q3_9 + q4_9 * q4_9 +q5_9 * q5_9 +
    q6_9 * q6_9 + q7_9 * q7_9 + q8_9 * q8_9 +q9_9 * q9_9 + q10_9 * q10_9 - 1.0)+
sqr(q1_1 * q1_10 * d1 + q2_1 * q2_10 * d2 + q3_1 * q3_10 * d3 +q4_1 * q4_10*d4 +
    q5_1 * q5_10 * d5 + q6_1 * q6_10 * d6 +q7_1 * q7_10 * d7 + q8_1 * q8_10 *
    d8 + q9_1 * q9_10 * d9 +q10_1 * q10_10 * d10) +
sqr(q1_1 * q1_10 + q2_1 * q2_10 + q3_1 * q3_10 + q4_1 * q4_10 +q5_1 * q5_10 +
    q6_1 * q6_10 +  q7_1 * q7_10 + q8_1 * q8_10 +q9_1 * q9_10 + q10_1 * q10_10)+
sqr(q1_2 * q1_10 * d1 + q2_2 * q2_10 * d2 + q3_2 * q3_10 * d3 +q4_2 * q4_10*d4+
    q5_2 * q5_10 * d5 + q6_2 * q6_10 * d6 +q7_2 * q7_10 * d7 + q8_2 * q8_10 *
    d8 + q9_2 * q9_10 * d9 +q10_2 * q10_10 * d10) +
sqr(q1_2 * q1_10 + q2_2 * q2_10 + q3_2 * q3_10 + q4_2 * q4_10 +q5_2 * q5_10 +
    q6_2 * q6_10 + q7_2 * q7_10 + q8_2 * q8_10 +q9_2 * q9_10 + q10_2 * q10_10)+
sqr(q1_3 * q1_10 * d1 + q2_3 * q2_10 * d2 + q3_3 * q3_10 * d3 +q4_3 * q4_10 *
    d4 + q5_3 * q5_10 * d5 + q6_3 * q6_10 * d6 +q7_3 * q7_10 * d7 + q8_3 *
    q8_10 * d8 + q9_3 * q9_10 * d9 +q10_3 * q10_10 * d10) +
sqr(q1_3 * q1_10 + q2_3 * q2_10 + q3_3 * q3_10 + q4_3 * q4_10 +q5_3 * q5_10 +
    q6_3 * q6_10 + q7_3 * q7_10 + q8_3 * q8_10 +q9_3 * q9_10 + q10_3 * q10_10)+
sqr(q1_4 * q1_10 * d1 + q2_4 * q2_10 * d2 + q3_4 * q3_10 * d3 +q4_4 * q4_10 *
    d4 + q5_4 * q5_10 * d5 + q6_4 * q6_10 * d6 +q7_4 * q7_10 * d7 + q8_4 *
    q8_10 * d8 + q9_4 * q9_10 * d9 +q10_4 * q10_10 * d10) +
sqr(q1_4 * q1_10 + q2_4 * q2_10 + q3_4 * q3_10 + q4_4 * q4_10 +q5_4 * q5_10 +
    q6_4 * q6_10 + q7_4 * q7_10 + q8_4 * q8_10 +q9_4 * q9_10 + q10_4 * q10_10)+
sqr(q1_5 * q1_10 * d1 + q2_5 * q2_10 * d2 + q3_5 * q3_10 * d3 +q4_5 * q4_10 *
    d4 + q5_5 * q5_10 * d5 + q6_5 * q6_10 * d6 +q7_5 * q7_10 * d7 + q8_5 *
    q8_10 * d8 + q9_5 * q9_10 * d9 +q10_5 * q10_10 * d10) +
sqr(q1_5 * q1_10 + q2_5 * q2_10 + q3_5 * q3_10 + q4_5 * q4_10 +q5_5 * q5_10 +
    q6_5 * q6_10 + q7_5 * q7_10 + q8_5 * q8_10 +q9_5 * q9_10 + q10_5 * q10_10)+
sqr(q1_6 * q1_10 * d1 + q2_6 * q2_10 * d2 + q3_6 * q3_10 * d3 +q4_6 * q4_10 *
    d4 + q5_6 * q5_10 * d5 + q6_6 * q6_10 * d6 +q7_6 * q7_10 * d7 + q8_6 *
    q8_10 * d8 + q9_6 * q9_10 * d9 +q10_6 * q10_10 * d10) +
sqr(q1_6 * q1_10 + q2_6 * q2_10 + q3_6 * q3_10 + q4_6 * q4_10 +q5_6 * q5_10 +
    q6_6 * q6_10 + q7_6 * q7_10 + q8_6 * q8_10 +q9_6 * q9_10 + q10_6 * q10_10)+
sqr(q1_7 * q1_10 * d1 + q2_7 * q2_10 * d2 + q3_7 * q3_10 * d3 +q4_7 * q4_10 *
    d4 + q5_7 * q5_10 * d5 + q6_7 * q6_10 * d6 +q7_7 * q7_10 * d7 + q8_7 *q8_10* d8 + q9_7 * q9_10 * d9 +q10_7 * q10_10 * d10) +
sqr(q1_7 * q1_10 + q2_7 * q2_10 + q3_7 * q3_10 + q4_7 * q4_10 +q5_7 * q5_10 +
    q6_7 * q6_10 + q7_7 * q7_10 + q8_7 * q8_10 +q9_7 * q9_10 + q10_7 * q10_10)+
sqr(q1_8 * q1_10 * d1 + q2_8 * q2_10 * d2 + q3_8 * q3_10 * d3 +q4_8 * q4_10 *
    d4 + q5_8 * q5_10 * d5 + q6_8 * q6_10 * d6 +q7_8 * q7_10 * d7 + q8_8 *
    q8_10 * d8 + q9_8 * q9_10 * d9 +q10_8 * q10_10 * d10) +
sqr(q1_8 * q1_10 + q2_8 * q2_10 + q3_8 * q3_10 + q4_8 * q4_10 +q5_8 * q5_10 +
    q6_8 * q6_10 + q7_8 * q7_10 + q8_8 * q8_10 +q9_8 * q9_10 + q10_8 * q10_10)+
sqr(q1_9 * q1_10 * d1 + q2_9 * q2_10 * d2 +q3_9 * q3_10 * d3 + q4_9 * q4_10 *
    d4 + q5_9 * q5_10 * d5 +q6_9 * q6_10 * d6 + q7_9 * q7_10 * d7 + q8_9 *
    q8_10 * d8 +q9_9 * q9_10 * d9 + q10_9 * q10_10 * d10) +
sqr(q1_9 * q1_10 + q2_9 * q2_10 + q3_9 * q3_10 + q4_9 * q4_10 +q5_9 * q5_10 +
    q6_9 * q6_10 + q7_9 * q7_10 + q8_9 * q8_10 +q9_9 * q9_10 + q10_9 * q10_10)+
sqr(q1_10 * q1_10 * d1 + q2_10 * q2_10 * d2 + q3_10 * q3_10 *d3 +q4_10 *  q4_10
    * d4 + q5_10 * q5_10 * d5 + q6_10 * q6_10 * d6 +q7_10 * q7_10 * d7 + q8_10
    * q8_10 * d8 + q9_10 * q9_10 * d9 +q10_10* q10_10 * d10 - 10.0) +
sqr(q1_10* q1_10 + q2_10 * q2_10 + q3_10 * q3_10 + q4_10 * q4_10 +q5_10 *
    q5_10 + q6_10 * q6_10 + q7_10 * q7_10 +q8_10 * q8_10 + q9_10 * q9_10 +
    q10_10 * q10_10 - 1.0);

     d1.l = 1.0 ; q1_1.l = 1.0 ;  d2.l = 1.0 ;   q2_2.l = 1.0 ;
     d3.l = 1.0 ; q3_3.l = 1.0 ;  d4.l = 1.0 ;   q4_4.l = 1.0 ;
     d5.l = 1.0 ; q5_5.l = 1.0 ;  d6.l = 1.0 ;   q6_6.l = 1.0 ;
     d7.l = 1.0 ; q7_7.l = 1.0 ;  d8.l = 1.0 ;   q8_8.l = 1.0 ;
     d9.l = 1.0 ; q9_9.l = 1.0 ; d10.l = 1.0 ; q10_10.l = 1.0 ;

Model eigena /all/;

Solve eigena  using nlp minimize obj ;

display    d1.l ; display   q1_1.l ; display  q2_1.l ; display  q3_1.l ;
display  q4_1.l ; display   q5_1.l ; display  q6_1.l ; display  q7_1.l ;
display  q8_1.l ; display   q9_1.l ; display q10_1.l ; display    d2.l ;
display  q1_2.l ; display   q2_2.l ; display  q3_2.l ; display  q4_2.l ;
display  q5_2.l ; display   q6_2.l ; display  q7_2.l ; display  q8_2.l ;
display  q9_2.l ; display  q10_2.l ; display    d3.l ; display  q1_3.l ;
display  q2_3.l ; display   q3_3.l ; display  q4_3.l ; display  q5_3.l ;
display  q6_3.l ; display   q7_3.l ; display  q8_3.l ; display  q9_3.l ;
display q10_3.l ; display     d4.l ; display  q1_4.l ; display  q2_4.l ;
display  q3_4.l ; display   q4_4.l ; display  q5_4.l ; display  q6_4.l ;
display  q7_4.l ; display   q8_4.l ; display  q9_4.l ; display q10_4.l ;
display    d5.l ; display   q1_5.l ; display  q2_5.l ; display  q3_5.l ;
display  q4_5.l ; display   q5_5.l ; display  q6_5.l ; display  q7_5.l ;
display  q8_5.l ; display   q9_5.l ; display q10_5.l ; display    d6.l ;
display  q1_6.l ; display   q2_6.l ; display  q3_6.l ; display  q4_6.l ;
display  q5_6.l ; display   q6_6.l ; display  q7_6.l ; display  q8_6.l ;
display  q9_6.l ; display  q10_6.l ; display    d7.l ; display  q1_7.l ;
display  q2_7.l ; display   q3_7.l ; display  q4_7.l ; display  q5_7.l ;
display  q6_7.l ; display   q7_7.l ; display  q8_7.l ; display  q9_7.l ;
display q10_7.l ; display     d8.l ; display  q1_8.l ; display  q2_8.l ;
display  q3_8.l ; display   q4_8.l ; display  q5_8.l ; display  q6_8.l ;
display  q7_8.l ; display   q8_8.l ; display  q9_8.l ; display q10_8.l ;
display    d9.l ; display   q1_9.l ; display  q2_9.l ; display  q3_9.l ;
display  q4_9.l ; display   q5_9.l ; display  q6_9.l ; display  q7_9.l ;
display  q8_9.l ; display   q9_9.l ; display q10_9.l ; display   d10.l ;
display q1_10.l ; display  q2_10.l ; display q3_10.l ; display q4_10.l ;
display q5_10.l ; display  q6_10.l ; display q7_10.l ; display q8_10.l ;
display q9_10.l ; display q10_10.l ; display obj.l ;
