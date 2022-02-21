* Cute AMPL model  (translation to GAMS)
*
* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source: Optimal Design of Multiproduct Batch Plant
*   G.R. Kocis & I.E. Grossmann,
*   "Global OPtimization of Nonconvex Mixed Integer Nonlinear Programmming
*    (MINLP) problems in Process Synthesis", Indust. Engng. Chem. Res.,
*   No. 27, pp 1407--1421, 1988.

*   SIF input: S. Leyffer, October 1997

*   classification OOR2-AN-46-73

$Set N 5
Set i /i1*i%N%/;
$Set M 6
Set j /j1*j%M%/;

parameter NU; NU = 4        ;
parameter VL; VL = log(300) ;
parameter VU; VU = log(3000);
parameter H ; H  = 6000     ;

parameter TLO[i]
           / i1 0.729961,i2 0.530628,i3  1.09024,i4 -0.133531,i5 0.0487901 /;
parameter TUP[i]
           / i1  2.11626,i2  1.91626,i3  2.47654,i4   1.25276,i5   1.43508 /;
parameter BLO[i]
           / i1  4.45966,i2  3.74950,i3  4.49144,i4   3.14988,i5   3.04452 /;
parameter BUP[i]
           / i1  397.747,i2  882.353,i3  833.333,i4   638.298,i5   666.667 /;
parameter Q[i]
           / i1 250000.0,i2 150000.0,i3 180000.0,i4  160000.0,i5  120000.0 /;

table svals[i,j]
         j1      j2      j3      j4      j5      j6
i1       7.9     2.0     5.2     4.9     6.1     4.2
i2       0.7     0.8     0.9     3.4     2.1     2.5
i3       0.7     2.6     1.6     3.6     3.2     2.9
i4       4.7     2.3     1.6     2.7     1.2     2.5
i5       1.2     3.6     2.4     4.5     1.6     2.1 ;

table tvals[i,j]
         j1      j2      j3      j4      j5      j6
i1       6.4     4.7     8.3     3.9     2.1     1.2
i2       6.8     6.4     6.5     4.4     2.3     3.2
i3       1.0     6.3     5.4     11.9    5.7     6.2
i4       3.2     3.0     3.5     3.3     2.8     3.4
i5       2.1     2.5     4.2     3.6     3.7     2.2 ;

parameter S[i,j];  S[i,j] = log(svals[i,j]);
parameter T[i,j];  T[i,j] = log(tvals[i,j]);


parameter alpha; alpha = 250;
parameter  beta;  beta = 0.6;

Positive Variable y[i,j] ;
Variable n[j],v[j],b[i],tl[i],f ;

Equation Eq_1[i,j], Eq_2[i,j], Eq_3, Eq_4[j], Eq_5[j], Def_obj ;

Eq_1[i,j]..  v[j] - b[i]  =g= S[i,j];
Eq_2[i,j]..  n[j] + tl[i] =g= T[i,j];

Eq_3..  sum {i,(Q[i]*exp(tl[i] - b[i]))} =l= H;

Eq_4[j]..   sum {i$(ord(i) ne card(i)), (log(ord(i))*y[i,j])}-n[j] =e= 0;
Eq_5[j]..   sum {i$(ord(i) ne card(i)), y[i,j] } =e= 1.00000;
Def_obj..  f=e=sum{j,alpha*exp(n[j]+beta*v[j])};

  n.lo[j]  =    0.0;   n.up[j]  = log(4);
  v.lo[j]  = VL    ;   v.up[j]  = VU    ;
  b.lo[i]  = BLO[i];   b.up[i]  = BUP[i];
 tl.lo[i]  = TLO[i];  tl.up[i]  = TUP[i];

  y.lo[i,j]= 0.0   ;   y.up[i,j]= 1.0   ;
  y.l[i,j] = 0.0   ;
          

Model batch /all/;

Solve batch  using nlp minimize f;

display n.l, v.l, b.l, tl.l, y.l;
display T;
display f.l;
