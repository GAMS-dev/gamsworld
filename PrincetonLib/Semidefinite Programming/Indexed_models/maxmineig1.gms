* Objective: linear
* Constraints: convex nonlinear


Parameter epsi; epsi = 1.0e-6;

$Set n1 10
$Set m1 10

set i /i1*i%n1%/;
Alias(i,j);
Alias(i,j1);


set k /k1*k%m1%/;

Parameter A(i,j,k); A(i,j,k) = 1;
Parameter c(i,j); c(i,j) = 0;
Parameter b(k); b(k) = 0;

b(k) = 1;


c['i1','i1'] =0.000000 ; c['i1','i2'] =-0.544140 ;
c['i2','i1'] =0.000000 ; c['i2','i2'] =-3.586448 ;
c['i3','i1'] =0.000000 ; c['i3','i2'] = 0.000000 ;
c['i4','i1'] =0.000000 ; c['i4','i2'] = 0.000000 ;
c['i5','i1'] =0.000000 ; c['i5','i2'] = 0.000000 ;
c['i6','i1'] =0.000000 ; c['i6','i2'] = 0.000000 ;
c['i7','i1'] =0.000000 ; c['i7','i2'] = 0.000000 ;
c['i8','i1'] =0.000000 ; c['i8','i2'] = 0.000000 ;
c['i9','i1'] =0.000000 ; c['i9','i2'] = 0.000000 ;
c['i10','i1']=0.000000 ; c['i10','i2']= 0.000000 ;


c['i1','i3'] = -0.528590 ; c['i1','i4'] = -0.114096 ;
c['i2','i3'] = -0.486078 ; c['i2','i4'] =  0.642576 ;
c['i3','i3'] = -3.295910 ; c['i3','i4'] = -2.242679 ;
c['i4','i3'] =  0.000000 ; c['i4','i4'] = -1.323736 ;
c['i5','i3'] =  0.000000 ; c['i5','i4'] =  0.000000 ;
c['i6','i3'] =  0.000000 ; c['i6','i4'] =  0.000000 ;
c['i7','i3'] =  0.000000 ; c['i7','i4'] =  0.000000 ;
c['i8','i3'] =  0.000000 ; c['i8','i4'] =  0.000000 ;
c['i9','i3'] =  0.000000 ; c['i9','i4'] =  0.000000 ;
c['i10','i3']=  0.000000 ; c['i10','i4']=  0.000000 ;

c['i1','i5'] =  0.653170 ; c['i1','i6'] =  0.325840 ;
c['i2','i5'] = -1.822641 ; c['i2','i6'] = -0.193535 ;
c['i3','i5'] =  0.608769 ; c['i3','i6'] = -0.047827 ;
c['i4','i5'] = -1.132128 ; c['i4','i6'] = -0.437948 ;
c['i5','i5'] = -1.477326 ; c['i5','i6'] = -0.566492 ;
c['i6','i5'] =  0.000000 ; c['i6','i6'] = -4.341016 ;
c['i7','i5'] =  0.000000 ; c['i7','i6'] =  0.000000 ;
c['i8','i5'] =  0.000000 ; c['i8','i6'] =  0.000000 ;
c['i9','i5'] =  0.000000 ; c['i9','i6'] =  0.000000 ;
c['i10','i5']=  0.000000 ; c['i10','i6']=  0.000000 ;


c['i1','i7'] =  0.630042 ; c['i1','i8'] =  0.234973 ;
c['i2','i7'] = -0.524237 ; c['i2','i8'] = -0.313607 ;
c['i3','i7'] = -0.471819 ; c['i3','i8'] =  0.310792 ;
c['i4','i7'] = -0.572436 ; c['i4','i8'] =  0.081676 ;
c['i5','i7'] =  0.730947 ; c['i5','i8'] = -2.606415 ;
c['i6','i7'] =  0.515816 ; c['i6','i8'] =  0.973465 ;
c['i7','i7'] = -4.430323 ; c['i7','i8'] = -0.412664 ;
c['i8','i7'] =  0.000000 ; c['i8','i8'] = -0.964514 ;
c['i9','i7'] =  0.000000 ; c['i9','i8'] =  0.000000 ;
c['i10','i7']=  0.000000 ; c['i10','i8']=  0.000000 ;

c['i1','i9'] =  0.173165 ; c['i1','i10'] = -1.404959 ;
c['i2','i9'] = -1.873198 ; c['i2','i10'] =  2.013902 ;
c['i3','i9'] =  0.858441 ; c['i3','i10'] =  1.125251 ;
c['i4','i9'] = -0.483379 ; c['i4','i10'] = -1.880913 ;
c['i5','i9'] =  1.975419 ; c['i5','i10'] = -0.731975 ;
c['i6','i9'] = -0.671743 ; c['i6','i10'] = -0.671661 ;
c['i7','i9'] = -0.075231 ; c['i7','i10'] = -0.478093 ;
c['i8','i9'] =  0.308315 ; c['i8','i10'] = -2.148087 ;
c['i9','i9'] = -2.642236 ; c['i9','i10'] = -1.703253 ;
c['i10','i9']=  0.000000 ; c['i10','i10']= -0.266262 ;




*############################################################
*#  Min-max eigenvalue with data from psdlp.c
*
*param eps := 1.0e-8;
*
*param n := 10;
*param m := 10;
*
*param C: 1 2 3 4 5 6 7 8 9 10 :=
*  1  0.000000 -0.544140 -0.528590 -0.114096  0.653170  0.325840  0.630042
*        0.234973  0.173165 -1.404959
*  2   .       -3.586448 -0.486078  0.642576 -1.822641 -0.193535 -0.524237
*        -0.313607 -1.873198  2.013902
*  3   .         .       -3.295910 -2.242679  0.608769 -0.047827 -0.471819
*        0.310792  0.858441  1.125251
*  4   .         .         .       -1.323736 -1.132128 -0.437948 -0.572436
*        0.081676 -0.483379 -1.880913
*  5   .         .         .         .       -1.477326 -0.566492  0.730947
*        -2.606415  1.975419 -0.731975
*  6   .         .         .         .         .       -4.341016  0.515816
*        0.973465 -0.671743 -0.671661
*  7   .         .         .         .         .         .       -4.430323
*        -0.412664 -0.075231 -0.478093
*  8   .         .         .         .         .         .         .
*        -0.964514  0.308315 -2.148087
*  9   .         .         .         .         .         .         .
*          .      -2.642236 -1.703253
* 10   .         .         .         .         .         .         .
*          .         .       -0.266262
*;
*
*for {k in M} {
*    let A[k,k,k] := 1;
*}
*
*for {k in M} {
*    let b[k] := 1;
*}
*
*





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

Model maxmineig1 /all/;
Solve maxmineig1 using nlp minimazing cost;

display X.l;