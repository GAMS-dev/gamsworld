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
$Set nn 10
* ... number of constraints
$Set mm 14
* ... number of objectives
$Set pp 3

set N / n1*n%nn% / ;
set M / m1*m%mm% / ;
set P / p1*p%pp% / ;

* ... problem data

* ... objective gradients
Table C[P,N]
            n1   n2   n3   n4   n5   n6   n7   n8   n9   n10
       p1    1    0   -1    1    2    3   -2    0   -1     3
       p2    1    0    1    2    0    0    0    2    3     0
       p3    2    3    0   -1    0   -1    3   -1   -2     3 ;

* ... constraint Jacobian
Table A[M,N]
         n1    n2    n3    n4    n5    n6    n7    n8    n9   n10
   m1     1     0     0     0     0     0     4     0     0     3
   m2     0    -1     0     1     0     0     0     5     0     0
   m3     2     5     4     0     2     0    -1     0     0     0
   m4     0    -1     2     0     0     4     0     0     5     0
   m5     0     0     1     1     0     0     3     0     0     0
   m6     0     2     0     0     0     0     0     1    -1     3
   m7     0     0     0     0     0     2     0     0     0     0
   m8     1     0     5     0     1     0     0     0    -1     0
   m9     0     0     0     0     0     0     0     0     5     0
  m10     3     4     0     0     4     0     0    -1     0     3
  m11     0     3     4     0     0     0     0     3     0     0
  m12     0     0     0     3     0     2     0     0     0     5
  m13     5     0     1     0     0     0     0     0     0     0
  m14    -1     2     0     5     0     0     0     2     1     0 ;



* ... upper bounds on A^T x
Parameter b[M];
        b['m1']  =    10 ;
        b['m2']  =     8 ;
        b['m3']  =     7 ;
        b['m4']  =    10 ;
        b['m5']  =     8 ;
        b['m6']  =     8 ;
        b['m7']  =     5 ;
        b['m8']  =     9 ;
        b['m9']  =     7 ;
        b['m10'] =     9 ;
        b['m11'] =     7 ;
        b['m12'] =     7 ;
        b['m13'] =     7 ;
        b['m14'] =     7 ;

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




