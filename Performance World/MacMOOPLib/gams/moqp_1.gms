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
     G_big['p1','n1','n1']   =    2.3  ;
     G_big['p1','n2','n2']   =    2.3  ;
     G_big['p1','n3','n3']   =    2.3  ;
     G_big['p1','n4','n4']   =    2.3  ;
     G_big['p1','n5','n5']   =    2.3  ;
     G_big['p1','n6','n6']   =    2.3  ;
     G_big['p1','n14','n6']  =   -1.1  ;
     G_big['p1','n7','n7']   =    2.3  ;
     G_big['p1','n8','n8']   =    2.3  ;
     G_big['p1','n9','n9']   =    2.3  ;
     G_big['p1','n16','n9']  =    1.4  ;
     G_big['p1','n10','n10'] =    2.3  ;
     G_big['p1','n11','n11'] =    2.3  ;
     G_big['p1','n12','n12'] =    2.3  ;
     G_big['p1','n13','n13'] =    2.3  ;
     G_big['p1','n6','n14']  =   -1.1  ;
     G_big['p1','n14','n14'] =    2.3  ;
     G_big['p1','n16','n14'] =   -1.6  ;
     G_big['p1','n15','n15'] =    2.3  ;
     G_big['p1','n18','n15'] =    0.26 ;
     G_big['p1','n9','n16']  =    1.4  ;
     G_big['p1','n14','n16'] =   -1.6  ;
     G_big['p1','n16','n16'] =    2.3  ;
     G_big['p1','n17','n17'] =    2.3  ;
     G_big['p1','n15','n18'] =    0.26 ;
     G_big['p1','n18','n18'] =    2.3  ;
     G_big['p1','n19','n19'] =    2.3  ;
     G_big['p1','n20','n20'] =    2.3  ;

     G_big['p2','n1','n1']   =    1.2  ;
     G_big['p2','n10','n1']  =    0.53 ;
     G_big['p2','n2','n2']   =    1.2  ;
     G_big['p2','n19','n2']  =    0.22 ;
     G_big['p2','n3','n3']   =    1.2  ;
     G_big['p2','n4','n4']   =    1.2  ;
     G_big['p2','n5','n5']   =    1.2  ;
     G_big['p2','n7','n5']   =   -0.81 ;
     G_big['p2','n18','n5']  =   -0.92 ;
     G_big['p2','n6','n6']   =    1.2  ;
     G_big['p2','n5','n7']   =   -0.81 ;
     G_big['p2','n7','n7']   =    1.2  ;
     G_big['p2','n8','n8']   =    1.2  ;
     G_big['p2','n9','n9']   =    1.2  ;
     G_big['p2','n1','n10']  =    0.53 ;
     G_big['p2','n10','n10'] =    1.2  ;
     G_big['p2','n11','n11'] =    1.2  ;
     G_big['p2','n12','n12'] =    1.2  ;
     G_big['p2','n13','n13'] =    1.2  ;
     G_big['p2','n14','n14'] =    1.2  ;
     G_big['p2','n15','n15'] =    1.2  ;
     G_big['p2','n16','n16'] =    1.2  ;
     G_big['p2','n17','n17'] =    1.2  ;
     G_big['p2','n5','n18']  =   -0.92 ;
     G_big['p2','n18','n18'] =    1.2  ;
     G_big['p2','n2','n19']  =    0.22 ;
     G_big['p2','n19','n19'] =    1.2  ;
     G_big['p2','n20','n20'] =    1.2  ;

     G_big['p3','n1','n1']   =    2.4  ;
     G_big['p3','n2','n2']   =    2.4  ;
     G_big['p3','n3','n3']   =    2.4  ;
     G_big['p3','n4','n4']   =    2.4  ;
     G_big['p3','n10','n4']  =   0.61  ;
     G_big['p3','n5','n5']   =    2.4  ;
     G_big['p3','n6','n6']   =    2.4  ;
     G_big['p3','n7','n7']   =    2.4  ;
     G_big['p3','n8','n8']   =    2.4  ;
     G_big['p3','n14','n8']  = -0.059  ;
     G_big['p3','n9','n9']   =    2.4  ;
     G_big['p3','n4','n10']  =   0.61  ;
     G_big['p3','n10','n10'] =    2.4  ;
     G_big['p3','n11','n11'] =    2.4  ;
     G_big['p3','n18','n11'] =     -1  ;
     G_big['p3','n12','n12'] =    2.4  ;
     G_big['p3','n13','n13'] =    2.4  ;
     G_big['p3','n8','n14']  = -0.059  ;
     G_big['p3','n14','n14'] =    2.4  ;
     G_big['p3','n15','n15'] =    2.4  ;
     G_big['p3','n16','n16'] =    2.4  ;
     G_big['p3','n17','n17'] =    2.4  ;
     G_big['p3','n11','n18'] =     -1  ;
     G_big['p3','n18','n18'] =    2.4  ;
     G_big['p3','n20','n18'] =   -2.2  ;
     G_big['p3','n19','n19'] =    2.4  ;
     G_big['p3','n18','n20'] =   -2.2  ;
     G_big['p3','n20','n20'] =    2.4  ;

Parameter g[P,N] ;
* ... objective gradients
* Linear objectives g
    g['p1','n1']  =  0.023 ;
    g['p1','n2']  = -0.93  ;
    g['p1','n3']  =  1.9   ;
    g['p1','n4']  =  2.1   ;
    g['p1','n5']  =  5.5   ;
    g['p1','n6']  = -3.7   ;
    g['p1','n7']  = -4.7   ;
    g['p1','n8']  =  0.78  ;
    g['p1','n9']  =  5.6   ;
    g['p1','n10'] = -5.7   ;
    g['p1','n11'] =  4.4   ;
    g['p1','n12'] = -5.7   ;
    g['p1','n13'] =  0.23  ;
    g['p1','n14'] = -3.7   ;
    g['p1','n15'] =  2.6   ;
    g['p1','n16'] = -3.0   ;
    g['p1','n17'] =  5.2   ;
    g['p1','n18'] = -4.4   ;
    g['p1','n19'] =  0.26  ;
    g['p1','n20'] =  4.7   ;

    g['p2','n1']  =  5.3   ;
    g['p2','n2']  = -2.0   ;
    g['p2','n3']  = -0.75  ;
    g['p2','n4']  = -0.35  ;
    g['p2','n5']  = -4.2   ;
    g['p2','n6']  = -4.4   ;
    g['p2','n7']  =  0.39  ;
    g['p2','n8']  =  2.7   ;
    g['p2','n9']  = -1.2   ;
    g['p2','n10'] = -1.7   ;
    g['p2','n11'] = -2.6   ;
    g['p2','n12'] =  4.4   ;
    g['p2','n13'] =  1.5   ;
    g['p2','n14'] = -3.1   ;
    g['p2','n15'] =  5.7   ;
    g['p2','n16'] =  1.7   ;
    g['p2','n17'] = -3.2   ;
    g['p2','n18'] =  2.2   ;
    g['p2','n19'] =  2.0   ;
    g['p2','n20'] = -4.4   ;

    g['p3','n1']  = -5.7   ;
    g['p3','n2']  = -2.9   ;
    g['p3','n3']  = -4.6   ;
    g['p3','n4']  = -5.2   ;
    g['p3','n5']  =  4.2   ;
    g['p3','n6']  = -3.8   ;
    g['p3','n7']  = -5.6   ;
    g['p3','n8']  =  2.8   ;
    g['p3','n9']  =  0.44  ;
    g['p3','n10'] = -2.7   ;
    g['p3','n11'] = -1.6   ;
    g['p3','n12'] = -5.8   ;
    g['p3','n13'] =  4.7   ;
    g['p3','n14'] =  4.4   ;
    g['p3','n15'] = -2.9   ;
    g['p3','n16'] =  0.83  ;
    g['p3','n17'] = -4.1   ;
    g['p3','n18'] =  1.1   ;
    g['p3','n19'] = -2.0   ;
    g['p3','n20'] =  1.9   ;

Parameter A[M,N]  ;
* ... constraint Jacobian
* Linear constraints matrix A

    A['m7','n1']  =  -0.23  ;
    A['m8','n1']  =   1.30  ;
    A['m6','n2']  =   2.10  ;
    A['m8','n2']  =   1.40  ;
    A['m4','n3']  =   0.95  ;
    A['m9','n4']  =   1.90  ;
    A['m2','n6']  =   2.20  ;
    A['m2','n7']  =  -3.20  ;
    A['m5','n7']  =   2.10  ;
    A['m7','n7']  =  -2.40  ;
    A['m2','n9']  =  -4.00  ;
    A['m4','n10'] =  -3.90  ;
    A['m7','n10'] =   0.64  ;
    A['m10','n10']=   0.031 ;
    A['m2','n11'] =   0.33  ;
    A['m5','n11'] =  -0.95  ;
    A['m2','n12'] =  -3.9  ;
    A['m4','n12'] =   3.1  ;
    A['m5','n12'] =  -1.4  ;
    A['m1','n13'] =   0.49  ;
    A['m5','n13'] =   0.033  ;
    A['m6','n13'] =   2.2  ;
    A['m3','n14'] =   2.3  ;
    A['m3','n10'] =   2.11111  ;
    A['m4','n14'] =   2.1  ;
    A['m6','n14'] =  -0.13 ;
    A['m8','n14'] =   3.5  ;
    A['m2','n15'] =  -0.39 ;
    A['m2','n17'] =  -2.4  ;
    A['m4','n17'] =   3.3  ;
    A['m9','n17'] =   2.9  ;
    A['m10','n17']=   1.0  ;
    A['m5','n18'] =   0.52 ;
    A['m8','n18'] =   2.2  ;
    A['m6','n19'] =   2.4  ;
    A['m9','n19'] =   3.9  ;
    A['m1','n20'] =   1.2  ;

Parameter b[M] ;
* ... lower bounds on A^T x
* Linear constraints: rhs b
    b['m1']  =   1.70  ;
    b['m2']  = -11.00  ;
    b['m3']  =   2.30  ;
    b['m4']  =   1.40  ;
    b['m5']  =   0.31  ;
    b['m6']  =   1.80  ;
    b['m7']  =  -2.00  ;
    b['m8']  =   1.10  ;
    b['m9']  =   3.70  ;
    b['m10'] =   1.10  ;

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




