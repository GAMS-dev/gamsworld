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

*   classification OOR2-MY-6-200

$Set N 50
Set i /i1*i%N%/;

parameter np; np = 50;
parameter pi_2; pi_2 = 2*arctan(1);

parameter x[i] /i1   0.514, i2   0.948, i3   0.702, i4   0.495, i5   0.823,
                i6   0.625, i7   0.347, i8   0.520, i9   0.607, i10  0.758,
                i11  0.200, i12  0.416, i13  0.979, i14  0.213, i15  0.737,
                i16  0.957, i17  0.319, i18  0.572, i19  0.570, i20  0.496,
                i21  0.477, i22  0.873, i23  0.522, i24  0.773, i25  0.887,
                i26  0.651, i27  0.676, i28  0.938, i29  0.779, i30  0.750,
                i31  0.803, i32  0.563, i33  0.653, i34  0.790, i35  0.246,
                i36  0.477, i37  0.744, i38  0.480, i39  0.446, i40  0.095,
                i41  0.551, i42  0.579, i43  0.782, i44  0.684, i45  0.565,
                i46  0.566, i47  0.607, i48  0.036, i49  0.647, i50  0.553 /;




parameter y[i] /i1   0.176, i2   0.172, i3   0.226, i4   0.125, i5   0.152,
                i6   0.315, i7   0.917, i8   0.401, i9   0.785, i10  0.582,
                i11  0.827, i12  0.464, i13  0.126, i14  0.958, i15  0.409,
                i16  0.028, i17  0.757, i18  0.119, i19  0.252, i20  0.237,
                i21  0.406, i22  0.427, i23  0.697, i24  0.245, i25  0.037,
                i26  0.399, i27  0.733, i28  0.233, i29  0.431, i30  0.208,
                i31  0.219, i32  0.716, i33  0.604, i34  0.079, i35  0.945,
                i36  0.800, i37  0.381, i38  0.527, i39  0.705, i40  0.963,
                i41  0.740, i42  0.638, i43  0.188, i44  0.293, i45  0.418,
                i46  0.488, i47  0.416, i48  0.977, i49  0.350, i50  0.358 /;

Variable  v1,w1,d,a,t,r,f,s1,s2;

Equation Eq_1[i], Eq_2[i], Def_obj,add_1,add_2;
Eq_1[i].. sqr(v1+a*d*cos(t)-x[i])+sqr(w1+a*d*sin(t)-y[i])-sqr(d+r)  =l= 1.0;
Eq_2[i].. sqr(v1-x[i])           +sqr(w1-y[i])           -sqr(a*d+r)=g= 0.0;
add_1.. s1=e= -(sqr(a*d)-sqr(a*d+r)+sqr(d+r))/(2*(d+r  )*a*d);
add_2.. s2=e=  (sqr(a*d)+sqr(a*d+r)-sqr(d+r))/(2*(a*d+r)*a*d);

Def_obj..
     f=e= sqr(  d+r)* {pi_2-arctan(s1/(sqrt(1-s1*s1)) )}
         -sqr(a*d+r)* {pi_2-arctan(s2/(sqrt(1-s2*s2)) )}
       +(d+r)*a*d*sin({pi_2-arctan(s1/(sqrt(1-s1*s1)) )} );


s1.up =   0.999999;
s2.up =   0.999999;
s1.lo =  -0.999999;
s2.lo =  -0.999999;

d.lo  =   1e-8;
a.lo  =   1.0 ;
t.lo  =   0.0 ;    t.up  =   6.2831852;
r.lo  =   0.39;

v1.l  =   -40.0    ;
w1.l  =     5.0    ;
d.l   =     1.0    ;
a.l   =     2.0    ;
t.l   =     1.5    ;
r.l   =     0.75   ;

*v1.fx  =   -68.64   ;
*w1.fx  =   -36.56   ;
*d.fx   =     0.5    ;
*a.fx   =    155.56  ;
*t.fx   =     0.49   ;
*r.fx   =     0.43   ;


Model cresc50 /all/;

Solve cresc50 using dnlp minimize f;


display v1.l,w1.l ;
display d.l,a.l,t.l,r.l;
display f.l;
