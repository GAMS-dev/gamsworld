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

$Set N 100
Set i /i1*i%N%/;

parameter np; np = 100;
parameter pi_2; pi_2 = 2*arctan(1);

parameter x[i] /i1   0.544,  i2   0.714,  i3   0.594,  i4   0.474,  i5   0.470,
                i6   0.241,  i7   0.503,  i8   0.854,  i9   0.438, i10   0.294,
               i11   0.479, i12   0.413, i13   0.722, i14   0.358, i15   0.836,
               i16   0.648, i17   0.267, i18   0.362, i19   0.232, i20   0.667,
               i21   0.476, i22   0.868, i23   0.603, i24   0.788, i25   0.745,
               i26   0.627, i27   0.394, i28   0.220, i29   0.548, i30   0.446,
               i31   0.463, i32   0.541, i33   0.631, i34   0.735, i35   0.674,
               i36   0.620, i37   0.257, i38   0.659, i39   0.475, i40   0.708,
               i41   0.545, i42   0.586, i43   0.796, i44   0.525, i45   0.498,
               i46   0.790, i47   0.632, i48   0.699, i49   0.758, i50   0.656,
               i51   0.652, i52   0.801, i53   0.730, i54   0.689, i55   0.527,
               i56   0.696, i57   0.911, i58   0.805, i59   0.764, i60   0.331,
               i61   0.078, i62   0.656, i63   0.480, i64   0.503, i65   0.412,
               i66   0.338, i67   0.920, i68   0.548, i69   0.826, i70   0.071,
               i71   0.635, i72   0.591, i73   0.489, i74   0.565, i75   0.791,
               i76   0.725, i77   0.091, i78   0.401, i79   0.226, i80   0.518,
               i81   0.651, i82   0.738, i83   0.509, i84   0.833, i85   0.669,
               i86   0.121, i87   0.809, i88   0.477, i89   0.267, i90   0.412,
               i91   0.663, i92   0.830, i93   0.324, i94   0.225, i95   0.870,
               i96   0.343, i97   0.849, i98   0.655, i99   0.558, i100  0.830/;

parameter y[i] /i1   0.492,  i2   0.505,  i3   0.094,  i4   0.398,  i5   0.804,
                i6   0.955,  i7   0.097,  i8   0.359,  i9   0.477, i10   0.887,
               i11   0.372, i12   0.911, i13   0.082, i14   0.788, i15   0.225,
               i16   0.424, i17   0.932, i18   0.697, i19   0.969, i20   0.527,
               i21   0.735, i22   0.141, i23   0.550, i24   0.399, i25   0.365,
               i26   0.762, i27   0.779, i28   0.869, i29   0.625, i30   0.778,
               i31   0.762, i32   0.068, i33   0.670, i34   0.151, i35   0.490,
               i36   0.565, i37   0.862, i38   0.010, i39   0.585, i40   0.475,
               i41   0.371, i42   0.085, i43   0.309, i44   0.573, i45   0.530,
               i46   0.217, i47   0.169, i48   0.024, i49   0.436, i50   0.662,
               i51   0.251, i52   0.511, i53   0.611, i54   0.277, i55   0.612,
               i56   0.074, i57   0.052, i58   0.075, i59   0.067, i60   0.759,
               i61   0.983, i62   0.340, i63   0.232, i64   0.140, i65   0.683,
               i66   0.624, i67   0.139, i68   0.474, i69   0.443, i70   0.969,
               i71   0.728, i72   0.570, i73   0.427, i74   0.105, i75   0.554,
               i76   0.174, i77   0.951, i78   0.790, i79   0.968, i80   0.663,
               i81   0.166, i82   0.146, i83   0.280, i84   0.176, i85   0.044,
               i86   0.921, i87   0.458, i88   0.436, i89   0.840, i90   0.630,
               i91   0.648, i92   0.086, i93   0.862, i94   0.853, i95   0.331,
               i96   0.629, i97   0.521, i98   0.714, i99   0.005, i100  0.526/;

Variable  v1,w1,d,a,t,r,f,s1,s2;

Equation Eq_1[i], Eq_2[i], Def_obj,add_1,add_2 ;
Eq_1[i].. sqr(v1+a*d*cos(t)-x[i])+sqr(w1+a*d*sin(t)-y[i])-sqr(d+r)  =l= 0.0;
Eq_2[i].. sqr(v1-x[i])           +sqr(w1-y[i])           -sqr(a*d+r)=g= 0.0;
add_1.. s1=e= -(sqr(a*d)-sqr(a*d+r)+sqr(d+r))/(2*(d+r  )*a*d);
add_2.. s2=e=  (sqr(a*d)+sqr(a*d+r)-sqr(d+r))/(2*(a*d+r)*a*d);

Def_obj..
     f=e= sqr(  d+r)* {pi_2-arctan(s1/(sqrt(1-s1*s1)) )}
         -sqr(a*d+r)* {pi_2-arctan(s2/(sqrt(1-s2*s2)) )}
       +(d+r)*a*d*sin({pi_2-arctan(s1/(sqrt(1-s1*s1)) )} );


s1.up =   0.99;
s2.up =   0.99;
s1.lo =  -0.99;
s2.lo =  -0.99;

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

*a.fx = 5.08035;
*d.fx = 0.466182;
*r.fx = 0.39;
*t.fx = 0.367052;


Model cresc100 /all/;

Solve cresc100 using nlp minimize f;
Solve cresc100 using nlp minimize f;
Solve cresc100 using nlp minimize f;

display v1.l,w1.l ;
display d.l,a.l,t.l,r.l;
display f.l;
