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

*   classification QBR2-AN-50-0

$Set N 50
Set i /i1*i%N%/;
Alias(i,j);
parameter x_lo[i]
              /i1  -0.1       ,i2  -3.9206e-03,i3   0.0       ,i4  -1.0001e-01,
               i5   0.0       ,i6  -9.9994e-02,i7  -3.9119e-03,i8  -1.0001e-01,
               i9  -9.9987e-02,i10 -9.9988e-02,i11 -1.0001e-01,i12 -9.9952e-02,
               i13 -4.5551e-05,i14 -9.9999e-02,i16 -7.2801e-02,i18 -9.9992e-02,
               i20 -9.9956e-02,i22 -9.9961e-02,i25 -4.1110e-03,i29 -9.6988e-02,
               i32 -5.8439e-02,i33 -4.5616e-06,i34 -9.9999e-02,i35 -9.9991e-02,
               i36 -9.9977e-02,i37 -9.9984e-02,i39 -3.9611e-06,i40 -8.8262e-06,
               i41 -1.0001e-01,i43 -1.9873e-06,i45 -9.9993e-02,i46 -9.9999e-02,
               i47 -3.0424e-06,i48 -9.9985e-02,i49 -1.0004e-01,i50 -0.1       /;

parameter x_up[i]
              /i1   0.1       ,i2   0.0       ,i3   9.9999e-02,i4   9.9990e-02,
               i5   9.9997e-02,i6   6.1561e-06,i7   9.9986e-02,i8   2.5683e-02,
               i9   1.0001e-01,i10  1.0001e-01,i11  2.8998e-03,i12  4.7652e-05,
               i13  9.9954e-02,i14  0.0       ,i16  0.0       ,i18  8.3681e-06,
               i20  4.3809e-05,i22  3.9248e-05,i25  0.0       ,i29  1.0002e-01,
               i32  0.0       ,i33  9.9995e-02,i34  7.3117e-07,i35  9.3168e-06,
               i36  1.0002e-01,i37  1.5812e-05,i39  9.9996e-02,i40  9.9991e-02,
               i41  9.9986e-02,i43  9.9998e-02,i45  7.4220e-06,i46  8.2308e-07,
               i47  9.9997e-02,i48  1.5119e-05,i49  2.4305e-02,i50  0.1       /;

Variable    x[i], d[i,j], o[i,j], f ;

Equation Eq_1, Eq_2, Def_obj ;

Eq_1[i,j]$(ord(i) ne ord(j))..  d[i,j] =e= 0.5*x[i]*x[j];
Eq_2[i,j]..                     o[i,j] =e=     x[i]*x[j];

Def_obj..1100000000*f=e=
+5.6987e-02*x['i1']        +1.0624e+03*d['i1','i1']   -6.1847e-03*x['i2']
-9.9819e+01*o['i1','i11']  +5.2516e-03*x['i3']        +7.8331e+02*d['i11','i11']
+1.1729e-02*x['i4']        -9.9709e+01*o['i1','i12']  +4.9596e-03*x['i5']
+1.0000e+02*o['i11','i12'] -4.9271e-03*x['i6']        +1.0000e+02*d['i12','i12']
+1.2185e-02*x['i7']        -1.0000e+02*o['i1','i20']  +1.3238e-02*x['i8']
+7.8331e+02*d['i20','i20'] -1.5134e-02*x['i9']        -1.0000e+02*o['i1','i21']
-1.2247e-02*x['i10']       +1.0000e+02*o['i20','i21'] +2.3741e-02*x['i11']
+1.0000e+02*d['i21','i21'] -9.7666e-02*x['i12']       +9.0362e+01*o['i1','i29']
+9.8702e-02*x['i13']       +7.8331e+02*d['i29','i29'] +7.8901e-04*x['i14']
+6.5103e+01*o['i1','i36']  +5.1663e-04*x['i15']       +7.8331e+02*d['i36','i36']
-1.7477e-04*x['i16']       +6.5140e+01*o['i1','i37']  +1.1795e-03*x['i17']
+1.0000e+02*o['i36','i37'] -1.7351e-02*x['i18']       +1.0000e+02*d['i37','i37']
+1.3439e-03*x['i19']       +7.5507e+01*o['i1','i41']  -5.6977e-02*x['i20']
+7.8331e+02*d['i41','i41'] +1.0040e-02*x['i21']       +7.5507e+01*o['i1','i42']
-8.3380e-02*x['i22']       +1.0000e+02*o['i41','i42'] -3.7526e-03*x['i23']
+1.0000e+02*d['i42','i42'] -9.4555e-04*x['i24']       -9.7537e+01*o['i1','i49']
-4.9258e-03*x['i25']       +7.8331e+02*d['i49','i49'] -1.3959e-03*x['i26']
+1.0624e+03*d['i2','i2']   -4.3749e-03*x['i27']       -9.9213e+01*o['i2','i11']
-4.3677e-03*x['i28']       -9.9709e+01*o['i2','i13']  -2.7985e-02*x['i29']
+9.9608e+01*o['i11','i13'] +1.8839e-03*x['i30']       +1.0000e+02*d['i13','i13']
-1.2340e-03*x['i31']       -9.9698e+01*o['i2','i20']  -6.8139e-04*x['i32']
-1.0000e+02*o['i2','i22']  -3.5838e-02*x['i33']       +9.9608e+01*o['i20','i22']
-3.4857e-02*x['i34']       +1.0000e+02*d['i22','i22'] +2.8724e-03*x['i35']
+8.9945e+01*o['i2','i29']  +1.6625e-02*x['i36']       +9.0300e+01*o['i2','i30']
+1.3571e-02*x['i37']       +9.9608e+01*o['i29','i30'] -7.2447e-03*x['i38']
+1.0000e+02*d['i30','i30'] -4.6034e-04*x['i39']       +6.4885e+01*o['i2','i36']
-1.6225e-02*x['i40']       +6.5140e+01*o['i2','i38']  +2.2034e-05*x['i41']
+9.9608e+01*o['i36','i38'] +5.8844e-02*x['i42']       +1.0000e+02*d['i38','i38']
+3.0725e-03*x['i43']       +7.5197e+01*o['i2','i41']  +2.8227e-03*x['i44']
-9.7167e+01*o['i2','i49']  -2.0681e-02*x['i45']       +1.0624e+03*d['i3','i3']
-5.4952e-03*x['i46']       +8.1209e+01*o['i3','i11']  +6.2552e-04*x['i47']
+8.1463e+01*o['i3','i20']  +3.3782e-02*x['i48']       -1.0000e+02*o['i3','i23']
-4.8584e-03*x['i49']       -8.1463e+01*o['i20','i23'] -1.4371e-03*x['i50']
+1.0000e+02*d['i23','i23'] -7.3536e+01*o['i3','i29']  -5.3119e+01*o['i3','i36']
-6.1506e+01*o['i3','i41']  +7.5507e+01*o['i3','i43']  -8.1463e+01*o['i41','i43']
+1.0000e+02*d['i43','i43'] +7.9480e+01*o['i3','i49']  -9.7566e+01*o['i3','i50']
-8.1463e+01*o['i49','i50'] +1.0000e+02*d['i50','i50'] +1.0624e+03*d['i4','i4']
+2.8141e+01*o['i4','i11']  -9.9709e+01*o['i4','i14']  -2.8225e+01*o['i11','i14']
+1.0000e+02*d['i14','i14'] +2.8228e+01*o['i4','i20']  -2.5487e+01*o['i4','i29']
+9.0300e+01*o['i4','i31']  -2.8225e+01*o['i29','i31'] +1.0000e+02*d['i31','i31']
-1.8370e+01*o['i4','i36']  -2.1312e+01*o['i4','i41']  +7.5507e+01*o['i4','i44']
-2.8225e+01*o['i41','i44'] +1.0000e+02*d['i44','i44'] +2.7539e+01*o['i4','i49']
+1.0624e+03*d['i5','i5']   +2.6350e+01*o['i5','i11']  -9.9709e+01*o['i5','i15']
-2.6427e+01*o['i11','i15'] +1.0000e+02*d['i15','i15'] +2.6427e+01*o['i5','i20']
-1.0000e+02*o['i5','i24']  -2.6427e+01*o['i20','i24'] +1.0000e+02*d['i24','i24']
-2.3863e+01*o['i5','i29']  +9.0300e+01*o['i5','i32']  -2.6427e+01*o['i29','i32']
+1.0000e+02*d['i32','i32'] -1.7205e+01*o['i5','i36']  +6.5140e+01*o['i5','i39']
-2.6427e+01*o['i36','i39'] +1.0000e+02*d['i39','i39'] -1.9971e+01*o['i5','i41']
+7.5507e+01*o['i5','i45']  -2.6427e+01*o['i41','i45'] +1.0000e+02*d['i45','i45']
+2.5757e+01*o['i5','i49']  +1.0624e+03*d['i6','i6']   +9.9709e+01*o['i6','i11']
-9.9709e+01*o['i6','i16']  -1.0000e+02*o['i11','i16'] +1.0000e+02*d['i16','i16']
+1.0000e+02*o['i6','i20']  -1.0000e+02*o['i6','i25']  -1.0000e+02*o['i20','i25']
+1.0000e+02*d['i25','i25'] -9.0289e+01*o['i6','i29']  +9.0300e+01*o['i6','i33']
-1.0000e+02*o['i29','i33'] +1.0000e+02*d['i33','i33'] -6.5144e+01*o['i6','i36']
-7.5509e+01*o['i6','i41']  +7.5507e+01*o['i6','i46']  -1.0000e+02*o['i41','i46']
+1.0000e+02*d['i46','i46'] +9.7565e+01*o['i6','i49']  +1.0624e+03*d['i7','i7']
-9.9320e+01*o['i7','i11']  -9.9709e+01*o['i7','i17']  +9.9610e+01*o['i11','i17']
+1.0000e+02*d['i17','i17'] -9.9631e+01*o['i7','i20']  +8.9946e+01*o['i7','i29']
+9.0300e+01*o['i7','i34']  +9.9610e+01*o['i29','i34'] +1.0000e+02*d['i34','i34']
+6.4890e+01*o['i7','i36']  +7.5199e+01*o['i7','i41']  -9.7188e+01*o['i7','i49']
+1.0624e+03*d['i8','i8']   +9.7157e+01*o['i8','i11']  +9.7417e+01*o['i8','i20']
-8.7973e+01*o['i8','i29']  -6.3446e+01*o['i8','i36']  +6.5140e+01*o['i8','i40']
-9.7431e+01*o['i36','i40'] +1.0000e+02*d['i40','i40'] -7.3586e+01*o['i8','i41']
+9.5052e+01*o['i8','i49']  +1.0624e+03*d['i9','i9']   -2.9055e+00*o['i9','i11']
-2.9605e+00*o['i9','i20']  -1.0000e+02*o['i9','i26']  +2.9604e+00*o['i20','i26']
+1.0000e+02*d['i26','i26'] +2.6517e+00*o['i9','i29']  +9.0300e+01*o['i9','i35']
+2.9604e+00*o['i29','i35'] +1.0000e+02*d['i35','i35'] +1.9168e+00*o['i9','i36']
+2.2464e+00*o['i9','i41']  -2.9243e+00*o['i9','i49']  +1.0624e+03*d['i10','i10']
+2.9135e+01*o['i10','i11'] +2.9241e+01*o['i10','i20'] -2.6379e+01*o['i10','i29']
-1.9046e+01*o['i10','i36'] -2.2065e+01*o['i10','i41'] +7.5507e+01*o['i10','i47']
-2.9232e+01*o['i41','i47'] +1.0000e+02*d['i47','i47'] -1.0000e+02*o['i11','i18']
+1.0000e+02*d['i18','i18'] -1.0000e+02*o['i20','i27'] +1.0000e+02*d['i27','i27']
-1.0000e+02*o['i11','i19'] +1.0000e+02*d['i19','i19'] -1.0000e+02*o['i20','i28']
+1.0000e+02*d['i28','i28'] -1.0000e+02*o['i41','i48'] +1.0000e+02*d['i48','i48'] ;


        x.lo[i]  = x_lo[i];
        x.up[i]  = x_up[i];

        x.fx['i1']  = 0;
        x.fx['i15'] = 0;
        x.fx['i42'] = 0;
        x.fx['i50'] = 0;

Model bqpgabim /all/;

Solve bqpgabim  using nlp minimize f;

display x.l;
display f.l;
