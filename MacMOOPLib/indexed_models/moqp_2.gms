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
    G_big['p1','n1','n1']   =      1.7  ;
    G_big['p1','n7','n1']   =     -0.64 ;
    G_big['p1','n2','n2']   =      1.7  ;
    G_big['p1','n3','n3']   =      1.7  ;
    G_big['p1','n4','n4']   =      1.7  ;
    G_big['p1','n5','n5']   =      1.7  ;
    G_big['p1','n11','n5']  =      1.7  ;
    G_big['p1','n6','n6']   =      1.7  ;
    G_big['p1','n12','n6']  =      0.51 ;
    G_big['p1','n1','n7']   =     -0.64 ;
    G_big['p1','n7','n7']   =      1.7  ;
    G_big['p1','n8','n8']   =      1.7  ;
    G_big['p1','n9','n9']   =      1.7  ;
    G_big['p1','n10','n10'] =      1.7  ;
    G_big['p1','n5','n11']  =      1.7  ;
    G_big['p1','n11','n11'] =      1.7  ;
    G_big['p1','n6','n12']  =      0.51 ;
    G_big['p1','n12','n12'] =      1.7  ;
    G_big['p1','n13','n13'] =      1.7  ;
    G_big['p1','n14','n14'] =      1.7  ;
    G_big['p1','n19','n14'] =      0.59 ;
    G_big['p1','n15','n15'] =      1.7  ;
    G_big['p1','n16','n16'] =      1.7  ;
    G_big['p1','n17','n17'] =      1.7  ;
    G_big['p1','n18','n18'] =      1.7  ;
    G_big['p1','n14','n19'] =      0.59 ;
    G_big['p1','n19','n19'] =      1.7  ;
    G_big['p1','n20','n20'] =      1.7  ;

    G_big['p2','n1','n1']   =      1.0  ;
    G_big['p2','n2','n2']   =      1.0  ;
    G_big['p2','n3','n3']   =      1.0  ;
    G_big['p2','n14','n3']  =     -0.048;
    G_big['p2','n4','n4']   =      1.0  ;
    G_big['p2','n5','n5']   =      1.0  ;
    G_big['p2','n19','n5']  =      0.38 ;
    G_big['p2','n6','n6']   =      1.0  ;
    G_big['p2','n12','n6']  =     -0.02 ;
    G_big['p2','n7','n7']   =      1.0  ;
    G_big['p2','n9','n7']   =     -1.0  ;
    G_big['p2','n8','n8']   =      1.0  ;
    G_big['p2','n7','n9']   =     -1.0  ;
    G_big['p2','n9','n9']   =      1.0  ;
    G_big['p2','n10','n10'] =      1.0  ;
    G_big['p2','n11','n11'] =      1.0  ;
    G_big['p2','n6 ','n12'] =    -0.02  ;
    G_big['p2','n12','n12'] =      1.0  ;
    G_big['p2','n13','n13'] =      1.0  ;
    G_big['p2','n3 ','n14'] =     -0.048;
    G_big['p2','n14','n14'] =      1.0  ;
    G_big['p2','n15','n15'] =      1.0  ;
    G_big['p2','n16','n16'] =      1.0  ;
    G_big['p2','n17','n17'] =      1.0  ;
    G_big['p2','n18','n18'] =      1.0  ;
    G_big['p2','n5 ','n19'] =      0.38 ;
    G_big['p2','n19','n19'] =      1.0  ;
    G_big['p2','n20','n20'] =      1.0  ;

    G_big['p3','n1','n1']   =      2.2  ;
    G_big['p3','n2','n2']   =      2.2  ;
    G_big['p3','n3','n3']   =      2.2  ;
    G_big['p3','n4','n4']   =      2.2  ;
    G_big['p3','n20','n4']  =  4.3e-05  ;
    G_big['p3','n5','n5']   =      2.2  ;
    G_big['p3','n6','n5']   =    -0.32  ;
    G_big['p3','n5','n6']   =    -0.32  ;
    G_big['p3','n6','n6']   =      2.2  ;
    G_big['p3','n7','n7']   =      2.2  ;
    G_big['p3','n8','n8']   =      2.2  ;
    G_big['p3','n9','n9']   =      2.2  ;
    G_big['p3','n10','n10'] =      2.2  ;
    G_big['p3','n11','n10'] =     -1.9  ;
    G_big['p3','n12','n10'] =      1.1  ;
    G_big['p3','n10','n11'] =     -1.9  ;
    G_big['p3','n11','n11'] =      2.2  ;
    G_big['p3','n10','n12'] =      1.1  ;
    G_big['p3','n12','n12'] =      2.2  ;
    G_big['p3','n13','n13'] =      2.2  ;
    G_big['p3','n14','n14'] =      2.2  ;
    G_big['p3','n15','n15'] =      2.2  ;
    G_big['p3','n16','n16'] =      2.2  ;
    G_big['p3','n17','n17'] =      2.2  ;
    G_big['p3','n18','n18'] =      2.2  ;
    G_big['p3','n19','n19'] =      2.2  ;
    G_big['p3','n4','n20']  =  4.3e-05  ;
    G_big['p3','n20','n20'] =      2.2  ;

Parameter g[P,N] ;
* ... objective gradients
* Linear objectives g
 g['p1','n1']  =      3.5  ;
 g['p1','n2']  =     -3.7  ;
 g['p1','n3']  =      4.9  ;
 g['p1','n4']  =      5.1  ;
 g['p1','n5']  =     -5.8  ;
 g['p1','n6']  =      3.2  ;
 g['p1','n7']  =      5.4  ;
 g['p1','n8']  =      3.8  ;
 g['p1','n9']  =      5.1  ;
 g['p1','n10'] =     -3.6  ;
 g['p1','n11'] =      2.1  ;
 g['p1','n12'] =      5.1  ;
 g['p1','n13'] =     -1.9  ;
 g['p1','n14'] =      1.1  ;
 g['p1','n15'] =      1.4  ;
 g['p1','n16'] =     -6.0  ;
 g['p1','n17'] =      5.8  ;
 g['p1','n18'] =      4.8  ;
 g['p1','n19'] =      2.3  ;
 g['p1','n20'] =     -0.72 ;

 g['p2','n1']  =      2.4  ;
 g['p2','n2']  =      1.3  ;
 g['p2','n3']  =     -2.4  ;
 g['p2','n4']  =      4.3  ;
 g['p2','n5']  =     -4.7  ;
 g['p2','n6']  =     -2.5  ;
 g['p2','n7']  =     -4.8  ;
 g['p2','n8']  =     -1.2  ;
 g['p2','n9']  =     -2.0  ;
 g['p2','n10'] =      5.3  ;
 g['p2','n11'] =      4.1  ;
 g['p2','n12'] =     -2.9  ;
 g['p2','n13'] =     -5.5  ;
 g['p2','n14'] =     -5.9  ;
 g['p2','n15'] =      0.89 ;
 g['p2','n16'] =      2.9  ;
 g['p2','n17'] =      3.7  ;
 g['p2','n18'] =      1.7  ;
 g['p2','n19'] =     -3.0  ;
 g['p2','n20'] =     -4.3  ;

 g['p3','n1']  =      1.8  ;
 g['p3','n2']  =      5.4  ;
 g['p3','n3']  =      3.8  ;
 g['p3','n4']  =      5.2  ;
 g['p3','n5']  =     -2.3  ;
 g['p3','n6']  =     -2.8  ;
 g['p3','n7']  =      0.44 ;
 g['p3','n8']  =     -4.0  ;
 g['p3','n9']  =     -3.5  ;
 g['p3','n10'] =     -3.4  ;
 g['p3','n11'] =      1.8  ;
 g['p3','n12'] =     -5.4  ;
 g['p3','n13'] =     -3.2  ;
 g['p3','n14'] =      2.0  ;
 g['p3','n15'] =     -2.3  ;
 g['p3','n16'] =     -2.3  ;
 g['p3','n17'] =      2.6  ;
 g['p3','n18'] =      5.5  ;
 g['p3','n19'] =     -4.4  ;
 g['p3','n20'] =     -5.2  ;

Parameter A[M,N]  ;
* ... constraint Jacobian
* Linear constraints matrix A

    A['m3','n1']  =     -0.82 ;
    A['m8','n1']  =      2.8  ;
    A['m10','n1'] =      2.5  ;
    A['m1','n2']  =     -3.0  ;
    A['m4','n3']  =      1.7  ;
    A['m9','n3']  =     -0.1  ;
    A['m9','n4']  =      1.0  ;
    A['m10','n3'] =      1.1  ;
    A['m3','n4']  =      1.2  ;
    A['m7','n4']  =      3.8  ;
    A['m8','n4']  =      2.4  ;
    A['m10','n4'] =     -1.5  ;
    A['m2','n5']  =      3.1  ;
    A['m8','n5']  =      1.3  ;
    A['m1','n6']  =     -3.9  ;
    A['m2','n6']  =      0.75 ;
    A['m3','n7']  =     -3.3  ;
    A['m8','n7']  =      1.4  ;
    A['m2','n8']  =     -2.7  ;
    A['m6','n8']  =     -2.4  ;
    A['m7','n8']  =      1.1  ;
    A['m3','n10'] =      2.2  ;
    A['m4','n10'] =      2.3  ;
    A['m2','n11'] =     -1.5  ;
    A['m6','n13'] =     -1.9  ;
    A['m1','n15'] =     -1.0  ;
    A['m10','n15']=      1.3  ;
    A['m4','n16'] =     -2.1  ;
    A['m10','n17']=     -1.1  ;
    A['m2','n18'] =     -2.1  ;
    A['m3','n18'] =      3.8  ;
    A['m6','n18'] =      1.7  ;
    A['m1','n19'] =      1.6  ;
    A['m8','n19'] =      2.6  ;
    A['m2','n20'] =     -3.9  ;
    A['m7','n20'] =      0.37 ;
    A['m8','n20'] =      3.8  ;

Parameter b[M] ;
* ... lower bounds on A^T x
* Linear constraints: rhs b
    b['m1']  =  -6.4   ;
    b['m2']  =  -6.4   ;
    b['m3']  =   0.73  ;
    b['m4']  =   1.9   ;
    b['m5']  =   0.0   ;
    b['m6']  =  -2.6   ;
    b['m7']  =   5.3   ;
    b['m8']  =   0.55  ;
    b['m9']  =  -0.1   ;
    b['m10'] =   1.7   ;

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






