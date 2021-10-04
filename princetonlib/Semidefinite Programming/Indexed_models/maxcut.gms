* Objective: linear
* Constraints: convex nonlinear


Parameter epsi; epsi = 1.0e-6;

$Set n1 5
$Set m1 5

set i /i1*i%n1%/;
Alias(i,j);
Alias(i,j1);


set k /k1*k%m1%/;

Parameter A(i,j,k); A(i,j,k) = 1;
Parameter c(i,j); c(i,j) = 0;
Parameter b(k); b(k) = 0;

b(k) = 1/4;

Loop{(i,j),
     C[i,j] := 0;
if (Uniform(0,1) gt 0.5,  C[i,j] = 1);
    };



              C[i,j]$(ord(i) eq ord(j))  = - sum{j1$(ord(j1) gt ord(i)), C[i,j1]}
                                           - sum{j1$(ord(j1) lt ord(i)), C[j1,i]};



*############################################################
*#  Max Cut with randomly generated edges (p=0.5).
*
*param eps := 1.0e-6;
*
*param n := 5;
*param m := 5;
*
*for {k in M} {
*    let A[k,k,k] := 1;
*    let b[k] := 1/4;
*}
*
*for {i in 1..n, j in i+1..n} {
*    if Uniform01() > 0.5 then {
*        let C[i,j] := 1;
*    } else {
*        let C[i,j] := 0;
*    }
*}
*for {i in 1..n} {
*    let C[i,i] := - sum {j in 1..n: j>i} C[i,j]
*                  - sum {j in 1..n: j<i} C[j,i]
*    ;
*}

display C;

Variable X(i,j) ,  b_add(i,j) , d_add(i,j) , cost ;

Equation
 equalities(k),
 Eq_1(i,j) ,
 Eq_2(i,j) ,
 Def_obj ;

equalities(k)..      sum{(i,j)$(ord(j) gt ord(i)), 2*A[i,j,k]*X[i,j]} +
                     sum{(i,j)$(ord(j) eq ord(i)),   A[i,j,k]*X[i,j]}    =e= b[k];

Eq_1(i,j)$(ord(i) ge ord(j))..
b_add[i,j] =e=  x[i,j] - sum(j1$(ord(j1) le ord(j)-1) ,b_add[i,j1]*d_add[j1,j]  );

Eq_2(i,j)$(ord(i) lt ord(j))..
b_add[i,i]*d_add[i,j] =e= {x[i,j] - sum(j1$(ord(j1) lt ord(i)-1) ,b_add[i,j1]*d_add[j1,j])};

Def_obj.. cost =e= sum{(i,j)$(ord(j) gt ord(i)), 2*C[i,j]*X[i,j]} +
                   sum{(i,j)$(ord(j) eq ord(i)),   C[j,j]*X[j,j]};

X.l[i,j]$(ord(i) lt ord(j)) = 1;
X.l[i,j]$(ord(i) eq ord(j)) = 1;

d_add.lo[i,j] = 0.0000001 ;
d_add.fx[i,j]$(ord(j) eq ord(i)) = 1.0 ;


b_add.lo[i,j] = epsi ;
b_add.lo[i,j]$(ord(j) eq ord(i)) = epsi ;

Model maxcut /all/;
Solve maxcut using nlp minimazing cost;

display X.l;