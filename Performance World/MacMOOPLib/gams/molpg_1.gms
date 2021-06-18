* MOLPg.mod
* Original AMPL coding by Sven Leyffer, Argonne National Laboratory
*
* A generic MOLP (matrices are upper case; note transpose!)
*
*       minimize   C^T x
*       subj. to   A^T x <= b
*
* for data files, see ...
*
* filename              reference
* ------------------------------------------------------------
* MOLPg-001.dat                [Steu:86] p. 411, Exercise 13-4C
* MOLPg-002.dat                [Steu:86] p. 415, Exercise 13-14C
* MOLPg-003.dat                [Steu:86] p. 416, Exercise 13-15C
*                       ... there are many more MOLPs in there!
* ------------------------------------------------------------
* References:
* ~~~~~~~~~~
* [Steu:86]     R.E. Steuer, Multiple Criteria Optimization:
*               Theory, Computation and Applications, John
*               Wiley, 1986, New York.
* ------------------------------------------------------------


* ... problem dimensions & index sets

* ... number of variables
$Set nn 8
* ... number of constraints
$Set mm 8
* ... number of objectives
$Set pp 3

set N / n1*n%nn% / ;
set M / m1*m%mm% / ;
set P / p1*p%pp% / ;

* ... problem data

* ... objective gradients
Table C[P,N]
             n1      n2      n3       n4      n5     n6     n7       n8
       p1     7      5       0        4       -2      7      6        6
       p2    -3     -7       8        0        6     -7     -3        0
       p3     1      4       0        3       -1      7     -4       -7  ;

* ... constraint Jacobian
Table A[M,N]
               n1       n2      n3       n4       n5       n6       n7      n8
       m1       0       8        0        1       -3        7       -1       0
       m2       7       7        6        4        5        0        0       0
       m3       8       0        0        1        8        0       -3      -3
       m4       8       3        5        0        1        0        8       0
       m5       1       6        3        3        3        3        4       0
       m6       0       5       -1        0        0        0        3      -3
       m7       7      -2        0        2        8        8        4      -1
       m8       0       5        5       -2       -1        0        0       6  ;



* ... upper bounds on A^T x
Parameter b[M];
           b['m1'] = 5 ;
           b['m2'] = 9 ;
           b['m3'] = 6 ;
           b['m4'] = 8 ;
           b['m5'] = 9 ;
           b['m6'] = 9 ;
           b['m7'] = 7 ;
           b['m8'] = 8 ;



Positive Variable x[N] ;

Variable f ;

Equation lin(M)  ,
         Def_Obj ;

* ... linear constraints
lin(M)..
    Sum{N, A[M,N]*x[N] } =l= b[M] ;

* ... objective functions
Def_Obj..
    f =e= -Sum{(N,P)$(ord(P) eq 1), C[P,N]*x[N]} ;

Model MOLPg / all / ;

Solve MOLPg using NLP minimazing f ;

Display f.l ;

