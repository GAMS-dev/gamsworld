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

*   Source: Hartman problem 6 in
*   L. C. W. Dixon and G. P. Szego (Eds.)
*   Towards Global Optimization
*   North Holland, 1975.
*   Paper 9, page 163.

*   SIF input: A.R. Conn May 1995

*   classification OBR2-AN-6-0

$Set N  4
Set I  / i1*i%N% / ;
$Set M  6
Set j  / j1*j%M% / ;

Parameter c(i) / i1 1.0 , i2 1.2 , i3 3.0 , i4 3.2 / ;
Parameter a(i,j) ;
Parameter p(i,j) ;
a['i1','j1']=10.0 ;a['i2','j1']=  0.05;a['i3','j1']= 3.0; a['i4','j1']= 17.0 ;
a['i1','j2']= 0.05;a['i2','j2']= 10.0 ;a['i3','j2']= 3.5; a['i4','j2']=  8.0 ;
a['i1','j3']=17.0 ;a['i2','j3']= 17.0 ;a['i3','j3']= 1.7; a['i4','j3']=  0.05;
a['i1','j4']= 3.5 ;a['i2','j4']=  0.1 ;a['i3','j4']=10.0; a['i4','j4']= 10.0 ;
a['i1','j5']= 1.7 ;a['i2','j5']=  8.0 ;a['i3','j5']=17.0; a['i4','j5']=  0.1 ;
a['i1','j6']= 8.0 ;a['i2','j6']= 14.0 ;a['i3','j6']= 8.0; a['i4','j6']= 14.0 ;

p['i1','j1']=0.1312;p['i2','j1']=0.2329;p['i3','j1']=0.2348;p['i4','j1']=0.4047;
p['i1','j2']=0.1696;p['i2','j2']=0.4135;p['i3','j2']=0.1451;p['i4','j2']=0.8828;
p['i1','j3']=0.5569;p['i2','j3']=0.8307;p['i3','j3']=0.3522;p['i4','j3']=0.8732;
p['i1','j4']=0.0124;p['i2','j4']=0.3736;p['i3','j4']=0.2883;p['i4','j4']=0.5743;
p['i1','j5']=0.8283;p['i2','j5']=0.1004;p['i3','j5']=0.3047;p['i4','j5']=0.1091;
p['i1','j6']=0.5886;p['i2','j6']=0.9991;p['i3','j6']=0.665 ;p['i4','j6']=0.0381;

Variable x(j) , obj ;
Equation Def_obj ;

Def_obj.. obj =e= -sum{i,(c[i]*exp(-sum{j, a[i,j]*sqr(x[j]-p[i,j])}))};

x.lo[j] = 0.0 ;
x.up[j] = 1.0 ;
x.l[j]  = 0.2 ;

Model hart6 /all/ ;

Solve hart6  using nlp minimazing obj  ;

Display x.l ;
display obj.l;
