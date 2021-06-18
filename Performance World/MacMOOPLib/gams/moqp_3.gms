* MOQP.mod
* Original AMPL coding by Sven Leyffer, Argonne National Laboratory
*
* A generic MOQP (matrices are upper case)
*
*       minimize   { x^T G_k x + g_k^T x , for k=1,...,p }
*       subj. to   A^T x >= b
*                      x >= 0
*
* for data files, see below.
* ------------------------------------------------------------

* ... problem dimensions & index sets

* ... number of variables
$Set nn 20
* ... number of constraints
$Set mm 10
* ... number of objectives
$Set pp  3

Set N / n1*n%nn% / ;
Set M / m1*m%mm% / ;
Set P / p1*p%pp% / ;
Alias(N,N1);
Scalar Counter ;  Counter = 1 ;
* ... problem data
Parameter G_big[P,N,N1] ;
* ... objective Hessian
* Hessian matrices G
    G_big['p1','n1','n1']   =          1.2   ;
    G_big['p1','n2','n1']   =          0.73  ;
    G_big['p1','n13','n1']  =          0.9   ;
    G_big['p1','n1','n2']   =          0.73  ;
    G_big['p1','n2','n2']   =          1.2   ;
    G_big['p1','n3','n3']   =          1.2   ;
    G_big['p1','n4','n4']   =          1.2   ;
    G_big['p1','n6','n4']   =          0.43  ;
    G_big['p1','n5','n5']   =          1.2   ;
    G_big['p1','n4','n6']   =          0.43  ;
    G_big['p1','n6','n6']   =          1.2   ;
    G_big['p1','n7','n7']   =          1.2   ;
    G_big['p1','n9','n7']   =          0.58  ;
    G_big['p1','n8','n8']   =          1.2   ;
    G_big['p1','n7','n9']   =          0.58  ;
    G_big['p1','n9','n9']   =          1.2   ;
    G_big['p1','n10','n10'] =          1.2   ;
    G_big['p1','n11','n11'] =          1.2   ;
    G_big['p1','n12','n12'] =          1.2   ;
    G_big['p1','n1','n13']  =          0.9   ;
    G_big['p1','n13','n13'] =          1.2   ;
    G_big['p1','n14','n14'] =          1.2   ;
    G_big['p1','n15','n15'] =          1.2   ;
    G_big['p1','n16','n16'] =          1.2   ;
    G_big['p1','n17','n17'] =          1.2   ;
    G_big['p1','n18','n18'] =          1.2   ;
    G_big['p1','n19','n19'] =          1.2   ;
    G_big['p1','n20','n20'] =          1.2   ;

    G_big['p2','n1','n1']   =          0.72  ;
    G_big['p2','n20','n1']  =          0.57  ;
    G_big['p2','n2','n2']   =          0.72  ;
    G_big['p2','n3','n3']   =          0.72  ;
    G_big['p2','n4','n4']   =          0.72  ;
    G_big['p2','n5','n5']   =          0.72  ;
    G_big['p2','n6','n6']   =          0.72  ;
    G_big['p2','n7','n7']   =          0.72  ;
    G_big['p2','n8','n8']   =          0.72  ;
    G_big['p2','n9','n9']   =          0.72  ;
    G_big['p2','n10','n10'] =          0.72  ;
    G_big['p2','n11','n11'] =          0.72  ;
    G_big['p2','n12','n12'] =          0.72  ;
    G_big['p2','n13','n13'] =          0.72  ;
    G_big['p2','n14','n14'] =          0.72  ;
    G_big['p2','n15','n14'] =         -0.26  ;
    G_big['p2','n14','n15'] =         -0.26  ;
    G_big['p2','n15','n15'] =          0.72  ;
    G_big['p2','n18','n15'] =          0.68  ;
    G_big['p2','n16','n16'] =          0.72  ;
    G_big['p2','n17','n17'] =          0.76  ;
    G_big['p2','n15','n18'] =          0.68  ;
    G_big['p2','n18','n18'] =          0.72  ;
    G_big['p2','n19','n19'] =          0.72  ;
    G_big['p2','n1','n20']  =          0.57  ;
    G_big['p2','n20','n20'] =          0.72  ;

    G_big['p3','n1','n1']   =          1.5  ;
    G_big['p3','n2','n2']   =          1.5  ;
    G_big['p3','n15','n2']  =         -0.38 ;
    G_big['p3','n3','n3']   =          1.5  ;
    G_big['p3','n4','n4']   =          1.5  ;
    G_big['p3','n7','n4']   =         -0.23 ;
    G_big['p3','n5','n5']   =          1.5  ;
    G_big['p3','n6','n6']   =          1.5  ;
    G_big['p3','n4','n7']   =         -0.23 ;
    G_big['p3','n7','n7']   =          1.5  ;
    G_big['p3','n15','n7']  =         -0.3  ;
    G_big['p3','n8','n8']   =          1.5  ;
    G_big['p3','n9','n9']   =          1.5  ;
    G_big['p3','n10','n10'] =          1.5  ;
    G_big['p3','n11','n11'] =          1.5  ;
    G_big['p3','n12','n12'] =          1.5  ;
    G_big['p3','n13','n13'] =          1.5  ;
    G_big['p3','n14','n14'] =          1.5  ;
    G_big['p3','n2','n15']  =         -0.38 ;
    G_big['p3','n7','n15']  =         -0.3  ;
    G_big['p3','n15','n15'] =          1.5  ;
    G_big['p3','n16','n16'] =          1.5  ;
    G_big['p3','n17','n17'] =          1.5  ;
    G_big['p3','n18','n18'] =          1.5  ;
    G_big['p3','n20','n18'] =         -1.5  ;
    G_big['p3','n19','n19'] =          1.5  ;
    G_big['p3','n18','n20'] =         -1.5  ;
    G_big['p3','n20','n20'] =          1.5  ;

Parameter g[P,N] ;
* ... objective gradients
* Linear objectives g

   g['p1','n1']   =           -1     ;
   g['p1','n2']   =           -4.9   ;
   g['p1','n3']   =           -0.6   ;
   g['p1','n4']   =            4.4   ;
   g['p1','n5']   =           -1.3   ;
   g['p1','n6']   =           -3     ;
   g['p1','n7']   =           -1.7   ;
   g['p1','n8']   =            2.9   ;
   g['p1','n9']   =            1.8   ;
   g['p1','n10']  =            5.3   ;
   g['p1','n11']  =            4     ;
   g['p1','n12']  =           -0.36  ;
   g['p1','n13']  =            1.6   ;
   g['p1','n14']  =           -5.3   ;
   g['p1','n15']  =            0.51  ;
   g['p1','n16']  =           -0.53  ;
   g['p1','n17']  =            4.4   ;
   g['p1','n18']  =            4.3   ;
   g['p1','n19']  =           -0.33  ;
   g['p1','n20']  =            3.4   ;

   g['p2','n1']   =            1.9   ;
   g['p2','n2']   =           -6     ;
   g['p2','n3']   =           -4.4   ;
   g['p2','n4']   =           -0.062 ;
   g['p2','n5']   =           -5.5   ;
   g['p2','n6']   =           -3.3   ;
   g['p2','n7']   =           -2.1   ;
   g['p2','n8']   =            4.8   ;
   g['p2','n9']   =           -2.2   ;
   g['p2','n10']  =           -3     ;
   g['p2','n11']  =           -0.8   ;
   g['p2','n12']  =            4.1   ;
   g['p2','n13']  =           -3.8   ;
   g['p2','n14']  =            0.098 ;
   g['p2','n15']  =           -0.57  ;
   g['p2','n16']  =           -2.1   ;
   g['p2','n17']  =           -1.4   ;
   g['p2','n18']  =            4.6   ;
   g['p2','n19']  =            3.1   ;
   g['p2','n20']  =            4.6   ;

   g['p3','n1']   =           -0.51  ;
   g['p3','n2']   =            3.6   ;
   g['p3','n3']   =           -4.4   ;
   g['p3','n4']   =           -5.2   ;
   g['p3','n5']   =           -1.5   ;
   g['p3','n6']   =           -1.5   ;
   g['p3','n7']   =           -0.19  ;
   g['p3','n8']   =            5.6   ;
   g['p3','n9']   =           -1.9   ;
   g['p3','n10']  =           -3     ;
   g['p3','n11']  =            1     ;
   g['p3','n12']  =            0.28  ;
   g['p3','n13']  =           -4     ;
   g['p3','n14']  =           -0.16  ;
   g['p3','n15']  =           -0.047 ;
   g['p3','n16']  =            4.1   ;
   g['p3','n17']  =            3.7   ;
   g['p3','n18']  =            4.3   ;
   g['p3','n19']  =            1.3   ;
   g['p3','n20']  =            0.79  ;

Parameter A[M,N]  ;
* ... constraint Jacobian
* Linear constraints matrix A

    A['m1','n1']   =          -3.3  ;
    A['m6','n1']   =          -3    ;
    A['m2','n2']   =           1.9  ;
    A['m1','n3']   =           1.9  ;
    A['m6','n3']   =          -3.7  ;
    A['m7','n3']   =          -3    ;
    A['m2','n4']   =           1.5  ;
    A['m4','n4']   =          -1.9  ;
    A['m6','n4']   =          -1    ;
    A['m7','n6']   =          -0.13 ;
    A['m8','n7']   =           2.2  ;
    A['m1','n8']   =          -4    ;
    A['m3','n8']   =           3.8  ;
    A['m6','n8']   =           1.5  ;
    A['m7','n8']   =           3.6  ;
    A['m9','n8']   =          -2.6  ;
    A['m1','n9']   =           0.82 ;
    A['m3','n9']   =          -2.4  ;
    A['m10','n9']  =          -1.9  ;
    A['m5','n10']  =          -0.79 ;
    A['m10','n10'] =          -0.34 ;
    A['m8','n11']  =          -1.6  ;
    A['m9','n11']  =           1.5  ;
    A['m4','n12']  =           0.12 ;
    A['m1','n14']  =           3.7  ;
    A['m1','n15']  =          -0.82 ;
    A['m6','n16']  =           3.5  ;
    A['m7','n16']  =          -1.1  ;
    A['m10','n16'] =           2.7  ;
    A['m5','n17']  =          -0.11 ;
    A['m3','n18']  =           0.75 ;
    A['m3','n19']  =           3.6  ;
    A['m6','n19']  =          -0.18 ;
    A['m4','n20']  =           1.1  ;
    A['m5','n20']  =           2    ;
    A['m7','n20']  =          -1.4  ;

Parameter b[M] ;
* ... lower bounds on A^T x
* Linear constraints: rhs b
    b['m1']  =   -1.7   ;
    b['m2']  =    3.3   ;
    b['m3']  =    5.8   ;
    b['m4']  =   -0.71  ;
    b['m5']  =    1.1   ;
    b['m6']  =   -2.8   ;
    b['m7']  =   -2     ;
    b['m8']  =    0.56  ;
    b['m9']  =   -1.1   ;
    b['m10'] =    0.34  ;

Positive Variable x[N] ;

         Variable f[P]    ,
                  f_Obj   ;

Equation c(M)       ,
         Def_Obj(P) ,
         Def_main   ;

* ... linear constraints
c(M)..
    Sum{N, A[M,N]*x[N] } =g= b[M];

* ... objective functions
Def_Obj(P)..
    f[P] =e=  Sum{(N,N1), G_big[P,N,N1] * x[N] * x[N1] / 2  } +
              Sum{N, (g[P,N] * x[N]) };

Def_main..
    f_Obj =e= Sum{P$(ord(P) eq Counter),f[P]} ;

Model MOQP / All / ;

Solve MOQP using NLP minimazing f_Obj ;
Display f_Obj.l ;

Counter = Counter + 1 ;
Solve MOQP using NLP minimazing f_Obj ;
Display f_Obj.l ;

Counter = Counter + 1 ;
Solve MOQP using NLP minimazing f_Obj ;
Display f_Obj.l ;
    