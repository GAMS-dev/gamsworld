* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
$Set M 4
Set I /1*%N%/;
Set J /1*%M%/;
Alias(I,I1);
Parameter A[J] /1 0.14272 , 2 -0.184918, 3 -0.521869, 4 -0.685306 /;
Parameter D[J] /1 1.75168 , 2 -1.35195 , 3 -0.479048, 4  -0.3648  /;

table   G[J,I]
             1              2               3
1       -0.564255       0.392417        -0.404979
2        0.927589      -0.0735084        0.535493
3        0.658799      -0.636666        -0.681091
4       -0.869487       0.586387         0.289826            ;

table   B[J,I]
          1               2                3
1       2.95137         4.87407         -2.0506
2       4.87407         9.39321         -3.93181
3      -2.0506         -3.93189          2.64745             ;


Variable     x[I], f[J] , F_large  ;

Equation Eq_1[J],Def_obj;

Eq_1[J]..
f[J] =e= A[J]+      sum{I,(G[J,I]*x[I])}
             + 0.5*(sum{I,(x[I]*sum{I1,(B[J,I1]*x[I1])})})*D[J];

Def_obj..  F_large =e= Sum{J,sqr(f[J])} ;

x.l[I] = 0.1   ;

Model s243 /all/;

Solve s243 using nlp minimize F_large;

display x.l;
display f.l;
