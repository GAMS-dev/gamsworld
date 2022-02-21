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

*   Source:
*   W. Pulleyblank,
*   private communication, 1991.

*   classification LQR2-MY-36-66

$Set nnodes 12
Set I  / i1*i%nnodes% / ;
Set Right(i) / i2*i%nnodes% / ;
Alias(i,j);

Parameter epsil  ;  epsil = 0.0001 ;

Parameter a[j,i] ; a[j,i] = 0.0    ;
                                      a['i2', 'i1' ] = 1 ;
                                      a['i7', 'i1' ] = 1 ;
                                      a['i3', 'i2' ] = 1 ;
                                      a['i4', 'i2' ] = 1 ;
                                      a['i4', 'i3' ] = 1 ;
                                      a['i5', 'i4' ] = 1 ;
                                      a['i6', 'i4' ] = 1 ;
                                      a['i6', 'i5' ] = 1 ;
                                      a['i11','i5' ] = 1 ;
                                      a['i7', 'i6' ] = 1 ;
                                      a['i8', 'i7' ] = 1 ;
                                      a['i9', 'i7' ] = 1 ;
                                      a['i9', 'i8' ] = 1 ;
                                      a['i10','i8' ] = 1 ;
                                      a['i10','i9' ] = 1 ;
                                      a['i11','i10'] = 1 ;
                                      a['i12','i10'] = 1 ;
                                      a['i12','i11'] = 1 ;

Set tt(i,j); tt(i,j)=yes$(Right(i) and (ord(j) lt ord(i)) and (a[i,j] = 1) );


Variable x[i] , y[i] , r[i] , f ;

Equation cons1(i,j) , cons2(i,j) , Def_obj ;

cons1(i,j)$(Right(i) and (ord(j) lt ord(i)) and (a[j,i] = 1) )..
        sqr(r[i]+r[j]) - sqr(x[i]-x[j]) - sqr(y[i]-y[j]) =e= 0 ;

cons2(i,j)$(Right(i) and (ord(j) lt ord(i)) and (a[j,i] = 0) )..
        sqr(r[i]+r[j]) - sqr(x[i]-x[j]) - sqr(y[i]-y[j]) + epsil =l= 0 ;

Def_obj..  f =e= sum{i, r[i] };

r.lo[i] = 1;
x.l[i] = ord(i)*0.03       ;
y.l[i] = ord(i)*0.0055555  ;
r.l[i] = ord(i);

 x.fx['i1'] = 0 ;
 y.fx['i1'] = 0 ;
 y.fx['i2'] = 0 ;

Model discs /all/ ;

Solve discs using nlp minimazing f ;

Display x.l ;
Display y.l ;
Display r.l ;
Display f.l ;
