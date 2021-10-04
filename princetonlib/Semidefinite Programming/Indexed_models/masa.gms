* Objective: linear
* Constraints: convex nonlinear


Parameter epsi; epsi = 1.0e-8;

$Set n1 2
$Set m1 1

set i /i1*i%n1%/;
Alias(i,j);
Alias(i,j1);


set k /k1*k%m1%/;

Parameter A(i,j,k); A(i,j,k) = 0;
Parameter c(i,j); c(i,j) = 0;
Parameter b(k); b(k) = 0;

A('i1','i1','k1')= 0 ;  A('i1','i2','k1')= 1 ;
A('i2','i1','k1')= 0 ;  A('i2','i2','k1')= 0 ;

b('k1') = 2;

c('i1','i1')= 1 ; c('i2','i1')= 0 ;
c('i1','i2')= 0 ; c('i2','i2')= 1 ;

*                       Masa's problem
*param n := 2;
*param m := 1;
*param A :=
*    [*,*,1]:
*         1   2  :=
*      1  0   1
*      2  .   0 ;
*param b :=
*      1  2 ;
*param C: 1 2 :=
*      1  1 0
*      2  . 1 ;


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

Model masa /all/;
Solve masa using nlp minimazing cost;

display X.l;