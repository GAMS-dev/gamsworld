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

*   classification LQI2-RN-65-59

$Set NN 24
Set i /i1*i%NN%/;
$Set MM 20
Set j /j1*j%MM%/;
$Set KK  9
Set K /k1*k%KK%/;
$Set LL  6
Set L /l1*l%LL%/;


parameter  Region[k] /k1 -3.91800, k2 -4.03400, k3 -5.25600, k4 -6.36500 ,
                      k5 -2.12000, k6 -6.84800, k7 -15.6160, k8 -0.222000,
                      k9 -1.91900 /;

parameter  loflows[i] / i1 -220.12,  i2 -220.12,  i3 -220.12,  i4 -220.12,
                        i5 -220.12,  i6 -220.12,  i7 -220.12,  i8 -220.12,
                        i9 -220.12, i10    0   , i11    0   , i12 -220.12,
                       i13 -220.12, i14 -220.12, i15 -220.12, i16 -220.12,
                       i17 -220.12, i18 -220.12, i19 -220.12, i20 -220.12,
                       i21 -220.12, i22       0, i23 -220.12, i24 -220.12 /;

parameter  hiflows; hiflows = 220.12;

parameter  hisupply[l] /l1 11.594, l2 8.4, l3 4.8, l4 22.012, l5 1.2, l6 0.96/;
parameter  loprods[l]  /l1  8.87 , l2 0  , l3 0  , l4 20.344, l5 0  , l6 0   /;
parameter  hiprods[l]  /l1 11.594, l2 8.4, l3 4.8, l4 22.012, l5 1.2, l6 0.96/;
parameter  lopi[j]     /j1    0,  j2   0,  j3  900,  j4   0,  j5   0,
                        j6  900,  j7 900,  j8 2500,  j9   0, j10 900,
                       j11    0, j12 900, j13    0, j14   0, j15 900,
                       j16 2500, j17   0, j18    0, j19 625, j20 625 /;
parameter  hipi[j]
              /j1 5929   ,  j2 5929   ,  j3 6400   ,  j4 6400   ,  j5 5929   ,
               j6 6400   ,  j7 6400   ,  j8 4382.44,  j9 4382.44, j10 4382.44,
              j11 4382.44, j12 4382.44, j13 4382.44, j14 4382.44, j15 4382.44,
              j16 4382.44, j17 4382.44, j18 3969   , j19 4382.44, j20 4382.44/;

Variable Flow[i],Product[l],Supply[l],Demand[k],pict[j],cost;

Equation   node_1, node_2, node_3, node_4, node_5, node_6,
           node_7, node_8, node_9,node_10,node_11,node_12,
          node_13,node_14,node_15,node_16,node_17,node_18,
          node_19,node_20,

          region_1,region_2,region_3,region_4,
          region_5,region_6,region_7,region_8,
          region_9,

          prod_1,prod_2,prod_3,prod_4,
          prod_5,prod_6,

           arc_1, arc_2, arc_3, arc_4, arc_5, arc_6,
           arc_7, arc_8, arc_9,arc_10,arc_11,arc_12,
          arc_13,arc_14,arc_15,arc_16,arc_17,arc_18,
          arc_19,arc_20,arc_21,arc_22,arc_23,arc_24,   Def_obj;


 node_1..   Flow['i1']  + Flow['i2']              - Supply['l1']  =e= 0;
 node_2..  -Flow['i1']  - Flow['i2']
                        + Flow['i3']
                        + Flow['i4']              - Supply['l2']  =e= 0;
 node_3..  -Flow['i3']  - Flow['i4']
                        + Flow['i5']  + Demand['k1']              =e= 0;
 node_4..  -Flow['i5']  - Flow['i8']
                        + Flow['i9']                              =e= 0;
 node_5..   Flow['i6']                             - Supply['l3'] =e= 0;
 node_6..  -Flow['i6']  + Flow['i7']  + Demand['k2']              =e= 0;
 node_7..  -Flow['i7']  + Flow['i8']  + Demand['k3']              =e= 0;
 node_8..   Flow['i10'] + Flow['i11']              - Supply['l4'] =e= 0;
 node_9..  -Flow['i10'] - Flow['i11']
                        + Flow['i12']
                        + Flow['i13']                             =e= 0;
 node_10.. -Flow['i12'] - Flow['i13']
                        + Flow['i14']
                        + Flow['i15'] + Demand['k4']              =e= 0;
 node_11.. -Flow['i14'] - Flow['i15']
                        + Flow['i16']
                        + Flow['i21']                             =e= 0;
 node_12.. -Flow['i16'] + Flow['i17'] + Demand['k5']              =e= 0;
 node_13.. -Flow['i17'] + Flow['i18']             - Supply['l5']  =e= 0;
 node_14.. -Flow['i9']  - Flow['i18']
                        + Flow['i19']             - Supply['l6']  =e= 0;
 node_15.. -Flow['i19'] + Flow['i20'] + Demand['k6']              =e= 0;
 node_16.. -Flow['i20']               + Demand['k7']              =e= 0;
 node_17.. -Flow['i21'] + Flow['i22']                             =e= 0;
 node_18.. -Flow['i22'] + Flow['i23']                             =e= 0;
 node_19.. -Flow['i23'] + Flow['i24'] + Demand['k8']              =e= 0;
 node_20.. -Flow['i24']               + Demand['k9']              =e= 0;

 region_1.. -Demand['k1'] =l= Region['k1'];
 region_2.. -Demand['k2'] =l= Region['k2'];
 region_3.. -Demand['k3'] =l= Region['k3'];
 region_4.. -Demand['k4'] =l= Region['k4'];
 region_5.. -Demand['k5'] =l= Region['k5'];
 region_6.. -Demand['k6'] =l= Region['k6'];
 region_7.. -Demand['k7'] =l= Region['k7'];
 region_8.. -Demand['k8'] =l= Region['k8'];
 region_9.. -Demand['k9'] =l= Region['k9'];

 prod_1.. Supply['l1'] =l= Product['l1'];
 prod_2.. Supply['l2'] =l= Product['l2'];
 prod_3.. Supply['l3'] =l= Product['l3'];
 prod_4.. Supply['l4'] =l= Product['l4'];
 prod_5.. Supply['l5'] =l= Product['l5'];
 prod_6.. Supply['l6'] =l= Product['l6'];

 arc_1..  sqr(Flow['i1'])  -9.07027   *(pict['j1']  - pict['j2'])  =e= 0;
 arc_2..  sqr(Flow['i2'])  -9.07027   *(pict['j1']  - pict['j2'])  =e= 0;
 arc_3..  sqr(Flow['i3'])  -6.04685   *(pict['j2']  - pict['j3'])  =e= 0;
 arc_4..  sqr(Flow['i4'])  -6.04685   *(pict['j2']  - pict['j3'])  =e= 0;
 arc_5..  sqr(Flow['i5'])  -1.39543   *(pict['j3']  - pict['j4'])  =e= 0;
 arc_6..  sqr(Flow['i6'])  -0.100256  *(pict['j5']  - pict['j6'])  =e= 0;
 arc_7..  sqr(Flow['i7'])  -0.148655  *(pict['j6']  - pict['j7'])  =e= 0;
 arc_8..  sqr(Flow['i8'])  +0.226895  *(pict['j4']  - pict['j7'])  =e= 0;
 arc_9..  sqr(Flow['i9'])  -0.659656  *(pict['j4']  - pict['j14']) =e= 0;
 arc_10.. sqr(Flow['i10']) -7.25622   *(pict['j8']  - pict['j9'])  =g= 0;
 arc_11.. sqr(Flow['i11']) -0.10803   *(pict['j8']  - pict['j9'])  =g= 0;
 arc_12.. sqr(Flow['i12']) -1.81405   *(pict['j9']  - pict['j10']) =e= 0;
 arc_13.. sqr(Flow['i13']) -0.0270084 *(pict['j9']  - pict['j10']) =e= 0;
 arc_14.. sqr(Flow['i14']) -1.45124   *(pict['j10'] - pict['j11']) =e= 0;
 arc_15.. sqr(Flow['i15']) -0.0216067 *(pict['j10'] - pict['j11']) =e= 0;
 arc_16.. sqr(Flow['i16']) -0.863836  *(pict['j11'] - pict['j12']) =e= 0;
 arc_17.. sqr(Flow['i17']) -0.907027  *(pict['j12'] - pict['j13']) =e= 0;
 arc_18.. sqr(Flow['i18']) -7.25622   *(pict['j13'] - pict['j14']) =e= 0;
 arc_19.. sqr(Flow['i19']) -3.62811   *(pict['j14'] - pict['j15']) =e= 0;
 arc_20.. sqr(Flow['i20']) -1.45124   *(pict['j15'] - pict['j16']) =e= 0;
 arc_21.. sqr(Flow['i21']) -0.0514445 *(pict['j11'] - pict['j17']) =e= 0;
 arc_22.. sqr(Flow['i22']) -0.00641977*(pict['j17'] - pict['j18']) =g= 0;
 arc_23.. sqr(Flow['i23']) -0.00170320*(pict['j18'] - pict['j19']) =e= 0;
 arc_24.. sqr(Flow['i24']) -0.0278190 *(pict['j19'] - pict['j20']) =e= 0;

Def_obj.. cost=e=2.28*Product['l1'] + 2.28*Product['l2'] + 2.28*Product['l3'] +
                 1.68*Product['l4'] + 1.68*Product['l5'] + 1.68*Product['l6'];

Flow.lo[i]   = loflows[i]   ;  Flow.up[i]    = hiflows    ;
Supply.up[l] = hisupply[l]  ;
Product.lo[l]= loprods[l]   ;  Product.up[l] = hiprods[l] ;
Pict.lo[j]   = lopi[j]      ;  Pict.up[j]    = hipi[j]     ;

 Flow.l['i1']  =     5.797 ;
 Flow.l['i2']  =   5.797   ;
 Flow.l['i3']  =   9.997   ;
 Flow.l['i4']  =   9.997   ;
 Flow.l['i5']  =  16.076   ;
 Flow.l['i6']  =   4.8     ;
 Flow.l['i7']  =   0.766   ;
 Flow.l['i8']  =  -4.49    ;
 Flow.l['i9']  =  11.586   ;
Flow.l['i10']  =  17.2404  ;
Flow.l['i11']  =   2.10363 ;
Flow.l['i12']  =  17.2404  ;
Flow.l['i13']  =   2.10363 ;
Flow.l['i14']  =  11.5676  ;
Flow.l['i15']  =   1.41145 ;
Flow.l['i16']  =  10.838   ;
Flow.l['i17']  =   8.718   ;
Flow.l['i18']  =   9.918   ;
Flow.l['i19']  =  22.464   ;
Flow.l['i20']  =  15.616   ;
Flow.l['i21']  =   2.141   ;
Flow.l['i22']  =   2.141   ;
Flow.l['i23']  =   2.141   ;
Flow.l['i24']  =   1.919   ;


Model core1 /all/;

Solve core1 using nlp minimize cost;

display cost.l;
